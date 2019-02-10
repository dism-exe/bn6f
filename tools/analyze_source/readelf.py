import re
import subprocess
from collections import namedtuple
import sys
import os

SymInfo = namedtuple("SymInfo", ("value", "scope", "debug", "type", "section", "name"))

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
        syms[sym_tuple[5]] = SymInfo(*sym_list)

    print("Done reading syms!")
    return syms

if __name__ == "__main__":
    os.chdir("../..")
    syms = make_and_read_syms()
    output = ""
    for sym, sym_info in syms.items():
        output += "{}: {}\n".format(sym, sym_info)

    with open("bn6f_syms.dump", "w+") as f:
        f.write(output)
