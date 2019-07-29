import re

from analyze_source import *
import analyze_source
import parser

syms = None
scanned_files = None

def set_syms_and_scanned_files(_syms, _scanned_files):
    global syms
    global scanned_files
    syms = _syms
    scanned_files = _scanned_files

def strip_plus1(label):
    if label.endswith("+1"):
        return label[:-2]
    elif label.endswith(" + 1<<31"):
        return label[:-8]
    return label

def find_colon_label_from_lines(label, src_file, start_index=None):
    if start_index is not None:
        src_file.line_num = start_index

    for line in src_file:
        if line.startswith(label + ":"):
            return True

    return False

def get_ldr_label_contents(label, src_file):
    saved_line_num = src_file.line_num
    #debug_print("ldr line: %s" % (src_file.line_num + 1))
    if label.startswith("."):
        for line in src_file:
            if line.startswith(label):
                break
    else:
        src_file.line_num = syms[label].line_num
        #debug_print("ldr contents line num: %s" % (src_file.line_num + 1))
        if syms[label].filename != src_file.filename:
            global_fileline_error("Could not find ldr label in file! (actual file: \"%s\")" % syms[label].filename) 

    #for i in range(src_file.line_num):
    #    debug_print("cur_line: %s" % src_file.lines[i])
    contents = parse_word_directive(src_file)
    src_file.line_num = saved_line_num
    if len(contents) == 0:
        return ""
    return contents[0]

def find_label_line_num(label, funcstate):
    if not label.startswith("."):
        return syms[label].line_num
    else:
        src_file = scanned_files[funcstate.function.filename]
        saved_line_num = src_file.line_num
        src_file.line_num = funcstate.function.line_num

        for line in src_file:
            if line.startswith(label):
                label_line_num = src_file.line_num
                src_file.line_num = saved_line_num
                return label_line_num

def find_and_position_at_nonlocal_label(label):
    if label.endswith("+1"):
        label = label[:-2]

    sym = syms[label]
    src_file = scanned_files[sym.filename]
    src_file.line_num = sym.line_num
    return src_file

def find_colon_label_in_files(label, input_file=None):
    found_label = False

    if label.endswith("+1"):
        label = label[:-2]

    if input_file is None:
        for key, temp_src_file in scanned_files.items():
            if find_colon_label_from_lines(label, temp_src_file, 0):
                found_label = True
                src_file = temp_src_file
                break
    else:
        src_file = scanned_files[input_file]
        found_label = find_colon_label_from_lines(jumptable, src_file, 0)

    if not found_label:
        if input_file is None:
            raise RuntimeError("Could not find label \"%s\" in scanned files!" % label)
        else:
            raise RuntimeError("Could not find label \"%s\" in file \"%s\"!" % (label, input_file))

    return src_file

def safe_parse_word_directives(src_file, max_words=None, must_be_words=False):
    saved_line_num = src_file.line_num
    words = parse_word_directives(src_file, max_words, must_be_words)
    src_file.line_num = saved_line_num
    return words

def try_parse_word_directives_from_sym(sym):
    src_file = scanned_files[sym.filename]
    saved_line_num = src_file.line_num
    src_file.line_num = sym.line_num
    words = parse_word_directives(src_file, None, True)
    src_file.line_num = saved_line_num
    return words

def get_line_num_at_num_directives_ahead(src_file, num_directives):
    saved_line_num = src_file.line_num
    cur_directive_count = 0

    for line in src_file:
        if cur_directive_count >= num_directives:
            break

        if not line.startswith("\t"):
            line = consume_label(line)

        line = line.strip()
        if line == "":
            continue
        cur_directive_count += 1

    line_num_at_num_directives_ahead = src_file.line_num
    src_file.line_num = saved_line_num
    return line_num_at_num_directives_ahead

word_split_regex = re.compile(r", *")

def parse_word_directive(src_file):
    return parse_word_directives(src_file, 1)

def parse_word_directives(src_file, max_words=None, must_be_words=False):
    first_run = True
    num_words = 0
    words = []

    for line in src_file:
        if not line.startswith("\t"):
            if first_run:
                #if label.startswith("
                line = consume_label(line)
            else:
                break

        line = line.strip()
        if line == "":
            first_run = False
            continue
        elif line.startswith(".word"):
            #if "nullsub" in line:
            #    debug_print("nullsub: \"%s\"" % line.split(None, 1)[1].split(","))
            
            #debug_print("split: %s" % word_split_regex.split(line[5:].strip()))
            words.extend(word_split_regex.split(line[5:].strip()))
            if max_words is not None and len(words) >= max_words:
                if len(words) > max_words:
                    global_fileline_error("Context information: len(words) > max(words)")
                break
        elif first_run and line.startswith(".byte"):
            words.extend(word_split_regex.split(line[5:].strip()))
            if not must_be_words:
                break
            #global_fileline_msg("FakeIDAZeroesWarning: No support for fake IDA zero bytes yet!")
        elif first_run and line.startswith(".hword"):
            words.extend(word_split_regex.split(line[6:].strip()))
            break
        else:
            break

        first_run = False

    return words

def parse_first_register_operand(line):
    register = line.split()[1]
    if register.endswith(","):
        return register[:-1]
    return register

"""
# Assumes colonless nonlocal labels don't exist
def parse_label(line):
    split_line = line.split()
    if len(split_line) == 1:
        return None

    return split_line[0]

    if line.startswith("."):
        check_and_parse_local_label(line)
    else:
"""

def check_and_parse_colon_label(line):
    if line.startswith("\t") or line.startswith("\\") or line.startswith("."):
        return None

    split_line = line.split(":")
    if len(split_line) == 1:
        return None

    return split_line[0]
    
def consume_label(line):
    split_line = line.split(":", 1)
    if len(split_line) > 1:
        return split_line[1]
    else:
        return ""
