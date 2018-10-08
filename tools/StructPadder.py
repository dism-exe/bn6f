##
# Author: Lan
# Description: This module's purpose is to pad incomplete structures so that they are usable. It also sorts the
# structure's members into correct order by consequence.
# Refer to "__main__" if using this from the commandline.
# If using this in another program, make use of the Structure class!
##
import re

POINTER_SIZE = 32  # (bits) size of a pointer in ARM7TDMI

# setting that specified whether the structure uses signed/unsigned primitives as u8/i32 or uint8_t/int32_t
int_types_long = False

##
# This dictionary contains entries with predetermined sizes specified to the structPadder.
# This includes primitive types, structs, and any defined type with a known size.
# The sizes are specified in bytes.
##
known_types = {
    # primitives
    'bool': 1, 'int': 4, 'short': 2, 'long': 4, 'char': 1,
    'uint32_t': 4, 'uint16_t': 2, 'uint8_t': 1,
    'int32_t': 4, 'int16_t': 2, 'int8_t': 1,
    'u32': 4, 'u16': 2, 'u8': 1, 'i32': 4, 'i16': 2, 'i8': 1,
    # custom types (modify this as needed)
    'bool_t': 1,
}

##
# An entry represents one member in a C structure. One entry may look like this:
# "uint8_t someMember; // loc=0x04"
# It must consist of a type, name, and a location in the comments. Those propreties are defined in this class.
# If the StructMember is a structure itself, its size must be passed in structSize when initializing, as it cannot be
# determined through type context. (if it's a pointer to a structure, it doesn't count as a structure.)
# Note that the size of a structure MUST be a multiple of 8, as anything else isn't really possible in C
##
class StructMember:
    size: int          # Size of entry member. 8 for uint8_t, 32 for uint32_t, 32 for BANANA*, etc.
    type: str          # The first string in the entry for output reconstruction May include a star.
    name: str          # The name of the member.  May include a star: BANANA *b;
    location: int      # The location as extracted from the loc=<location> argument in the comment.
    otherContent: str  # Any more text that comes after // loc=<location>

    ##
    # Initiates the entry with a type, name, and location.
    # This is parted from strings passed in that are found in the input file.
    # If the entry is a POINTER, its type is still passed in but its size is automatically set to POINTER_SIZE
    # @param _type This is the type of the member, ex. (uint8_t) or (longSword*)
    # @param name The name of the member. If it contains *, the member is regarded as a pointer, like _type.
    # @param location
    ##
    def __init__(self, _type: str, name: str, location: int, otherContent: str, structSize=None):
        self.type = _type
        # if _size is not None, that means this is a structure, and you can't figure out its size from context.
        if not structSize:
            if('*' in name or '*' in _type):
                self.size = POINTER_SIZE
            else:
                if _type in known_types:
                    self.size = 8 * known_types[_type] # bytes -> bits
                else: # invalid state, size cannot be determined
                    raise Exception("Cannot determine size for specified type")
        else:
            self.size = 8 * structSize # since size is measured in bits not bytes
        self.name = name
        self.location = location
        self.otherContent = otherContent

##
# This class encapsulates the act of creating, adding to, parsing, and padding structures.
# The structure may also be outputted as a string
##
class Structure:
    name: str  # Name of the structure
    members: list  # List of StructMember objects
    size: int  # Maximum size of structure in bytes
    maxLen: int  # the maximum length of a line in the struct. Used for tabbing.

    ##
    # Either provide the name and size of the structure, or file that has the structure in it for parsing.
    # Provide the name and size for manual creation of the structure.
    # @param name       name of the structure, ignored if structFile != None
    # @param size       size of the structure, ignored if structFile != None
    # @param structFile file to parse to obtain structure, ignored if name and size are not None
    ##
    def __init__(self, name=None, size=None, structFile=None):
        self.maxLen = 0
        if name != None and size != None and structFile == None:
            self.name = name
            self.size = size
            self.members = []
        if name == None and size == None and structFile != None:
            line = '\0'
            self.members = []
            while line != '':
                line = structFile.readline()
                tempStructSize, self.maxLen = handleLineParsing(self.members, line, self.maxLen)
                if tempStructSize != 0:
                    self.size = tempStructSize
                if "}" in line:
                    self.name = ''.join(list(filter(None, re.split("[ \t\n};]", line))))
            self.members = sorted(self.members, key=compareLocations, reverse=False)
            pass

    ##
    # Insers pads into the Structure's members so that its locations are consistent. This makes the structure usable.
    # The amount of padding is determined by three things: The current member's location and size, and the next member's
    # location. If no next entry exists, it uses the structSize as the maximum "next location" for the pad.
    ##
    def pad(self):
        if len(self.members) < 1:
            print("There are no entries to pad.")
            return
        i = 0
        while i < len(self.members):
            # ignore if the entry is a pad.
            if self.members[i].name[0:3] == "pad":
                # if it's the last entry, just leave
                if i == len(self.members) - 1:
                    break
                # ignore this newly inserted entry!
                i += 1
                continue
            # compute pad amount
            curr = self.members[i]
            if i != len(self.members) - 1:
                next = self.members[i + 1]
                padAmount = next.location - (curr.location + curr.size // 8)
            else:
                padAmount = (self.size) - (curr.location + curr.size // 8)
                if self.size == 0: padAmount = 0
            # add a pad if needed
            if padAmount != 0:
                if int_types_long: _type = "uint8_t"
                else: _type = "u8"
                entry = StructMember(_type=_type,
                                     name="pad_%02X[0x%02X];" % (curr.location + curr.size // 8, padAmount),
                                     location=(curr.location + curr.size // 8), otherContent='', structSize=None)
                self.members.insert(i + 1, entry)
            # advance!
            i += 1

    ##
    # Gives the whole structure as it would be formatted in C in a string format
    ##
    def __str__(self):
        output = "typedef struct {\n"
        for entry in self.members:
            s = ""
            locStr = "// loc=0x%X%s" % (entry.location, entry.otherContent)
            # if it's a pad, tab twice... it looks pretty!
            if entry.name[0:3] == "pad":
                locStr = ''  # don't show the location for pads. // loc=<>. It's pretty obvious
                s += "\t\t"
            else:
                s += "\t"
            # format entry, with some smart tabbing and stuff
            s += "%s %s " % (entry.type, entry.name)
            s += " " * ((self.maxLen) - len(s)) + locStr
            # output entry
            output += s + "\n"
        # output size
        if self.size != 0:
            output += "\t// size=0x%X\n" % self.size
        output += "}%s;" % self.name
        return output


##
# This finds out the whether a psssed maxLen, or the length of the line until '//' is greater.
# This is used to compute the maximum length of an entry until the comment. It is executed for all
# lines, and the very maximum Length will be the one outputted in the end.
##
def computeMaxLen(maxLen, line):
    # compute the maximum length just before //
    length = maxLen
    if "//" in line:
        cutoffIndex = line.index("//")
        if cutoffIndex > maxLen:
            length = cutoffIndex
    return length


##
# Parses a line with the form "uint<size>_t <name>; // loc=<location> (any arbitrary comments may be added on the line)
# A pointer of any type might also be passed: "BANANA *b; // loc=0x08" for example is valid.
# It is expected that after the last member definition line, a size is padded in the form
# "// size=0x1B0" for example. The entries may have a "uint8_t pad<loc>[]", but those are automatically ignored.
# Since pads are recompiled with the known entries which are also put into correct order.
# WARNING: Pads must not contain any comments other than // loc=<location>,
# as any line containing a pad is removed. All pads are recompiled after parsing in the program.
# @returns An array specifying the list an entry or the size of the struct. [Entry, 0] or [None, size].
##
def parse(line: str):
    args = list(filter(None, re.split("[ \t]", line)))
    entry = None
    structSize = 0
    # In case this is a line specifying size
    if len(args) == 2 and args[1][0:5] == "size=":
        structSize = int(args[1][5:], 16)
    # This may be an entry, or it may be a line that is not related. We also completely ignore pads.
    if len(args) >= 4 and (args[1][0:3] != "pad") and (args[3][0:4] == "loc="):
        # if this entry is a structure member, its size must be specified
        if len(args) >= 5 and len(args[4]) >= 9 and args[4][0:5] == "size=":
            # determine other content after argsp[4]
            extrContIndex = line.index(args[3]) + len(args[3])
            # construct entry. If there's extra test, there's a new line. Don't include that.
            entry = StructMember(_type=args[0], name=args[1], location=int(args[3][4:], 16),
                                 otherContent=line[extrContIndex:-1], structSize=int(args[4][5:], 16))
        else: # this is a primitive or a pointer entry
            # determine other content after args[3]
            extrContIndex = line.index(args[3]) + len(args[3])
            # construct entry. If there's extra text, there's a new line. Don't include that.
            entry = StructMember(_type=args[0], name=args[1], location=int(args[3][4:], 16),
                                 otherContent=line[extrContIndex:-1], structSize=None)

    return [entry, structSize]

##
# This function is used in sorted() so that the entries are compared based on their locations.
##
def compareLocations(entry):
    return entry.location

##
# Handles the parsing of an entry line or a line containing size. Other unrelated lines are ignored
# by the parser. The structSize output is most of the time zero until the size is actually parsed, therefore
# it should only be recorded when it's none-zero. maxLen is needed to go into this function again to compute
# for padding.
##
def handleLineParsing(entries, line, maxLen):
    maxLen = computeMaxLen(maxLen, line)
    structSize = 0
    parserOutput = parse(str(line))
    if parserOutput[0]:
        entries.append(parserOutput[0])
    if parserOutput[1] != 0:
        structSize = parserOutput[1]
    return structSize, maxLen


##
# This program takes in member definitions for a structure, and applies pads as appropriate so that the structure
# is usable. All previous pads are recompiled when this program is run on the input.
# Let this program handle padding for you. The requirement is that the entries are defined like this:
# "uint32_t[*] [*]name; [tabbing...] // loc=<location in hex>
# Allowed types: uint8_t, uint16_t, and uint32_t. uint<size>_t should be parsable in theory.
# pointers of all type are also allowed. Where the star is put does not matter. It can be put in both places,
# this program won't check for that. If it detects a star, it automatically associates the entry with a size of
# POINTER_SIZE.
##
if __name__ == "__main__":
    struct = Structure(structFile=open("input", "r"))
    struct.pad()
    print(struct, end='')