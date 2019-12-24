import sys
import os
from ...include import definitions

import pt as ptm


def pt_load_environment(pt):
    # set up a new environment
    pt.clrenv()

    # project path
    pt.env(projPath=definitions.shared.ROM_REPO_DIR)

    # ROM Paths
    pt.env(ROMPath='')
    pt.env(elfPath=os.path.join(definitions.shared.ROM_REPO_DIR, definitions.shared.ROM_NAME + '.elf'))

    # search utils
    pt.env(compareBinPath='')

    # decomp path
    pt.env(decompPath='docs/decomp/')

    # disassembly utils
    pt.env(dismProjPath=[definitions.shared.ROM_REPO_DIR])
    # header files generated for *.s files. The file structure is duplicated there
    # (ie. files in data/datXX.s will have headers as inc/data/datXX.inc)
    pt.env(incPath='include/')
    # aliases for file extensions of files to be binary extracted, not disassembled
    pt.env(binAliases=['bin', 'lz77', 'spr'])

    # the complete filemap of the ROM, this is now obsolete
    # TODO: remove, or compute this
    pt.env(gameFiles={'0':0})

    print("Environment set!")


def init():
    if 'environment_set' not in init.__dict__:
        init.environment_set = False

    if init.environment_set:
        return

    ptm.main()
    pt_load_environment(ptm.pt)
    ptm.main()

    init.environment_set = True

init()