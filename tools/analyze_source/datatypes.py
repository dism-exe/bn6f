from enum import Enum
from abc import ABC, abstractmethod
import functools
import math
import numbers
import re
import collections
import copy

import parser
import readelf
from analyze_source import *

"""
from analyze_source import *
import analyzer
import opcodes
import parser
import readelf
import scanner
"""

syms = {}
scanned_files = {}

def set_syms_and_scanned_files(_syms, _scanned_files):
    global syms
    global scanned_files
    syms = _syms
    scanned_files = _scanned_files

ROM_END = 0x87FB2F4

class Size(Enum):
    DEFAULT = -1
    UNKNOWN = 0
    BYTE = 1
    HWORD = 2
    WORD = 4

class DataTypeContainer:
    __slots__ = ("_ref",)
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

    @property
    def ref(self):
        global_fileline_error("\"%s\" object should not exist here, check code for missing wrap()!" % type(self).__name__)

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
    new_byte = None
    new_hword = None
    new_word = None

    __slots__ = ("_size", "_value")

    def __init__(self, size=Size.UNKNOWN, value=None):
        super().__init__()
        self._size = size
        if value is None:
            value = NaN
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

    @property
    def is_immediate(self):
        return False

Primitive.new_byte = functools.partial(Primitive, Size.BYTE)
Primitive.new_hword = functools.partial(Primitive, Size.HWORD)
Primitive.new_word = functools.partial(Primitive, Size.WORD)

class Immediate(Primitive):
    def __init__(self, size=Size.BYTE, value=0):
        super().__init__(size, value)

    @property
    def is_immediate(self):
        return True

class Pointer(DataType):
    null_sym = readelf.SymInfo(value=NaN, scope="l", debug=" ", type=" ", section="*UND*", name="null", filename="dummy", line_num=0)
    __slots__ = ("_possible_syms", "_offset", "original_sym")
    
    # if possible_syms is list: original sym is preserved
    # else: original sym = possible sym
    def __init__(self, offset=0, possible_syms=None, original_sym=None):
        super().__init__()
        if not possible_syms:
            self.original_sym = Pointer.null_sym
            self._possible_syms = [Pointer.null_sym]
        elif not isinstance(possible_syms, list):
            self.original_sym = possible_syms
            self._possible_syms = [possible_syms]
        elif original_sym is not None:
            self.original_sym = original_sym
            self._possible_syms = possible_syms
        else:
            global_fileline_error("Tried making Pointer with multiple possible syms but no original sym!")
        self._offset = offset

    @property
    def type(self):
        return DataType.POINTER

    @abstractmethod
    def load(self, size, fileline, funcstate, offset=None):
        pass

    @abstractmethod
    def store(self, datatype, size, fileline, funcstate, offset=None):
        pass

    def add_offset(self, offset):
        # if not isinstance(self.offset, numbers.Number):
        #     global_fileline_error("Trying to add variable of type \"%s\" to pointer!" % type(self.offset).__name__)
        
        self.offset = self.offset + offset

    @property
    def offset(self):
        if isinstance(self._offset, readelf.SymInfo):
            global_fileline_error("Pointer offset is somehow SymInfo!")
        return self._offset

    @offset.setter
    def offset(self, offset):
        # if isinstance(offset, readelf.SymInfo):
        #     global_fileline_error("Pointer offset assigned with type \"%s\"!" % type(offset).__name__)
        self._offset = offset

    @property
    def size(self):
        return Size.WORD
    
    @property
    def possible_syms(self):
        return self._possible_syms
    
class UnkPointer(Pointer):
    def __init__(self):
        super().__init__()

    # TODO mark offsets
    def load(self, size, fileline, funcstate, offset=None):
        #total_offset = offset + self.offset
        #if math.isnan(total_offset):
        return new_unk_datatype_from_size(size)
        #pass

    # TODO mark offsets
    def store(self, datatype, size, fileline, funcstate, offset=None):
        pass

class RAMPointer(Pointer):
    def __init__(self, offset=0, possible_syms=None):
        super().__init__(offset, possible_syms)

    # TODO mark offsets
    def load(self, size, fileline, funcstate, offset=None):
        return new_unk_datatype_from_size(size)
    
    # TODO mark offsets
    def store(self, datatype, size, fileline, funcstate, offset=None):
        pass

class ROMPointer(Pointer):
    def __init__(self, possible_syms=None, original_sym=None):
        super().__init__(0, possible_syms, original_sym)

    def load(self, size, fileline, funcstate, offset=None):
        global syms
        global scanned_files
    
        if size == Size.BYTE or size == Size.HWORD:
            return Primitive(size).wrap()

        read_syms = []
        for possible_sym in self.possible_syms:
            if possible_sym.section == "*UND*":
                return new_unk_datatype_from_size(size)
            elif possible_sym.type == "F":
                global_fileline_msg("BadReadWarning: Cannot read from a function! (function: %s)" % possible_sym.name)
                return new_unk_datatype_from_size(size)

            words = parser.try_parse_word_directives_from_sym(possible_sym)
            if len(words) == 0:
                return new_unk_datatype_from_size(size)
            
            # assume that the elements of the pointer table have the same attributes
            # so we only check one non-ambiguous element here
            for word in words:
                word = parser.strip_plus1(word)
                if word in syms:
                    if syms[word].section == "*ABS*":
                        return new_unk_datatype_from_size(size)
                    elif syms[word].section in RAM_SECTIONS_SYMBOLS:
                        return new_unk_datatype_from_size(size)
                    else:
                        read_syms.append(syms[word])
                else:
                    try:
                        if int(word, 0) != 0:
                            return new_unk_datatype_from_size(size)
                    except ValueError:
                        global_fileline_error("Unknown .word parameter \"%s\" found!" % word)

        if len(read_syms) == 0:
            return new_unk_datatype_from_size(size)

        return ROMPointer(read_syms, self.original_sym).wrap()

    def store(self, datatype, size, fileline, funcstate, offset=None):
        if len(self.possible_syms) == 1:
            global_fileline_error("Cannot write to ROMPointer \"%s\"!" % self.sym.name)
        else:
            names = ", ".join(sym.name for sym in self.possible_syms)
            if names == "sub_80104E0, sub_80CA4F6, sub_8010474, sub_8010488, sub_80D2596, sub_800AF34, sub_801050C, sub_80CFE08, sub_8015AA6, sub_8010820, sub_802E1BE, sub_80DEDE0, sub_80EC44C, sub_80EA11C, sub_80E94DC, sub_80E5A64, sub_80C6330, sub_80DB4B4, sub_80CD4AC, sub_80E4FCA, sub_80C9ECE":
                global_fileline_msg("ROMWriteWarning: Cannot write to ROMPointer \"%s\"!" % names)
            else:
                global_fileline_error("Cannot write to ROMPointer \"%s\"!" % names)

    @property
    def sym(self):
        if len(self.possible_syms) != 1:
            global_fileline_error("Tried getting single sym when more than one possible sym exists!")
        return self.possible_syms[0]

    @property
    def filename(self):
        return self.sym.filename
    
    @filename.setter
    def filename(self, filename):
        global_fileline_error("Cannot set filename of ROMPointer!")

    @property
    def line_num(self):
        return self.sym.line_num

    @line_num.setter
    def line_num(self, line_num):
        global_fileline_error("Cannot set line num of ROMPointer!")

class ProgramCounter(ROMPointer):
    __slots__ = ("_filename", "_line_num")

    def __init__(self, filename, line_num):
        super().__init__()
        self._filename = filename
        self._line_num = line_num

    @property
    def type(self):
        return DataType.POINTER

    def load(self, size, fileline, funcstate, offset=None):
        global_fileline_msg("PCWarning: Cannot read from program counter at filename \"%s\", line num: \"%s\"!" % (self.filename, self.line_num + 1))

    def store(self, datatype, size, fileline, funcstate, offset=None):
        global_fileline_msg("PCWarning: Cannot write from program counter at filename \"%s\", line num: \"%s\"!" % (self.filename, self.line_num + 1))

    def add_offset(self, offset):
        global_fileline_msg("PCWarning: Cannot add to program counter at filename \"%s\", line num: \"%s\"!" % (self.filename, self.line_num + 1))

    @property
    def offset(self):
        global_fileline_msg("PCWarning: Program counter has no offset at filename \"%s\", line num: \"%s\"!" % (self.filename, self.line_num + 1))

    @offset.setter
    def offset(self, offset):
        global_fileline_msg("PCWarning: Cannot set offset of program counter at filename \"%s\", line num: \"%s\"!" % (self.filename, self.line_num + 1))

    @property
    def size(self):
        return Size.WORD

    @property
    def filename(self):
        return self._filename

    @filename.setter
    def filename(self, filename):
        self._filename = filename

    @property
    def line_num(self):
        return self._line_num

    @line_num.setter
    def line_num(self, line_num):
        self._line_num = line_num

class Memory(ABC):
    def __init__(self):
        super().__init__()

    @abstractmethod
    def load(self, struct, funcstate, size):
        pass

    @abstractmethod
    def store(self, struct, funcstate, datatype, size):
        pass

# Does not carry state or provide struct and size args.
class AnonMemory(Memory):
    __slots__ = ("read_action", "write_action")
    dummy_func = lambda x: None
    def __init__(self, read_action, write_action=dummy_func):
        super().__init__()
        self.read_action = read_action
        self.write_action = write_action
    
    def load(self, struct, funcstate, size):
        return self.read_action().wrap()

    def store(self, struct, funcstate, datatype, size):
        self.write_action(datatype)

class UnkMemory(Memory):
    def __init__(self):
        super().__init__()

    def load(self, struct, funcstate, size):
        return new_unk_datatype_from_size(size)

    def store(self, struct, funcstate, datatype, size):
        pass

class UnkPrimitiveMemory(Memory):
    def __init__(self):
        super().__init__()

    def load(self, struct, funcstate, size):
        return Primitive(size).wrap()

    def store(self, struct, funcstate, datatype, size):
        pass

class StructField:
    __slots__ = ("offset_name", "memory")
    def __init__(self, offset_name, memory):
        self.offset_name = offset_name
        self.memory = memory

class ArrayField:
    __slots__ = ("offset", "size", "name")
    def __init__(self, offset, size, name):
        self.offset = offset
        self.size = size
        self.name = name

class Struct(Pointer):
    unk_memory = UnkMemory()
    unk_primitive_memory = UnkPrimitiveMemory()
    barebones_struct_field = StructField("", UnkMemory())
    zero_immediate = Immediate().wrap()
    imm_value_regex = re.compile(r"# *([^\]]+)|(?= *\])")
    empty_tuple = ()
    marked_accesses_case_1 = set()
    dumb_hack_basic_struct_fields = {}

    # methods to implement:
    # generate_basic_struct_fields
    # marked_accesses_case_1
    # get_prefix
    # optional methods to implement:
    # array_field_templates
    # unk_field_offset_ranges

    __slots__ = ()

    def __init__(self, offset=0):
        super().__init__(offset)
        # dumb hack can't think fix later
        if type(self) not in Struct.dumb_hack_basic_struct_fields:
            basic_struct_fields = collections.defaultdict(lambda: {})
            basic_struct_fields.update(self.generate_basic_struct_fields())
            Struct.dumb_hack_basic_struct_fields[type(self)] = basic_struct_fields

    @property
    def basic_struct_fields(self):
        return Struct.dumb_hack_basic_struct_fields[type(self)]

    @abstractmethod
    def generate_basic_struct_fields(self):
        pass

    def load(self, size, fileline, funcstate, offset=None):
        if offset is None:
            offset = Struct.zero_immediate
        struct_field = self.get_struct_offset_field(offset, fileline, size)
        if struct_field.offset_name != "":
            self.mark_struct_access(offset, fileline, size, struct_field)
        return struct_field.memory.load(self, funcstate, size)

    def store(self, datatype, size, fileline, funcstate, offset=None):
        if offset is None:
            offset = Struct.zero_immediate
        struct_field = self.get_struct_offset_field(offset, fileline, size)
        if struct_field.offset_name != "":
            self.mark_struct_access(offset, fileline, size, struct_field)
        struct_field.memory.store(self, funcstate, datatype, size)

    def get_struct_offset_field(self, offset, fileline, size):
        total_offset = self.offset + offset.ref.value
        if math.isnan(total_offset):
            return self.on_nan_struct_offset(fileline, offset)

        if total_offset in self.basic_struct_fields:
            struct_field_possible_entries = self.basic_struct_fields[total_offset]
            if size in struct_field_possible_entries:
                return struct_field_possible_entries[size]
            elif Size.DEFAULT in struct_field_possible_entries:
                return struct_field_possible_entries[Size.DEFAULT]
            else:
                array_field = self.try_get_array_field(total_offset, size)
                if array_field is not None:
                    return array_field
                else:
                    if size == Size.BYTE:
                        global_fileline_error("Did not find size \"%s\" in struct \"%s\" for struct offset \"0x%x\"!" % (size, type(self).__name__, total_offset))
                    elif size == Size.HWORD:
                        try:
                            hword_offset_name = struct_field_possible_entries[Size.BYTE].offset_name + self.basic_struct_fields[total_offset + 1][Size.BYTE].offset_name
                            self.basic_struct_fields[total_offset][size] = StructField(hword_offset_name, UnkPrimitiveMemory())
                            fileline_msg("OverloadStructWarning: Made new field \"%s\" in struct \"%s\" for struct offset \"%s\" of size \"%s\"." % (hword_offset_name, self.struct_name, total_offset, size), fileline)
                            return self.basic_struct_fields[total_offset][size]
                        except KeyError:
                            global_fileline_error("Could not create autogenerated hword overloaded struct field access in struct \"%s\" for struct offset \"0x%x\"!" % (self.struct_name, total_offset))
                    else:
                        global_fileline_error("Could not create autogenerated word overloaded struct field access in struct \"%s\" for struct offset \"0x%x\" (Not implemented)!" % (self.struct_name, total_offset))

        array_field = self.try_get_array_field(total_offset, size)
        if array_field is not None:
            return array_field
        for i, remaining_field_type_ranges in enumerate((self.unimplemented_field_offset_ranges, self.unk_field_offset_ranges)):
            for low_bound, high_bound in zip(remaining_field_type_ranges, remaining_field_type_ranges[1:]):
                if low_bound <= total_offset < high_bound:
                    if i == 0:
                        self.basic_struct_fields[total_offset][Size.DEFAULT] = Struct.barebones_struct_field
                        return Struct.barebones_struct_field
                    else:
                        unk_field = StructField("_Unk_{:02x}".format(total_offset - low_bound), UnkMemory())
                        self.basic_struct_fields[total_offset][Size.DEFAULT] = unk_field
                        fileline_msg("Made unknown field with offset \"%s\" of size \"%s\" for struct \"%s\"." % (total_offset, size, self.struct_name), fileline)
                        return unk_field
        else:
            global_fileline_error("Invalid struct offset \"0x%x\" for struct \"%s\"!" % (total_offset, self.struct_name))

    def on_nan_struct_offset(self, fileline, offset):
        fileline_error("Tried reading NaN offset from struct \"%s\"!" % self.struct_name, fileline)

    def try_get_array_field(self, total_offset, size):
        for array_field_template in self.array_field_templates:
            if array_field_template.offset <= total_offset < (array_field_template.offset + array_field_template.size):
                if total_offset == array_field_template.offset:
                    array_field = StructField(array_field_template.name, UnkMemory())
                elif total_offset <= (array_field_template.offset + 9):
                    array_field = StructField(array_field_template.name + "+%s" % (total_offset - array_field_template.offset), UnkMemory())
                else:
                    array_field = StructField(array_field_template.name + "+0x%x" % (total_offset - array_field_template.offset), UnkMemory())
                self.basic_struct_fields[total_offset][size] = array_field
                return array_field
        else:
            return None

    @property
    def array_field_templates(self):
        return Struct.empty_tuple

    @property
    def unimplemented_field_offset_ranges(self):
        return Struct.empty_tuple

    @property
    def unk_field_offset_ranges(self):
        return Struct.empty_tuple

    def mark_struct_access(self, offset, fileline, size, struct_field):
        if offset.ref.is_immediate and self.struct_offset_in_marked_accesses_case_1_range(self.offset) and fileline not in Struct.marked_accesses_case_1:
            self.marked_accesses_case_1.add(fileline)
            src_file = scanned_files[fileline.filename]
            uncommented_line = src_file.lines[fileline.line_num]
            search_obj = Struct.imm_value_regex.search(uncommented_line)
            if search_obj[1] is not None:
                if '0' <= search_obj[1][0] <= '9':
                    commented_line = src_file.commented_lines[fileline.line_num]
                    prefix_and_offset_name = self.get_prefix(self.offset + offset.ref.value) + struct_field.offset_name
                    src_file.commented_lines[fileline.line_num] = commented_line[:search_obj.start(1)] + prefix_and_offset_name + commented_line[search_obj.end(1):]
                    fileline_msg("Marked \"%s\" offset \"%s\"." % (self.struct_name, prefix_and_offset_name), fileline)
            else:
                commented_line = src_file.commented_lines[fileline.line_num]
                prefix_and_offset_name = self.get_prefix(self.offset + offset.ref.value) + struct_field.offset_name
                src_file.commented_lines[fileline.line_num] = commented_line[:search_obj.start(0)] + ",#" + prefix_and_offset_name + commented_line[search_obj.end(0):]
                fileline_msg("Marked \"%s\" offset \"%s\"." % (self.struct_name, prefix_and_offset_name), fileline)

    @abstractmethod
    def get_prefix(self, offset):
        pass

    def struct_offset_in_marked_accesses_case_1_range(self, offset):
        return offset == 0

    @property
    @abstractmethod
    def struct_name(self):
        pass

class Toolkit(Struct):
    def __init__(self):
        super().__init__()

    def generate_basic_struct_fields(self):
        return {
            #0x0: {Size.WORD: StructField("_MainJumptableIndexPtr", RAMPointer())},
            0x4: {Size.WORD: StructField("_JoypadPtr", AnonMemory(Joypad))},
            #0x8: {Size.WORD: StructField("_RenderInfoPtr", AnonMemory(RenderInfo))},
            #0xc: {Size.WORD: StructField("_CameraPtr", AnonMemory(Camera))},
            #0x10: {Size.WORD: StructField("_S2011c50_Ptr", AnonMemory(S2011c50))},
            #0x14: {Size.WORD: StructField("_Unk2011bb0_Ptr", AnonMemory(Unk2011bb0))},
            0x18: {Size.WORD: StructField("_BattleStatePtr", AnonMemory(BattleState))},
            #0x1c: {Size.WORD: StructField("_Unk200f3a0_Ptr", AnonMemory(Unk200f3a0))},
        }

    def get_prefix(self, offset):
        return "oToolkit"

    @property
    def struct_name(self):
        return "Toolkit"

    _unimplemented_field_offset_ranges = (0x0, 0x90)
    @property
    def unimplemented_field_offset_ranges(self):
        return Toolkit._unimplemented_field_offset_ranges

class Joypad(Struct):
    def __init__(self):
        super().__init__()

    def generate_basic_struct_fields(self):
        return {
            0x0: {Size.HWORD: StructField("_Held", UnkPrimitiveMemory())},
            0x2: {Size.HWORD: StructField("_Pressed", UnkPrimitiveMemory())},
            0x4: {Size.HWORD: StructField("_LowSensitivityHeld", UnkPrimitiveMemory())},
            0x6: {Size.HWORD: StructField("_Held2", UnkPrimitiveMemory())},
            0x8: {Size.BYTE: StructField("_AHeldTimer", UnkPrimitiveMemory())},
            0x9: {Size.BYTE: StructField("_BHeldTimer", UnkPrimitiveMemory())},
            0xa: {Size.BYTE: StructField("_SelectHeldTimer", UnkPrimitiveMemory())},
            0xb: {Size.BYTE: StructField("_StartHeldTimer", UnkPrimitiveMemory())},
            0xc: {Size.BYTE: StructField("_RightHeldTimer", UnkPrimitiveMemory())},
            0xd: {Size.BYTE: StructField("_LeftHeldTimer", UnkPrimitiveMemory())},
            0xe: {Size.BYTE: StructField("_UpHeldTimer", UnkPrimitiveMemory())},
            0xf: {Size.BYTE: StructField("_DownHeldTimer", UnkPrimitiveMemory())},
            0x10: {Size.BYTE: StructField("_RHeldTimer", UnkPrimitiveMemory())},
            0x11: {Size.BYTE: StructField("_LHeldTimer", UnkPrimitiveMemory())},
            0x12: {Size.BYTE: StructField("_Undetected_12", UnkPrimitiveMemory())},
            0x13: {Size.BYTE: StructField("_LowSensitivityTimer", UnkPrimitiveMemory())}
        }

    def get_prefix(self, offset):
        return "oJoypad"

    @property
    def struct_name(self):
        return "Joypad"

class BattleState(Struct):
    def __init__(self):
        super().__init__()

    def generate_basic_struct_fields(self):
        return {}

    def get_prefix(self, offset):
        return "oBattleState"

    @property
    def struct_name(self):
        return "BattleState"

    def on_nan_struct_offset(self, fileline, offset):
        fileline_msg("Context information: BattleStateNanOffset", fileline)
        return Struct.barebones_struct_field

    _unk_field_offset_ranges = (0x0, 0xf0)
    @property
    def unk_field_offset_ranges(self):
        return BattleState._unk_field_offset_ranges

class BattleObject(Struct):
    def __init__(self, offset=0):
        super().__init__(offset)

    def generate_basic_struct_fields(self):
        return {
            -0x10: {Size.WORD: StructField("_LinkedList_Prev", AnonMemory(functools.partial(BattleObject, -0x10)))},
            -0x0c: {Size.WORD: StructField("_LinkedList_Next", AnonMemory(functools.partial(BattleObject, -0x10)))},
            0x0: {Size.BYTE: StructField("_Flags", UnkPrimitiveMemory()),
                  Size.WORD: StructField("_ObjectHeader", UnkPrimitiveMemory())},
            0x1: {Size.BYTE: StructField("_Index", UnkPrimitiveMemory())},
            0x2: {Size.BYTE: StructField("_TypeAndSpriteOffset", AnonMemory(functools.partial(Primitive, Size.BYTE, 0x91)))},
            0x3: {Size.BYTE: StructField("_ListIndex", UnkPrimitiveMemory())},
            0x4: {Size.WORD: StructField("_Params", UnkPrimitiveMemory()),
                  Size.DEFAULT: StructField("_Param1", UnkPrimitiveMemory())},
            0x5: {Size.BYTE: StructField("_Param2", UnkPrimitiveMemory())},
            0x6: {Size.DEFAULT: StructField("_Param3", UnkPrimitiveMemory())},
            0x7: {Size.BYTE: StructField("_Param4", UnkPrimitiveMemory())},
            0x8: {Size.BYTE: StructField("_CurState", UnkPrimitiveMemory()),
                  Size.WORD: StructField("_CurStateActionPhaseAndPhaseInitialized", UnkPrimitiveMemory())},
            0x9: {Size.BYTE: StructField("_CurAction", UnkPrimitiveMemory())},
            0xa: {Size.BYTE: StructField("_CurPhase", UnkPrimitiveMemory()),
                  Size.HWORD: StructField("_CurPhaseAndPhaseInitialized", UnkPrimitiveMemory())},
            0xb: {Size.BYTE: StructField("_PhaseInitialized", UnkPrimitiveMemory())},
            0xc: {Size.BYTE: StructField("_Unk_0c", UnkPrimitiveMemory())},
            0xd: {Size.BYTE: StructField("_Unk_0d", UnkPrimitiveMemory())},
            0xe: {Size.BYTE: StructField("_Element", UnkPrimitiveMemory())},
            0xf: {Size.BYTE: StructField("_Unk_0f", UnkPrimitiveMemory())},
            0x10: {Size.BYTE: StructField("_CurAnim", UnkPrimitiveMemory()),
                   Size.HWORD: StructField("_CurAnimAndCurAnimCopy", UnkPrimitiveMemory())},
            0x11: {Size.BYTE: StructField("_CurAnimCopy", UnkPrimitiveMemory())},
            0x12: {Size.BYTE: StructField("_PanelX", UnkPrimitiveMemory()),
                   Size.HWORD: StructField("_PanelXY", UnkPrimitiveMemory())},
            0x13: {Size.BYTE: StructField("_PanelY", UnkPrimitiveMemory())},
            0x14: {Size.BYTE: StructField("_FuturePanelX", UnkPrimitiveMemory()),
                   Size.HWORD: StructField("_FuturePanelXY", UnkPrimitiveMemory())},
            0x15: {Size.BYTE: StructField("_FuturePanelY", UnkPrimitiveMemory())},
            0x16: {Size.BYTE: StructField("_Alliance", UnkPrimitiveMemory()),
                   Size.HWORD: StructField("_AllianceAndDirectionFlip", UnkPrimitiveMemory())},
            0x17: {Size.BYTE: StructField("_DirectionFlip", UnkPrimitiveMemory())},
            0x18: {Size.BYTE: StructField("_PreventAnim", UnkPrimitiveMemory())},
            0x19: {Size.BYTE: StructField("_Unk_19", UnkPrimitiveMemory())},
            0x1a: {Size.BYTE: StructField("_ChipsHeld", UnkPrimitiveMemory())},
            0x1b: {Size.BYTE: StructField("_Unk_1b", UnkPrimitiveMemory())},
            0x1c: {Size.BYTE: StructField("_Unk_1c", UnkPrimitiveMemory())},
            0x1d: {Size.BYTE: StructField("_Unk_1d", UnkPrimitiveMemory())},
            0x1e: {Size.BYTE: StructField("_Unk_1e", UnkPrimitiveMemory())},
            0x1f: {Size.BYTE: StructField("_Unk_1f", UnkPrimitiveMemory())},
            0x20: {Size.HWORD: StructField("_Timer", UnkPrimitiveMemory()),
                   Size.WORD: StructField("_TimerAndTimer2", UnkPrimitiveMemory())},
            0x22: {Size.HWORD: StructField("_Timer2", UnkPrimitiveMemory())},
            0x24: {Size.HWORD: StructField("_HP", UnkPrimitiveMemory())},
            0x26: {Size.HWORD: StructField("_MaxHP", UnkPrimitiveMemory())},
            0x28: {Size.HWORD: StructField("_NameID", UnkPrimitiveMemory()),
                   Size.WORD: StructField("_NameIDAndChip", UnkPrimitiveMemory())},
            0x2a: {Size.HWORD: StructField("_Chip", UnkPrimitiveMemory())},
            0x2c: {Size.HWORD: StructField("_Damage", UnkPrimitiveMemory()),
                   Size.WORD: StructField("_DamageAndStaminaDamageCounterDisabler", UnkPrimitiveMemory())},
            0x2e: {Size.HWORD: StructField("_StaminaDamageCounterDisabler", UnkPrimitiveMemory())},
            0x30: {Size.DEFAULT: StructField("_Unk_30", UnkPrimitiveMemory())},
            0x32: {Size.HWORD: StructField("_Unk_32", UnkPrimitiveMemory())},
            0x34: {Size.WORD: StructField("_X", UnkPrimitiveMemory())},
            0x36: {Size.HWORD: StructField("_X16", UnkPrimitiveMemory())},
            0x38: {Size.WORD: StructField("_Y", UnkPrimitiveMemory())},
            0x3a: {Size.HWORD: StructField("_Y16", UnkPrimitiveMemory())},
            0x3c: {Size.WORD: StructField("_Z", UnkPrimitiveMemory())},
            0x3e: {Size.HWORD: StructField("_Z16", UnkPrimitiveMemory())},
            0x40: {Size.WORD: StructField("_XVelocity", UnkPrimitiveMemory())},
            0x44: {Size.WORD: StructField("_YVelocity", UnkPrimitiveMemory())},
            0x48: {Size.WORD: StructField("_ZVelocity", UnkPrimitiveMemory())},
            0x4c: {Size.WORD: StructField("_RelatedObject1Ptr", AnonMemory(BattleObject))},
            0x50: {Size.WORD: StructField("_RelatedObject2Ptr", AnonMemory(BattleObject))},
            0x54: {Size.WORD: StructField("_CollisionDataPtr", AnonMemory(CollisionData))},
            0x58: {Size.WORD: StructField("_AIDataPtr", AnonMemory(AIData))},
            0x5c: {Size.WORD: StructField("_Unk_5c", UnkPrimitiveMemory())}
        }

    def on_nan_struct_offset(self, fileline, offset):
        fileline_msg("BattleObjectNanOffsetWarning: Offset is NaN!", fileline)
        return Struct.barebones_struct_field

    _array_field_templates = (ArrayField(offset=0x60, size=0x2c, name="_ExtraVars"),)
    @property
    def array_field_templates(self):
        return BattleObject._array_field_templates

    _unk_field_offset_ranges = (0x90, 0xd8)
    @property
    def unk_field_offset_ranges(self):
        return BattleObject._unk_field_offset_ranges

    def get_prefix(self, offset):
        if offset < 0 or 0x4 <= offset < 0x90:
            return "oBattleObject"
        elif 0 <= offset < 0x4:
            return "oObjectHeader"
        elif 0x90 <= offset < 0xd8:
            return "oObjectSprite"
        else:
            global_fileline_error("Struct offset \"%s\" does not have prefix!" % offset)

    @property
    def struct_name(self):
        return "BattleObject"

    def struct_offset_in_marked_accesses_case_1_range(self, offset):
        return offset == 0 or offset == 0x90

class CollisionData(Struct):
    def __init__(self):
        super().__init__()

    def generate_basic_struct_fields(self):
        return {
            0x0: {Size.BYTE: StructField("_Enabled", UnkPrimitiveMemory())},
            0x1: {Size.BYTE: StructField("_Region", UnkPrimitiveMemory())},
            0x2: {Size.BYTE: StructField("_PrimaryElement", UnkPrimitiveMemory())},
            0x3: {Size.BYTE: StructField("_Unk_03", UnkPrimitiveMemory())},
            0x4: {Size.BYTE: StructField("_Alliance", UnkPrimitiveMemory())},
            0x5: {Size.BYTE: StructField("_Flip", UnkPrimitiveMemory())},
            0x6: {Size.BYTE: StructField("_Unk_06", UnkPrimitiveMemory())},
            0x7: {Size.BYTE: StructField("_StaminaDamageCounterDisabler", UnkPrimitiveMemory())},
            0x8: {Size.BYTE: StructField("_PoisonPanelTimer", UnkPrimitiveMemory())},
            0x9: {Size.BYTE: StructField("_HitEffect", UnkPrimitiveMemory())},
            0xa: {Size.BYTE: StructField("_PanelX", UnkPrimitiveMemory()),
                  Size.HWORD: StructField("_PanelXY", UnkPrimitiveMemory())},
            0xb: {Size.BYTE: StructField("_PanelY", UnkPrimitiveMemory())},
            0xc: {Size.BYTE: StructField("_Direction", UnkPrimitiveMemory())},
            0xd: {Size.BYTE: StructField("_CounterTimer", UnkPrimitiveMemory())},
            0xe: {Size.BYTE: StructField("_HitModifierBase", UnkPrimitiveMemory())},
            0xf: {Size.BYTE: StructField("_HitModifierFinal", UnkPrimitiveMemory())},
            0x10: {Size.BYTE: StructField("_StatusEffectBase", UnkPrimitiveMemory())},
            0x11: {Size.BYTE: StructField("_StatusEffectFinal", UnkPrimitiveMemory())},
            0x12: {Size.HWORD: StructField("_Bugs", UnkPrimitiveMemory())},
            0x14: {Size.DEFAULT: StructField("_Unk_14", UnkPrimitiveMemory())},
            0x18: {Size.BYTE: StructField("_SecondaryElementWeakness", UnkPrimitiveMemory())},
            0x19: {Size.BYTE: StructField("_SecondaryElement", UnkPrimitiveMemory())},
            0x1a: {Size.BYTE: StructField("_Unk_1a", UnkPrimitiveMemory()),
                   Size.HWORD: StructField("_Unk_1a_1b", UnkPrimitiveMemory())},
            0x24: {Size.HWORD: StructField("_Unk_24", UnkPrimitiveMemory())},
            0x26: {Size.HWORD: StructField("_Unk_26", UnkPrimitiveMemory())},
            0x2e: {Size.HWORD: StructField("_SelfDamage", UnkPrimitiveMemory())},
            0x30: {Size.WORD: StructField("_SelfCollisionTypeFlags", UnkPrimitiveMemory())},
            0x34: {Size.WORD: StructField("_TargetCollisionTypeFlags", UnkPrimitiveMemory())},
            0x38: {Size.WORD: StructField("_ParentObjectPtr", AnonMemory(BattleObject))},
            0x3c: {Size.WORD: StructField("_ObjectFlags1", UnkPrimitiveMemory())},
            0x40: {Size.WORD: StructField("_ObjectFlags2", UnkPrimitiveMemory())},
            0x44: {Size.WORD: StructField("_CollisionIndexBit", UnkPrimitiveMemory())},
            0x54: {Size.WORD: StructField("_Unk_54", UnkMemory())},
            0x70: {Size.WORD: StructField("_FlagsFromCollision", UnkPrimitiveMemory())},
            0x74: {Size.BYTE: StructField("_ExclamationIndicator", UnkPrimitiveMemory()),
                   Size.WORD: StructField("_ExclamationIndicator_DamageMultiplier_DamageElements_Unk_77", UnkPrimitiveMemory())},
            0x75: {Size.BYTE: StructField("_DamageMultiplier", UnkPrimitiveMemory())},
            0x76: {Size.DEFAULT: StructField("_DamageElements", UnkPrimitiveMemory())},
            0x7c: {Size.WORD: StructField("_Unk_7c", UnkMemory())},
            0x80: {Size.HWORD: StructField("_FinalDamage", UnkPrimitiveMemory())},
            0x82: {Size.HWORD: StructField("_PanelDamage1", UnkPrimitiveMemory()),
                   Size.WORD: StructField("_PanelDamage1And2", UnkPrimitiveMemory())},
            0x84: {Size.HWORD: StructField("_PanelDamage2", UnkPrimitiveMemory())},
            0x86: {Size.HWORD: StructField("_PanelDamage3", UnkPrimitiveMemory()),
                   Size.WORD: StructField("_PanelDamage3And4", UnkPrimitiveMemory())},
            0x88: {Size.HWORD: StructField("_PanelDamage4", UnkPrimitiveMemory())},
            0x8a: {Size.HWORD: StructField("_PanelDamage5", UnkPrimitiveMemory()),
                   Size.WORD: StructField("_PanelDamage5And6", UnkPrimitiveMemory())},
            0x8c: {Size.DEFAULT: StructField("_PanelDamage6", UnkPrimitiveMemory())},
            0xa4: {Size.DEFAULT: StructField("_InflictedBugs", UnkPrimitiveMemory())},
        }

    def get_prefix(self, offset):
        return "oCollisionData"

    @property
    def struct_name(self):
        return "CollisionData"

    def on_nan_struct_offset(self, fileline, offset):
        fileline_msg("Context information: CollisionDataNanOffset", fileline)
        return Struct.barebones_struct_field

    _unk_field_offset_ranges = (0x0, 0xa8)
    @property
    def unk_field_offset_ranges(self):
        return CollisionData._unk_field_offset_ranges

class FunctionMemory(Memory):
    __slots__ = ("function",)
    def __init__(self):
        super().__init__()
        self.function = None

    def load(self, struct, funcstate, size):
        if self.function is not None:
            global_fileline_msg("Loaded ROMPointer from AIAttackVars_Callback with original sym \"%s\"!" % (self.function.ref.original_sym.name))
            return copy.deepcopy(self.function)
        else:
            global_fileline_msg("Loaded non-ROMPointer from AIAttackVars_Callback.")
            return new_unk_datatype_from_size(size)

    def store(self, struct, funcstate, datatype, size):
        if isinstance(datatype.ref, ROMPointer) and len(datatype.ref.possible_syms) == 1 and datatype.ref.possible_syms[0].type == "F":
            global_fileline_msg("Stored ROMPointer to AIAttackVars_Callback with original sym \"%s\"! (len: %s)" % (datatype.ref.original_sym.name, len(datatype.ref.possible_syms)))
            self.function = copy.deepcopy(datatype)
        else:
            global_fileline_msg("Stored non-ROMPointer to AIAttackVars_Callback of type \"%s\"!" % (type(datatype.ref).__name__))
            self.function = None

class AIData(Struct):
    def __init__(self):
        super().__init__()

    def generate_basic_struct_fields(self):
        return {
            0x0: {Size.BYTE: StructField("_ActorType", UnkPrimitiveMemory())},
            0x1: {Size.BYTE: StructField("_AIIndex", UnkPrimitiveMemory())},
            0x2: {Size.BYTE: StructField("_Unk_02", UnkPrimitiveMemory())},
            0x3: {Size.BYTE: StructField("_Unk_03", UnkPrimitiveMemory())},
            0xe: {Size.BYTE: StructField("_Unk_0e", UnkPrimitiveMemory())},
            0x16: {Size.BYTE: StructField("_Version_16", UnkPrimitiveMemory())},
            0x17: {Size.BYTE: StructField("_Version_17", UnkPrimitiveMemory())},
            0x18: {Size.BYTE: StructField("_Unk_18", UnkPrimitiveMemory())},
            0x19: {Size.BYTE: StructField("_Unk_19", UnkPrimitiveMemory())},
            0x20: {Size.HWORD: StructField("_TotalDamageTaken", UnkPrimitiveMemory())},
            0x22: {Size.HWORD: StructField("_JoypadHeld", UnkPrimitiveMemory())},
            0x24: {Size.HWORD: StructField("_JoypadDown", UnkPrimitiveMemory())},
            0x26: {Size.HWORD: StructField("_JoypadUp", UnkPrimitiveMemory())},
            0x28: {Size.HWORD: StructField("_JoypadReleased", UnkPrimitiveMemory())},
            0x34: {Size.DEFAULT: StructField("_Anger", UnkPrimitiveMemory())},
            0xc8: {Size.WORD: StructField("_Unk_28", FunctionMemory())},
            0xd0: {Size.WORD: StructField("_Unk_30", FunctionMemory()),
                   Size.DEFAULT: StructField("_Unk_30", UnkMemory())},
            0xd4: {Size.WORD: StructField("_Unk_34", FunctionMemory()),
                   Size.DEFAULT: StructField("_Unk_34", UnkPrimitiveMemory())},
        }

    def get_prefix(self, offset):
        if offset < 0x80:
            return "oAIData"
        elif 0x80 <= offset < 0xa0:
            return "oAIState"
        elif 0xa0 <= offset < 0x100:
            return "oAIAttackVars"
        else:
            global_fileline_error("Struct offset \"%s\" does not have prefix!" % offset)

    @property
    def struct_name(self):
        return "AIData"

    def on_nan_struct_offset(self, fileline, offset):
        fileline_msg("Context information: AIDataNanOffset", fileline)
        return Struct.barebones_struct_field

    _unk_field_offset_ranges = (0x0, 0x80, 0xa0, 0x100)
    @property
    def unk_field_offset_ranges(self):
        return AIData._unk_field_offset_ranges

    def struct_offset_in_marked_accesses_case_1_range(self, offset):
        return offset == 0 or offset == 0x80 or offset == 0xa0

class Stack(Pointer):
    __slots__ = ()
    datatypes = {}
    def __init__(self):
        super().__init__()

    def load(self, size, fileline, funcstate, offset=None):
        if offset is None:
            total_offset = self.offset
        else:
            total_offset = self.offset + offset.ref.value
        if math.isnan(total_offset):
            global_fileline_msg("StackWarning: Stack offset is NaN for load!")
            return new_unk_datatype_from_size(size)
        if total_offset % size.value != 0:
            global_fileline_error("Misaligned stack read detected (size: %s, offset=%s)!" % (size, total_offset))
        try:
            return Stack.datatypes[(total_offset, size)]
        except KeyError:
            if total_offset >= self.offset:
                global_fileline_msg("StackWarning: Stack read of (%s, %s) is likely valid (e.g. overloads with other datatype) but not in datatypes!" % (total_offset, size))
                return new_unk_datatype_from_size(size)
            else:
                global_fileline_error("Bad stack read of (%s, %s)! (stack size: %s, offset: %s)" % (total_offset, size, self.offset, offset.ref.value))

    # note: storing values may be risky. figure this out
    def store(self, datatype, size, fileline, funcstate, offset=None):
        if offset is None:
            total_offset = self.offset
        else:
            total_offset = self.offset + offset.ref.value
        if math.isnan(total_offset):
            global_fileline_msg("StackWarning: Stack offset is NaN for store!")
            return
        if total_offset % size.value != 0:
            global_fileline_error("Misaligned stack write detected (size: %s, offset=%s)!" % (size, total_offset))

        Stack.datatypes[(total_offset, size)] = datatype

def new_unk_datatype_from_size(size):
    if size == Size.BYTE or size == Size.HWORD:
        return Primitive(size).wrap()
    else:
        return UnknownDataType().wrap()

if __name__ == "__main__":
    struct_fields = BattleObject().generate_basic_struct_fields()
    print(struct_fields[0x61][Size.BYTE])# = StructField("_ExtraVars", AnonMemory(UnknownDataType))
    print(struct_fields)