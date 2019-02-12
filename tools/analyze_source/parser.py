def find_colon_label_from_lines(label, lines, start_index=None):
    if start_index is not None:
        lines.line_num = start_index

    for line in lines:
        if line.startswith(label + ":"):
            return True

    return False

def find_colon_label_in_files(label, scanned_files, input_file=None):
    found_label = False

    if label.endswith("+1"):
        label = label[:-2]

    if input_file is None:
        for key, temp_lines in scanned_files.items():
            if find_colon_label_from_lines(label, temp_lines, 0):
                found_label = True
                lines = temp_lines
                break
    else:
        lines = scanned_files[input_file]
        found_label = find_colon_label_from_lines(jumptable, lines, 0)

    if not found_label:
        if input_file is None:
            raise RuntimeError("Could not find label \"%s\" in scanned files!" % label)
        else:
            raise RuntimeError("Could not find label \"%s\" in file \"%s\"!" % (label, input_file))

    return lines

def parse_word_directive(label, lines, start_index=None):
    parse_word_directives(label, lines, start_index, 1)

def parse_word_directives(label, lines, start_index=None, max_words=None):
    if start_index is not None:
        lines.line_num = start_index

    first_run = True
    num_words = 0
    words = []
    for line in lines:
        if first_run and line.startswith(label + ":"):
            line = line.split(":")[1]

        first_run = False

        line = line.lstrip()
        if line == "":
            continue
        elif line.startswith(".word"):
            words.append(line.split()[1])
            if max_words is not None and len(words) >= max_words:
                return words
        elif line.startswith(".byte"):
            raise NotImplementedError("No support for fake IDA zero bytes yet!")
        else:
            break

    return words

def parse_first_register_operand(line):
    register = line.split()[1]
    if register.endswith(","):
        return register[:-1]
    return register
