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
    null_sym = SymInfo(value=NaN, scope="l", debug=" ", type=" ", section="*UND*", name="null")
    def __init__(self, offset=0, sym=None):
        super().__init__()
        if sym is None:
            sym = null_sym
        self._sym = sym
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
    
    @property
    def sym(self):
        return self._sym

    # dumb hack for now
    def is_function(self):
        return False

class Memory(ABC):
    def __init__(self):
        super().__init__()

    @abstractmethod
    def load(self):
        pass

    @abstractmethod
    def store(self):
        pass

# Does not carry state.
class AnonMemory(Memory):
    __slots__ = ("read_action", "write_action")
    dummy_func = lambda x: None
    def __init__(self, read_action, write_action=dummy_func):
        super().__init__()
        self.read_action = read_action
        self.write_action = write_action
    
    def load(self):
        return self.read_action()

    def write(self, datatype):
        self.write_action(datatype)

class UnkPointer(Pointer):
    def __init__(self):
        super().__init__(self)
        self.fields

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
    def __init__(self, offset=0, sym=None):
        super().__init__(self, offset, sym)

    def load(self, size, offset=0):
        total_offset = offset + self.offset
        if math.isnan(total_offset):
            raise NotImplementedError("Context information: pointer deref with NaN offset")

class ROMPointer(Pointer):
    def __init__(self, offset=0, sym=None, possible_fields=[]):
        super().__init__(self, offset, sym)
        self.possible_fields = possible_fields

    def load(self, size, offset=0):
        global syms
        global scanned_files
        if self.sym.section == "*UND*":
            return new_unk_datatype_from_size(size)
        elif size == Size.BYTE or size == Size.HWORD:
            return Primitive(size).wrap()

        words = try_parse_word_directives_from_sym(self.sym)
        for word in words:
            if word in syms:
                if syms[word].section == "*ABS*":
                    return new_unk_datatype_from_size(size)
                break
            else:
                try:
                    if int(word, 0) != 0:
                        
                    
            # return self.possible_fields
        else:
            raise NotImplementedError("Context information: ROM pointer deref with NaN offset")

    def store(self, datatype, size, offset=0):
        global_fileline_error("Cannot write to a ROMPointer!")

class Struct(Pointer):
    def __init__(self, offset=0):
        super().__init__(offset)

    def load(self, size, offset=0):
        total_offset = offset + self.offset
        if math.isnan(total_offset):
            raise NotImplementedError("Context information: pointer deref with NaN offset")
        struct_field_action = self.get_struct_data()[total_offset]
        return struct_field_action(self, size)

    @abstractmethod
    def get_struct_data(self):
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

{
    -0x10: {Size.WORD: StructField("_LinkedList_Prev", AnonMemory(functools.partial(BattleObject, -0x10)))},
    -0x0c: {Size.WORD: StructField("_LinkedList_Next", AnonMemory(functools.partial(BattleObject, -0x10)))},
    


class BattleObject(Struct):
    unprocessed_struct_info = StructInfo("oBattleObject", -0x10,
        StructEntry("_LinkedList_Prev", functools.partial(BattleObject, -0x10), 0x4),
        StructEntry("_LinkedList_Next", functools.partial(BattleObject, -0x10), 0x4),
        0x8,
        StructEntry("_Flags", Primitive.new_byte, 1), # loc=0x0
        StructEntry("_Index", Primitive.new_byte, 1), # loc=0x1
        StructEntry("_TypeAndSpriteOffset", Primitive.new_byte, 1), # loc=0x2
        StructEntry("_ListIndex", Primitive.new_byte, 1), # loc=0x3
        StructEntry("_Param1", Primitive.new_byte, 1), # loc=0x4
        StructEntry("_Param2", Primitive.new_byte, 1), # loc=0x5
        StructEntry("_Param3", Primitive.new_byte, 1), # loc=0x6
        StructEntry("_Param4", Primitive.new_byte, 1), # loc=0x7
        StructEntry("_CurState", Primitive.new_byte, 1), # loc=0x8
        StructEntry("_CurAction", Primitive.new_byte, 1), # loc=0x9
        StructEntry("_CurPhase", Primitive.new_byte, 1), # loc=0xa
        StructEntry("_PhaseInitialized", Primitive.new_byte, 1), # loc=0xb
        StructEntry("_Unk_0c", Primitive.new_byte, 1), # loc=0xc
        StructEntry("_Unk_0d", Primitive.new_byte, 1), # loc=0xd
        StructEntry("_Element", Primitive.new_byte, 1), # loc=0xe
        StructEntry("_Unk_0f", Primitive.new_byte, 1), # loc=0xf
        StructEntry("_CurAnim", Primitive.new_byte, 1), # loc=0x10
        StructEntry("_CurAnimCopy", Primitive.new_byte, 1), # loc=0x11
        StructEntry("_PanelX", Primitive.new_byte, 1), # loc=0x12
        StructEntry("_PanelY", Primitive.new_byte, 1), # loc=0x13
        StructEntry("_FuturePanelX", Primitive.new_byte, 1), # loc=0x14
        StructEntry("_FuturePanelY", Primitive.new_byte, 1), # loc=0x15
        StructEntry("_Alliance", Primitive.new_byte, 1), # loc=0x16
        StructEntry("_DirectionFlip", Primitive.new_byte, 1), # loc=0x17
        StructEntry("_PreventAnim", Primitive.new_byte, 1), # loc=0x18
        StructEntry("_Unk_19", Primitive.new_byte, 1), # loc=0x19
        StructEntry("_ChipsHeld", Primitive.new_byte, 1), # loc=0x1a
        StructEntry("_Unk_1b", Primitive.new_byte, 1), # loc=0x1b
        StructEntry("_Unk_1c", Primitive.new_byte, 1), # loc=0x1c
        StructEntry("_Unk_1d", Primitive.new_byte, 1), # loc=0x1d
        StructEntry("_Unk_1e", Primitive.new_byte, 1), # loc=0x1e
        StructEntry("_Unk_1f", Primitive.new_byte, 1), # loc=0x1f
        StructEntry("_Timer", Primitive.new_hword, 2), # loc=0x20
        StructEntry("_Timer2", Primitive.new_hword, 2), # loc=0x22
        StructEntry("_HP", Primitive.new_hword, 2), # loc=0x24
        StructEntry("_MaxHP", Primitive.new_hword, 2), # loc=0x26
        StructEntry("_NameID", Primitive.new_hword, 2), # loc=0x28
        StructEntry("_Chip", Primitive.new_hword, 2), # loc=0x2a
        StructEntry("_Damage", Primitive.new_hword, 2), # loc=0x2c
        StructEntry("_StaminaDamageCounterDisabler", Primitive.new_hword, 2), # loc=0x2e
        StructEntry("_Unk_30", Primitive.new_hword, 2), # loc=0x30
        StructEntry("_Unk_32", Primitive.new_hword, 2), # loc=0x32
        StructEntry("_X", Primitive.new_word, 4), # loc=0x34
        StructEntry("_Y", Primitive.new_word, 4), # loc=0x38
        StructEntry("_Z", Primitive.new_word, 4), # loc=0x3c
        StructEntry("_XVelocity", Primitive.new_word, 4), # loc=0x40
        StructEntry("_YVelocity", Primitive.new_word, 4), # loc=0x44
        StructEntry("_ZVelocity", Primitive.new_word, 4), # loc=0x48
        StructEntry("_RelatedObject1Ptr", BattleObject, 4), # loc=0x4c
        StructEntry("_RelatedObject2Ptr", BattleObject, 4), # loc=0x50
        StructEntry("_CollisionDataPtr", , 4), # loc=0x54
        StructEntry("_AIPtr", , 4), # loc=0x58
        StructEntry("_Unk_5c", , 4), # loc=0x5c
        StructEntry("_ExtraVars", , 44), # loc=0x60
        0x8,
        StructEntry("_SpriteData", , 0), # loc=0x90
        StructEntry("

    struct_fields = None

    def __init__(self, offset=0):
        super().__init__(self, offset)
        BattleObject.struct_fields = 

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

class Function(Pointer):
    def __init__(self, sym=None):
        super().__init__(0, sym)

    @property
    def type(self):
        return DataType.POINTER

    def load(self, size, offset=0):
        global_fileline_error("Cannot read from function \"%s\"!" % self.sym)

    def store(self, datatype, size, offset=0):
        global_fileline_error("Cannot write to function \"%s\"!" % self.sym)

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

    def is_function(self):
        return True

def new_unk_datatype_from_size(size):
    if size == Size.BYTE or size == Size.HWORD:
        return Primitive(size).wrap()
    else:
        return UnknownDataType().wrap()
