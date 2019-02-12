import os
import re
import pathlib
import argparse
import pickle
from enum import Enum
import copy
from collections import namedtuple
import functools

NaN = float("nan")
MAX_UINT32 = 2**32 - 1

FileLine = namedtuple("FileLine", ("filename", "line_num"))
default_fileline = FileLine("default_fileline", 0)
global_fileline = default_fileline
syms = None

def global_fileline_error(error_msg):
    raise RuntimeError("%s:%s: %s" % global_fileline.filename, global_fileline.line_num, error_msg)

def main():
    # argument parser
    ap = argparse.ArgumentParser()
    ap.add_argument("-l", "--load-from-file", dest="load_from_file")
    ap.add_argument("-c", "--cache", dest="cache")
    ap.add_argument("-p", "--path", dest="input_path")
    ap.add_argument("-m", "--make", dest="make", action="store_true")

    args = ap.parse_args()
    # if symfile is unspecified, use the rom name as the symfile name
    
    output_path = os.getcwd()

    if args.input_path is None and os.path.basename(os.getcwd()) == "analyze_source":
        os.chdir("../..")
    else:
        os.chdir(args.input_path)

    global syms

    if args.make:
        syms = readelf.make_and_read_syms()
    else:
        syms = readelf.read_syms()

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

    #test_output = ""
    #scanned_files["asm/asm03_0.s"].line_type = LineType.UNCOMMENTED
    #test_output = "".join(line for line in scanned_files["asm/asm03_0.s"])
    #
    #with open("scanned_out_test.txt", "w+") as f:
    #    f.write(test_output)

    read_jumptable("T1BattleObjectJumptable", scanned_files)

if __name__ == "__main__":
    main()

