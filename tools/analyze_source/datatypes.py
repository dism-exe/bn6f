ROM_END = 0x87FB2F4

class Size(Enum):
    DEFAULT = -1
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
    new_byte = None
    new_hword = None
    new_word = None
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

Primitive.new_byte = functools.partial(Primitive, Size.BYTE)
Primitive.new_hword = functools.partial(Primitive, Size.HWORD)
Primitive.new_word = functools.partial(Primitive, Size.WORD)

class Pointer(DataType):
    null_sym = SymInfo(value=NaN, scope="l", debug=" ", type=" ", section="*UND*", name="null", filename="dummy", line_num=0)
    def __init__(self, offset=0, possible_syms=None):
        super().__init__()
        if not possible_syms:
            possible_syms = [null_sym]
        elif not isinstance(possible_syms, list):
            possible_syms = [possible_syms]
        self._possible_syms = possible_syms
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

    @abstractmethod
    def execute(self, funcstate):
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
    
    @property
    def possible_syms(self):
        return self._possible_syms
    
class UnkPointer(Pointer):
    def __init__(self):
        super().__init__(self)

    # TODO mark offsets
    def load(self, size, offset=0):
        #total_offset = offset + self.offset
        #if math.isnan(total_offset):
        return new_unk_datatype_from_size(size)
        #pass

    # TODO mark offsets
    def store(self, datatype, size, offset=0):
        pass
    
class RAMPointer(Pointer):
    def __init__(self, offset=0, possible_syms=None):
        super().__init__(self, offset, possible_syms)

    # TODO mark offsets
    def load(self, size, offset=0):
        return new_unk_datatype_from_size(size)
    
    # TODO mark offsets
    def store(self, datatype, size, offset=0):
        pass

class ROMPointer(Pointer):
    def __init__(self, possible_syms=None):
        super().__init__(self, 0, possible_syms)
        self.possible_syms = possible_syms

    def load(self, size, offset=0):
        global syms
        global scanned_files
    
        if size == Size.BYTE or size == Size.HWORD:
            return Primitive(size).wrap()

        read_syms = []
        for possible_sym in self.possible_syms:
            if possible_sym.section == "*UND*":
                return new_unk_datatype_from_size(size)
            elif possible_sym.type == "F":
                global_fileline_error("Cannot read from a function!")

            words = try_parse_word_directives_from_sym(self.sym)
            if len(words) == 0:
                return new_unk_datatype_from_size(size)
            
            # assume that the elements of the pointer table have the same attributes
            # so we only check one non-ambiguous element here
            for word in words:
                if word in syms:
                    if syms[word].section == "*ABS*":
                        return new_unk_datatype_from_size(size)
                    elif not (0x8000000 <= syms[word].value < ROM_END):
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

        return ROMPointer(read_syms).wrap()

    def store(self, datatype, size, offset=0):
        global_fileline_error("Cannot write to a ROMPointer!")

    def execute(self, funcstate):
        for sym in self.possible_syms:
            if sym.type != "F":
                global_fileline_error("Tried executing non-function symbol \"%s\"!" % sym.name)

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
    def __init__(self, filename, line_num):
        super().__init__()
        self._filename = filename
        self._line_num = line_num

    @property
    def type(self):
        return DataType.POINTER

    def load(self, size, offset=0):
        global_fileline_error("Cannot read from program counter \"%s\"!" % self.sym)

    def store(self, datatype, size, offset=0):
        global_fileline_error("Cannot write to program counter \"%s\"!" % self.sym)

    def add_offset(self, offset):
        global_fileline_error("Cannot add an offset to function \"%s\"!" % self.sym)

    @property
    def offset(self):
        global_fileline_error("Function \"%s\" has no offset!" % self.sym)

    @offset.setter
    def offset(self, offset):
        global_fileline_error("Cannot set offset of function \"%s\"!" % self.sym)

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

class Struct(Pointer):
    def __init__(self, offset=0):
        super().__init__(offset)

    def load(self, size, offset=0):
        total_offset = offset + self.offset
        if math.isnan(total_offset):
            raise NotImplementedError("Context information: pointer deref with NaN offset")
        struct_field_action = self.get_struct_offset_action(total_offset, size)
        return struct_field_action.load(self, size)

    @abstractmethod
    def get_struct_offset_action(self, offset, size):
        pass

    # @property
    # @abstractmethod
    # def struct_size(self):
    #    pass

    @staticmethod
    def process_struct_data(unprocessed_struct_info):
        cur_offset = unprocessed_struct_info.start_offset
        for struct_field in unprocessed_struct_info.struct_fields:
            
class UnkStruct(Struct):
    def __init__(self, offset=0)
        super().__init__(offset)

class StructField:
    __slots__ = ("offset_name", "memory")
    def __init__(self, memory):
        self.offset_name = offset_name
        self.memory = memory

class StructEntry:
    __slots__ = ("offset_name", "read_action", "write_action", "size")
    def __init__(self, offset_name, memory, size=0):
        self.offset_name = offset_name
        self.memory = memory
        self.size = size
        
class StructInfo:
    def __init__(self, struct_prefix, start_offset, *struct_fields):
        self.struct_prefix = struct_prefix
        self.start_offset = start_offset
        self.struct_fields = struct_fields

class Memory(ABC):
    def __init__(self):
        super().__init__()

    @abstractmethod
    def load(self, struct, size):
        pass

    @abstractmethod
    def store(self, struct, datatype, size):
        pass

# Does not carry state or provide struct and size args.
class AnonMemory(Memory):
    __slots__ = ("read_action", "write_action")
    dummy_func = lambda x, y, z: None
    def __init__(self, read_action, write_action=dummy_func):
        super().__init__()
        self.read_action = read_action
        self.write_action = write_action
    
    def load(self, struct, size):
        return self.read_action()

    def write(self, struct, datatype, size):
        self.write_action(datatype)

class UnkMemory(Memory):
    def __init__(self):
        super().__init__()

    def load(self, struct, size):
        return new_unk_datatype_from_size(size)

    def write(self, struct, datatype, size):
        pass

class UnkPrimitiveMemory(Memory):
    def __init__(self):
        super().__init__()
    
    def load(self, struct, size):
        return Primitive(size)

    def write(self, struct, datatype, size):
        pass

class BattleObject(Struct):
    def __init__(self, offset=0):
        super().__init__(self, offset)
        self.basic_struct_fields = generate_basic_struct_fields()

    @staticmethod
    def generate_basic_struct_fields():
        return {
                -0x10: {Size.WORD: StructField("_LinkedList_Prev", AnonMemory(functools.partial(BattleObject, -0x10)))},
                -0x0c: {Size.WORD: StructField("_LinkedList_Next", AnonMemory(functools.partial(BattleObject, -0x10)))},
                0x0: {Size.BYTE: StructField("_Flags", UnkPrimitiveMemory())},
                0x1: {Size.BYTE: StructField("_Index", UnkPrimitiveMemory())},
                0x2: {Size.BYTE: StructField("_TypeAndSpriteOffset", AnonMemory(functools.partial(Primitive, Size.BYTE, 0x91))},
                0x3: {Size.BYTE: StructField("_ListIndex", UnkPrimitiveMemory())},
                0x4: {Size.WORD: StructField("_Params", UnkPrimitiveMemory()),
                      Size.DEFAULT: StructField("_Param1", UnkPrimitiveMemory())},
                0x5: {Size.BYTE: StructField("_Param2", UnkPrimitiveMemory())},
                0x6: {Size.DEFAULT: StructField("_Param3", UnkPrimitiveMemory())},
                0x7: {Size.BYTE: StructField("_Param4", UnkPrimitiveMemory())},
                0x8: {Size.BYTE: StructField("_CurState", UnkPrimitiveMemory())},
                0x9: {Size.BYTE: StructField("_CurAction", UnkPrimitiveMemory())},
                0xa: {Size.BYTE: StructField("_CurPhase", UnkPrimitiveMemory())},
                0xb: {Size.BYTE: StructField("_PhaseInitialized", UnkPrimitiveMemory())},
                0xc: {Size.BYTE: StructField("_Unk_0c", UnkPrimitiveMemory())},
                0xd: {Size.BYTE: StructField("_Unk_0d", UnkPrimitiveMemory())},
                0xe: {Size.BYTE: StructField("_Element", UnkPrimitiveMemory())},
                0xf: {Size.BYTE: StructField("_Unk_0f", UnkPrimitiveMemory())},
                0x10: {Size.BYTE: StructField("_CurAnim", UnkPrimitiveMemory())},
                0x11: {Size.BYTE: StructField("_CurAnimCopy", UnkPrimitiveMemory())},
                0x12: {Size.BYTE: StructField("_PanelX", UnkPrimitiveMemory())},
                0x13: {Size.BYTE: StructField("_PanelY", UnkPrimitiveMemory())},
                0x14: {Size.BYTE: StructField("_FuturePanelX", UnkPrimitiveMemory())},
                0x15: {Size.BYTE: StructField("_FuturePanelY", UnkPrimitiveMemory())},
                0x16: {Size.BYTE: StructField("_Alliance", UnkPrimitiveMemory())},
                0x17: {Size.BYTE: StructField("_DirectionFlip", UnkPrimitiveMemory())},
                0x18: {Size.BYTE: StructField("_PreventAnim", UnkPrimitiveMemory())},
                0x19: {Size.BYTE: StructField("_Unk_19", UnkPrimitiveMemory())},
                0x1a: {Size.BYTE: StructField("_ChipsHeld", UnkPrimitiveMemory())},
                0x1b: {Size.BYTE: StructField("_Unk_1b", UnkPrimitiveMemory())},
                0x1c: {Size.BYTE: StructField("_Unk_1c", UnkPrimitiveMemory())},
                0x1d: {Size.BYTE: StructField("_Unk_1d", UnkPrimitiveMemory())},
                0x1e: {Size.BYTE: StructField("_Unk_1e", UnkPrimitiveMemory())},
                0x1f: {Size.BYTE: StructField("_Unk_1f", UnkPrimitiveMemory())},
                0x20: {Size.HWORD: StructField("_Timer", UnkPrimitiveMemory())},
                0x22: {Size.HWORD: StructField("_Timer2", UnkPrimitiveMemory())},
                0x24: {Size.HWORD: StructField("_HP", UnkPrimitiveMemory())},
                0x26: {Size.HWORD: StructField("_MaxHP", UnkPrimitiveMemory())},
                0x28: {Size.HWORD: StructField("_NameID", UnkPrimitiveMemory())},
                0x2a: {Size.HWORD: StructField("_Chip", UnkPrimitiveMemory())},
                0x2c: {Size.HWORD: StructField("_Damage", UnkPrimitiveMemory())},
                0x2e: {Size.HWORD: StructField("_StaminaDamageCounterDisabler", UnkPrimitiveMemory())},
                0x30: {Size.HWORD: StructField("_Unk_30", UnkPrimitiveMemory())},
                0x32: {Size.HWORD: StructField("_Unk_32", UnkPrimitiveMemory())},
                0x34: {Size.WORD: StructField("_X", UnkPrimitiveMemory())},
                0x38: {Size.WORD: StructField("_Y", UnkPrimitiveMemory())},
                0x3c: {Size.WORD: StructField("_Z", UnkPrimitiveMemory())},
                0x40: {Size.WORD: StructField("_XVelocity", UnkPrimitiveMemory())},
                0x44: {Size.WORD: StructField("_YVelocity", UnkPrimitiveMemory())},
                0x48: {Size.WORD: StructField("_ZVelocity", UnkPrimitiveMemory())},
                0x4c: {Size.WORD: StructField("_RelatedObject1Ptr", AnonMemory(BattleObject))},
                0x50: {Size.WORD: StructField("_RelatedObject2Ptr", AnonMemory(BattleObject))},
                0x54: {Size.WORD: StructField("_CollisionDataPtr", AnonMemory(UnkPointer))},
                0x58: {Size.WORD: StructField("_AIPtr", AnonMemory(UnkPointer))},
                0x5c: {Size.WORD: StructField("_Unk_5c", UnkPrimitiveMemory())},
                0x60: {Size.WORD: StructField("_ExtraVars", AnonMemory(UnknownDataType))},
                0x64: {Size.WORD: StructField("_ExtraVars+4", AnonMemory(UnknownDataType))},
                0x68: {Size.WORD: StructField("_ExtraVars+8", AnonMemory(UnknownDataType))},
                0x6c: {Size.WORD: StructField("_ExtraVars+0xc", AnonMemory(UnknownDataType))},
                0x70: {Size.WORD: StructField("_ExtraVars+0x10", AnonMemory(UnknownDataType))},
                0x74: {Size.WORD: StructField("_ExtraVars+0x14", AnonMemory(UnknownDataType))},
                0x78: {Size.WORD: StructField("_ExtraVars+0x18", AnonMemory(UnknownDataType))},
                0x7c: {Size.WORD: StructField("_ExtraVars+0x1c", AnonMemory(UnknownDataType))},
                0x80: {Size.WORD: StructField("_ExtraVars+0x20", AnonMemory(UnknownDataType))},
                0x84: {Size.WORD: StructField("_ExtraVars+0x24", AnonMemory(UnknownDataType))},
                0x88: {Size.WORD: StructField("_ExtraVars+0x28", AnonMemory(UnknownDataType))}
            }
    
    @abstractmethod
    def get_type_and_sprite_offset(self):
        pass

    @abstractmethod
    def get_sprite_data_offset(self):
        pass

    def get_struct_offset_action(self, offset, size):
        if offset in self.basic_struct_fields:
            struct_field_possible_entries = self.basic_struct_fields[offset]
            if size in struct_field_possible_entries:
                return struct_field_possible_entries[size].memory
            elif Size.DEFAULT in struct_field_possible_entries:
                return struct_field_possible_entries[Size.DEFAULT].memory
            else:
                global_fileline_error("Did not find size \"%s\" in struct for struct offset \"%s\"!" % (size, offset))
        elif 0x90 <= offset < 0xd8:
            return UnkMemory()
        else:
            global_fileline_error("Invalid struct offset \"%s\"!" % offset)

class Stack(Pointer):
    def __init__(self, datatypes={}):
        super().__init__()
        self.datatypes = datatypes

    def load(self, size=Size.WORD, offset=0):
        total_offset = -(self.offset + offset)
        if math.isnan(total_offset):
            global_fileline_error("Stack offset is NaN!")
        if total_offset % size != 0:
            global_fileline_error("Misaligned stack read detected (size: %s, offset=%s)!" % size, total_offset)
        return self.datatypes[(total_offset, size)]

    # note: storing values may be risky. figure this out
    def store(self, datatype, size=Size.WORD, offset=0):
        total_offset = -(self.offset + offset)
        if math.isnan(total_offset):
            global_fileline_error("Stack offset is NaN!")
        if total_offset % size != 0:
            global_fileline_error("Misaligned stack write detected (size: %s, offset=%s)!" % size, total_offset)
        self.datatypes[(total_offset, size)] = datatype

def new_unk_datatype_from_size(size):
    if size == Size.BYTE or size == Size.HWORD:
        return Primitive(size).wrap()
    else:
        return UnknownDataType().wrap()
