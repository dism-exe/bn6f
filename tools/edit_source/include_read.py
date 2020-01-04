"""
This module is responsible for scanning the repository for macros, constants, enums, and structs
"""

if __name__ == '__main__': __package__ = 'edit_source'

from .utils import inc_file
from .utils import asm_file
from .utils.inc_file import IncFile
from .include import definitions

from typing import List
import os


def read_file(file_path: str) -> List[IncFile.Unit]:
    """
    reads an asm fle and returns its content as a list of functional units.
    This reads includes recursively.
    :return: list of AsmFile.Unit objects
    """
    file = inc_file.IncFile(file_path)
    output = []

    while True:
        unit = file.next_unit()
        if not unit:
            break
        output.append(unit)

        # recursive include scan
        if unit.id == asm_file.AsmFile.UNIT_IDS.DIRECTIVE_INCLUDE:
            output += read_file(os.path.join(definitions.shared.ROM_REPO_DIR,
                                             asm_file.get_file_path_of_directive_include(unit)))

    return output

def read_files_in_dir(dir_name):
    import os
    out = []
    for root, subdirs, files in os.walk(dir_name):
        for f in filter(lambda s: s.endswith('.inc'), files):
            path = os.path.join(dir_name, root, f)
            out += read_file(path)
    return out


if __name__ == '__main__':
    out = read_files_in_dir(os.path.join(definitions.shared.ROM_REPO_DIR, 'constants'))
    out += read_files_in_dir(os.path.join(definitions.shared.ROM_REPO_DIR, 'include'))

    print(len(out))




