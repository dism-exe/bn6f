
import analyze_source
import itertools
import time
import parser
import re
import os
import shutil
from analyze_source import debug_print

syms = None
scanned_files = None

def main():
    global syms, scanned_files
    syms, scanned_files = analyze_source.read_source_and_syms()
    time_start = time.time()
    update_function_scope()
    time_end = time.time()
    debug_print("Time taken: %s" % (time_end - time_start))

TAB_THUMB_LOCAL_START_LEN = len("\tthumb_local_start")
TAB_THUMB_FUNC_START_SPACE_LEN = len("\tthumb_func_start ")

def change_function_to_thumb_func_start(sym):
    lines = scanned_files[sym.filename].lines
    for i in range(sym.line_num - 1, -1, -1):
        line = lines[i]
        if line.strip() == "":
            continue

        split_line = line.split("\tthumb_func_start", 1)
        if len(split_line) == 2:
            if sym.name == split_line[1].strip() or sym.name == split_line[1].split(",")[0].strip():
                return
            else:
                raise RuntimeError("Wrong function name for thumb_func_start (expected: %s, actual: %s)" % (sym.name, split_line[1].strip()))
        elif line.startswith("\tthumb_local_start"):
            commented_lines = scanned_files[sym.filename].commented_lines
            commented_line = commented_lines[i]
            commented_lines[i] = "\tthumb_func_start " + sym.name + commented_line[TAB_THUMB_LOCAL_START_LEN:]
            return
        elif line.startswith("\tarm_local_start"):
            commented_lines = scanned_files[sym.filename].commented_lines
            commented_line = commented_lines[i]
            commented_lines[i] = "\tarm_func_start " + sym.name + commented_line[len("\tarm_local_start"):]
            return
        elif line.startswith("\tarm_func_start"):
            split_line = line.split("\tarm_func_start", 1)
            if len(split_line) == 2:
                if sym.name == split_line[1].strip():
                    return
                else:
                    raise RuntimeError("Wrong function name for arm_func_start (expected: %s, actual: %s)" % (sym.name, split_line[1].strip()))
        elif line.startswith("\tthumb_func_end"):
            raise RuntimeError("Found thumb_func_end before thumb_start for function \"%s\"" % sym.name)
        else:
            raise RuntimeError("Encountered line \"%s\" before thumb_start for function \"%s\"!" % (line, sym.name))
    else:
        raise RuntimeError("Function \"%s\" does not have a thumb_start in its defined file!" % sym.name)

def change_function_to_thumb_local_start(sym):
    lines = scanned_files[sym.filename].lines
    for i in range(sym.line_num - 1, -1, -1):
        line = lines[i]
        if line.strip() == "":
            continue

        split_line = line.split("\tthumb_func_start", 1)
        #if sym.name == "ToggleEventFlagRangeFromImmediate":
        #    debug_print(split_line)
        if len(split_line) == 2:
            if sym.name == split_line[1].strip():
                rest_of_str_index_offset = 0
            elif sym.name == split_line[1].split(",")[0].strip():
                rest_of_str_index_offset = 1
            else:
                raise RuntimeError("Wrong function name for thumb_func_start (expected: %s, actual: %s)" % (sym.name, split_line[1].strip()))
            
            commented_lines = scanned_files[sym.filename].commented_lines
            commented_line = commented_lines[i]
            commented_lines[i] = "\tthumb_local_start" + commented_line[TAB_THUMB_FUNC_START_SPACE_LEN + len(sym.name) + rest_of_str_index_offset:]
            return
        elif line.startswith("\tthumb_local_start") or line.startswith("\tarm_local_start"):
            return
        elif line.startswith("\tthumb_func_end"):
            raise RuntimeError("Found thumb_func_end before thumb_start for function \"%s\"" % sym.name)
        elif line.startswith("\t.set"):
            continue
        elif line.startswith("\tarm_func_start"):
            split_line = line.split("\tarm_func_start", 1)
            if len(split_line) == 2:
                if sym.name == split_line[1].strip():
                    commented_lines = scanned_files[sym.filename].commented_lines
                    commented_line = commented_lines[i]
                    commented_lines[i] = "\tarm_local_start" + commented_line[len("\tarm_local_start") + len(sym.name):]
                    return
                else:
                    raise RuntimeError("Wrong function name for arm_func_start (expected: %s, actual: %s)" % (sym.name, split_line[1].strip()))
        else:
            raise RuntimeError("Encountered line \"%s\" before thumb_start for function \"%s\"!" % (line, sym.name))
    else:
        raise RuntimeError("Function \"%s\" does not have a thumb_start in its defined file!" % sym.name)

def update_function_scope():
    branch_opcodes = set(("beq", "bne", "bcs", "bcc", "bmi", "bpl", "bvs", "bvc", "bhi", "bls", "bge", "blt", "bgt", "ble", "b", "bl"))

    functions = {}

    for sym in syms.values():
        if sym.type == "F":
            functions[sym.name] = sym.filename

    for src_file in scanned_files.values():
        if src_file.filename.startswith("data/dat38"):
            continue
        src_file.line_num = 0
        debug_print(src_file.filename)
        for line in src_file:
            if line.isspace() or line == "":
                continue
            words = parser.for_loop_parse_word_directives(src_file)
            if len(words) == 0:
                # check for opcode
                line = line.strip()
                opcode_parts = line.split(None, 1)
                if len(opcode_parts) > 1 and opcode_parts[0] in branch_opcodes:
                    if opcode_parts[1].endswith("+1"):
                        opcode_parts[1] = opcode_parts[:-2]
                    if opcode_parts[1] in functions and src_file.filename != syms[opcode_parts[1]].filename:
                            change_function_to_thumb_func_start(syms[opcode_parts[1]])
                            del functions[opcode_parts[1]]
            else:
                # test each word to see if it's a function
                # if it is, increment its counter
                for word in words:
                    if word.endswith("+1"):
                        word = word[:-2]
                    if word in functions and src_file.filename != syms[word].filename:
                        change_function_to_thumb_func_start(syms[word])
                        del functions[word]

    # functions that are confirmed local
    for function in functions.keys():
        change_function_to_thumb_local_start(syms[function])

    if os.path.exists("temp/"):
        shutil.rmtree("temp/")
    os.makedirs("temp/")

    for filename, src_file in scanned_files.items():
        os.makedirs("temp/" + os.path.dirname(filename), exist_ok=True)
        with open("temp/" + filename, "w+") as f:
            f.writelines(line + "\n" for line in src_file.commented_lines)

if __name__ == "__main__":
    main()