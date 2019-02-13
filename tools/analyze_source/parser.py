def find_colon_label_from_lines(label, src_file, start_index=None):
    if start_index is not None:
        src_file.line_num = start_index

    for line in src_file:
        if line.startswith(label + ":"):
            return True

    return False

def get_ldr_label_contents(label, src_file):
    saved_line_num = src_file.line_num
    if label.startswith("."):
        for line in src_file:
            if line.startswith(label):
                break
    else:
        src_file.line_num = syms[label].line_num
        if syms[label].filename != src_file.filename:
            global_fileline_error("Could not find ldr label in file! (actual file: \"%s\")" % syms[label].filename) 

    contents = parse_word_directive(src_file)[0]
    src_file.line_num = saved_line_num
    return contents

"""
def parse_word_directives_at_label(label, file_state):
    if label.startswith("."):
        parse_word_directives_at_local_label(label, file_state.src_file)
    else:
        parse_word_directives_at_nonlocal_label(label, file_state.scanned_files)

def parse_word_directives_at_local_label(label, src_file):
    saved_line_num = src_file.line_num
    
    for line in src_file:
"""
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

def try_parse_function_word_directives_from_sym(sym):
    src_file = scanned_files[sym.filename]
    saved_line_num = src_file.line_num
    src_file.line_num = sym.line_num
    words = parse_word_directives(src_file, None, True)
    src_file.line_num = saved_line_num
    return words

def parse_word_directive(src_file):
    parse_word_directives(src_file, 1)

def parse_word_directives(src_file, max_words=None, must_be_words=False):
    first_run = True
    num_words = 0
    words = []

    for line in src_file:
        if not line.startswith("\t"):
            if first_run:
                line = consume_label(line)
            else:
                break

        first_run = False

        line = line.lstrip()
        if line == "":
            continue
        elif line.startswith(".word"):
            words.extend(line.split(None, 1)[1].split(","))
            if max_words is not None and len(words) >= max_words:
                if len(words) > max_words:
                    global_fileline_error("Context information: len(words) > max(words)")
                return words
        elif line.startswith(".byte"):
            if must_be_words:
                return words
            raise NotImplementedError("No support for fake IDA zero bytes yet!")
        elif line.startswith(".hword") and verify_words:
            return words
        else:
            break

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
    split_line = line.split()
    if len(split_line) == 1:
        return None

    return split_line[0]
    
def consume_label(line):
    split_line = line.split(":", 1)
    if len(split_line) > 1:
        return split_line[1]
    else:
        return ""
