import os
import re
import pathlib

class SrcFile:
    def __init__(self, filename):
        self.filename = filename

recursion_depth = 0
included_files = []

#def read_jumptable
def recursive_scan_includes(filepath):
    global recursion_depth
    print("recursion depth: %s | file: %s" % (recursion_depth, filepath))
    recursion_depth += 1
    with open(filepath, "r") as f:
        all_lines = []
        for line in f:
            include_file_list = re.findall(r"\t\.include \"([^\"]+)\"", line)
            if len(include_file_list) > 1:
                raise RuntimeError("More than one group found!")
            elif len(include_file_list) == 1:
                include_given_pathname = include_file_list[0]
                include_real_pathname = "../" + include_given_pathname
                if include_given_pathname.endswith(".inc"):
                    if pathlib.Path("../" + include_given_pathname).is_file():
                        pass # already defined as default
                    elif pathlib.Path("../include/" + include_given_pathname).is_file():
                        include_real_pathname = "../include/" + include_given_pathname
                    else:
                        raise RuntimeError("Path specified by \"%s\" not found!" % include_given_pathname)

                if include_real_pathname in included_files:
                    continue

                included_files.append(include_real_pathname)
                try:
                    all_lines.extend(recursive_scan_includes(include_real_pathname))
                except IOError:
                    raise
            else:
                all_lines.append(line)

    recursion_depth -= 1
    return all_lines

def main():
    # hack
    # if os.path.basename(os.getcwd()) == "tools":
    #     os.chdir("..")
    source_lines = recursive_scan_includes("../rom.s")
    #source_lines.extend(recursive_scan_includes("../iwram_code.s"))
    #source_lines.extend(recursive_scan_includes("../data.s"))
    
    
    #lines_as_str = "%s" % source_lines
    #with open("analyze_source_out.txt", "w+") as f:
    #    f.write(lines_as_str)

if __name__ == "__main__":
    main()