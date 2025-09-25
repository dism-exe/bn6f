import os

def parent_dir(filepath: str, num_parents_up: int) -> str:
    out = os.path.dirname(os.path.abspath(filepath))
    for i in range(0, num_parents_up):
        out = os.path.dirname(out)
    return out

def parent_dir_of_dir(dirname: str, num_parents_up: int) -> str:
    out = dirname
    for i in range(0, num_parents_up):
        out = os.path.dirname(out)
    return out


# path to this project
ROOT_DIR = parent_dir(__file__, 1)

# path to cache folder to cache results to disk.
CACHE_DIR = os.path.join(parent_dir_of_dir(ROOT_DIR, 1), '.cache/')

ROM_NAME = 'bn6f'
ROM_REPO_DIR = os.path.join(parent_dir_of_dir(ROOT_DIR, 3), 'bn6f')
ROM_PATH = os.path.join(ROM_REPO_DIR, ROM_NAME + '.gba')
BASEROM_PATH = os.path.join(ROM_REPO_DIR, 'baserom.gba')

GBA_IDA_LIB_REPO = os.path.join(parent_dir_of_dir(ROOT_DIR, 3), 'GBA-IDA-Pseudo-Terminal')

# ROM-specific constants
ROM_SIZE = os.path.getsize(BASEROM_PATH)
RODATA_START_ADDRESS = 0x1D8000


