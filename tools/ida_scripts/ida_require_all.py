import os
from include import definitions


def generate_require_all():
    def py_files_in_directory(dir):
        return filter(lambda f: f.endswith('.py'), os.listdir(dir))

    def generate_require_dir(dir, module_relative_dir=None):
        for x in os.walk(dir):
            subdir = x[0]

            for filename in py_files_in_directory(os.path.join(definitions.ROOT_DIR, subdir)):
                if module_relative_dir is not None:
                    subdir = subdir[subdir.index(module_relative_dir):]
                yield 'idaapi.require("{dir}.{modulename}")'.format(dir=subdir.replace('/', '.'), modulename=filename[:-len('.py')])

    def print_filtered_require_list(generator):
        blacklist = [
            'tests',
            'edit_source.source_read',
        ]

        def contains_any(s, l):
            return any(map(lambda substr: substr in s, l))

        for require_s in filter(lambda s: not contains_any(s, blacklist), generator):
            print(require_s)

    print_filtered_require_list(generate_require_dir('include'))
    print_filtered_require_list(generate_require_dir('utils'))
    print_filtered_require_list(generate_require_dir(os.path.join(definitions.TOOLS_DIR, 'shared_utils'), 'shared_utils'))
    print_filtered_require_list(generate_require_dir(os.path.join(definitions.TOOLS_DIR, 'edit_source'), 'edit_source'))


if __name__ == '__main__':
    generate_require_all()
    exit(0)

import idaapi


idaapi.require('ida_scripts.ida_dump_loader')
idaapi.require("ida_scripts.include.definitions")
idaapi.require("ida_scripts.include.__init__")
idaapi.require("ida_scripts.utils.__init__")
idaapi.require("ida_scripts.utils.common")
idaapi.require("ida_scripts.utils.ida_dumper")
idaapi.require("ida_scripts.utils.ida_source_syncer")
# idaapi.require("utils.ida.initialize_pt")
idaapi.require("utils.ida.ops")
idaapi.require("utils.ida.__init__")
idaapi.require("shared_utils.common")
idaapi.require("shared_utils.cache")
idaapi.require("shared_utils.__init__")
idaapi.require("shared_utils.gba_address")
idaapi.require("shared_utils.include.definitions")
idaapi.require("shared_utils.include.__init__")
idaapi.require("shared_utils.include.gba_architecture")
idaapi.require("edit_source.__init__")
idaapi.require("edit_source.unit_utils")
idaapi.require("edit_source.utils.common")
idaapi.require("edit_source.utils.source_unit")
idaapi.require("edit_source.utils.__init__")
idaapi.require("edit_source.utils.tokenizer")
idaapi.require("edit_source.utils.asm_file")
idaapi.require("edit_source.include.definitions")
idaapi.require("edit_source.include.__init__")
