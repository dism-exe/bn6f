import os

import idc

from ..include import definitions
from .ida import ops
import pt as ptm
from edit_source.utils import source_unit


def dump_range(source_unit_computations, start_ea, end_ea):
    def dump_units_in_path(source_unit_computations, units, path):
        from shared_utils.common import source_relabel

        with open(path, 'r') as f:
            file_data = f.read()

        orig_content = ''
        for i, unit in enumerate(units):
            # print(unit['unit']['content'] in file_data)
            if i == len(units)-1:
                # print(unit['unit']['content'])
                orig_content += unit['unit']['content']
            else:
                orig_content += unit['unit']['content']

        range = (units[0]['ea'], units[-1]['ea'] + source_unit.compute_unit_size(source_unit_computations.address_space,
                                                                                 units[-1]['ea']))
        pt = ptm.pt
        new_content = pt.dis.rng(*range).replace(':', '::') # FIXME hack. this function doesn't dfump global labels with ::

        # rename all new label occurances
        for item_ea in ops.next_item_ea(range[0], range[1] - range[0]):
            if idc.get_name(item_ea):
                if hex(item_ea) not in source_unit_computations.source_units.keys():
                    continue
                unit = source_unit_computations.source_units[hex(item_ea)]
                if unit['name'] != idc.get_name(item_ea):
                    source_relabel(unit['name'], idc.get_name(item_ea))

        with open(path, 'w') as f:
            f.write(file_data.replace(orig_content, new_content))

    units = source_unit.get_units_in_range(source_unit_computations, start_ea, end_ea)
    units_split_by_path = source_unit.split_units_by_path(units)

    for unit_group in units_split_by_path:
        path = source_unit.get_unit_path(unit_group[-1])
        path = os.path.join(definitions.shared.ROM_REPO_DIR, path)
        dump_units_in_path(source_unit_computations, unit_group, path)
        print(path)


def dump_unit_at(source_unit_computations, ea):
    # type: (source_unit.SourceUnitComputations, int) -> None
    unit = source_unit_computations.find_unit_containing(ea)
    unit = source_unit.to_physical_unit(unit)
    unit_size = source_unit.compute_unit_size(source_unit_computations.address_space, unit['ea'])
    dump_range(source_unit_computations, unit['ea'], unit['ea'] + unit_size)
    print('[{:07X}:{:X}] <{}>: dumped to {}'.format(unit['ea'], unit_size, unit['name'], unit['path']))
