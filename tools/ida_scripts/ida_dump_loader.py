# this runs the IDA API to dump units
__package__ = 'ida_scripts'
import os
from .include import definitions
from .utils import ida_dumper
from shared_utils import cache

import edit_source.utils.source_unit as su


def main():
    # input the pointers to process
    pointers_path = os.path.join(definitions.shared.ROM_REPO_DIR, 'tools', 'pointers_to_dump.tmp.ign')
    pointers = []
    with open(pointers_path, 'r') as pointers_file:
        for line in pointers_file.readlines():
            if not line.startswith('//'):
                pointers.append(int(line, 16))

    source_units = cache.load_cache_file(os.path.join(definitions.shared.CACHE_DIR, 'source_units.cache'))

    for pointer in pointers:
        source_unit_computations = su.SourceUnitComputations(source_units)
        unit = source_unit_computations.find_unit_containing(pointer)
        unit = su.to_physical_unit(unit)
        unit_size = su.compute_unit_size(source_unit_computations.address_space, unit['ea'])
        sym_name = su.get_offsetable_sym_name(unit, pointer)

        # dump the pointer
        ida_dumper.dump_range(source_unit_computations, unit['ea'], unit['ea'] + unit_size)


        print('{:07X} <{}> in {}'.format(pointer, sym_name, unit['path']))

        # if '+' in sym_name:
        #     print(hex(pointer), sym_name, unit['unit']['id'])
