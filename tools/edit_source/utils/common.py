from ..include import definitions


def get_sym_table(elf_path):
    """
    This creates temporary files and deletes them immediately after for interacting with arm-none-eabi-readelf
    It displays the symbol table of the elf file, and searches for the specified symbol
    :param elf_path:  the elf file path to read the symbol from
    :return: symbol table dictionary of symbol names to effective ddresses
    """
    # type: (str) -> dict[str, int]
    import os, re
    sym_table = {}
    FILE_NAME = 'tempGetSymbols'

    tmp_stdout = '%s_stdout.tmp' % FILE_NAME
    tmp_stderr = '%s_stderr.tmp' % FILE_NAME

    objdump_bin = os.path.join(definitions.shared.ROM_REPO_DIR, 'tools', 'binutils', 'bin', 'arm-none-eabi-objdump')
    os.system('{objdump_bin} -t {elf_path} 1> {tmp_stdout} 2> {tmp_stderr}'.format(**vars()))

    stdout_file = open(tmp_stdout, 'r')

    for line in stdout_file.readlines()[5:]: # skip header and SYMBOL TABLE:
        fields = list(filter(None, re.split('[ \r\n]', line)))
        if len(fields) >= 4:
            addr = int(fields[0], 16)
            name = fields[-1].strip()
            sym_table[name] = addr

    stdout_file.close()
    # delete temporary files
    os.remove(tmp_stdout)
    os.remove(tmp_stderr)

    if sym_table == {}:
        raise ValueError('could not process elf file')

    return sym_table


