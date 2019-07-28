import analyze_source
import time
import random
from analyze_source import debug_print


def main():
    syms, scanned_files = analyze_source.read_source_and_syms()
    benchmark_line_iterator(scanned_files)

def benchmark_line_iterator(scanned_files):
    if random.random() < 0.5:
        benchmark_list_iterator(scanned_files)
        benchmark_src_file_iterator(scanned_files)
    else:
        benchmark_src_file_iterator(scanned_files)
        benchmark_list_iterator(scanned_files)

def benchmark_list_iterator(scanned_files):
    list_iterator_start_time = time.time()
    for src_file in scanned_files.values():
        src_file.line_num = 0
        output = ""
        for line in src_file._uncommented_lines:
            output += line

    list_iterator_total_time = time.time() - list_iterator_start_time
    debug_print("list_iterator_total_time: %s" % list_iterator_total_time)

def benchmark_src_file_iterator(scanned_files):
    src_file_iterator_start_time = time.time()

    for src_file in scanned_files.values():
        src_file.line_num = 0
        output = ""
        for line in src_file:
            output += line

    src_file_iterator_total_time = time.time() - src_file_iterator_start_time
    debug_print("src_file_iterator_total_time: %s" % src_file_iterator_total_time)

if __name__ == "__main__":
    main()
