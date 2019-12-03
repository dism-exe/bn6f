# this file is strictly python2, as it runs in IDA.
# any communication between this and python3 scripts is done through cache files
import os

from include import definitions
import ida_scripts
__package__ = 'ida_scripts'

from .include import definitions
from .utils import ida_dumper, ida_source_syncer
from .utils.ida import initialize_pt

from shared_utils import cache
from edit_source.utils import source_unit

import idaapi
import idc

idaapi.require('ida_require_all')


def identify_local_pointers(range):
    from FixTools import fixTools as fix
    from utils.ida import ops

    # identify local pointers in data, this accounts for IDA update behavior when collapsing back
    fix.resolvePointers(range, range)
    for item_ea in ops.next_item_ea(range[0], range[1] - range[0]):
        idaapi.jumpto(item_ea)
    fix.collapseUnknowns(*range)

    # some dwords are converted to 4 byte arrays. revert.
    # import ida_bytes
    # for item_ea in ops.next_item_ea(range[0], range[1] - range[0]):
    #     if idc.is_byte(idc.get_full_flags(item_ea)) and idc.get_item_size(item_ea) == 4 and ida_bytes.get_16bit(item_ea) == 0:
    #         idc.del_items(item_ea)
    # idc.create_word(item_ea)
    # idc.create_align(item_ea, 2, 2)
    # if idc.is_align(idc.get_full_flags(item_ea)):
    #     idc.del_items(item_ea)
    # idc.create_align(item_ea, 2, 0)



def main():
    global source_units
    global address_space
    source_units = cache.load_cache_file(os.path.join(definitions.shared.CACHE_DIR, 'source_units.cache'))
    address_space = sorted(map(lambda k: int(k, 16), source_units.keys()))
    # ida_source_syncer.sync_labels(source_units, address_space)
    # ida_source_syncer.fix_unsynced_functions(source_units, address_space)
    # ida_source_syncer.fix_unsynced_data(source_units, address_space)
    # ida_source_syncer.sync_data_definitions(source_units, address_space)
    # ida_source_syncer.report_unsynced_labels(source_units, address_space)
    # ida_source_syncer.report_unsynced_units(source_units, address_space)

    # range = (0x8062BFC, 0x80663A8+2)
    # ida_dumper.dump_range(source_unit.SourceUnitComputations(source_units), *range)

    from . import ida_dump_loader
    ida_dump_loader.main()

    print(len(source_units))

