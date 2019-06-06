# searches for all text script within the ROM, identifies if they're compressed or not,
# and identifies how they segment together
import argparse
import tools.dumpers.text_script_dumper as dumper
import tools.decompress as decomp

def main():
    parser = argparse.ArgumentParser(description='Scans the ROM for TextScripts')
    parser.add_argument('archive_list_file',
                        help='this file specifies all archives in the ROM.')
    parser.add_argument('-i', '--input', nargs=1, metavar='input_file',
                        help='default being baserom.gba')
    parser.add_argument('-s', '--size', action='store_true',
                        help='identifies sizes of all the archives and outputs to stdout')

    args = parser.parse_args()

def read_archives(archives_path):
    # will segment all text scripts that are contigious
    out = {}
    with open(archives_path, 'r') as f:

        lines = f.readlines()
        if len(lines) % 2 != 0:
            raise Exception('error: must be an even number of lines.')
        for i in range(0, len(lines), 2):
            addr = int(lines[i].split(' ')[1], 16)
            size = int(lines[i+1].split(' ')[1], 10)
            out[addr] = {
                'nscripts': size
            }
    return out


def try_parse_script(bin_file, addr):
    try:
        script, end_addr = dumper.read_script(addr)

def size_scan_archives(bin_file, archives_path):
    archives = read_archives(archives_path)
    for archive_addr in archives.keys():
        bin_file.seek(bin_file)
        # try to determine decompression size
        size = decomp.getLZ77CompressedSize(archive_addr, bin_file)
        if size < 0:
            # try to parse it as text script and get the size
            script, end_addr = script.

if __name__ == '__main__':
    main()