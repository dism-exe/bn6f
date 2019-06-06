# usage: decompress <address> [-i <input_file>] [-s] > output
import argparse

def main():
    import sys
    usage = 'decompress <address> [-i <input_file>] [-s] > output'
    parser = argparse.ArgumentParser(description='GBA decompression helper util', usage=usage)
    parser.add_argument('address',
                        help='address into input file to process compressed data from')
    parser.add_argument('-i', '--input', nargs=1, metavar='input_file',
                        help='default being baserom.gba')
    parser.add_argument('-s', '--size', action='store_true',
                        help='outputs size of compressed data and decompressed size')

    args = parser.parse_args()

    args.address = int(args.address, 16)
    args.address &= ~0x8000000

    if not args.input:
        args.input = 'baserom.gba'

    with open(args.input, 'rb') as f:
        if args.size:
            out = getLZ77CompressedSize(args.address, f)
            if type(out) is int:
                print('error: invalid compressed data at 0x%X (%d)' % (args.address, out))
            else:
                print('compressed size: 0x%X\ndecompressed size: 0x%X' % (out[0], out[1]))

def getLZ77CompressedSize(compressed_ea, bin_file):
    """
    Iterates the compressed data, and returns its size
    :param compressed_ea: the linear address of the compressed data
    :return: its size in bytes or <0 if this is an invalid format, decompressed size
    """
    dataHeader = 0
    original_addr = bin_file.tell()
    bin_file.seek(compressed_ea)
    chars = bin_file.read(4)
    for i in range(len(chars)):
        dataHeader |= chars[i] << 8*i
    decompSize = (dataHeader & ~0xFF) >> 8

    # compression type must match
    if (dataHeader & 0xF0) >> 4 != 1:
        return -1

    # iterate, and figure out the number of bytes copied
    size = 0
    ea = compressed_ea + 4
    # iterate the blocks and keep count of the data size
    while size < decompSize:
        # parse block flags (compressed or not)
        bin_file.seek(ea)
        flags = bin_file.read(1)[0]
        ea += 1

        # iterate the blocks, MSB first.
        for i in range(7, -1, -1):
            if flags & (1<<i):
                # block i is compressed
                bin_file.seek(ea)
                chars = bin_file.read(2)
                block = chars[0] + (chars[1] << 8)
                size += ((block & 0xF0) >> 4) + 3
                ea += 2
                # check that the displacement doesn't underflow
                disp = ((block & 0xFF00) >> (16-4)) | block & 0xF
                if size - disp - 1 < 0:
                    return -2
            else:
                # block i is uncompressed, it's just one byte
                size += 1
                ea += 1
            # we might finish decompressing while processing blocks
            if size >= decompSize:
                # ensure that the rest of the flags are 0!
                # this is a practical restriction. (likely true, not technically part of the specs)
                for j in range(i, -1, -1):
                    if flags & (1<<j) != 0:
                        return -3
                break

    bin_file.seek(original_addr)
    return (ea - compressed_ea, decompSize)

if __name__ == '__main__':
    main()