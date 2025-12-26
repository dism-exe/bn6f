import sys
from typing import Dict, List, Tuple

# Expects lines like
# LAN - GBAStore32 PC=sub_802BD60+0C, addr=eS20364C0+18
# LAN - GBALoad16 PC=loc_8028D50, addr=eS20364C0+3A
def transform_gbastoreload_logs_to_struct_fields(inp: str):
    for line in inp.split("\n"):
        if line.strip() == "":
            continue

        prefix1 = "LAN - GBAStore"
        prefix2 = "LAN - GBALoad"

        if prefix1 in line:
            line1 = line[line.index(prefix1) + len(prefix1):]
        elif prefix2 in line:
            line1 = line[line.index(prefix2) + len(prefix2):]
        else:
            raise Exception("Expected GBALoad or GBAStore line")

        tokens = line1.split(" ")

        width = int(tokens[0], 10)

        addr = tokens[2].split("=")[1].replace(',', '').strip()

        if '+' in addr:
            addr_tokens = addr.split("+")

            addr_diff = int(addr_tokens[1], 16)
        else:
            addr_diff = 0

        
        print(f'u{width} Unk_{addr_diff:02x} // loc=0x{addr_diff:x}')

def add_index_comments_for_each_line(inp: str):
    lines = inp.splitlines()
    idx = 0

    for line in lines:
        print(f"\t// 0x{idx:02X} (0x{idx // 4:02X})")
        print("\t" + line.strip())
        idx += 4

if __name__ == '__main__':
    inp = sys.stdin.read()
    filter = sys.argv[1]

    if filter == 'transform_gbastoreload_logs_to_struct_fields':
        transform_gbastoreload_logs_to_struct_fields(inp)
    if filter == 'add_index_comments_for_each_line':
        add_index_comments_for_each_line(inp)
    else:
        raise Exception("Unknown filter")
    
