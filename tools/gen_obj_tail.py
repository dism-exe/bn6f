"""
:author: Lan
:file: gen_obj_tail.py
This module will read the elf to determine the current location of the tail symbol, then generate the
appropriate tail.bin file in the specified folder.
To read the elf, arm-none-eabi-readelf must be present in PATH.
"""

import sys
import os
import re

file_name = 'gen_obj_tail'

def err():
    print("Usage: %s <elfPath> <binPath> <tailPath> <tailSymbolName>" % file_name)
    sys.exit(1)

def main(elfPath, binPath, tailPath, tailSymbolName):
    """
    Reads the elf file, determines the location of the tail symbol, and creates tail.bin based on that
    :param elfPath: the path to the elf file to find the tail symbol in
    :param binPath: the path to the original file to extract tail.bin from
    :param tailPath: the path to the tail file to overwrite or create
    :param tailSymbolName: this is the name of the last label before the tail bin file is bin included.
                           (Ex. 'tail' in 'tail: .incbin "bin/tail")
    """
    # extract the symbol and make it relative to the rom segment
    tail_ea = getSymbol(elfPath, tailSymbolName) - 0x08000000
    # extract just the tail.bin portion from the bin file: [tail_ea:)
    bin = open(binPath, 'rb')
    bin.seek(tail_ea)
    b = 0
    tailData = b''
    while b != b'':
        b = bin.read()
        tailData += b
    bin.close()
    # overwite or create the specified tail file
    tailFile = open(tailPath, 'wb')
    tailFile.write(tailData)
    tailFile.close()

def getSymbol(elfPath, symbolName):
    """
    This creates temporary files and deletes them immediately after for interacting with arm-none-eabi-readelf
    It displays the symbol table of the elf file, and searches for the specified symbol
    :param elfPath:  the elf file path to read the symbol from
    :param symbolName: the symbol to read
    :return: its integer value
    """
    # generate readelf output
    tmpStdout = '%s_stdout.tmp' % file_name
    tmpStderr = '%s_stderr.tmp' % file_name
    os.system('arm-none-eabi-readelf -s %s 1> %s 2> %s' % (elfPath, tmpStdout, tmpStderr))
    # find the tail symbol in the output
    stdoutFile = open(tmpStdout, 'r')
    output = -1
    for line in stdoutFile.readlines():
        fields = list(filter(None, re.split('[ \n]', line)))
        if len(fields) == 8 and symbolName in fields:
            # found the symbol!
            output = int(fields[1], 16)
    stdoutFile.close()
    # delete temporary files
    os.remove(tmpStdout)
    os.remove(tmpStderr)
    return output

if __name__ == '__main__':
    if len(sys.argv) != 5:
        err()
    main(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
