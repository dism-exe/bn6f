def parent_dir(filepath, num_parents_up):
    import os
    out = os.path.dirname(filepath)
    for i in range(0, num_parents_up):
        out = os.path.dirname(out)
    return out


import sys

# path to this project
ROOT_DIR = parent_dir(__file__, 2)

TOOLS_DIR = parent_dir(__file__, 2)
sys.path.insert(0, TOOLS_DIR)
from shared_utils.include import definitions as shared

MAIN_ASM_FILES = [
    'rom.s',
    'data.s',
    'ewram.s',
    'iwram.s',
]


class DATA_TYPES:
    i = 0
    BYTE = i; i+=1
    HWORD = i; i+=1
    WORD = i; i+=1
    OFF = i; i+=1
    ASCII = i; i+=1
    ALIGN = i; i+=1
    SPACE = i; i+=1
    INCBIN = i; i+=1
    MACRO = i; i+=1
    ERROR = i; i+=1

    STR = ['BYTE', 'HWORD', 'WORD', 'OFF', 'ASCII', 'ALIGN', 'SPACE', 'INCBIN', 'MACRO', 'ERROR']