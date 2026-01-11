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
    record_size = int(sys.argv[2])
    lines = inp.splitlines()
    offset = 0

    for line in lines:
        print(f"\t// 0x{offset:02X} (0x{offset // record_size:02X})")
        print("\t" + line.strip())
        offset += record_size

# If we fail to build ROM, we can examine `python3 tools/fdiff.py bn6f.ign bn6f.gba | less`.
# But sometimes the shifting failure introduces changes to all pointers which we do not want to see.
# Though other sources of differences can still persist.
# Looks at lines like:
# ```
# Found diff #40 @ 00C298: bin1=0x86E0718 bin2=0x86E071C
# ```
def filter_out_shifted_differences(inp: str):
    shift = int(sys.argv[2])

    lines = inp.splitlines()

    for line in lines:
        bin1_idx = line.index("bin1=")
        bin2_idx = line.index("bin2=")

        bin1_v = int(line[bin1_idx + len("bin1=") : bin2_idx].strip(), 16)
        bin2_v = int(line[bin2_idx + len("bin2=") : ].strip(), 16)

        if abs(bin1_v - bin2_v) == shift:
            continue

        print(line)

if __name__ == '__main__':
    inp = sys.stdin.read()
    filter = sys.argv[1]

    if filter == 'transform_gbastoreload_logs_to_struct_fields':
        transform_gbastoreload_logs_to_struct_fields(inp)
    if filter == 'add_index_comments_for_each_line':
        add_index_comments_for_each_line(inp)
    if filter == 'filter_out_shifted_differences':
        filter_out_shifted_differences(inp)
    else:
        raise Exception("Unknown filter")
    
