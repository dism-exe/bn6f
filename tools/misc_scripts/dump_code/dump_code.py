import sys
import os
import re
import argparse
from typing import Dict, List, Optional, Tuple, TypeVar
import checkpipe as pipe

T = TypeVar('T')
U = TypeVar('U')

# import time
# time_file = open('time.log', 'w')

# def capture_time(start: time.time, time_file, prefix: str):
#     end = time.time()

#     diff_ms = (end - start) * 1000

#     time_file.write(f"{prefix}: {diff_ms}ms\n")

def file_debug_log(s):
    path = 'debug.log'

    if file_debug_log._first:
        file_debug_log._first = False

        with open(path, 'w') as f:
            f.write(s + '\n')
    else:
        with open(path, 'a') as f:
            f.write(s + '\n')

file_debug_log._first = True


def try_find_first_in_vec_tup_2(vec: List[Tuple[T, U]], match: T) -> Optional[Tuple[T, U]]:
    for elem in vec:
        t = elem[0]
        u = elem[1]

        if t == match:
            return (t, u)
    return None

def reg_to_num(reg: str) -> int:
    if reg.startswith("r"):
        n = int(reg[1:])

        if n > 12:
            raise Exception(f"register value starting with r must not be above 12: {n}")

        return n
    elif reg == "sp":
        return 13
    elif reg == "lr":
        return 14
    elif reg == "pc":
        return 15
    else:
        raise Exception(f"invalid reg: {reg}")


def num_to_reg(n: int) -> str:
    if n >= 0 and n <= 12:
        return f"r{n}"
    elif n == 13:
        return "sp"
    elif n == 14:
        return "lr"
    elif n == 15:
        return "pc"
    else:
        raise Exception(f"invalid reg num: {n}")


def app_shorten_rlists(_args: argparse.Namespace):
    inp = sys.stdin.read()

    for line in inp.splitlines():
        inst_with_rlist = (line.startswith("\tpush {") or line.startswith("\tpop {")) and line.endswith("}")

        if inst_with_rlist:
            lcurly_index = line.index("{")
            rcurly_index = line.index("}")

            rlist_s = line[lcurly_index+1:rcurly_index]

            rlist = (
                rlist_s
                    .split(",")
                    .__iter__()
                    | pipe.OfIter[str].map(lambda reg: reg_to_num(reg.strip()))
                    | pipe.OfIter[int].to_list()
            )

            def get_rlist_compressed(rlist: List[int]) -> List[Tuple[int, int]]:
                mut_rlist_compressed = []
                mut_opt_last_tup = None

                for n in rlist:
                    if mut_opt_last_tup == None:
                        mut_opt_last_tup = (n, n)
                    else:
                        if n == mut_opt_last_tup[1] + 1:
                            mut_opt_last_tup = (mut_opt_last_tup[0], n)
                        else:
                            mut_rlist_compressed.append(mut_opt_last_tup)
                            mut_opt_last_tup = (n, n)

                if mut_opt_last_tup != None:
                    mut_rlist_compressed.append(mut_opt_last_tup)

                return mut_rlist_compressed

            rlist_compressed = get_rlist_compressed(rlist)

            def rlist_compressed_to_str(rlist_compressed: List[Tuple[int, int]]) -> str:
                mut_output = ""

                for (n, m) in rlist_compressed:
                    if n == m:
                        mut_output += num_to_reg(n) + ", "
                    else:
                        mut_output += num_to_reg(n) + "-" + num_to_reg(m) + ", "

                if mut_output.endswith(", "):
                    mut_output = mut_output[:-2]

                return mut_output

            new_rlist_s = rlist_compressed_to_str(rlist_compressed)

            new_line = line.replace(rlist_s, new_rlist_s)

            print(new_line)
        else:
            print(line)


def app_hexify_imm_gt_9(_args: argparse.Namespace):
    inp = sys.stdin.read()

    imm_regex = re.compile(".*#([0-9]*)(?:]|$)")

    for line in inp.splitlines():
        m = imm_regex.match(line)

        if m == None:
            print(line)
        else:
            n = int(m[1])

            if n > 9:
                new_line = line.replace(str(n), hex(n))
                print(new_line)
            else:
                print(line)


# Not necessary, the repository uses small imm
def app_upper_hex_imm(_args: argparse.Namespace):
    inp = sys.stdin.read()

    imm_regex = re.compile(".*#(0x[0-9a-f]*)(?:]|$)")

    for line in inp.splitlines():
        m = imm_regex.match(line)

        if m == None:
            print(line)
        else:
            n = int(m[1], 16)

            new_line = line.replace(hex(n), hex(n).upper().replace("X", "x"))
            print(new_line)


def os_system(cmd: str) -> str:
    import subprocess

    output = subprocess.run(
        cmd,
        shell=True,
        capture_output=True,
        text=True
    ).stdout

    return output


def filter_out_thumb_flag(ea: int) -> int:
    if ea % 2 == 1:
        return ea - 1
    else:
        return ea


def read_sym_file(sym_file: str) -> List[Tuple[int, str]]:
    mut_out = []

    with open(sym_file, 'r') as f:
        for line in f.readlines():
            tokens = line.split(' ')
            ea = int(tokens[0], 16)
            sym = tokens[-1].strip()

            if sym == '':
                raise Exception('Expected to be able to get a symbol for (ea {ea:08x})');

            mut_out.append((filter_out_thumb_flag(ea), sym))

    return mut_out


def get_ea_to_sym_map(syms: List[Tuple[int, str]]) -> Dict[int, str]:
    mut_out = {}
    for (ea, sym) in syms:

        if ea not in mut_out:
            mut_out[ea] = sym
    return mut_out


def ea_to_symbol_using_sym_map(ea_to_sym_map: Dict[int, str], ea: int) -> Optional[str]:
    if ea in ea_to_sym_map:
        return ea_to_sym_map[ea]
    else:
        return None


# Given any ea, gives its distance from the closest smallest identifiable ea
def get_ea_to_sym_ord_map(syms: List[Tuple[int, str]]) -> Dict[int, Tuple[str, int]]:
    mut_out = {}
    mut_prev_ea_sym = None

    mut_prev_nondata_nonloc_name = ''

    for (ea2, sym2) in syms:
        if sym2 == '':
            sym2 = 'ERR_EMPTY_STR' # Do not silently propagate an empty string as a symbol

        if mut_prev_ea_sym is not None:
            (ea1, sym1) = mut_prev_ea_sym

            # Heuristic to imbue local labels with function information
            if sym1.startswith('loc_'):
                sym1 = mut_prev_nondata_nonloc_name + '.' + sym1

            diff = ea2 - ea1

            if diff >= 2 and diff < 100000:
                for i in range(1, diff):
                    mut_out[ea1 + i] = (sym1, i)

        mut_prev_ea_sym = (ea2, sym2)
        mut_out[ea2] = (sym2, 0)

        label_is_data = (
            sym2.startswith('off_') or
            sym2.startswith('byte_') or
            sym2.startswith('unk_') or
            sym2.startswith('hword_') or
            sym2.startswith('dword_')
        )

        if not label_is_data and not sym2.startswith('loc_'):
            mut_prev_nondata_nonloc_name = sym2

    return mut_out


# Finds the target ea that's just before the given ea
def ea_to_maximum_ea_before_using_syms(syms: List[Tuple[int, str]], ea: int) -> Optional[int]:
    mut_out = None
    for (cur_ea, _) in syms:
        if cur_ea < ea:
            if mut_out is None:
                mut_out = cur_ea
            else:
                mut_out = max(cur_ea, mut_out)

    return mut_out


def split_space_ignore_extra(s: str) -> List[str]:
    mut_out = []

    tokens = s.replace('\t', ' ').split(' ')

    for token in tokens:
        if token.strip() == '':
            continue
        mut_out.append(token)

    return mut_out


def ea_to_symbol(sym_file: str, ea: int) -> Optional[str]:
    ea_s = f"{ea:08x}"

    entry = os_system(f"cat {sym_file} | grep {ea_s}")

    entry_lines = entry.splitlines()

    if len(entry_lines) != 1:
        return None
    else:
        # can look like "0809f904 g 00000008 sub_809F904"
        # can also look like "080022ec l       rom_1b70       00000000 DecompressLZ16_ROM_End"

        entry_tokens = split_space_ignore_extra(entry);

        if len(entry_tokens) < 4:
            raise Exception("Sym file should contain 4 entries at a minimum")

        # this case would mean we didn't get a grep result on the first token
        if int(entry_tokens[-2], 16) == ea:
            return None

        return entry_tokens[-1].strip()


def symbol_to_ea(sym_file: str, symbol: str) -> Optional[int]:
    entry = os_system(f"cat {sym_file} | grep {symbol}")

    def filtered_sym_entries_by_exact_match(lines: List[str], symbol: str) -> List[str]:
        mut_out = []

        for line in lines:
            tokens = line.split(" ")
            if len(tokens) == 0:
                continue

            sym = tokens[-1]

            if symbol == sym:
                mut_out.append(line)

        return mut_out

    entry_lines = filtered_sym_entries_by_exact_match(entry.splitlines(), symbol)

    if len(entry_lines) != 1:
        raise Exception(f"Expected 1 entry for symbol {symbol}: {entry_lines}")
    else:
        # looks like "0809f904 g 00000008 sub_809F904"
        entry_tokens = entry_lines[0].split(" ")

        ea = int(entry_tokens[0].strip(), 16)

        return ea


def symbol_to_end_ea(sym_file: str, symbol: str) -> Optional[int]:
    entry = os_system(f"cat {sym_file} | grep {symbol} -A1")

    def filtered_sym_entries_by_exact_match(lines: List[str], symbol: str) -> List[Tuple[str, str]]:
        mut_out = []

        # Remove seperator lines
        filtered_lines = list(filter(lambda l: l != "--", lines))

        # Take into account that every other line must be included
        for i in range(len(filtered_lines)):
            if i == len(filtered_lines) - 1:
                break

            line = filtered_lines[i]
            next_line = filtered_lines[i + 1]

            tokens = line.split(" ")
            if len(tokens) == 0:
                continue

            sym = tokens[-1]

            if symbol == sym:
                mut_out.append((line, next_line))

        return mut_out

    entry_lines = filtered_sym_entries_by_exact_match(entry.splitlines(), symbol)

    if len(entry_lines) != 1:
        raise Exception(f"Expected 1 entry for symbol {symbol}: {entry_lines}")
    else:
        # looks like
        # ```
        # 080963c4 g 00000000 some_code_80963C4
        # 080963e8 l 00000000 ccs_80963E8
        # ```

        line = entry_lines[0][0]
        next_line = entry_lines[0][1]

        entry_tokens = next_line.split(" ")

        return int(entry_tokens[0].strip(), 16)


def app_compute_bl_targets(args: argparse.Namespace):
    inp = sys.stdin.read()

    dump_ea: int = int(args.dump_ea, 16)
    sym_file = args.sym_file

    for line in inp.splitlines():
        if line.startswith("\tbl "):
            target_s = line.replace("\tbl ", "")
            target_val = int(target_s, 16)

            # This is a 23-bit 2's compliment value but we won't see that in its parsed representation
            # It will appear as an unsigned 32-bit integer.
            if target_val > 2**22:
                signed_target_val = target_val - 2**32
            else:
                signed_target_val = target_val

            target_ea = dump_ea + signed_target_val

            symbol = ea_to_symbol(sym_file, target_ea)

            if symbol == None:
                # It is possible the binary did not globally expose the symbol for this call
                symbol = f'localfn_{target_ea:07x}'

            new_line = line.replace(target_s, symbol)
            print(new_line)
        else:
            print(line)


# Format is similar to
# "  16:   dd00            ble     0x1a"
def get_line_inst_idx(line: str) -> int:
    val = int(line.strip().replace("\t", " ").split(" ")[0].replace(":", ""), 16)

    return val


# Format is similar to
# "  16:   dd00            ble     0x1a"
def get_last_line_inst_idx(inp: str) -> Optional[int]:
    mut_last_line_val = None

    for line in inp.splitlines():
        if ':' in line:
            mut_last_line_val = get_line_inst_idx(line)

    return mut_last_line_val


def app_compute_branch_without_link_labels(args: argparse.Namespace):
    inp = sys.stdin.read()

    dump_ea = int(args.dump_ea, 16)
    sym_file = args.sym_file

    # We're concerned with lines of the form
    # "  16:   dd00            ble     0x1a"

    last_line_val = get_last_line_inst_idx(inp)

    def is_branch_without_link(line: str) -> bool:
        if ':' not in line:
            return False

        line1 = " ".join(line.split(":")[1].strip().replace("\t", " ").split(" ")[1:]).strip()

        if 'bl ' in line1:
            return False

        for inst in ['ble ', 'bne ', 'beq ', 'blt ', 'bgt ', 'bge ', 'b ']:
            if line1.startswith(inst):
                return True

        return False


    def get_branch_target(line: str) -> int:
        return int(line.replace("\t", " ").split(" ")[-1], 16)

    def get_local_annotated_labeled_lines(inp: str, last_line_val: int) -> List[Tuple[int, bool]]:
        mut_out = []

        for line in inp.splitlines():
            if is_branch_without_link(line):
                n = get_branch_target(line)

                # handle 2's compliment
                if n > 2**31:
                    n = n - 2**32

                if abs(n) > last_line_val:
                    mut_out.append((n, False))
                else:
                    mut_out.append((n, True))

        return mut_out

    local_annotated_label_lines = get_local_annotated_labeled_lines(inp, last_line_val)

    for line in inp.splitlines():
        if ':' in line:
            cur_line_val = get_line_inst_idx(line)

            if (cur_line_val, True) in local_annotated_label_lines:
                label_ea = dump_ea + cur_line_val

                print(f"loc_{filter_out_thumb_flag(label_ea):07x}:")

            if is_branch_without_link(line):
                n = get_branch_target(line)
                n_as_label_ea = dump_ea + n

                if (n, True) in local_annotated_label_lines:
                    n_as_label = f"loc_{filter_out_thumb_flag(n_as_label_ea):07x}"
                elif (n, False) in local_annotated_label_lines:
                    n_as_label = ea_to_symbol(sym_file, n_as_label_ea)

                    if n_as_label is None:
                        n_as_label_1 = ea_to_symbol(sym_file, filter_out_thumb_flag(n_as_label_ea))

                        if n_as_label_1 is None:
                            # It should still be a local label
                            n_as_label = f"loc_{filter_out_thumb_flag(n_as_label_ea):07x}"
                        else:
                            n_as_label = n_as_label_1

                else:
                    raise Exception(f"Did not encounter target {n:x}h")

                new_line = line.replace(hex(n), n_as_label)

                print(new_line)

            else:
                print(line)
        else:
            print(line)


class AppComputePoolUsage:
    @staticmethod
    def try_get_pool_ldr_offset_and_islocal(line, last_line_inst_idx: int) -> Optional[Tuple[int, bool]]:
        if 'ldr' in line and '[pc, #' in line and ']' in line and '; (' in line and ')' in line:
            lparen_idx = line.index('(')
            rparen_idx = line.index(')')

            val = int(line[lparen_idx+1:rparen_idx], 16)

            if val % 4 != 0:
                raise Exception(f"Since pool usage is 32-bit, it should be aligned with 4 but {val:X} is not")

            if val > last_line_inst_idx:
                return (val, False)
            else:
                return (val, True)
        else:
            return None

    @staticmethod
    def get_line_to_pool32_loc_and_islocal_map(inp: str, last_line_inst_idx: int) -> Dict[str, Tuple[int, bool]]:
        cls = AppComputePoolUsage
        mut_out = {}

        for line in inp.splitlines():
            opt_val = cls.try_get_pool_ldr_offset_and_islocal(line, last_line_inst_idx)

            if opt_val is not None:
                mut_out[line] = opt_val

        return mut_out

    @staticmethod
    def try_get_u32_data_for_line(line: str) -> Optional[int]:
        try:
            # Expects lines similar to:
            # "  00:  abcd ef01       myop   ..."
            #    ^inst_idx ^ data_u16_2
            #         ^ data_u16_1

            line1 = line.split(":")[1].strip().replace("\t", " ")

            data_u16_1 = line1.split(" ")[0]

            data_u16_2 = line1.replace(data_u16_1, "", 1).strip().split(" ")[0]

            if len(data_u16_2) != 4:
                return None

            n1 = int(data_u16_1, 16)
            n2 = int(data_u16_2, 16)

            return (n2 << 16) + n1
        except Exception:
            return None

    @staticmethod
    def get_u16_data_for_line(line: str) -> int:
        token = line.split(":")[1].strip().replace("\t", " ").split(" ")[0]

        try:
            return int(token, 16)
        except Exception as e:
            # Caller must uphold that this works
            raise

    @staticmethod
    def read_aligned_u32_in_rom(ea: int, rom_file: str) -> int:
        ea1 = ea & (~0x8000000)

        if ea1 % 4 != 0:
            raise Exception(f"Expected ea 0x{ea:X} to be word aligned.")

        with open(rom_file, 'rb') as f:
            f.seek(ea1)
            bstr = f.read(4)

            val = bstr[0] + (bstr[1] << 8) + (bstr[2] << 16) + (bstr[3] << 24)

            return val

    @staticmethod
    def calc_pool32_ea(dump_ea: int, loc: int) -> int:
        # This value will need to be read from ROM

        # Handle thumb odd ea:
        if dump_ea % 2 == 1:
            dump_ea = dump_ea - 1

        if dump_ea % 4 == 0:
            pool32_ea = dump_ea + loc
        elif dump_ea % 2 == 0:
            pool32_ea = dump_ea - 2 + loc
        else:
            raise Exception(f"dump_ea 0x{dump_ea:X} must be aligned by 2")

        return pool32_ea

    @staticmethod
    def get_loc_to_pool32_val_map(inp: str, loc_and_islocal_vec: List[Tuple[int, bool]], dump_ea: int, rom_file: str) -> Dict[int, int]:
        cls = AppComputePoolUsage
        mut_opt_lower = None
        mut_out = {}

        for line in inp.splitlines():
            cur_line_inst_idx = get_line_inst_idx(line)

            # If the line we're at is already interpreted as a u32 op, we can retrieve the data in one go
            opt_data32 = cls.try_get_u32_data_for_line(line)

            if opt_data32 is not None:
                # See if the location has been referred to as a pool_loc
                opt_find_tup = try_find_first_in_vec_tup_2(loc_and_islocal_vec, cur_line_inst_idx)

                if opt_find_tup is not None:
                    islocal = opt_find_tup[1]

                    if islocal:
                        mut_out[cur_line_inst_idx] = opt_data32
                    else:
                        # non-local handled later
                        pass
                else:
                    # Not a pool location
                    pass
            else:
                # We will need to retreive the data from two lines of u16 data
                # We will put the lower half in `mut_opt_lower` for next iteration.

                # See if the location has been referred to as a pool_loc
                opt_find_tup = try_find_first_in_vec_tup_2(loc_and_islocal_vec, cur_line_inst_idx)

                if opt_find_tup is not None:
                    islocal = opt_find_tup[1]

                    if islocal:
                        data = cls.get_u16_data_for_line(line)

                        mut_opt_lower = data
                    else:
                        # non-local handled later
                        pass
                else:

                    # On the `cur_line_inst_idx - 2`,
                    # This is done because we are loading two u16s to make a u32 pool data. These are expected to be two u16-sized lines.
                    # Since the pool offset is at the lower u16 (`pool_loc + 0`), then the upper u16 should be 2 bytes later:
                    # `pool_loc + 2`, but because we're at the line of `pool_loc + 2`, we would've registered a request for a u32 pool 2 bytes back,
                    # at `pool_loc`, hence `cur_line_inst_idx - 2`.
                    opt_find_tup = try_find_first_in_vec_tup_2(loc_and_islocal_vec, cur_line_inst_idx - 2)

                    if opt_find_tup is not None:
                        islocal = opt_find_tup[1]

                        if islocal:
                            data = cls.get_u16_data_for_line(line)
                            if mut_opt_lower is None:
                                raise Exception("Expected to have found lower u16 already")

                            mut_out[cur_line_inst_idx - 2] = mut_opt_lower | (data << 16)
                            mut_opt_lower = None
                        else:
                            # non-local handled later
                            pass
                    else:
                        # unrelated line: not requested addr to get pool u32 data from
                        pass

        for (loc, is_local) in loc_and_islocal_vec:
            if not is_local:
                pool32_ea = cls.calc_pool32_ea(dump_ea, loc)

                val = cls.read_aligned_u32_in_rom(pool32_ea, rom_file)
                mut_out[loc] = val

        return mut_out

    @staticmethod
    def app_compute_pool_usage(args: argparse.Namespace):
        cls = AppComputePoolUsage
        inp = sys.stdin.read()

        sym_file = args.sym_file
        rom_file = args.rom_file
        dump_ea: int = int(args.dump_ea, 16)

        # We're concerned with lines similar to
        # "   2:   4803            ldr     r0, [pc, #12]   ; (0x10)"
        #     ^inst_idx            ^op                        ^pool_loc
        #          ^data_u16_1

        last_line_inst_idx = get_last_line_inst_idx(inp)

        if last_line_inst_idx is None:
            raise Exception("Failed to get last line inst idx")

        # Gets the `pool_loc` from each processed line.
        # We also trace whether the pool_loc is local or not. If it's > last_line_inst_idx (which is the "N:" at the beginning of the last line)
        # then it's non-local: ie. it's outside the dump range.
        line_to_pool32_loc_and_islocal_map = cls.get_line_to_pool32_loc_and_islocal_map(inp, last_line_inst_idx)

        if len(line_to_pool32_loc_and_islocal_map.keys()) == 0:
            # Nothing to do. Pass input as is.
            print(inp)
            return

        # Retrieve the actual data for each pool_loc.
        loc_to_pool32_val_map = cls.get_loc_to_pool32_val_map(inp, line_to_pool32_loc_and_islocal_map.values(), dump_ea, rom_file)

        (least_pool_location, least_pool_location_is_local) = sorted(line_to_pool32_loc_and_islocal_map.values())[0]
        (most_pool_location, most_pool_location_is_local) = sorted(line_to_pool32_loc_and_islocal_map.values())[-1]

        for line in inp.splitlines():
            if ':' in line:
                cur_line_inst_idx = get_line_inst_idx(line)
                data = cls.get_u16_data_for_line(line)

                if line in line_to_pool32_loc_and_islocal_map.keys():
                    # "   2:   4803            ldr     r0, [pc, #12]   ; (0x10)"
                    (loc, is_local) = line_to_pool32_loc_and_islocal_map[line]
                    val = loc_to_pool32_val_map[loc]
                    opt_symbol = ea_to_symbol(sym_file, val)
                    opt_sub_symbol = ea_to_symbol(sym_file, val - 1) # strips out thumb flag

                    lbrac_index = line.index("[")

                    if opt_symbol is not None:
                        eq_s = f"={opt_symbol}"
                    elif opt_sub_symbol is not None:
                        eq_s = f"={opt_sub_symbol}"
                    else:
                        eq_s = f"=0x{val:x}"

                    if is_local:
                        new_line = line[:lbrac_index] + eq_s
                    else:
                        # For a global pool use, make explicit use of the label
                        loc_ea = cls.calc_pool32_ea(dump_ea, loc)
                        opt_loc_symbol = ea_to_symbol(sym_file, loc_ea)

                        if opt_loc_symbol is None:
                            # We couldn't find the label for the pool location. It might not be globally exposed by the source code.
                            new_line = line[:lbrac_index] + f'pool_{loc_ea:07x}' +  " // " + eq_s
                        else:
                            new_line = line[:lbrac_index] + opt_loc_symbol +  " // " + eq_s


                    print(new_line)
                else:
                    if least_pool_location_is_local and cur_line_inst_idx == (least_pool_location - 2) and data == 0:
                        # This is just padding.
                        continue
                    elif cur_line_inst_idx == least_pool_location:
                        print("\t.pool")
                    elif cur_line_inst_idx > most_pool_location + 2:
                        # This can happen with functions that have pool in the middle of their body.
                        print(line)
                        #raise Exception(f"unused values from shift (cur_line_inst_idx 0x{cur_line_inst_idx:x}) > (most_pool_location 0x{most_pool_location + 2:x}), (ea 0x{dump_ea + cur_line_inst_idx:x}) > (exp_max_ea 0x{dump_ea + most_pool_location + 2:x})")
                    elif cur_line_inst_idx > least_pool_location:
                        # pool values do not need to be printed
                        continue
                    else:
                        print(line)
            else:
                print(line)


def app_get_symbol_boundary(args: argparse.Namespace):
    symbol = args.symbol
    end = args.end
    sym_file = args.sym_file

    if end:
        opt_ea = symbol_to_end_ea(sym_file, symbol)
    else:
        opt_ea = symbol_to_ea(sym_file, symbol)

    if opt_ea is None:
        print("Error: failed to get ea")
        exit(1)
    else:
        print(f"0x{opt_ea:08x}")


def app_last_zeros_to_balign(_args: argparse.Namespace):
    inp = sys.stdin.read()

    lines = inp.splitlines()

    for (i, line) in enumerate(lines):
        if i >= len(lines) - 2: # There can be a new line at the end so it would make an empty line
            if line.strip() == "mov r0, r0":
                print("\t.balign 4, 0")
            else:
                print(line)
        else:
            print(line)


def read_events_file(events_file: str) -> Dict[int, str]:
    mut_i = 0
    mut_out = {}

    with open(events_file, 'r') as f:
        for line in f.readlines():
            if line.strip().startswith("enum "):
                event_sym = line.strip().split(" ")[1]
                mut_out[mut_i] = event_sym
                mut_i += 1

    return mut_out


def app_encode_movflag_virtual_inst(args: argparse.Namespace):
    inp = sys.stdin.read()

    lines = inp.splitlines()

    events_file = args.events_file

    # Nothing to process
    if events_file == "" or events_file == "None":
        for line in lines:
            print(line)
        return

    events = read_events_file(events_file)

    mut_skip = 0

    def try_parse_moveflag_inst_val(line1: str, line2: str) -> Optional[int]:
        if not line1.startswith("mov r0, #"):
            return None

        if not line2.startswith("mov r1, #"):
            return None

        line1_hash_idx = line1.index('#')
        line2_hash_idx = line1.index('#')

        if '0x' in line1:
            n1 = int(line1[line1_hash_idx+1:], 16)
        else:
            n1 = int(line1[line1_hash_idx+1:], 10)

        if '0x' in line2:
            n2 = int(line2[line2_hash_idx+1:], 16)
        else:
            n2 = int(line2[line2_hash_idx+1:], 10)

        return (n1 << 8) + n2

    def try_get_movflag_inst_val(i: int, lines: List[str]) -> Optional[int]:
        if i + 3 >= len(lines):
            return None

        line1 = lines[i].strip()
        line2 = lines[i+1].strip()
        line3 = lines[i+2].strip()

        if line3.startswith('bl '):
            mut_has_relevant_inst = False

            for inst in ['ClearEventFlagFromImmediate', 'TestEventFlagFromImmediate', 'SetEventFlagFromImmediate', 'ToggleEventFlagFromImmediate']:
                if inst in line3:
                    mut_has_relevant_inst = True
                    break

            if not mut_has_relevant_inst:
                return None

            return try_parse_moveflag_inst_val(line1, line2)
        else:
            if i + 4 >= len(lines):
                return None

            line4 = lines[i+3].strip()

            if line4.startswith('bl '):
                mut_has_relevant_inst = False

                for inst in ['ClearEventFlagRangeFromImmediate', 'TestEventFlagRangeFromImmediate', 'SetEventFlagRangeFromImmediate', 'ToggleEventFlagRangeFromImmediate']:
                    if inst in line3:
                        mut_has_relevant_inst = True
                        break

                if not mut_has_relevant_inst:
                    return None

                return try_parse_moveflag_inst_val(line1, line2)
            else:
                return None

    for (i, line) in enumerate(lines):
        if mut_skip != 0:
            mut_skip -= 1
            continue
        else:
            opt_n = try_get_movflag_inst_val(i, lines)

            if opt_n is None:
                print(line)
            else:
                event_sym = events[opt_n]
                print(f'\tmovflag {event_sym}')
                mut_skip = 1


def try_parse_hex(s: str) -> Optional[int]:
    try:
        return int(s, 16)
    except Exception:
        return None


class AppEaToSymFilter:
    class Context:
        def __init__(self, skip_after: bool, shift: int, ea_to_sym_ord_map: Dict[int, Tuple[str, int]], comment_original: bool):
            self.skip_after = skip_after
            self.shift = shift
            self.ea_to_sym_ord_map = ea_to_sym_ord_map
            self.comment_original = comment_original

    @staticmethod
    def get_ea_symbol_or_shifted_or_default(ea_token: str, ea: int, ctx: 'AppEaToSymFilter.Context') -> str:
        # Also look for compressed pointers
        if (ea & 0x80000000) != 0:
            ea -= 0x80000000
            is_compressed = True
        else:
            is_compressed = False

        if ea not in ctx.ea_to_sym_ord_map:
            return 'ERR_NOT_FOUND:' + ea_token

        (sym_just_before, diff) = ctx.ea_to_sym_ord_map[ea]

        if diff == 0:
            mut_out = f'{sym_just_before}'
        else:
            if diff > 1:
                mut_out = f'{sym_just_before}+{diff:02X}'
            else:
                mut_out = f'{sym_just_before}+{diff}'

        if is_compressed:
            mut_out = mut_out + ' + COMPRESSED_PTR_FLAG'

        return mut_out

    @staticmethod
    # We are interested in replacing ea tokens in the input string
    def get_ea_tokens_and_parsed(s: str, skip_after: bool) -> List[Tuple[str, int]]:
        if skip_after is not None and skip_after in s:
            s1 = s[:s.index(skip_after)]
        else:
            s1 = s

        s2 = s1.replace("\t", " ").replace("\n", " ").replace("=", " ").replace(":", " ").replace(",", " ")

        tokens = s2.split(" ")
        mut_out = []

        for token in tokens:
            if token.strip() == "":
                continue

            opt_token_n = try_parse_hex(token)

            if opt_token_n is not None:
                token_n_no_comp = opt_token_n & 0x7FFFFFFF
                if token_n_no_comp >= 0x2000000 and token_n_no_comp < 0x9000000:
                    mut_out.append((token.strip(), opt_token_n))

        return mut_out

    @staticmethod
    def process_line(line: str, ctx: 'AppEaToSymFilter.Context'):
        cls = AppEaToSymFilter

        ea_tokens_and_parsed = cls.get_ea_tokens_and_parsed(line, ctx.skip_after)

        mut_out = line
        mut_replaced_tokens: List[str] = []

        for (ea_token, ea) in ea_tokens_and_parsed:
            mut_sym = cls.get_ea_symbol_or_shifted_or_default(ea_token, ea + ctx.shift, ctx)

            if ctx.comment_original:
                mut_sym = f'/*{ea_token}*/ {mut_sym}'

            if ea_token not in mut_replaced_tokens:
                mut_replaced_tokens.append(ea_token)

                if '_' + ea_token in mut_out:
                    mut_out = mut_out.replace('_' + ea_token, '<<<PLACEHOLDER>>>')
                    mut_out = mut_out.replace(ea_token, mut_sym)
                    mut_out = mut_out.replace('<<<PLACEHOLDER>>>', '_' + ea_token)
                else:
                    mut_out = mut_out.replace(ea_token, mut_sym, 1)

        print(mut_out)

    @staticmethod
    def app_ea_to_sym_filter(args: argparse.Namespace):
        cls = AppEaToSymFilter

        sym_file = args.sym_file
        shift = int(args.shift, 10)
        file = args.file
        skip_after = args.skip_after
        comment_original = args.comment_original

        syms = read_sym_file(sym_file)
        ea_to_sym_ord_map = get_ea_to_sym_ord_map(syms)

        ctx = cls.Context(skip_after, shift, ea_to_sym_ord_map, comment_original)

        if file:
            with open(file, 'r') as f:
                lines = f.readlines()

            for line in lines:
                cls.process_line(line.strip(), ctx)
        else:
            for line in sys.stdin:
                cls.process_line(line.strip(), ctx)


def app_filter_out_thumb_flag(args: argparse.Namespace):
    ea = int(args.ea, 16)

    print(f'0x{filter_out_thumb_flag(ea):08x}')


def main(args: argparse.Namespace):
    if args.subcommand == 'shorten_rlists':
        app_shorten_rlists(args)

    if args.subcommand == 'hexify_imm_gt_9':
        app_hexify_imm_gt_9(args)

    if args.subcommand == 'upper_hex_imm':
        app_upper_hex_imm(args)

    if args.subcommand == 'compute_bl_targets':
        app_compute_bl_targets(args)

    if args.subcommand == 'compute_branch_without_link_labels':
        app_compute_branch_without_link_labels(args)

    if args.subcommand == 'compute_pool_usage':
        AppComputePoolUsage.app_compute_pool_usage(args)

    if args.subcommand == 'get_symbol_boundary':
        app_get_symbol_boundary(args)

    if args.subcommand == 'last_zeros_to_balign':
        app_last_zeros_to_balign(args)

    if args.subcommand == 'encode_movflag_virtual_inst':
        app_encode_movflag_virtual_inst(args)

    if args.subcommand == 'ea_to_sym_filter':
        AppEaToSymFilter.app_ea_to_sym_filter(args)

    if args.subcommand == 'filter_out_thumb_flag':
        app_filter_out_thumb_flag(args)


def parse_cmdline_args() -> argparse.Namespace:
    desc = '''
    Code dumping utilities
    '''

    p = argparse.ArgumentParser(prog='dump_code', description=desc,
        formatter_class=argparse.RawDescriptionHelpFormatter)

    p.add_argument('-v', '--verbose', action='count', default=0,
                   help='Increase verbosity level (use -v, -vv, or -vvv)')

    subparsers = p.add_subparsers(dest='subcommand')
    subparsers.required = True

    sp = subparsers.add_parser('shorten_rlists',
                               help='Shorten rlists by using dash ranges instead of listing each register')

    sp = subparsers.add_parser('hexify_imm_gt_9',
                               help='All immediates greated than 9 become hexadecimal')

    sp = subparsers.add_parser('upper_hex_imm',
                               help='make hexademical immediates use A-F instead of a-f')

    sp = subparsers.add_parser('compute_bl_targets',
                               help='Computes the symbol associated with a bl instruction')
    sp.add_argument('dump_ea',
                help='ea of the start of the code that we are dumping from')
    sp.add_argument('sym_file',
                help='The sym file is used to convert an ea to its corresponding symbol')

    sp = subparsers.add_parser('compute_branch_without_link_labels',
                               help='Adds local labels and changes branches to refer to them and annotates global labels via syms')
    sp.add_argument('dump_ea',
                help='ea of the start of the code that we are dumping from')
    sp.add_argument('sym_file',
                help='The sym file is used to convert an ea to its corresponding symbol')

    sp = subparsers.add_parser('compute_pool_usage',
                               help='Computes the values associated with pool usage like ldr rN, =someVal')
    sp.add_argument('sym_file',
                help='The sym file is used to convert an ea to its corresponding symbol')
    sp.add_argument('rom_file',
                help='The ROM file to get data from')
    sp.add_argument('dump_ea',
                help='ea of the start of the code that we are dumping from')

    sp = subparsers.add_parser('get_symbol_boundary',
                               help='Computes the ea for a symbol or its end boundary from the syms file')
    sp.add_argument('sym_file',
                help='The sym file is used to convert an ea to its corresponding symbol')
    sp.add_argument('symbol',
                help='The symbol to get the boundary eas for')
    sp.add_argument('--end',
                action='store_true',
                help='retrieve the end boundary ea')

    sp = subparsers.add_parser('last_zeros_to_balign',
                               help='If the code ends with mov r0, r0, it is likely a .balign 4, 0')

    sp = subparsers.add_parser('encode_movflag_virtual_inst',
                               help='Some uses of mov can be encoded as movflag')
    sp.add_argument('events_file',
                help='The file containing all the event constants')

    sp = subparsers.add_parser('ea_to_sym_filter',
                               help='Replaces any ea with a symbol. And adds a +N if it is between symbols')
    sp.add_argument('sym_file',
                help='The sym file is used to convert an ea to its corresponding symbol')
    sp.add_argument('--shift',
                default='0',
                help='An amount to shift the eas parsed by')
    sp.add_argument('--file',
                help='Read from a file instead of directly on stdin')
    sp.add_argument('--skip-after',
                help='substring to skip converting values after')
    sp.add_argument('--comment-original',
                action='store_true',
                    help='Keep the original filtered as comment: /*orig*/ new')

    sp = subparsers.add_parser('filter_out_thumb_flag',
                               help='For a thumb ea, removes the odd bit. Keeps the ea the same otherwise.')
    sp.add_argument('ea',
                help='possibly thumb ea to strip the odd bit from')

    sp = subparsers.add_parser('unittest',
                    help='run the unit tests instead of main')

    return(p.parse_args())


def _main():
    if sys.version_info<(3,5,0):
        sys.stderr.write("You need python 3.5 or later to run this script\n")
        sys.exit(1)

    # if you have unittest as part of the script, you can forward to it this way
    if len(sys.argv) >= 2 and sys.argv[1] == 'unittest':
        import unittest
        sys.argv[0] += ' unittest'
        sys.argv.remove('unittest')
        print(sys.argv)
        unittest.main()
        exit(0)

    args = parse_cmdline_args()
    return main(args)


import unittest
class Module1UnitTests(unittest.TestCase):
   def test_something(self) -> None:
       self.assertTrue(True, "rigorous test :)")


if __name__ == '__main__':
    _main()
