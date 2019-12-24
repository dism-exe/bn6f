"""
:author Lan: This module generates a *.rsyc file that contains relevant analysis data about all of symbols.
This allows to synchronize IDA and radare2 databases to the source. The file can also be accessed for analysis
by different tools.
"""

if __name__ == '__main__': __package__ = 'edit_source'

import logging
import os
from typing import List



from .utils.asm_file import AsmFile, process_function, process_code, process_data, process_label, \
    process_function_types
from .utils.common import get_sym_table
from .include import definitions


class SourceReadException(Exception): pass


def read_file(file_path: str) -> List[AsmFile.Unit]:
    """
    reads an asm fle and returns its content as a list of functional units.
    This reads includes recursively.
    :return: list of AsmFile.Unit objects
    """
    file = AsmFile(file_path)

    output = []

    unit_types = ['DIRECTIVE_INCLUDE', 'DIRECTIVE', 'FUNCTION', 'CODE', 'RAM_DATA', 'DATA', 'LABEL', 'ERROR']
    while 1:
        unit = file.next_unit()
        if not unit: break
        # print("UNIT %s (%s:%d)\n%s" % (unit_types[unit.id], unit.file_path, unit.line_number, unit.content))
        output.append(unit)

        # recusrive include scan
        if unit.id == AsmFile.UNIT_IDS.DIRECTIVE_INCLUDE:
            file_path = unit.content[unit.content.index('"')+1:]
            file_path = file_path[:file_path.index('"')]

            # TODO: still not handling inc files
            if '.inc' in file_path:
                continue

            if not os.path.isfile(file_path):
                file_path = 'include/' + file_path

            if not os.path.isfile(file_path):
                raise SourceReadException('could not find {file_path}'.format(**vars()))

            output += read_file(file_path)

    return output


def read_repo(proj_path, elf_path, file_paths, info=False):
    """
    reads and processes asm files into different units such as functions and data
    :return: list of dictionaries representing functions, data, or code
    """
    import os
    cwd = os.getcwd()
    os.chdir(proj_path)

    try:
        units = []
        for path in file_paths:
            if info: print('> reading %s...' % path)
            units += read_file(path)

        if info: print( '> processing symbol table from elf...')
        sym_table = get_sym_table(elf_path)

        # if info: print('> processing function types...')
        # function_types = process_function_types(units)
        function_types = {}

        if info: print('> processing units...')

        out = []
        for unit in units:
            if unit.id == AsmFile.UNIT_IDS.FUNCTION:
                out.append(process_function(unit, sym_table, function_types, dict_out=True))
            elif unit.id == AsmFile.UNIT_IDS.CODE:
                out.append(process_code(unit, sym_table, dict_out=True))
            elif unit.id == AsmFile.UNIT_IDS.DATA:
                out.append(process_data(unit, sym_table, dict_out=True))
            elif unit.id == AsmFile.UNIT_IDS.LABEL:
                out.append(process_label(unit, sym_table, dict_out=True))
            else:
                logging.warning('could not process: ' + unit.content)

        print('UNITS', len(units))
        return out
    finally:
        os.chdir(cwd)

def build_rsync():
    import sys

    if len(sys.argv) < 2:
        print('usage: <asmFile>')
        exit(0)

    units = []
    for arg in sys.argv[1:]:
        print('> reading %s...' % arg)
        units += read_file(arg)

    print('> processing symbol table from elf...')
    sym_table = get_sym_table(definitions.shared.ROM_NAME + '.elf')

    print('> processing function types...')
    function_types = process_function_types(units)

    print('> processing into bn6f.rsync...')
    write_file = open(definitions.shared.ROM_NAME + '.rsync', 'w')
    for unit in units:
        if unit.id == AsmFile.UNIT_IDS.FUNCTION:
            write_file.write(process_function(unit, sym_table, function_types) + '\n')
        elif unit.id == AsmFile.UNIT_IDS.CODE:
            write_file.write(process_code(unit, sym_table) + '\n')
        elif unit.id == AsmFile.UNIT_IDS.DATA:
            write_file.write(process_data(unit, sym_table) + '\n')
        else:
            pass
    write_file.close()

    print("> Source Reading Complete!")

def main(info=True):
    units = read_repo(definitions.shared.ROM_REPO_DIR, definitions.shared.ROM_NAME + ".elf", definitions.MAIN_ASM_FILES, info=info)
    return units


if __name__ == '__main__':
    main()
