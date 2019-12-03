import sys
import os

from . import asm_file
from shared_utils import gba_address
from ..include import definitions


class SourceUnitException(Exception): pass


class SourceUnitComputations:
    # computes parameters about source units that are expensive to compute otherwise
    def __init__(self, source_units):
        self.source_units = source_units
        self.address_space = sorted(list(map(lambda k: int(k, 16), source_units.keys())))
        self.symbol_table = {}
        for key in source_units:
            address = int(key, 16)
            unit = source_units[key]
            if 'name' in unit:
                if address in self.symbol_table:
                    raise SourceUnitException('duplicate symbols found with the same address for 0x{0:07X}'.format(address))
                self.symbol_table[address] = unit['name']


    def find_unit_containing(self, pointer):
        """
        finds the closest (or exact) unit at :pointer:. This is to support pointers that lay within the range of the unit
        size.
        :param source_units: addressable dictionary of source tokens (functions, data, directives, ...)
        :param pointer: address to find the unit of. This must be in its appropriate segment (ROM, EWRAM, etc...)
        :return: the unit if found or None
        """
        for i, address in enumerate(self.address_space):
            if i != len(self.address_space) - 1:
                if address <= pointer < self.address_space[i+1]:
                    return self.source_units[hex(address)]
        return None

    def find_unit_of(self, pointer):
        if pointer in self.address_space:
            return self.source_units[hex(pointer)]

    def get_offsetable_sym_name(self, pointer):
        unit = self.find_unit_containing(pointer)
        if unit is None:
            return None
        return get_offsetable_sym_name(unit, pointer)

def get_offsetable_sym_name(unit, pointer):
    """
    returns the name of the pointer, if any. If it differs from the unit address, it's returned as an offset of it.
    """
    if type(unit) == list:
        unit = unit[-1]
    offset = pointer - unit['ea']
    if 'name' in unit:
        if offset > 0:
            return '{name}+0x{offset:X}'.format(name=unit['name'], offset=offset)
        elif offset == 0:
            return '{name}'.format(name=unit['name'])
        else:
            raise SourceUnitException('offset calculated is an invalid negative value')
    else:
        return ''


def cache_load_source_units(cache_path, recache=False):
    from shared_utils import cache
    if recache:
        os.remove(cache_path)

    source_units = cache.cache_to_file(_convert_unit_class_to_dict, cache_path)

    print('source_units', len(source_units))
    return source_units


def cache_load_addressable_source_units(cache_path, recache=False):
    from shared_utils import cache
    if recache:
        os.remove(cache_path)

    def load_and_join_source_units_by_address():
        units = _convert_unit_class_to_dict()
        units = join_source_units_by_address(units)
        return units

    return cache.cache_to_file(load_and_join_source_units_by_address, cache_path)


def join_source_units_by_address(source_units):
    out = {}
    for unit in filter(lambda u: 'ea' in u and u['ea'] is not None, source_units):
        key = hex(unit['ea'])
        if key not in out.keys():
            out[key] = unit
        else:
            if type(out[key]) is list:
                out[key].append(unit)
            else:
                out[key] = [out[key], unit]

    return out


def _convert_unit_class_to_dict():
    from .. import source_read
    from .asm_file import AsmFile

    units = source_read.main(info=False)
    for unit in units:
        def convert_unit(unit):
            for key in unit.keys():
                if type(unit[key]) is AsmFile.Unit:
                    unit[key] = unit[key].__dict__
                elif type(unit[key]) is dict:
                    convert_unit(unit[key])
                elif key == 'pool':
                    for i, pool in enumerate(unit['pool']):
                        if type(pool) is dict:
                            convert_unit(pool)

        convert_unit(unit)
    return units


class DataUnit:
    class DataUnitException(Exception): pass

    def __init__(self, source_unit):
        if 'ea' not in source_unit.keys() and 'content' not in source_unit.keys():
            raise DataUnit.DataUnitException('source_unit must contain ea and content')
        self.source_unit = source_unit
        self.address = source_unit['ea']
        self.content = source_unit['unit']['content']
        self.size = self.compute_size()


    def compute_size(self):
        size = 0
        for line in self.content.split('\n'):
            def get_data_tokens(line, directive):
                line = line[line.index(directive)+len(directive):]
                if '//' in line:
                    line = line[:line.index('//')]
                line.replace('\t', ' ')
                return list(filter(lambda v: v != '', line.split(' ')))

            # count number of data directive parameters
            if '.byte' in line:
                size += len(get_data_tokens(line, '.byte'))
            elif '.hword' in line:
                size += 2 * len(get_data_tokens(line, '.hword'))
            elif '.word' in line:
                size += 4 * len(get_data_tokens(line, '.word'))

        return size

    @staticmethod
    def filter_content_data_definitions(content):
        # type: (str) -> str
        new_content = []
        for i, line in enumerate(content.split('\n')):
            if '.byte' in line or '.word' in line or '.hword' in line:
                if i == 0:
                    # for first line, remove the data directive from it
                    new_content.append(line[:line.index('.')].strip())
                # ignore the rest of the lines
            else:
                new_content.append(line)

        # return new content, ignoring empty lines
        return '\n'.join(list(filter(lambda line: line.strip() != '', new_content)))

    @staticmethod
    def build_content_data_byte_definitions(content, data_buffer, byte_per_line=16):
        # this ensures not to delete things like comments from the content
        content = DataUnit.filter_content_data_definitions(content)

        # build directives, 10 at a time
        data_directives = '\n'
        for count, b in enumerate(data_buffer):
            if count % byte_per_line == 0:
                if data_directives.endswith(', '):
                    data_directives = data_directives[:-2]
                if count != 0:
                    data_directives += '\n'
                data_directives += '\t.byte '
            data_directives += '0x{0:X}, '.format(b)
        if data_directives.endswith(', '):
            data_directives = data_directives[:-2]

        content += data_directives + '\n'

        return content

    @staticmethod
    def build_content_incbin(content, lz_path):
        # type: (str, str) -> str
        # this ensures not to delete things like comments from the content
        content = DataUnit.filter_content_data_definitions(content).split('\n')
        content.insert(1, '\t.incbin "{lz_path}"'.format(**vars()))
        return '\n'.join(content)


def compute_unit_size_from_index(address_space, i):
    """
    returns the size of a unit based on the next unit, assuming the address space is continuous.
    :param address_space: a list of sorted unit addresses
    :param i: the index of the address in the address space list of addresses
    :return: the size of the unit
    """
    unit_address = address_space[i]
    if i != len(address_space) - 1:
        next_address = address_space[i + 1]
        if gba_address.address_segment(next_address) != gba_address.address_segment(unit_address):
            return None
        return next_address - unit_address
    elif gba_address.is_rom_address(unit_address):
        return gba_address.rom_address(definitions.shared.ROM_SIZE) - unit_address
    else:
        return None


def compute_unit_size(address_space, unit_address):
    i = address_space.index(unit_address)
    return compute_unit_size_from_index(address_space, i)


def get_physical_unit(source_units, address):
    """
    This is to accomodate that a unit may have multiple symbols (and hence be registered as a list).
    The last symbol to be recorded is regarded as the one with the real label, and the one with the physical content.
    :param source_units: mapping from hex(address) to units
    :return: the unit normally, but in case it's a list, the last unit.
    """
    return to_physical_unit(source_units[hex(address)])


def to_physical_unit(unit):
    """
    In case a unit is a list, which means there are multiple at the same address, we're interested with what has content,
    and is not just a label.
    :param unit: source_units unit to convert
    :return: a unit that has content, not its duplicate labels.
    """
    if type(unit) is list:
        return unit[-1]
    return unit


def split_units_by_path(units):
    out = [[]]

    for unit in units:
        if len(out[-1]) == 0:
            out[-1].append(unit)
        elif get_unit_path(unit) == get_unit_path(out[-1][-1]):
            out[-1].append(unit)
        else:
            out.append([unit])

    return out


def get_unit_path(unit):
    return str(unit['path'][:unit['path'].index(':')]) # convert from unicode


def get_units_in_range(source_unit_computations, start_ea, end_ea):
    # type: (source_unit.SourceUnitComputations, int, int)
    units = []
    ea = start_ea
    while ea < end_ea:
        unit = to_physical_unit(source_unit_computations.find_unit_containing(ea))
        if unit is None:
            raise ValueError('could not find a unit at address 0x{:07X}'.format(ea))
        units.append(unit)
        ea += compute_unit_size(source_unit_computations.address_space, unit['ea'])
    return units