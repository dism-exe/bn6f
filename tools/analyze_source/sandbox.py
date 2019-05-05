
import parser

syms = {}
scanned_files = {}

def set_syms_and_scanned_files(_syms, _scanned_files):
    global syms
    global scanned_files
    syms = _syms
    scanned_files = _scanned_files

def count_functions():
    branch_opcodes = set(("beq", "bne", "bcs", "bcc", "bmi", "bpl", "bvs", "bvc", "bhi", "bls", "bge", "blt", "bgt", "ble", "b", "bl"))

    function_counts = {}

    for sym in syms.values():
        if sym.type == "F":
            function_counts[sym.name] = 0

    for src_file in scanned_files.values():
        src_file.line_num = 0
        for line in src_file:
            words = parser.parse_word_directives(src_file)
            if len(words) == 0:
                # check for opcode
                line = line.strip()
                opcode_parts = line.split(None, 1)
                if len(opcode_parts) > 1 and opcode_parts[0] in branch_opcodes and opcode_parts[1] in function_counts:
                    function_counts[opcode_parts[1]] += 1
            else:
                # test each word to see if it's a function
                # if it is, increment its counter
                for word in words:
                    if word in function_counts:
                        function_counts[word] += 1

    sorted_function_counts = sorted(function_counts.items(), key=lambda kv: kv[1], reverse=True)

    output = ""
    for function_pair in sorted_function_counts:
        function_sym = syms[function_pair[0]]
        output += "{:07x} <{}:{}> {}: {}\n".format(function_sym.value, function_sym.filename, function_sym.line_num + 1, function_sym.name, function_pair[1])

    with open("function_counts.txt", "w+") as f:
        f.write(output)
