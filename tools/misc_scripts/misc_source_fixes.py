from misc_scripts.utils.common import bytes_to_word

if __name__ == '__main__': __package__ = 'misc_scripts'

import os
import argparse

from .include import definitions

import edit_source.utils.source_unit as source_unit
from shared_utils import gba_address

def align_functions_with_pool(source_units):
    functions = iter(source_units.values())
    functions = filter(lambda u: 'id' in u and u['id'] == 'F', functions)
    functions = filter(lambda u: 'pool' in u, functions)
    functions = filter(lambda u: len(u['pool']) != 0, functions)
    functions = list(functions)

    for f in functions:
        # find the content of the function - the pool
        content = f['unit']['content']
        if f['pool'][0]['unit']['content'] not in content:
            print(f['unit']['content'])
            print(f['pool'][0]['unit']['content'])
            print('oops')
            continue
        content = content[:content.index(f['pool'][0]['unit']['content'])]

        if '.byte 0, 0\n' in content:
            new_content = content.replace('.byte 0, 0\n', '.balign 4, 0\n')
            content = f['unit']['content'].replace(f['unit']['content'][:len(content)], new_content)
            source_unit.edit_unit_content(f, content)
        elif '.balign' not in content and f['pool'][0]['ea'] % 4 == 0:
            new_content = content + '\t.balign 4, 0\n'
            content = f['unit']['content'].replace(f['unit']['content'][:len(content)], new_content)
            source_unit.edit_unit_content(f, content)

        if '.balign 4, 0x00\n' in content:
            new_content = content.replace('.balign 4, 0x00\n', '.balign 4, 0\n')
            content = f['unit']['content'].replace(f['unit']['content'][:len(content)], new_content)
            source_unit.edit_unit_content(f, content)

    source_unit.dump_source_units(functions, verbose=True)



def main():
    cache_path = os.path.join(definitions.ROOT_DIR, '.cache', 'source_units.cache')
    source_units = source_unit.cache_load_addressable_source_units(cache_path, False)
    align_functions_with_pool(source_units)

if __name__ == '__main__':
    main()
