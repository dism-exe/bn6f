import os
import re
import pathlib
import argparse
import pickle

class SrcFile:
    def __init__(self):
        self._line_num = 0
        self._lines = []
    
    def __iter__(self):
        return self

    def __next__(self):
        if self._line_num < len(self._lines):
            self._line_num += 1
            return self._lines[self._line_num - 1]
        else:
            raise StopIteration

    def __getitem__(self, index):
        return self._lines[index]

    def __len__(self):
        return len(self._lines)

    @property
    def cur_line(self):
        return self._lines[self._line_num]

    @property
    def line_num(self):
        return self._line_num
    
    @line_num.setter
    def line_num(self, value):
        self._line_num = value

    @property
    def lines(self):
        return self._lines

recursion_depth = 0
#scanned_files = {}

def find_colon_label(label, lines, start_index=None):
    if start_index is not None:
        lines.line_num = start_index

    for line in lines:
        if line.startswith(label + ":"):
            return True

    return False

def skip_block_comment(lines, start_index=None):
    if start_index is not None:
        lines.line_num = start_index

    for line in lines:
        if "*/" in line:
            return

    raise RuntimeError("Unterminated block comment!")

def parse_word_directives(label, lines, start_index=None):
    if start_index is not None:
        lines.line_num = start_index

    first_run = True
    words = []
    for line in lines:
        if first_run and line.startswith(label + ":"):
            line = line.split(":")[1]

        first_run = False

        line = line.lstrip()
        if line == "":
            continue
        elif line.startswith("//"):
            continue
        elif line.startswith("/*"):
            skip_block_comment(lines)
            continue
        elif line.startswith(".word"):
            words.append(line.split()[1])
        elif line.startswith(".byte"):
            raise NotImplementedError("No support for fake IDA zero bytes yet!")
        else:
            break
    
    return words

def read_jumptable(jumptable, scanned_files, input_file=None):
    """
    Returns a jumptable's entries in a list specified by the given label.
    
    Parameters
    ----------
    jumptable : str
        The label of the jumptable.
    scanned_files : dict
        Base object containing the contents of all files, each using their filename as the key.
    input_file : str, optional
        Only search for the jumptable in this file.

    Raises
    ------
    RuntimeError
        Thrown if the jumptable was not found.
    """

    found_jumptable = False

    if input_file is None:
        for key, temp_lines in scanned_files.items():
            if find_colon_label(jumptable, temp_lines, 0):
                found_jumptable = True
                lines = temp_lines
                break
    else:
        lines = scanned_files[input_file]
        found_jumptable = find_colon_label(jumptable, lines, 0)

    if not found_jumptable:
        if input_file is None:
            raise RuntimeError("Could not find jumptable label \"%s\" in scanned files!" % jumptable)
        else:
            raise RuntimeError("Could not find jumptable label \"%s\" in file \"%s\"!" % (jumptable, input_file))

    print("line: %s" % lines.cur_line)
    words = parse_word_directives(jumptable, lines)
    print("words: %s" % words)

def recursive_scan_includes(filepath, scanned_files):
    global recursion_depth
    print("recursion depth: %s | file: %s" % (recursion_depth, filepath))
    recursion_depth += 1
    
    with open(filepath, "r") as f:
        scanned_files[filepath] = SrcFile()
        for line in f:
            include_file_list = re.findall(r"\t\.include \"([^\"]+)\"", line)
            if len(include_file_list) > 1:
                raise RuntimeError("More than one group found!")
            elif len(include_file_list) == 1:
                include_given_pathname = include_file_list[0]
                include_real_pathname = include_given_pathname
                if include_given_pathname.endswith(".inc"):
                    if pathlib.Path(include_given_pathname).is_file():
                        pass # already defined as default
                    elif pathlib.Path("include/" + include_given_pathname).is_file():
                        include_real_pathname = "include/" + include_given_pathname
                    else:
                        raise RuntimeError("Path specified by \"%s\" not found!" % include_given_pathname)

                if include_real_pathname in scanned_files:
                    continue

                try:
                    recursive_scan_includes(include_real_pathname, scanned_files)
                except IOError:
                    raise

            scanned_files[filepath].lines.append(line)

    recursion_depth -= 1

def main():
    # argument parser
    ap = argparse.ArgumentParser()
    ap.add_argument("-l", "--load-from-file", dest="load_from_file")
    ap.add_argument("-c", "--cache", dest="cache")
    ap.add_argument("-p", "--path", dest="input_path")

    args = ap.parse_args()
    # if symfile is unspecified, use the rom name as the symfile name

    output_path = os.getcwd()

    if args.input_path is None and os.path.basename(os.getcwd()) == "tools":
        os.chdir("..")
    else:
        os.chdir(args.input_path)

    if args.load_from_file is None:
        scanned_files = {}
        input_files = ("rom.s", "iwram_code.s", "data.s")
        for input_file in input_files:
            recursive_scan_includes(input_file, scanned_files)
            if args.cache is not None:
                cur_path = os.getcwd()
                os.chdir(output_path)
                with open(args.cache, "wb+") as f:
                    pickle.dump(scanned_files, f)
                os.chdir(cur_path)
    else:
        cur_path = os.getcwd()
        os.chdir(output_path)
        with open(args.load_from_file, "rb") as f:
            scanned_files = pickle.load(f)
        os.chdir(cur_path)

    read_jumptable("T1BattleObjectJumptable", scanned_files)

if __name__ == "__main__":
    main()

