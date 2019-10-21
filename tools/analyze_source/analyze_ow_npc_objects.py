import analyze_source
import analyzer
import time
from analyze_source import *
import os
import shutil

def main():
    analyzer.run_function_main(analyzer.read_ow_npc_object_function, True)

if __name__ == "__main__":
    main()
