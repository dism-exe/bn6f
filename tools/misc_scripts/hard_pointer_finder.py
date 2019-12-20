from misc_scripts.utils.common import bytes_to_word

if __name__ == '__main__': __package__ = 'misc_scripts'

import os
import argparse

from .include import definitions

import edit_source.utils.source_unit as source_unit
from shared_utils import gba_address

class HardPointerFinder(Exception): pass

SHIFTED_ROM = os.path.join(definitions.shared.ROM_REPO_DIR, 'bn6f_s4.gba.ign')

def _main(argv):
    parser = argparse.ArgumentParser(description='Scans the ROM for TextScripts', add_help=False)
    parser.add_argument('rom_file', help='the ROM file to process the archives in')
    parser.add_argument('archive_list_file', help='this file specifies all archives in the ROM.')
    parser.add_argument('cmd', type=str, help='command to execute regarding the archive list',)

    # add list of commands and their descriptions to usage
    help = parser.format_help() + '\n'
    help += 'available commands:\n'
    for cmd in filter(lambda key: not key.startswith('_'), Commands.__dict__.keys()):
        help += "  {0}: {1}\n".format(cmd, getattr(Commands, cmd)(None, None, None, get_desc=True))
    help += ' \n' # for some reason, I had to add that space for it to add an empty new line
    parser.usage = help[help.index(':')+1:]

    # when specifying argv, it mustn't contain the program name
    args = parser.parse_args(argv[1:4])

    getattr(Commands, args.cmd)(args.rom_file, args.archive_list_file, argv[4:])

class Commands:
    @staticmethod
    def example_command(rom_path, archive_path, argv,  get_desc=False):
        desc = 'demonstrates command interface -- a NOP'
        if get_desc:
            return desc

        parser = argparse.ArgumentParser(description=desc)
        parser.prog = parser.prog + ' ' + Commands.example_command.__name__
        args = parser.parse_args(argv)

        print(args)


def main():
    cache_path = os.path.join(definitions.ROOT_DIR, '.cache', 'source_units.cache')
    source_units = source_unit.cache_load_addressable_source_units(cache_path, False)
    find_similar_pointers(definitions.shared.BASEROM_PATH, SHIFTED_ROM, source_units)


def find_similar_pointers(baserom_path: str, shifted_rom_path: str, source_units):
    with open(baserom_path, 'rb') as baserom_file:
        # used as whitelist -- any valid pointer must be associated with a symbol
        address_space = list(map(lambda k: int(k, 16), source_units.keys()))

        # blacklist anything up till .rodata
        blacklist = [(gba_address.rom_address(0), gba_address.rom_address(definitions.shared.RODATA_START_ADDRESS))]

        with open(shifted_rom_path, 'rb') as shifted_rom_file:
            from .utils import pointer_identifier
            rom_context = pointer_identifier.ROMContext(source_units)
            while baserom_file:
                address = gba_address.rom_address(baserom_file.tell())
                word_base = baserom_file.read(4)
                word_shifted = shifted_rom_file.read(4)
                pointer = bytes_to_word(word_base)

                if word_base == word_shifted and pointer_identifier.is_rodata_pointer(rom_context, pointer):
                    source_units_computations = rom_context.source_units_computations
                    addr_name = source_units_computations.get_offsetable_sym_name(address)
                    ptr_name = source_units_computations.get_offsetable_sym_name(pointer)
                    print('0x{address:07X} <{addr_name}>: 0x{pointer:07X} <{ptr_name}>'.format(**vars()))

                # stop at rodata because there are no pointers there
                if gba_address.rom_address(baserom_file.tell()) >= gba_address.rom_address(
                        definitions.shared.RODATA_START_ADDRESS):
                    break


if __name__ == '__main__':
    main()
