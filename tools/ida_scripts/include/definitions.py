import os
import sys


def parent_dir(filepath, num_parents_up):
    out = os.path.dirname(filepath)
    for i in range(0, num_parents_up):
        out = os.path.dirname(out)
    return out

        
ROOT_DIR = parent_dir(__file__, 1)

# path to cache folder to cache results to disk.
CACHE_DIR = os.path.join(ROOT_DIR, '.cache/')

# for IDA to recognize root structure
if ROOT_DIR not in sys.path:
    sys.path.insert(0, ROOT_DIR)

TOOLS_DIR = parent_dir(__file__, 2)
sys.path.insert(0, TOOLS_DIR)
from shared_utils.include import definitions as shared

if shared.GBA_IDA_LIB_REPO not in sys.path:
    sys.path.insert(0, shared.GBA_IDA_LIB_REPO)
