"""
Author: Lan
Description: The purpose of this module is to parse in the output of the VBA-rr
MemoryAccessDeetector lua script. It then may construct a struct out of it, report the functions detected, or
report a hash representing the accesses. The hash should be a unique representations of the memory block.
Meaning, if a different but functionally similar memory block is scanned, the hash should theoretically be
very similar.

heck __main__ for format information.

"""
import sys
import re
import StructPadder



class MemoryAccessEntry:
    """
    This class represnts one detected entry in the form of <addr>[?] u<size>([<base>+]<off>)
    All of the fields would be present in the object. This is the core element of the Memory access parser.
    Those entries are processed to generate structures and other useful output.

    """
    functionAddr: str
    accessAddr: int
    type: int
    base: int
    offset: int


    def __init__(self, functionAddr, accessAddr, _type, base, offset):
        """
        Initiates the object with the specified data. This is meant to be used strictly as a structure.
        :param functionAddr: The address of the function, it is a string because it may contain a '?' when unsure.
        :param accessAddr: The access address. This is always concrete. It is the very location of the LDR/STR inst.
        :param _type: The type, or the size of the access. was it an LDRB, LDRSH, or an STR?
        :param base: The detected access may be offset from a different base than the specified base address.
        :param offset: The offset detected in the the entry.
        """
        if type(functionAddr) is not str or type(accessAddr) is not int or \
                        type(_type) is not int and type(offset) is not int:
            raise(Exception("Invalid inputs to MemoryAccessEntry"))
        self.functionAddr = functionAddr
        self.accessAddr = accessAddr
        self.type = _type
        self.base = base
        self.offset = offset


class MemoryAccessProtocol:
    """
    This is the module class. It represents the features this script could provide to other scripts.
    It is capable of parsing a file that contains the output of the MemoryAccessDetector lua module, and processing it
    to output various useful things, such as structures or memory block hashes.
    """

    _MAEntries: list  # Memory Acesss Entries
    struct: StructPadder.Structure  # Struct Member Entries
    name: str
    size: int

    def __init__(self, metaLine):
        """

        :param metaLine:
        """
        # parse relevent meta information
        args = list(filter(None, re.split("[ \t,]", metaLine)))
        for arg in args:
            if 'name=' in arg:
                self.name = arg[5:]
            if 'size=' in arg:
                self.size = int(arg[5:], 16)
        # instantiate entries
        self._MAEntries = []
        self.struct = StructPadder.Structure(name=self.name, size=self.size)


    def parseline(self, line):
        args = list(filter(None, re.split("[ \t,\n]", line)))
        # if this is an entry line, the first argument will always be in the form <funcAddr>::<accessAddr>
        if len(args) == 0:
            return
        if '::' not in args[0]:
            return
        if len(args) % 2 != 0:
            return
        # parse all entries in line!
        for i in range(0, len(args), 2):
            addresses = str(args[i])  # <funcAddr>::<accessAddr>
            memAccess = str(args[i+1])  # u<type>(<offset>)
            funcAddr = addresses[:addresses.index("::")]
            accessAddr = int(addresses[addresses.index("::")+2:], 16)
            type = int(re.search(r"\d+", memAccess[:memAccess.index("(")]).group())
            # Offset not identified, it cannot be used
            if "+" in memAccess:
                base = int(memAccess[memAccess.index("(")+1:memAccess.index("+")], 16)
                offset = base + int(memAccess[memAccess.index("+") + 1:-1], 16)
            else:
                base = 0
                offset = int(memAccess[memAccess.index("(")+1:-1], 16)
            entry = MemoryAccessEntry(funcAddr,accessAddr,type,base, offset)
            self._MAEntries.append(entry)

    def generate_member_entries(self):
        for MAEntry in self._MAEntries:
            if StructPadder.int_types_long:
                SMEntry = StructPadder.StructMember(_type="uint%d_t" % MAEntry.type, name= "unk_%02X;" % MAEntry.offset,
                                                location= MAEntry.offset, otherContent='', structSize=None)
            else:
                SMEntry = StructPadder.StructMember(_type="u%d" % MAEntry.type, name= "unk_%02X;" % MAEntry.offset,
                                                location= MAEntry.offset, otherContent='', structSize=None)

            self.struct.members.append(SMEntry)
        # All duplicated of the same type are removed
        self.remove_duplicates()
        # there could be duplicates... with different types... mark them
        self.mark_loc_duplicates()
        # Remove all CONFLICT marked duplicates except for the one with the lowest size
        self.remove_loc_duplicates()
        # Now to pad. Things will go wrong if there are location duplicates.
        self.struct.pad()

    def no_SMEntry_duplicate_in(self, newSMEntries, SMEntry):
        output = True
        for entry in newSMEntries:
            if entry.location == SMEntry.location and entry.type == SMEntry.type:
                output = False
        return output

    def remove_duplicates(self):
        # first, sort by location and by type...
        self.struct.members = sorted(self.struct.members, key= lambda x: (x.location, x.size), reverse=False)
        # remove duplicates base on type and location
        newSMEntries = [] # structur member entries, without duplicates
        for entry in self.struct.members:
            if self.no_SMEntry_duplicate_in(newSMEntries, entry):
                newSMEntries.append(entry)
        self.struct.members = newSMEntries



    def mark_loc_duplicates(self):
        # first, sort by location and by type...
        self.struct.members = sorted(self.struct.members, key= lambda x: (x.location, x.size), reverse=False)
        # mark all location duplicates as CONFLICT
        for i in range(len(self.struct.members)):
            if " CONFLICT" not in self.struct.members[i].otherContent: # " CONFLICT" b/c spaces are included after loc=0x%X
                for j in range(i+1, len(self.struct.members)):
                    if self.struct.members[i].location == self.struct.members[j].location:
                        if self.struct.members[i].otherContent == '': self.struct.members[i].otherContent = " CONFLICT"
                        self.struct.members[j].otherContent = " CONFLICT"
                        self.struct.members[i].otherContent += " u" + str(self.struct.members[j].size)

    def remove_loc_duplicates(self):
        # This should only be called after marking, so sorting is guaranteed
        # The lowest CONFLICT has been marked with all the higher ones. " CONFLICT u16 u32" for example.
        # The higher ones were only marked with CONFLICT and could cause padding errors: remove them.
        newSMEntries = []
        for i in range(len(self.struct.members)):
            if self.struct.members[i].otherContent != " CONFLICT":
                newSMEntries.append(self.struct.members[i])
        self.struct.members = newSMEntries

    def output_struct_template(self):
        if StructPadder.int_types_long:
            self.struct.maxLen = len('uint32_t unk_FFF     ')
        else:
            self.struct.maxLen = len('u32 unk_FFF     ')
        print(self.struct, end='')

    def output_functions(self):
        functions = self.get_functions()

        for i in range(len(functions)):
            print(functions[i] + " ", end='')
            if (i+1) % 5 == 0:
                print()

    def get_functions(self):
        # get all functions
        functions = []
        for entry in self._MAEntries:
            if entry.functionAddr not in functions:
                functions.append(entry.functionAddr)
        functions = sorted(functions)
        return functions

    def output_hash(self):
        output = '_'*self.struct.size
        for member in self.struct.members:
            # 8 bits per member, 0b1 -> size of 8, 0b10 -> size of 16 ...
            memberByte = (member.size // 8) & 0xFF
            if "pad" not in member.name:
                output = output[:member.location] + chr(47 + memberByte) + output[member.location+1:]
        print("#define HASH__" + self.struct.name + ' "' + output + '"')
        # output = ''
        # functions = self.get_functions()
        # for func in functions:
        #     if "?" in func:
        #         iFunc = int(func[:-1], 16)
        #     else:
        #         iFunc = int(func, 16)
        #     # now hash them, each function represents three characters
        #     output +=  "%07X" % iFunc + "_"
        # print("#define FHASH__" + self.struct.name + ' "' + output + '"')




if __name__ == '__main__':
    if len(sys.argv) < 3:
        print("Program Format: progName <inputFile> <outputMode>\noutputMode can be: struct or functions")
        exit(-1)
    inputFile = open(sys.argv[1], "r")
    line = inputFile.readline()
    memap = MemoryAccessProtocol(line) # parse meta information line
    while line != '':
        line = inputFile.readline()
        memap.parseline(line)
    memap.generate_member_entries()
    if sys.argv[2] == "struct":
        memap.output_struct_template()
    elif sys.argv[2] == "functions":
        memap.output_functions()
    elif sys.argv[2] == "hash":
        memap.output_hash()