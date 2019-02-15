import os
import re
import argparse
import pickle
from enum import Enum
import copy
from collections import namedtuple
import functools

__all__ = ("NaN", "FileLine", "default_fileline", "global_fileline", "global_fileline_error", "global_fileline_msg", "fileline_error", "fileline_msg")

NaN = float("nan")
FileLine = namedtuple("FileLine", ("filename", "line_num"))
default_fileline = FileLine("default_fileline", 0)
global_fileline = default_fileline
syms = {}
scanned_files = {}

class ScannedFilesAndSyms:
    __slots__ = ("scanned_files", "syms")

    def __init__(self, scanned_files, syms):
        self.scanned_files = scanned_files
        self.syms = syms

def global_fileline_error(error_msg):
    raise RuntimeError("%s:%s: %s" % (global_fileline.filename, global_fileline.line_num + 1, error_msg))

def global_fileline_msg(fileline_msg):
    print("%s:%s: %s" % (global_fileline.filename, global_fileline.line_num + 1, fileline_msg))

def fileline_error(error_msg, fileline):
    raise RuntimeError("%s:%s: %s" % (fileline.filename, fileline.line_num + 1, error_msg))

def fileline_msg(fileline_msg, fileline):
    print("%s:%s: %s" % (fileline.filename, fileline.line_num + 1, fileline_msg))

import analyzer
import datatypes
import opcodes
import parser
import readelf
import scanner
import multiprocessing
#from datatypes import DataType

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
    elif args.input_path is not None:
        os.chdir(args.input_path)

    global syms
    global scanned_files

    if args.load_from_file is None:
        if args.make:
            syms = readelf.make_and_read_syms()
        else:
            syms = readelf.read_syms()
        input_files = ("rom.s", "iwram_code.s", "data.s")
        for input_file in input_files:
            scanner.recursive_scan_includes(input_file, scanned_files, syms)
            #print(("%s" % syms)[:100])
            if args.cache is not None:
                cur_path = os.getcwd()
                os.chdir(output_path)
                with open(args.cache, "wb+") as f:
                    pickle.dump(ScannedFilesAndSyms(scanned_files, syms), f, protocol=pickle.HIGHEST_PROTOCOL)
                os.chdir(cur_path)
    else:
        cur_path = os.getcwd()
        os.chdir(output_path)
        with open(args.load_from_file, "rb") as f:
            scanned_files_and_syms = pickle.load(f)
            scanned_files = scanned_files_and_syms.scanned_files
            syms = scanned_files_and_syms.syms

        os.chdir(cur_path)

    #test_output = ""
    #scanned_files["asm/asm03_0.s"].line_type = LineType.UNCOMMENTED
    #test_output = "".join(line for line in scanned_files["asm/asm03_0.s"])
    #
    #with open("scanned_out_test.txt", "w+") as f:
    #    f.write(test_output)

    parser.set_syms_and_scanned_files(syms, scanned_files)
    analyzer.set_syms_and_scanned_files(syms, scanned_files)
    opcodes.set_syms_and_scanned_files(syms, scanned_files)
    datatypes.set_syms_and_scanned_files(syms, scanned_files)
    analyzer.read_jumptable("T1BattleObjectJumptable")

if __name__ == "__main__":
    multiprocessing.set_start_method("spawn")
    main()

