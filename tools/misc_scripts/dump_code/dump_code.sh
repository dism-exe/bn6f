#!/bin/sh

SCRIPT_PATH=$(dirname $(realpath -s $0))

# 1. Path to the input ROM
#CONST_INPUT_PROG="bn6f.ign"
CONST_INPUT_PROG="$1"

# 2. Path to the sym file
#CONST_SYM_FILE="bn6f.sym"
CONST_SYM_FILE="$2"

# 3. Provide path to events file, or "None" to disable.
#CONSTS_EVENTS_FILE="constants/enums/ewram_flags.inc"
CONSTS_EVENTS_FILE="$3"

# 4. [hex/sym]:addr for start_addr
start_addr_kind_val="$4"

# 5. [hex/sym]:addr for end_addr
end_addr_kind_val="$5"

parse_addr_kind_val() {
  kind_val="$1"
  name="$2"

  kind=$(echo $kind_val | cut -d':' -f1)
  val=$(echo $kind_val | cut -d':' -f2)

  if [ $kind = "hex" ]; then
    out=$(python3 -c "print(hex(int(\"$val\", 16)))")
    ec=$?
    if [ $ec -ne 0 ]; then
      echo "Error: Failed to parse hex for $name (ec $ec)"
      exit $ec
    fi

    echo $out
  elif [ $kind = "sym" ]; then
    out="$(python3 $SCRIPT_PATH/dump_code.py get_symbol_boundary $CONST_SYM_FILE $val)"
    ec=$?
    if [ $ec -ne 0 ]; then
      echo "Error: Failed to parse sym for $name (ec $ec)"
      exit $ec
    fi

    echo $out
  else
    echo 'Error: kind must be hex or symbol.'
    exit 1
  fi
}

start_addr_hex=$(parse_addr_kind_val $start_addr_kind_val "start_addr_hex")
ec=$?
if [ $ec -ne 0 ]; then
  echo "Error: Failed to parse start_addr_hex (ec $ec) with error:"
  echo $start_addr_hex
  exit $ec
fi

start_addr_hex_thumb_filtered=$(python3 $SCRIPT_PATH/dump_code.py filter_out_thumb_flag $start_addr_hex)
ec=$?
if [ $ec -ne 0 ]; then
  echo "Error: Failed to filter start addr for thumb flag (ec $ec) with error:"
  echo $start_addr_hex_thumb_shifted
  exit $ec
fi

end_addr_hex=$(parse_addr_kind_val $end_addr_kind_val "end_addr_hex")
ec=$?
if [ $ec -ne 0 ]; then
  echo "Failed to parse end_addr_hex (ec $ec) with error:"
  echo $end_addr_hex
  exit $ec
fi

end_addr_hex_thumb_filtered=$(python3 $SCRIPT_PATH/dump_code.py filter_out_thumb_flag $end_addr_hex)
ec=$?
if [ $ec -ne 0 ]; then
  echo "Error: Failed to filter end addr for thumb flag (ec $ec) with error:"
  echo $end_addr_hex_thumb_filtered
  exit $ec
fi

tmp1=$(mktemp)
dd skip=$(python3 -c "print($start_addr_hex_thumb_filtered - 0x8000000)") count=$(python3 -c "print($end_addr_hex_thumb_filtered - $start_addr_hex_thumb_filtered)") if=$CONST_INPUT_PROG of=$tmp1 bs=1 2>/dev/null
ec=$?
if [ $ec -ne 0 ]; then
  echo "Failed to create binary segment (ec $ec)"
  exit $ec
fi

dump0=$(arm-none-eabi-objdump -D -bbinary -marm7tdmi -Mforce-thumb -z $tmp1 | tail -n +8)
rm $tmp1

dump1=$(
    echo "$dump0" |

     # sl is r10
     sed "s/sl,/r10,/g" |
     sed "s/sl$/r10/g" |

     # fp is r11
     sed "s/fp,/r11,/g" |
     sed "s/fp$/r11/g" |

     # ip is r12
     sed "s/ip,/r12,/g" |
     sed "s/ip$/r12/g" |

     # str/ldr indices should just be the hex form
     sed "s/#\([0-9]*\)]\s*; 0x\([a-f0-9]*\)/#0x\2]/g" |

     # instructions like cmp can also have the hex form comment
     sed "s/#\([0-9]*\)\s*; 0x\([a-f0-9]*\)/#0x\2/g" |

     # Some jumps like ble.n should be ble
     sed "s/\(ble\|bne\|beq\|blt\|bgt\|bge\|b\).n/\1/g" |

     # Some instructions include an `s` in the end in the dump we do not want
     sed "s/\(sub\|lsl\|lsr\|mov\|add\|neg\|mul\|and\|orr\|asr\|mvn\|bic\|eor\)s/\1/g" |

     # 0x1c00 is being interpreted as `add r0, r0, #0` but we expect `mov r0, r0`
     sed "s/\(.*1c00\s*\)\(add\s*r0, r0, #0\)/\1mov r0, r0/g" |

     python3 $SCRIPT_PATH/dump_code.py compute_pool_usage $CONST_SYM_FILE $CONST_INPUT_PROG $start_addr_hex |

     python3 $SCRIPT_PATH/dump_code.py compute_branch_without_link_labels $start_addr_hex $CONST_SYM_FILE |

     # get rid of the content prior to the instructions and make the instructiones \t padded
     sed "s/\s*\([a-f0-9]*\):\s*\([a-f0-9]* \([a-f0-9]*\|\)\)\s*\(.*\)/\t\4/g" |

     # get rid of the padded spacing after the instruction
     sed "s/\(\t[a-z.]*\)\s*\(.*\)/\1 \2/g" |

     python3 $SCRIPT_PATH/dump_code.py last_zeros_to_balign |

     python3 $SCRIPT_PATH/dump_code.py shorten_rlists |

     python3 $SCRIPT_PATH/dump_code.py hexify_imm_gt_9 |

     python3 $SCRIPT_PATH/dump_code.py compute_bl_targets $start_addr_hex $CONST_SYM_FILE |

     python3 $SCRIPT_PATH/dump_code.py encode_movflag_virtual_inst $CONSTS_EVENTS_FILE |

    cat
)

# Emit with some extra formatting

echo "\tthumb_local_start"

start_addr_kind=$(echo $start_addr_kind_val | cut -d':' -f1)
start_addr_val=$(echo $start_addr_kind_val | cut -d':' -f2)

if [ $start_addr_kind = "hex" ]; then
  symbol_name="Hex_$(echo $start_addr_hex | cut -d'x' -f2-)"
elif [ $start_addr_kind = "sym" ]; then
  symbol_name="$start_addr_val"
else
  echo "Unexpected error: Must have already chosen hex or sym"
  exit 2
fi

echo "$symbol_name:"
echo "$dump1"
echo "\tthumb_func_end $symbol_name"
