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

    def 
