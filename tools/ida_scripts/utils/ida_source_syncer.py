import os

import idc
from IDAItems import Function, Data
from SrchTools import nextTools as _next
from edit_source.utils import source_unit, asm_file
from edit_source.utils.asm_file import AsmFile
from shared_utils import gba_address, cache

from ..include import definitions
from .ida import ops
from . import common


def find_synced_units(source_units, addr_space):
    """
    :returns: units which are synced in type, size, and starting address. This only applies to Function or Data. All else is treated as Unknown
              it returns a list of synced function addresses, synced data addresses, and synced unknown addresses
    """
    synced_functions = []
    synced_data = []
    synced_unk = []
    for i, ea in enumerate(addr_space):
        unit = source_unit.get_physical_unit(source_units, ea)
        unit_size = source_unit.compute_unit_size_from_index(addr_space, i)

        if unit['unit']['id'] is AsmFile.UNIT_IDS.FUNCTION:
            if Function.isFunction(ea):
                func = Function.Function(ea)
                if func.func_ea == ea and func.getSize(withPool=True) == unit_size:
                    synced_functions.append(ea)
        else:
            data = Data.Data(ea)
            if data.ea == ea:
                if data.getSize() == unit_size:
                    if unit['unit']['id'] == AsmFile.UNIT_IDS.DATA:
                        synced_data.append(ea)
                    else:
                        synced_unk.append(ea)
                else:
                    # get size until another label is defined
                    till_label_size = _next.name(ea, ui=False, hexOut=False) - ea
                    if till_label_size == unit_size:
                        if unit['unit']['id'] == AsmFile.UNIT_IDS.DATA:
                            synced_data.append(ea)
                        else:
                            synced_unk.append(ea)

    return synced_functions, synced_data, synced_unk


def fix_unsynced_functions(source_units, address_space):
    synced_functions, synced_data, synced_unk = find_synced_units(source_units, address_space)

    count = 0
    ea_mismatch_count = 0
    size_mismatch_count = 0
    unidentified_count = 0
    for i, ea in enumerate(address_space):
        if not common.found_in_any(ea, [synced_functions, synced_data, synced_unk]):
            unit = source_unit.get_physical_unit(source_units, ea)
            unit_size = source_unit.compute_unit_size_from_index(address_space, i)

            if unit['unit']['id'] == AsmFile.UNIT_IDS.FUNCTION:

                # check if it's thumb or arm
                # print(unit['unit']['content'])
                if 'arm' in unit['unit']['content']:
                    print('ARM function found!')
                    is_thumb = 0
                else:
                    is_thumb = 1

                if Function.isFunction(ea):
                    func = Function.Function(ea)
                    if not func.func_ea == ea:
                        report = '{}::{}. {:X} <{}>: IDA func_ea=0x{:X} != ea=0x{:X}'.format(count, ea_mismatch_count, ea, unit['name'], func.func_ea, ea)
                        ops.delete_and_make_function(ea, unit_size, unit['name'], is_thumb)
                        ea_mismatch_count += 1
                        count += 1
                        print(report)
                    elif not func.getSize(withPool=True) == unit_size:
                        report = '{}::{}. {:X} <{}>: size mismatch: unit size {} != {}'.format(count, size_mismatch_count, ea, unit['name'], unit_size, func.getSize(withPool=True))
                        ops.delete_and_make_function(ea, unit_size, unit['name'], is_thumb)
                        size_mismatch_count += 1
                        count += 1
                        print(report)
                else:
                    report = '{}::{}. {:X} <{}>: unidentified function in IDA'.format(count, unidentified_count, ea, unit['name'])
                    ops.delete_and_make_function(ea, unit_size, unit['name'], is_thumb)
                    unidentified_count += 1
                    count += 1
                    print(report)
            # elif unit['unit']['id'] == AsmFile.UNIT_IDS.CODE:


def fix_unsynced_data(source_units, address_space):
    synced_functions, synced_data, synced_unk = find_synced_units(source_units, address_space)

    count = 0
    ea_mismatch_count = 0
    size_mismatch_count = 0
    unidentified_count = 0
    for i, ea in enumerate(address_space):
        if not common.found_in_any(ea, [synced_functions, synced_data, synced_unk]):
            unit = source_unit.get_physical_unit(source_units, ea)
            unit_size = source_unit.compute_unit_size_from_index(address_space, i)
            if unit['unit']['id'] == AsmFile.UNIT_IDS.DATA:
                till_label_size = _next.name(ea, ui=False, hexOut=False) - ea
                if till_label_size != unit_size:
                    print('unmatch_size', unit['name'])
                    ops.delete_and_make_array(ea, unit_size, 'name' in unit and unit['name'] or '')


def report_unsynced_labels(source_units, addr_space):
    count = 0
    for i, ea in enumerate(addr_space):
        # for now, only report ROM
        if ea < gba_address.rom_address(0):
            continue
        unit = source_unit.get_physical_unit(source_units, ea)
        if idc.get_name(ea) != unit['name']:
            print('{}. {:07X} <{}>: IDA Name {}'.format(count, unit['ea'], unit['name'], idc.get_name(ea)))
            count += 1


def cache_find_synced_units(source_units, addr_space, recache=False):

    cache_path = os.path.join(definitions.CACHE_DIR, 'synced_source_units.cache')
    if recache:
        os.remove(cache_path)
    return cache.cache_to_file(find_synced_units, cache_path, source_units, addr_space)


def sync_data_definitions_in(source_units, address_space, ea):
    from edit_source.include.definitions import DATA_TYPES
    def create_array_of(ea, count, size, op, error=False, verbose=False):
        ops.delete_items(ea, size)
        status = op(ea)
        if count != 1:
            status = idc.make_array(ea, count)
        if verbose:
            if status is False:
                print('error: {:07X}: failed to perform operation'.format(ea))
        if error:
            if status is False:
                raise Exception('{:07X}: failed to perform operation'.format(ea))
        return status

    unit = source_unit.get_physical_unit(source_units, ea)
    UNIT_IDS = asm_file.AsmFile.UNIT_IDS
    if unit['unit']['id'] is UNIT_IDS.DATA:
        print('{:07X} <{}>'.format(unit['ea'], unit['name']))
        cur_ea = ea
        for t in unit['types']:
            idc.jumpto(cur_ea)
            data_type = t[0]
            count = t[1]
            print('{} {:07X} {}'.format(DATA_TYPES.STR[data_type], cur_ea, count))

            if data_type is DATA_TYPES.BYTE:
                size = count
                create_array_of(cur_ea, count, size, idc.create_byte, error=True)
                cur_ea += size
            elif data_type is DATA_TYPES.WORD:
                size = count * 4
                create_array_of(cur_ea, count, size, idc.create_dword, error=True)
                cur_ea += size
            elif data_type is DATA_TYPES.HWORD:
                size = count * 2
                create_array_of(cur_ea, count, size, idc.create_word, error=True)
                cur_ea += size
            elif data_type is DATA_TYPES.OFF:
                xrefs = unit['xrefs_from']
                first_label_ea = xrefs[0][0]
                size = count * 4
                if not (gba_address.is_ewram_address(first_label_ea) or gba_address.is_iwram_address(
                        first_label_ea) or gba_address.is_rom_address(first_label_ea)):
                    # a constant, don't point.
                    # TODO: actually include the constant in IDA
                    create_array_status = create_array_of(cur_ea, count, size, idc.create_dword, error=True)
                    idc.set_array_params(ea, 0, 1, 0)
                    pass
                else:
                    ops.delete_items(cur_ea, size)
                    idc.create_dword(cur_ea)
                    idc.op_plain_offset(cur_ea, 0, 0)
                    create_array_status = True
                    if count != 1:
                        create_array_status = idc.make_array(cur_ea, count)
                        idc.set_array_params(cur_ea, 0, 1, 0)
                if create_array_status is False:
                    raise Exception('could not create array at {:07X} with count {}'.format(cur_ea, count))
                    # TODO: check if it has an offset and fix that
                cur_ea += size
            elif data_type is DATA_TYPES.ALIGN:
                pass
            elif data_type is DATA_TYPES.SPACE:
                pass
            elif data_type is DATA_TYPES.INCBIN:
                pass
            idc.jumpto(cur_ea)


def sync_data_definitions(source_units, address_space):
    for i, ea in enumerate(address_space):
        if gba_address.is_ewram_address(ea):
            continue
        sync_data_definitions_in(source_units, address_space, ea)
        print('--')


def report_unsynced_units(source_units, addr_space):
    synced_function_addrs, synced_data_addrs, synced_unk_addrs = cache_find_synced_units(source_units, addr_space,
                                                                                                 recache=True)

    count = 0
    for i, ea in enumerate(addr_space):
        if ea not in synced_function_addrs and ea not in synced_data_addrs and ea not in synced_unk_addrs:
            unit = source_unit.get_physical_unit(source_units, ea)
            print('{}. {:07X} <{}>'.format(count, ea, unit['name']))
            count += 1


def sync_labels(source_units, addr_space):

    synced_function_addrs, synced_data_addrs, synced_unk_addrs = cache_find_synced_units(source_units, addr_space,
                                                                                                 recache=True)

    for ea in synced_function_addrs:
        cur_name = idc.get_name(ea)
        unit = source_unit.get_physical_unit(source_units, ea)
        if cur_name == unit['name']:
            continue
        if common.str_starts_with(unit['name'], ['sub', 'nullsub']):
            continue

        print('renaming {} -> {}'.format(cur_name, unit['name']))
        idc.set_name(ea, str(unit['name']))


    for ea in synced_data_addrs:
        cur_name = idc.get_name(ea)
        unit = source_unit.get_physical_unit(source_units, ea)

        if cur_name == unit['name']:
            continue

        # only rename non-default names
        default_data_names = ['byte_', 'hword_', 'word_', 'dword_', 'unk_', 'off_']
        if common.str_starts_with(unit['name'], default_data_names):
            idc.set_name(ea, '')
            continue

        print('renaming {} -> {}'.format(cur_name, unit['name']))
        idc.set_name(ea, str(unit['name']))


def sync_identified_units_names(source_units, addr_space):
    def test_matching_name(unit, ea, verbose=False):
        if idc.get_name(ea) != unit['name']:
            err_msg = '0x{:X}: found differing unit name: unit {} != ida {}'.format(ea, unit['name'], idc.get_name(ea))
            if verbose:
                return err_msg
            return False
        return True

    print(os.getcwd())
    log_file = open('../a.log.ign', 'w')

    synced_function_addrs, synced_data_addrs, synced_unk_addrs = cache_find_synced_units(source_units, addr_space,
                                                                                                 recache=True)

    for ea in synced_function_addrs:
        unit = source_unit.get_physical_unit(source_units, ea)

        func = Function.Function(ea)
        out = test_matching_name(unit, func.func_ea, verbose=True)
        if type(out) is str:
            print(out)
            log_file.write(out + '\n')

    for ea in synced_data_addrs:
        unit = source_unit.get_physical_unit(source_units, ea)

        data = Data.Data(ea)
        out = test_matching_name(unit, data.ea, verbose=True)
        if type(out) is str:
            print(out)
            log_file.write(out + '\n')

    log_file.close()