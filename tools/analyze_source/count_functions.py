import analyze_source
import parser
from analyze_source import debug_print

def main():
    syms, scanned_files = analyze_source.read_source_and_syms()
    count_functions(syms, scanned_files)

def count_functions(syms, scanned_files):
    branch_opcodes = set(("beq", "bne", "bcs", "bcc", "bmi", "bpl", "bvs", "bvc", "bhi", "bls", "bge", "blt", "bgt", "ble", "b", "bl"))
    function_counts = {}

    for sym in syms.values():
        if sym.type == "F":
            function_counts[sym.name] = 0

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
                    if opcode_parts[1] in function_counts:
                        function_counts[opcode_parts[1]] += 1
            else:
                # test each word to see if it's a function
                # if it is, increment its counter
                for word in words:
                    if word.endswith("+1"):
                        old_word = word
                        word = word[:-2]
                    if word in function_counts:
                        function_counts[word] += 1

    sorted_function_counts = sorted(function_counts.items(), key=lambda kv: kv[1], reverse=True)
    output = ""
    for function_pair in sorted_function_counts:
        function_sym = syms[function_pair[0]]
        output += "{:07x} <{}:{}> {}: {}\n".format(function_sym.value, function_sym.filename, function_sym.line_num + 1, function_sym.name, function_pair[1])

    with open("function_counts.txt", "w+") as f:
        f.write(output)

if __name__ == "__main__":
    main()
