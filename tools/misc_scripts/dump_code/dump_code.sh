#!/bin/sh

SCRIPT_PATH=$(dirname $(realpath -s $0))

CONST_INPUT_PROG="bn6f.ign"
CONST_SYM_FILE="bn6f.sym"
CONSTS_EVENTS_FILE="constants/enums/ewram_flags.inc"

symbol_name="$1"
end_symbol_name="$2"

start_addr_hex="$(python3 $SCRIPT_PATH/dump_code.py get_symbol_boundary $CONST_SYM_FILE $symbol_name)"
end_addr_hex="$(python3 $SCRIPT_PATH/dump_code.py get_symbol_boundary $CONST_SYM_FILE $end_symbol_name)"

start_addr_hex=0x81d7ef8
end_addr_hex=0x81d8000

dd skip=$(python3 -c "print($start_addr_hex - 0x8000000)") count=$(python3 -c "print($end_addr_hex - $start_addr_hex)") if=$CONST_INPUT_PROG of=a.bin bs=1 2>/dev/null
dump0=$(arm-none-eabi-objdump -D -bbinary -marm7tdmi -Mforce-thumb -z a.bin | tail -n +8)
rm a.bin

start_addr_hex=0x30079F8

dump1=$(
    echo "$dump0" |

    # # sl is r10
    # sed "s/sl$/r10/g" |

    # # str/ldr indices should just be the hex form
    # sed "s/#\([0-9]*\)]\s*; 0x\([a-f0-9]*\)/#0x\2]/g" |

    # # instructions like cmp can also have the hex form comment
    # sed "s/#\([0-9]*\)\s*; 0x\([a-f0-9]*\)/#0x\2/g" |

    # # Some jumps like ble.n should be ble
    # sed "s/\(ble\|bne\|beq\|blt\|bgt\|bge\|b\).n/\1/g" |

    # # Some instructions include an `s` in the end in the dump we do not want
    # sed "s/\(sub\|lsl\|lsr\|mov\|add\|neg\|mul\|and\|orr\|asr\|mvn\|bic\|eor\)s/\1/g" |

    # # 0x1c00 is being interpreted as `add r0, r0, #0` but we expect `mov r0, r0`
    # sed "s/\(.*1c00\s*\)\(add\s*r0, r0, #0\)/\1mov r0, r0/g" |

    # python3 $SCRIPT_PATH/dump_code.py compute_pool_usage $CONST_SYM_FILE $CONST_INPUT_PROG $start_addr_hex |

    # python3 $SCRIPT_PATH/dump_code.py compute_branch_without_link_labels $start_addr_hex $CONST_SYM_FILE |

    # # get rid of the content prior to the instructions and make the instructiones \t padded
    # sed "s/\s*\([a-f0-9]*\):\s*\([a-f0-9]* \([a-f0-9]*\|\)\)\s*\(.*\)/\t\4/g" |

    # # get rid of the padded spacing after the instruction
    # sed "s/\(\t[a-z.]*\)\s*\(.*\)/\1 \2/g" |

    # python3 $SCRIPT_PATH/dump_code.py last_zeros_to_balign |

    # python3 $SCRIPT_PATH/dump_code.py shorten_rlists |

    # python3 $SCRIPT_PATH/dump_code.py hexify_imm_gt_9 |

    # python3 $SCRIPT_PATH/dump_code.py compute_bl_targets $start_addr_hex $CONST_SYM_FILE |

    # python3 $SCRIPT_PATH/dump_code.py encode_movflag_virtual_inst $CONSTS_EVENTS_FILE |

    cat
)

echo "\tthumb_local_start"
echo "$symbol_name:"
echo "$dump1"
echo "\tthumb_func_end $symbol_name"