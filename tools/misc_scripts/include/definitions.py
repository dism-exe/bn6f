def parent_dir(filepath, num_parents_up):
    import os
    out = os.path.dirname(filepath)
    for i in range(0, num_parents_up):
        out = os.path.dirname(out)
    return out


import sys

# path to this project
ROOT_DIR = parent_dir(__file__, 2)

TOOLS_DIR = parent_dir(__file__, 2)
sys.path.insert(0, TOOLS_DIR)
from shared_utils.include import definitions as shared
