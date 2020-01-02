import os

# path to this project
ROOT_DIR = os.path.dirname(os.path.abspath(__file__))

# path to cache folder to cache results to disk.
CACHE_DIR = os.path.join(ROOT_DIR, '.cache/')

ROM_NAME = 'bn6f'
ROM_REPO_DIR = os.path.join(os.environ['HOME'], 'dev', 'dis', 'bn6f')
ROM_PATH = os.path.join(ROM_REPO_DIR, ROM_NAME + '.gba')
BASEROM_PATH = os.path.join(ROM_REPO_DIR, 'baserom.gba')
GAME_STRING_TBL_PATH = os.path.join(ROM_REPO_DIR, 'constants/bn6-charmap.tbl')


# for non-compressed text scripts that must have their size specified
SCRIPT_SIZES = {
    # TextScriptLottery86C67E4
    0x6C67E4: 0x34c,
    # TextScriptNaviCustDialog
    0x6D5708: 0xf10,
}

# scripts that are faulty in some way and require manual fixing are skipped when redumping everything
# for compressed archives, specify the .lz filename instead.
SKIP_SCRIPTS = [
    # TextScriptJap8021D88
    0x21D88,
    # FIXME: TextScriptChipDesc1 doesn't build -- macro problem
    0x6EE0CC,
]