import re
import subprocess
from collections import namedtuple
import sys
import os

class SymInfo:
    __slots__ = ("value", "scope", "debug", "type", "section", "name", "filename", "line_num")
    def __init__(self, sym_list):
        self.value = sym_list[0]
        self.scope = sym_list[1]
        self.debug = sym_list[2]
        self.type = sym_list[3]
        self.section = sym_list[4]
        self.name = sym_list[5]
        self.filename = None
        self.line_num = None
        
def make_and_read_syms():
    nproc_value = subprocess.check_output(["nproc"]).decode("utf-8").strip()
    subprocess.check_call(["make", "-j" + nproc_value])
    return read_syms()

def read_syms():
    syms = {}

    print("Reading syms...")

    output = subprocess.check_output(["./tools/binutils/bin/arm-none-eabi-objdump.exe", "-t", "bn6f.elf"])

    lines = output.splitlines()[4:]
    
    for line in lines:
        try:
            sym_tuple = re.findall(r"^([0-9a-f]{8}) (.).{4}(.)(.) ([^\t]+)\t[^ ]+ (\S+)$", line.decode("utf-8"))[0]
        except IndexError:
            break

        sym_list = list(sym_tuple)
        sym_list[0] = int(sym_list[0], 16)
        # symbol name
        syms[sym_tuple[5]] = SymInfo(sym_list)

    print("Done reading syms!")
    return syms

if __name__ == "__main__":
    os.chdir("../..")
    syms = read_syms()
    print("Size: %s" % sys.getsizeof(syms))
    output = ""
    highest_sym_value = 0
    for sym, sym_info in syms.items():
        output += "{}: value={}, scope=\"{}\", debug=\"{}\", type=\"{}\", section=\"{}\"\n".format(sym, sym_info.value, sym_info.scope, sym_info.debug, sym_info.type, sym_info.section)
        if sym_info.value > highest_sym_value and sym_info.section != "*ABS*" and sym_info.section != ".fill":
            highest_sym_value = sym_info.value
    
    print("Highest sym: %s" % highest_sym_value)
    with open("bn6f_syms.dump", "w+") as f:
        f.write(output)
