# this module is about checking if a pointer is valid within the context of a specific ROM

from typing import List, Tuple

from shared_utils import gba_address
from ..include import definitions
from edit_source.utils import source_unit

class ROMContext:
    def __init__(self, source_units):
        import os
        self.source_units = source_units
        self.source_units_computations = source_unit.SourceUnitComputations(self.source_units)
        self.user_named_symbols = self.find_user_named_symbols(self.source_units_computations)

    @staticmethod
    def find_user_named_symbols(source_units_computations):
        out = []
        for address in source_units_computations.address_space:
            unit = source_units_computations.find_unit_of(address)
            if type(unit) == list:
                unit = unit[-1]
            if unit is None:
                print('error: could not find unit for 0x{:X}'.format(address))
                continue
            default_symbol_names = ['sub', 'label', 'unk', 'byte', 'dword', 'word', 'hword', 'short', 'string']
            if '_' in unit['name'] and unit['name'][:unit['name'].index('_')] in default_symbol_names:
                continue
            out.append(address)
        return out

def is_possible_rom_pointer(pointer, blacklist, whitelist):
    # type: (int, int or Tuple[int,int], int or Tuple[int,int]) -> bool
    """
    defines what a valid ROM pointer is.
    :param pointer: the value to examine
    :param blacklist: List of blacklisted pointers or ranges.
                        if value is int, blacklists a single pointer value.
                        if value is tuple, blacklist entire range ex)clusively (start, end)
    :param whitelist: complimentary of blacklist. Allows ONLY pointers within domain-listed ranges. If empty, it is not checked.
    :raises TypeError: if blacklist and whitelist aren't an int or a Tuple[int, int]
    :return:
    """
    if not gba_address.is_rom_address(pointer) or pointer > gba_address.rom_address(definitions.shared.ROM_SIZE):
        return False

    for range in blacklist:
        if type(range) is int:
            if pointer == range:
                return False
        elif type(range) is tuple:
            if range[0] <= pointer < range[1]:
                return False
        else:
            raise TypeError('expected blacklist to be int or Tuple[int, int]')

    whitelisted = False
    for range in whitelist:
        if type(range) is int:
            if pointer == range:
                whitelisted = True
                break
        elif type(range) is tuple:
            if range[0] <= pointer < range[1]:
                whitelisted = True
                break
        else:
            raise TypeError('expected domainlist to be Tuple[int, int]')
    if not whitelisted and len(whitelist) != 0:
        return False

    return True


def is_rodata_pointer(rom_context, pointer):
    # type: (ROMContext, int) -> bool

    # check valid ROM pointer
    if not gba_address.is_rom_address(pointer) or pointer > gba_address.rom_address(definitions.shared.ROM_SIZE):
        return False

    if gba_address.rom_address(pointer) < gba_address.rom_address(definitions.shared.RODATA_START_ADDRESS):
        return False

    named_rodata_symbols = sorted(list(filter(lambda ea: ea >= definitions.shared.RODATA_START_ADDRESS, rom_context.user_named_symbols)))

    # heuristic: symbols that are user named are trusted to be correct data and are such labeled correctly
    if pointer in named_rodata_symbols:
        return True

    for rodata_address in named_rodata_symbols:
        rodata_address_size = source_unit.compute_unit_size(rom_context.source_units_computations.address_space, rodata_address)
        if rodata_address_size:
            if rodata_address <= pointer < rodata_address + rodata_address_size:
                return False
        if pointer < rodata_address:
            break

    return True
