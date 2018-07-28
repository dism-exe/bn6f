import sys

def err():
    sys.stderr.write(stderr, "Usage: <binpath> <binpath> [-s1|-s2|-s4] [-d<numDiffs>]")
    exit(1)

def parseSize(arg):
    if len(arg) != 3 or arg[:2] != '-s' or not arg[2].isdigit():
        err()
    # parse digit
    size = int(arg[2])
    if (size != 1 and size != 2 and size != 4):
        err()
    return size

def parseNumDiffs(arg):
    if len(arg) != 3 or arg[:2] != '-d' or not arg[2].isdigit():
        err()
    # parse digit
    diffnum = int(arg[2:])
    if diffnum < 0:
        sys.stderr.write("diffnum must be positive")
    return diffnum

def concatBytes(bytes):
    """
    :return: a primitive version of the given bytes, concatenated together into an int
    """
    output = 0
    for i in range(len(bytes)):
        output |= bytes[i] << (8*i)
    return output

class Diff:
    def __init__(self, ea, diffNum, packet1, packet2):
        """
        Represents one detected difference in the binaries
        :param ea: the address the difference was found in
        :param diffNum: the nth difference this is
        :param packet1: the data in the first binary
        :param packet2: the data in the second
        """
        self.ea = ea
        self.diffNum = diffNum
        self.packet1 = packet1
        self.packet2 = packet2


def main():
    # open the binary files to compare
    bin1 = open(sys.argv[1], 'rb')
    bin2 = open(sys.argv[2], 'rb')

    # parse switches for packet size and the difference to display
    size = 4
    numDiffs = -1 # display all diffs by default
    for i in range(3,5):
        if len(sys.argv) > i:
            if '-s' in sys.argv[i]:
                size = parseSize(sys.argv[i])
            elif '-d' in sys.argv[i]:
                numDiffs = parseNumDiffs(sys.argv[i])
            else:
                err()

    # find difference
    p1 = p2 = 0
    packet1 = packet2 = 0
    currDiffNum = 0
    addr = diffAddr = 0
    foundDiff = False
    diffs = []
    while packet1 != b'' and packet2 != b'':
        packet1 = bin1.read(size)
        packet2 = bin2.read(size)
        if packet1 != packet2:
            # detected a diff!
            foundDiff = True
            diffs.append(Diff(addr, currDiffNum, packet1, packet2))
            # store last diff packets
            currDiffNum += 1
            # stop comparing when we find the requested number of differences to display
            if currDiffNum == numDiffs:
                break
        addr += size

    # close files, thanks!
    bin1.close()
    bin2.close()

    # display output
    if foundDiff:
        for diff in diffs:
            print("Found diff #%d @ %06X: bin1=0x%X bin2=0x%0X" %
                  (diff.diffNum, diff.ea, concatBytes(diff.packet1), concatBytes(diff.packet2)))
    else:
        print("Files are identical!")



if __name__ == '__main__':
    main()
