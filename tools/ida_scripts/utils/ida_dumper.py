import os

import idc

from ..include import definitions
from .ida import ops
import pt as ptm
from edit_source.utils import source_unit


def dump_units(source_unit_computations, units):
    units_split_by_path = source_unit.split_units_by_path(units)

    for unit_group in units_split_by_path:
        path = source_unit.get_unit_path(unit_group[-1])
        path = os.path.join(definitions.shared.ROM_REPO_DIR, path)
        dump_units_in_path(source_unit_computations, unit_group, path)
        print(path)


def dump_units_in_path(source_unit_computations, units, path):
    # type: (source_unit.SourceUnitComputations, List[dict], str) -> None
    from shared_utils.common import source_relabel

    with open(path, 'r') as f:
        file_data = f.read()

    orig_content = ''
    for i, unit in enumerate(units):
        # print(unit['unit']['content'] in file_data)
        orig_content += unit['unit']['content']

    range = (units[0]['ea'], units[-1]['ea'] + source_unit.compute_unit_size(source_unit_computations.address_space,
                                                                             units[-1]['ea']))
    pt = ptm.pt
    new_content = pt.dis.rng(*range)
    # new_content = new_content.replace(':', '::') # FIXME hack. this function doesn't dump global labels with ::

    # rename all new label occurances
    for unit in units:
        if unit['name'] != '' and unit['name'] != idc.get_name(unit['ea']):
            source_relabel(unit['name'], idc.get_name(unit['ea']))

    with open(path, 'w') as f:
        f.write(file_data.replace(orig_content, new_content))


def dump_range(source_unit_computations, start_ea, end_ea):
    # type: (source_unit.SourceUnitComputations, int, int) -> None
    units = source_unit.get_units_in_range(source_unit_computations, start_ea, end_ea)
    dump_units(source_unit_computations, units)


def dump_and_sync_range(source_unit_computations, start_ea, end_ea):
    from . import ida_source_syncer
    import itertools

    source_units = source_unit_computations.source_units
    address_space = source_unit_computations.address_space

    # filter address space to unit sync'd range
    start_ea, end_ea = get_unit_synced_range(source_unit_computations, start_ea, end_ea)
    address_space = address_space.__iter__()
    address_space = filter(lambda ea: start_ea <= ea < end_ea, address_space)
    address_space = list(address_space)

    # obtain the synced units within the specified range, and chain them together as we don't need the categories
    res = ida_source_syncer.find_synced_units(source_units, address_space)
    synced_functions, synced_data, synced_unk = res
    synced_units = itertools.chain(synced_functions.__iter__(), synced_data.__iter__(), synced_unk.__iter__())
    synced_units = list(synced_units)

    # scan all unsynced units and account for all xrefs to them -- this is because their change is not as simple
    # as a label update, so anything that uses them must be updated.
    def count_unsynced_units():
        result = 0
        for unit in units:
            if unit not in synced_units:
                result += 1
        return result
    units = source_unit.get_units_in_range(source_unit_computations, start_ea, end_ea)

    print('total_units: {}, unsynced_units: {}'.format(len(units), count_unsynced_units()))


def find_unsynced_unit_dependencies(synced_units, units):
    """
    :param synced_units: list of units that are synced with the IDA database.
    they are must enclose $units: meaning that they are within some range R which includes the range of $units
    :param units: all units within specified range R of $synced_units.
    :return: units containing the usages of all unsynced units within range R
    """

    pass

def dump_unit_at(source_unit_computations, ea):
    # type: (source_unit.SourceUnitComputations, int) -> None
    unit = source_unit_computations.find_unit_containing(ea)
    unit = source_unit.to_physical_unit(unit)
    unit_size = source_unit.compute_unit_size(source_unit_computations.address_space, unit['ea'])
    dump_range(source_unit_computations, unit['ea'], unit['ea'] + unit_size)
    print('[{:07X}:{:X}] <{}>: dumped to {}'.format(unit['ea'], unit_size, unit['name'], unit['path']))


def get_unit_synced_range(source_unit_computations, start_ea, end_ea):
    # type: (source_unit.SourceUnitComputations, int, int) -> (int, int)
    unit = source_unit_computations.find_unit_containing(start_ea)
    unit = source_unit.to_physical_unit(unit)
    start_ea = unit['ea']

    unit = source_unit_computations.find_unit_containing(end_ea)
    unit = source_unit.to_physical_unit(unit)
    end_ea = unit['ea']

    return start_ea, end_ea
