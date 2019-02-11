import os
import re
import pathlib
import argparse
import pickle
from enum import Enum
import copy
from collections import namedtuple
import functools

NaN = float("nan")

FileLine = namedtuple("FileLine", ("filename", "line_num"))
default_fileline = FileLine("default_fileline", 0)
global_fileline = default_fileline
syms = None

def global_fileline_error(error_msg):
    raise RuntimeError("%s:%s: %s" % global_fileline.filename, global_fileline.line_num, error_msg)
    
class SrcFile:
    def __init__(self, filename):
        self._line_num = 0
        self._commented_lines = []
        self._uncommented_lines = []
        self._line_type = LineType.UNCOMMENTED
        self._filename = filename

    def __iter__(self):
        return self

    def __next__(self):
        if self._line_num < len(self.lines):
            self._line_num += 1
            return self.lines[self._line_num - 1]
        else:
            raise StopIteration

    def __getitem__(self, index):
        return self.lines[index]

    def __len__(self):
        return len(self.lines)

    @property
    def cur_line(self):
        return self.lines[self._line_num]

    @property
    def line_num(self):
        return self._line_num

    @line_num.setter
    def line_num(self, value):
        self._line_num = value

    @property
    def lines(self):
        if self._line_type == LineType.COMMENTED:
            return self._commented_lines
        else:
            return self._uncommented_lines

    @property
    def line_type(self):
        return self._line_type
    
    @line_type.setter
    def line_type(self, value):
        self._line_type = value

    def append_commented_and_uncommented_lines(self, commented_line, uncommented_line):
        self._commented_lines.append(commented_line)
        self._uncommented_lines.append(uncommented_line)
    
    @property
    def filename(self):
        return self._filename

class IterStr:
    def __init__(self, str):
        self.str = str

    def __iter__(self):
        self._index = 0
        return self

    def __next__(self):
        if self._index < len(self.str):
            self._index += 1
            return self.str[self._index - 1]
        else:
            raise StopIteration

    def next(self):
        return self.__next__()

    @property
    def index(self):
        return self._index

recursion_depth = 0
#scanned_files = {}

def find_colon_label_from_lines(label, lines, start_index=None):
    if start_index is not None:
        lines.line_num = start_index

    for line in lines:
        if line.startswith(label + ":"):
            return True

    return False

def find_colon_label_in_files(label, scanned_files, input_file=None):
    found_label = False

    if label.endswith("+1"):
        label = label[:-2]

    if input_file is None:
        for key, temp_lines in scanned_files.items():
            if find_colon_label_from_lines(label, temp_lines, 0):
                found_label = True
                lines = temp_lines
                break
    else:
        lines = scanned_files[input_file]
        found_label = find_colon_label_from_lines(jumptable, lines, 0)

    if not found_label:
        if input_file is None:
            raise RuntimeError("Could not find label \"%s\" in scanned files!" % label)
        else:
            raise RuntimeError("Could not find label \"%s\" in file \"%s\"!" % (label, input_file))

    return lines

def parse_word_directive(label, lines, start_index=None):
    parse_word_directives(label, lines, start_index, 1)

def parse_word_directives(label, lines, start_index=None, max_words=None):
    if start_index is not None:
        lines.line_num = start_index

    first_run = True
    num_words = 0
    words = []
    for line in lines:
        if first_run and line.startswith(label + ":"):
            line = line.split(":")[1]

        first_run = False

        line = line.lstrip()
        if line == "":
            continue
        elif line.startswith(".word"):
            words.append(line.split()[1])
            if max_words is not None and len(words) >= max_words:
                return words
        elif line.startswith(".byte"):
            raise NotImplementedError("No support for fake IDA zero bytes yet!")
        else:
            break

    return words

def parse_first_register_operand(line):
    register = line.split()[1]
    if register.endswith(","):
        return register[:-1]
    return register

class Size(Enum):
    UNKNOWN = 0
    BYTE = 1
    HWORD = 2
    WORD = 4

class DataTypeContainer:
    def __init__(self, _ref=None):
        if _ref is None:
            _ref = UnknownDataType()
        self._ref = _ref
        super().__init__()

    @property
    def type(self):
        return self.ref.type

    @property
    def ref(self):
        return self._ref

    @ref.setter
    def ref(self, _ref):
        self._ref = _ref

class DataType(ABC):
    UNKNOWN = 1 << 0
    PRIMITIVE = 1 << 2
    POINTER = 1 << 4

    def __init__(self):
        super().__init__()

    @property
    @abstractmethod
    def type(self):
        pass
    
    @property
    @abstractmethod
    def size(self):
        pass

    @property
    def size(self, _size):
        return self._size

    def wrap(self):
        return DataTypeContainer(self)    

class UnknownDataType(DataType):
    def __init__(self):
        super().__init__()

    @property
    def type(self):
        return DataType.UNKNOWN

    @property
    def size(self):
        return Size.WORD

class Primitive(DataType):
    new_byte = functools.partial(Primitive(Size.BYTE))
    new_hword = functools.partial(Primitive(Size.HWORD))
    new_word = functools.partial(Primitive(Size.WORD))

    def __init__(self, size=Size.UNKNOWN, value=NaN):
        super().__init__()
        self._size = size
        self._value = value

    @property
    def type(self):
        return DataType.PRIMITIVE

    @property
    def size(self):
        return self._size

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, value):
        self._value = value

class Pointer(DataType):
    def __init__(self, offset=0):
        super().__init__()
        self._offset = offset

    @property
    def type(self):
        return DataType.POINTER

    @abstractmethod
    def load(self, size, offset=0):
        pass

    @abstractmethod
    def store(self, datatype, size, offset=0):
        pass

    def add_offset(self, offset):
        self.offset += offset

    @property
    def offset(self):
        return self._offset

    @offset.setter
    def offset(self, offset):
        self._offset = offset

    @property
    def size(self):
        return Size.WORD

class RAMPointer(Pointer):
    def __init__(self, offset=0):
        super().__init__(self, offset)
        self.mem_type = mem_type
        self.offset = offset

    def load(self, size, offset=0):
        total_offset = offset + self.offset
        if math.isnan(total_offset):
            raise NotImplementedError("Context information: pointer deref with NaN offset")

class UnkROMPointer(Pointer):
    def __init__(self, possible_fields=[], offset=0):
        super().__init__(self, NaN, DataType.POINTER, size=Size.WORD)
        self.possible_fields = possible_fields
        self.offset = offset

    def load(self, size, offset=0):
        total_offset = offset + self.offset
        if math.isnan(total_offset):
            raise NotImplementedError("Context information: ROM pointer deref with NaN offset")
            # return self.possible_fields
        else:
            # todo

class Struct(Pointer):
    def __init__(self, offset=0):
        super().__init__(offset)

    def load(self, size, offset=0):
        total_offset = offset + self.offset
        if math.isnan(total_offset):
            raise NotImplementedError("Context information: pointer deref with NaN offset")

    @abstractmethod
    def get_struct_data(self):
        pass

class StructField:
    def __init__(self, offset_name, datatype):
        self.offset_name = offset_name
        self.datatype = datatype

StructEntry = namedtuple("StructEntry", ("offset_name", "datatype", "size"))

class StructData:
    def __init__(self, struct_prefix, struct_fields):
        self.struct_prefix = struct_prefix
        self.struct_fields = struct_fields

class BattleObject(Struct):
    struct_fields = StructData("oBattleObject",
            0x0: StructField("_Flags", Primitive.new_byte),
            0x1: StructField("_Index", Primitive.new_byte),
            0x2: StructField("_TypeAndSpriteOffset", Primitive.new_byte),
            0x3: StructField("_ListIndex", Primitive.new_byte),
            0x4: StructField("_Param1", Primitive.new_byte)
            0x5: "_Param2", Primitive.new_byte
            
    def __init__(self, value, offset=0):
        super().__init__(self, value, offset)

    def get_struct_data(self):
        return StructField(

class Stack(Pointer):
    def __init__(self, datatypes={}):
        super().__init__()
        self.datatypes = datatypes

    def load(self, size=Size.WORD, offset=0):
        total_offset = self.offset + offset
        if math.isnan(total_offset):
            global_fileline_error("Stack offset is NaN!")
        if total_offset % size != 0:
            global_fileline_error("Misaligned stack read detected (size: %s, offset=%s)!" % size, total_offset)
        return self.datatypes[(total_offset, size)]

    # note: storing values may be risky. figure this out
    def store(self, datatype, size=Size.WORD, offset=0):
        total_offset = self.offset + offset
        if math.isnan(total_offset):
            global_fileline_error("Stack offset is NaN!")
        if total_offset % size != 0:
            global_fileline_error("Misaligned stack write detected (size: %s, offset=%s)!" % size, total_offset)
        self.datatypes[(total_offset, size)] = datatype

class FunctionState:
    def __init__(self, registers):
        self.branch_states = []
        self.regs = registers.copy() # ignore lr and pc
        self.cond_branch_labels = {}
        self.uncond_branch_labels = {}
        self.labels = {}

class RegisterInfo:
    def __init__(self, datatype=None, fileline=default_fileline):
        if datatype is None:
            datatype = UnknownDataType().wrap()
        self.datatype = datatype
        self.fileline = fileline

class RegisterState(dict):
    default_registers = {
        "r0": [RegisterInfo()],
        "r1": [RegisterInfo()],
        "r2": [RegisterInfo()],
        "r3": [RegisterInfo()],
        "r4": [RegisterInfo()],
        "r5": [RegisterInfo()],
        "r6": [RegisterInfo()],
        "r7": [RegisterInfo()],
        "r8": [RegisterInfo()],
        "r9": [RegisterInfo()],
        "r10": [RegisterInfo()],
        "r11": [RegisterInfo()],
        "r12": [RegisterInfo()],
        "sp": Stack()
        "lr": [RegisterInfo()],
        "pc": [RegisterInfo()]
    }

    valid_registers = set("r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10", "r11", "r12", "sp")

    def __init__(self):
        dict.__init__(self, default_registers)

    def __init__(self, *args):
        dict.__init__(self, args)

    def __getitem__(self, key):
        if key not in valid_registers:
            raise KeyError(key)
        return dict.__getitem__(self, key)

    def __setitem__(self, key, val):
        if key not in valid_registers:
            raise KeyError(key)
        dict.__setitem__(self, key, val)

class BranchState:
    def __init__(self, line_num, register_states):
        self.line_num = line_num
        self.register_states = register_states

# note: probably tuned towards battle objects, fix later
def parse_jumptable_function(label, scanned_files, registers):
    funcstate = FunctionState(registers)
    lines = find_colon_label_in_files(label, scanned_files)
    lines.line_num += 1
    end_codepath = False
    
    for line in lines:
        if line.startswith("\t"):
            # label stuff
            pass
        else:
            global global_fileline
            global_fileline = FileLine(lines.filename, lines.line_num)
            read_opcode(line, funcstate, global_fileline)

    """
    for line in lines:
        if line.startswith("\t"):
            
        cond_branch_label_tuple = re.findall(cond_branches_pattern, line)
        if len(cond_branch_label_tuple) == 2:
            cond_branch_labels[cond_branch_label_tuple[1]] = BranchInfo(lines.line_num, list(register_states))
            continue

        uncond_branch_label_tuple = re.findall(r"^\tb (\S+)", line)
        if len(uncond_branch_label_tuple) == 1:
            uncond_branch_labels[uncond_branch_label_tuple[0]] = BranchInfo(lines.line_num, list(register_states))
            break

        # LDR HACK FOR BATTLE OBJECTS FIX LATER
        ldr_pc_label_tuple = re.findall(r"^\tldr r1, (?!\[)(\S+)", line)
        if len(ldr_pc_label_tuple) == 1:
            register_states[1] = ldr_pc_label_tuple[0]
            continue
        
        if line.startswith("\tbx r1"):
            bx_states[1].append(list(register_states))
            continue
        
        if line.startswith("\tmov pc, lr") or line.startswith("\tpop {pc}"):
            break
        
        label_tuple = re.findall(r"^([A-Za-z0-9_]+(?=:{1,2})|\.[A-Za-z0-9_]+(?=:?))", line)
        if len(label_tuple) == 1:
            if label_tuple[0] in labels:
                raise RuntimeError("Duplicate label \"%s\" found! (prev line num: %s, this line num: %s)" % (label_tuple[0], labels[label_tuple[0]], lines.line_num))
            labels[label_tuple[0]] = lines.line_num
    else:
        raise RuntimeError("Hit end of file while parsing jumptable function \"%s\"!" % label)
    """

def read_jumptable(jumptable, scanned_files, input_file=None):
    """
    Returns a jumptable's entries in a list specified by the given label.
    
    Parameters
    ----------
    jumptable : str
        The label of the jumptable.
    scanned_files : dict
        Base object containing the contents of all files, each using their filename as the key.
    input_file : str, optional
        Only search for the jumptable in this file.

    Raises
    ------
    RuntimeError
        Thrown if the jumptable was not found.
    """

    found_jumptable = False

    lines = find_colon_label_in_files(jumptable, scanned_files, input_file)
    print("line: %s" % lines.cur_line)
    words = parse_word_directives(jumptable, lines)
    print("words: %s" % words)
    registers = RegisterState()
    registers["r5"] = "BattleObject"
    parse_jumptable_function(words[0], scanned_files, registers)

def recursive_scan_includes(filepath, scanned_files):
    global recursion_depth
    print("recursion depth: %s | file: %s" % (recursion_depth, filepath))
    recursion_depth += 1
    
    in_block_comment = False

    with open(filepath, "r") as f:
        scanned_files[filepath] = SrcFile(filepath)
        for line in f:
            include_file_list = re.findall(r"\t\.include \"([^\"]+)\"", line)
            if len(include_file_list) > 1:
                raise RuntimeError("More than one group found!")
            elif len(include_file_list) == 1:
                include_given_pathname = include_file_list[0]
                include_real_pathname = include_given_pathname
                if include_given_pathname.endswith(".inc"):
                    if pathlib.Path(include_given_pathname).is_file():
                        pass # already defined as default
                    elif pathlib.Path("include/" + include_given_pathname).is_file():
                        include_real_pathname = "include/" + include_given_pathname
                    else:
                        raise RuntimeError("Path specified by \"%s\" not found!" % include_given_pathname)

                if include_real_pathname in scanned_files:
                    continue

                try:
                    recursive_scan_includes(include_real_pathname, scanned_files)
                except IOError:
                    raise


            if len(line) > 1 and line[-2] == "\r":
                line = line[-2] + "\n"

            uncommented_line = ""
            in_line_comment = False
            iter_line = IterStr(line)
            # faster to do this naive check for most cases because "in" is native
            if not in_block_comment and "/*" not in line:
                slash_line_comment_index = line.find("//") * -1
                at_line_comment_index = line.find("@") * -1
                line_comment_index = min(slash_line_comment_index, at_line_comment_index) * -1
                if line_comment_index == -1:
                    uncommented_line = line
                else:
                    uncommented_line = line[:line_comment_index] + " " * (len(line) - line_comment_index - 1) + "\n"
            else:
                for char in iter_line:
                    if in_block_comment:
                        uncommented_line += " "
                        if char == "*":
                            char = iter_line.next()
                            uncommented_line += " "
                            if char == "/":
                                in_block_comment = False
                    elif char == "@":
                        uncommented_line += " " * (len(line) - iter_line.index - 1) + "\n"
                        break
                    elif char == "/":
                        char = iter_line.next()
                        if char == "/":
                            uncommented_line += "  " + " " * (len(line) - iter_line.index - 1) + "\n"
                            break
                        elif char == "*":
                            uncommented_line += "  "
                            in_block_comment = True
                    else:
                        uncommented_line += char

            scanned_files[filepath].append_commented_and_uncommented_lines(line, uncommented_line)

    recursion_depth -= 1

def main():
    # argument parser
    ap = argparse.ArgumentParser()
    ap.add_argument("-l", "--load-from-file", dest="load_from_file")
    ap.add_argument("-c", "--cache", dest="cache")
    ap.add_argument("-p", "--path", dest="input_path")
    ap.add_argument("-m", "--make", dest="make", action="store_true")

    args = ap.parse_args()
    # if symfile is unspecified, use the rom name as the symfile name
    
    output_path = os.getcwd()

    if args.input_path is None and os.path.basename(os.getcwd()) == "analyze_source":
        os.chdir("../..")
    else:
        os.chdir(args.input_path)

    global syms

    if args.make:
        syms = readelf.make_and_read_syms()
    else:
        syms = readelf.read_syms()

    if args.load_from_file is None:
        scanned_files = {}
        input_files = ("rom.s", "iwram_code.s", "data.s")
        for input_file in input_files:
            recursive_scan_includes(input_file, scanned_files)
            if args.cache is not None:
                cur_path = os.getcwd()
                os.chdir(output_path)
                with open(args.cache, "wb+") as f:
                    pickle.dump(scanned_files, f)
                os.chdir(cur_path)
    else:
        cur_path = os.getcwd()
        os.chdir(output_path)
        with open(args.load_from_file, "rb") as f:
            scanned_files = pickle.load(f)
        os.chdir(cur_path)

    #test_output = ""
    #scanned_files["asm/asm03_0.s"].line_type = LineType.UNCOMMENTED
    #test_output = "".join(line for line in scanned_files["asm/asm03_0.s"])
    #
    #with open("scanned_out_test.txt", "w+") as f:
    #    f.write(test_output)

    read_jumptable("T1BattleObjectJumptable", scanned_files)

if __name__ == "__main__":
    main()

