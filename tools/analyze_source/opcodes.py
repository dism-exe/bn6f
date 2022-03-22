import ctypes
import re
import copy

"""
from analyze_source import *
import analyzer
from datatypes import DataType
import datatypes
import readelf
import scanner
"""

from analyze_source import *
import parser
import datatypes
from datatypes import Size, DataType
import analyzer
import readelf
from collections import namedtuple
import opcodes

MAX_UINT32 = 2**32 - 1

rhd_rhs_regex = re.compile(r"^(r[0-9]|r1[0-2]|sp|lr|pc), *(r1[0-2]|r[0-9]|sp|lr|pc)(?!,)$")
rd_rs_regex = re.compile(r"^(r[0-7]), *(r[0-7])(?!,)$")
rd_rs_imm_regex = re.compile(r"^(r[0-7]), *(r[0-7]), *(#[^,]+)(?!,)$")
rd_rs_rn_regex = re.compile(r"^(r[0-7]), *(r[0-7]), *(r[0-7])$")
rd_imm_regex = re.compile(r"^(r[0-7]), *(#[^,]+)(?!,)$")
rd_sp_imm_regex = re.compile(r"^(r[0-7]), *sp, *(#[^,]+)(?!,)$")
sp_or_sp_sp_imm_regex = re.compile(r"^(sp, *){1,2}(#[^,]+)(?!,)$")
rhs_regex = re.compile(r"^(r[0-9]|r1[0-2]|sp|lr|pc)$")
rd_label_regex = re.compile(r"^(r[0-7]), *(?! )(?!\[)(.+)$")
rd_pool_regex = re.compile(r"^(r[0-7]), *=([^,]+)(?!,)$")
rd_deref_rb_ro_regex = re.compile(r"^(r[0-7]), *\[ *(r[0-7]), *(r[0-7]) *\]$")
rd_deref_rb_imm_regex = re.compile(r"^(r[0-7]), *\[ *(r[0-7])((?= *\])|, *(#[^\]]+)) *\]$")
rd_deref_sp_imm_regex = re.compile(r"^(r[0-7]), *\[ *sp((?= *\])|, *(#[^\]]+)) *\]$")
rlist_regex = re.compile(r"^({[^}]+})$")
rb_excl_rlist_regex = re.compile(r"^(r[0-7])!, *({[^}]+})$")
label_or_imm_regex = re.compile(r"^(.+)$")

read_opcode_count = 0

sprite_addrs = set((0x81d8000, 0x84e8800, 0x84e6804, 0x8214808, 0x83a000c, 0x829d818, 0x836b818, 0x84ea01c, 0x84e3820, 0x83f6824, 0x830902c, 0x836e034, 0x8377834, 0x8395034, 0x8325038, 0x84b4838, 0x8406044, 0x8367848, 0x84a3048, 0x84ee048, 0x83d604c, 0x84bc854, 0x838c864, 0x84f4868, 0x83ad870, 0x8350888, 0x84f0094, 0x831c8a4, 0x83908a4, 0x83dd0a8, 0x84c90b4, 0x831e8c0, 0x84f68c0, 0x83138c4, 0x832f0c8, 0x832f8c8, 0x84bc0c8, 0x837d8e0, 0x83930e0, 0x83b00f8, 0x84f3100, 0x8204108, 0x834a108, 0x83e0108, 0x84f2908, 0x8318920, 0x8322920, 0x84e8120, 0x8382928, 0x838b930, 0x83fa130, 0x835b938, 0x845f138, 0x835613c, 0x86cc13c, 0x8468940, 0x83ba940, 0x830f144, 0x82ff95c, 0x8244164, 0x8442164, 0x849d164, 0x84df96c, 0x84f9978, 0x83eb980, 0x828f18c, 0x83a9190, 0x87dc190, 0x838e194, 0x84c5194, 0x84a599c, 0x838a9a8, 0x83ac1a8, 0x825c9ac, 0x84201ac, 0x83249b0, 0x84f81b0, 0x82f39c0, 0x83279c0, 0x839b9c0, 0x83d91c0, 0x841c9c4, 0x832e9c8, 0x81fa9e8, 0x84069ec, 0x83241f4, 0x83611fc, 0x84e3200, 0x84e9a18, 0x8246a24, 0x8376a24, 0x83bd228, 0x849ba28, 0x835ca2c, 0x8330a30, 0x8303a34, 0x843c234, 0x84b5238, 0x84f223c, 0x831ea40, 0x8387244, 0x84e6244, 0x84eba48, 0x87dd248, 0x828324c, 0x824b254, 0x835e264, 0x84eda70, 0x8371274, 0x831fa84, 0x8311288, 0x84fa28c, 0x836ea90, 0x83b0a90, 0x8415a90, 0x84c0298, 0x83732ac, 0x84b62ac, 0x84e4aac, 0x83ae2b4, 0x83b92b4, 0x83322b8, 0x839aab8, 0x8456abc, 0x83262c0, 0x842dac0, 0x84a8ac0, 0x8342ac4, 0x825f2c8, 0x834b2d0, 0x84ab2d0, 0x837f2e0, 0x83b4ae4, 0x826faf0, 0x82a5af0, 0x83822f0, 0x824eaf4, 0x8377af4, 0x831caf8, 0x8373afc, 0x84e7b00, 0x830a308, 0x8357308, 0x84f3b08, 0x831530c, 0x8357b10, 0x8336320, 0x84f4324, 0x84eb328, 0x84c832c, 0x84f1b3c, 0x8317340, 0x8381340, 0x84e2b40, 0x84f5340, 0x83e2b48, 0x848334c, 0x837eb4c, 0x8333350, 0x821c354, 0x8385354, 0x84f6354, 0x8319b5c, 0x8352360, 0x8408360, 0x8376364, 0x82fe378, 0x84efb78, 0x86cbb7c, 0x87ddb7c, 0x8495b88, 0x84fab88, 0x833f3a0, 0x84b1ba0, 0x840b3a4, 0x83bc3b0, 0x84b8bb4, 0x849fbc0, 0x84a53c4, 0x838c3c8, 0x84f13d0, 0x834bbf0, 0x82533f4, 0x83b3bf4, 0x838ec00, 0x83b440c, 0x8372410, 0x86cd410, 0x81f1414, 0x84b7414, 0x84ba414, 0x832c418, 0x84b5c18, 0x81df420, 0x835f424, 0x849b424, 0x83ac430, 0x83bb440, 0x8419440, 0x84f7c44, 0x8223c48, 0x830e44c, 0x84e5c4c, 0x822cc50, 0x8345c50, 0x8371c50, 0x84e9460, 0x83fec68, 0x83d346c, 0x83bcc70, 0x8424c78, 0x839247c, 0x8332484, 0x824ac94, 0x830d494, 0x8325c94, 0x83b2494, 0x838849c, 0x835c4b0, 0x84ed4b4, 0x84f0cc4, 0x81e7cc8, 0x82f9ccc, 0x84e44cc, 0x84e1cd0, 0x83234d4, 0x839ccdc, 0x84eacdc, 0x84e24e0, 0x84e74e0, 0x84f5ce0, 0x83124e8, 0x848fcec, 0x831fcf0, 0x83864f4, 0x8497cf8, 0x8300cfc, 0x8354d0c, 0x83bfd0c, 0x830451c, 0x84ecd24, 0x8329d28, 0x8430534, 0x84c2d34, 0x84f9534, 0x8379d44, 0x8481548, 0x820cd4c, 0x832154c, 0x849e54c, 0x82c7550, 0x8355d50, 0x846fd50, 0x84e0554, 0x8336d54, 0x8370d6c, 0x84add6c, 0x8373d70, 0x83cd574, 0x8477574, 0x8399578, 0x834a580, 0x8453d90, 0x837fd98, 0x835ad9c, 0x83a0da8, 0x84f75a8, 0x8408db4, 0x836edb8, 0x84d3dbc, 0x83255c0, 0x84e55c8, 0x83805d4, 0x84bddd4, 0x84f4dd4, 0x83245e8, 0x83195f0, 0x84e15f0, 0x87dc5f0, 0x83e55f8, 0x8445e00, 0x84f8e10, 0x8324e14, 0x831661c, 0x84ea61c, 0x8350628, 0x84f362c, 0x83a5e30, 0x842a630, 0x8391e40, 0x8359644, 0x84ec644, 0x8385648, 0x84f9e48, 0x82efe48, 0x8387e4c, 0x8396650, 0x83af658, 0x8395660, 0x84e8e60, 0x833be68, 0x836c668, 0x84e0e68, 0x831e67c, 0x8348e80, 0x84ab680, 0x84e3e80, 0x82b0690, 0x8411e90, 0x834ae94, 0x8383698, 0x82f569c, 0x84ef69c, 0x834b6a4, 0x84e6ea4, 0x836b6a8, 0x83be6b0, 0x834beb8, 0x8278ebc, 0x83536bc, 0x82f6ecc, 0x83e1eec, 0x834c6f0, 0x8354ef0, 0x8325ef4, 0x83566f4, 0x84bf6f8, 0x8304700, 0x8308700, 0x82fe704, 0x84f070c, 0x84af710, 0x83eef14, 0x8338f18, 0x8326724, 0x8233728, 0x8323728, 0x83cff28, 0x8372f34, 0x8296f40, 0x8390f44, 0x83b5f44, 0x84fa744, 0x83acf48, 0x838e74c, 0x83e7f4c, 0x8368f54, 0x84f8754, 0x823b768, 0x8300f70, 0x8485f74, 0x84cdf74, 0x844bf80, 0x84f6f84, 0x8253f88, 0x8260f88, 0x835c794, 0x8264fa0, 0x8402fa0, 0x83547a4, 0x84f57a4, 0x84a97a8, 0x84ba7a8, 0x8330fa8, 0x8351fa8, 0x83a67ac, 0x8312fb4, 0x82ba7bc, 0x8390fc4, 0x83f37c4, 0x84e4fc8, 0x83497cc, 0x83607d0, 0x84eefdc, 0x84ebfe4, 0x83317f0, 0x84ee7fc))

sprite_syms = None

def set_syms_and_scanned_files(_syms, _scanned_files):
    global syms
    global scanned_files
    global sprite_syms
    syms = _syms
    scanned_files = _scanned_files
    sprite_syms = set(analyzer.syms_by_value[sprite_addr].name for sprite_addr in sprite_addrs)

def assert_valid_datatype(datatype, fileline):
    if not (datatype.type == DataType.UNKNOWN or datatype.type == DataType.PRIMITIVE or datatype.type == DataType.POINTER):
        fileline_error("Invalid DataType constant of %s!" % datatype.type, fileline)
    return
    
def assert_valid_datatypes(datatype1, datatype2, fileline):
    if not ((datatype1.type == DataType.UNKNOWN or datatype1.type == DataType.PRIMITIVE or datatype1.type == DataType.POINTER) and (datatype2.type == DataType.UNKNOWN or datatype2.type == DataType.PRIMITIVE or datatype2.type == DataType.POINTER)):
        fileline_error("Invalid DataType constant found! (1: %s, 2: %s)" % (datatype1.type, datatype2.type), fileline)
    return

def evaluate_reg_or_imm_require_primitive(registers, reg_or_imm, fileline):
    if reg_or_imm.startswith("#"):
        imm_value = evaluate_sym_or_num_error_if_undefined(reg_or_imm[1:], fileline)
        return datatypes.Immediate(Size.BYTE, imm_value).wrap()
    else:
        datatype = registers[reg_or_imm].data
        if datatype.type == DataType.UNKNOWN:
            datatype.ref = datatypes.Primitive(Size.WORD)
        elif datatype.type != DataType.PRIMITIVE:
            fileline_error("Expected register of primitive type, got register of type \"%s\" instead!" % datatype.type, fileline)
        return datatype
        
def evaluate_reg_or_imm(registers, reg_or_imm, fileline):
    if reg_or_imm.startswith("#"):
        imm_value = evaluate_sym_or_num_error_if_undefined(reg_or_imm[1:], fileline)
        return datatypes.Immediate(Size.BYTE, imm_value).wrap()
    else:
        return registers[reg_or_imm].data

def evaluate_imm_sym_or_num_error_if_undefined(imm_sym_or_num, fileline):
    if not imm_sym_or_num.startswith("#"):
        fileline_error("Immediate argument \"%s\" is not prefixed with #!" % imm_sym_or_num, fileline)
    
    return evaluate_sym_or_num_error_if_undefined(imm_sym_or_num[1:], fileline)

enter_map_gfx_something_structs = (
    0x806DA90, 0x806FD8C, 0x8071C68,
    0x8075568, 
)

# todo: figure out a way to implement known struct detection
def evaluate_data(data, fileline):
    global syms

    if data == "":
        fileline_msg("EmptyDataWarning: evaluating empty string as Unknown Primitive.")
        return datatypes.Primitive(Size.UNKNOWN).wrap()

    try:
        return datatypes.Primitive(Size.WORD, int(data, 0)).wrap()
    except ValueError:
        data = parser.strip_plus1(data)
        try:
            sym = syms[data]
        except KeyError:
            # hack please fix
            if data.startswith("eCamera"):
                split_data = data.split("+")
                if len(split_data) == 2:
                    return datatypes.RAMPointer(int(split_data[1], 0), syms[split_data[0]]).wrap()
            elif "|" in data:
                split_data = data.split("|")
                value = 0
                for data_part in split_data:
                    try:
                        value |= int(data_part, 0)
                    except ValueError:
                        try:
                            data_part = data_part.strip()
                            sym = syms[data_part]
                        except KeyError:
                            fileline_error("Could not evaluate undefined symbol \"%s\" in | operation!" % data_part, fileline)
                        if sym.section != "*ABS*":
                            fileline_error("Tried | operation against non-absolute symbol \"%s\"!" % data_part, fileline)
                            value |= sym.value
                return datatypes.Primitive(Size.UNKNOWN, value).wrap()
            #elif data == ".ObjectInitializationTable":
            #    sym = syms["InitializeStructsOfObjectType.ObjectInitializationTable"]
            #    sym.filename = "asm/asm00_1.s"
            #    return datatypes.ROMPointer(sym).wrap()
            fileline_error("Could not evaluate undefined symbol \"%s\"!" % data, fileline)

        #debug_print(f"data: {data}, sym.type: {sym.type}, sym.section: {sym.section}")
        if sym.type == "F":
            # technically asm38.s routines are not in ROM
            # but they are read-only so they are functionally equivalent
            return datatypes.ROMPointer(sym).wrap()
        elif sym.section == "*ABS*":
            if sym.name in HARDWARE_CONSTANTS:
                return datatypes.RAMPointer(0, sym).wrap()
            else:
                return datatypes.Primitive(Size.UNKNOWN, sym.value).wrap()
        elif sym.section in RAM_SECTIONS_SYMBOLS:
            return datatypes.RAMPointer(0, sym).wrap()
        elif sym.value in enter_map_gfx_something_structs:
            return datatypes.Struct806DA90().wrap()
        else:
            return datatypes.ROMPointer(sym).wrap()

def evaluate_sym_or_num_error_if_undefined(sym_or_num, fileline):
    try:
        sym_value = evaluate_sym_or_num(sym_or_num)
    except KeyError:
        fileline_error("Could not evaluate undefined symbol \"%s\"!" % sym_or_num, fileline)
    return sym_value

plus_regex = re.compile(r" *\+ *")
minus_regex = re.compile(r" *- *")
bitwise_or_regex = re.compile(r" *\| *")

def evaluate_sym_or_num(sym_or_num):
    global syms
    sym_or_num = sym_or_num.strip()
    try:
        return int(sym_or_num, 0)
    except ValueError:
        try:
            return syms[sym_or_num].value
        except KeyError:
            if sym_or_num[0] == "(":
                sym_or_num = sym_or_num[1:]
            if sym_or_num[-1] == ")":
                sym_or_num = sym_or_num[:-1]
        # allow simple + or - operations
            split_sym_or_num = plus_regex.split(sym_or_num)
            if len(split_sym_or_num) != 2:
                split_sym_or_num = minus_regex.split(sym_or_num)
                if len(split_sym_or_num) != 2:
                    split_sym_or_num = bitwise_or_regex.split(sym_or_num)
                    if len(split_sym_or_num) != 2:
                        debug_print("Failed recursive plus, minus, or bitwise or sym split: %s" % split_sym_or_num)
                        raise KeyError
                    return evaluate_sym_or_num(split_sym_or_num[0]) | evaluate_sym_or_num(split_sym_or_num[1])
                else:
                    return evaluate_sym_or_num(split_sym_or_num[0]) - evaluate_sym_or_num(split_sym_or_num[1])
            else:
                return evaluate_sym_or_num(split_sym_or_num[0]) + evaluate_sym_or_num(split_sym_or_num[1])

def order_datatypes(datatype1, datatype2):
    if datatype1.type < datatype2.type:
        datatype_weak = datatype1
        datatype_strong = datatype2
    else:
        datatype_weak = datatype2
        datatype_strong = datatype1
    
    return (datatype_weak, datatype_strong)

def read_ordered_and_unordered_alu_args(opcode_params, funcstate):
    dest_datatype = funcstate.regs[opcode_params[0]].data
    source_datatype = funcstate.regs[opcode_params[1]].data
    return order_datatypes(dest_datatype, source_datatype) + (dest_datatype, source_datatype)

def read_ordered_alu_args(opcode_params, funcstate):
    dest_datatype = funcstate.regs[opcode_params[0]].data
    source_datatype = funcstate.regs[opcode_params[1]].data
    return order_datatypes(dest_datatype, source_datatype)

def read_alu_args(opcode_params, funcstate):
    dest_datatype = funcstate.regs[opcode_params[0]].data
    source_datatype = funcstate.regs[opcode_params[1]].data
    return dest_datatype, source_datatype

def left_shift_imm(a, b):
    return a << b

def right_shift_imm(a, b):
    return a >> b

def lsl_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], left_shift_imm, fileline)
    return True

def lsl_reg_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a << b, fileline)
    return True
    
def lsr_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], right_shift_imm, fileline)
    return True

def lsr_reg_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a >> b, fileline)
    return True

def asr_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], lambda val, shift: ctypes.c_uint32(ctypes.c_int32(val).value >> shift).value, fileline)
    return True

def asr_reg_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda val, shift: ctypes.c_uint32(ctypes.c_int32(val).value >> shift).value, fileline)
    return True

def do_single_arg_numeric_operation(registers, dest_reg, source_reg, callback, fileline):
    do_triple_arg_numeric_operation(registers, dest_reg, source_reg, source_reg, callback, fileline)

def do_double_arg_numeric_operation(registers, dest_reg, source_reg, callback, fileline):
    do_triple_arg_numeric_operation(registers, dest_reg, dest_reg, source_reg, callback, fileline)

def do_triple_arg_numeric_operation(registers, dest_reg, source_reg, operand_reg_or_imm, callback, fileline):
    source_datatype = registers[source_reg].data

    #print(f"fileline.filename: {fileline.filename}, fileline.line_num: {fileline.line_num}")
    #if fileline.line_num == 2384 and fileline.filename == "asm/asm00_0.s":
    #    debug_print(f"r0: {registers['r0'].data.ref}, r1: {registers['r1'].data.ref}, r2: {registers['r2'].data.ref}, r3: {registers['r3'].data.ref}")

    is_ptr_shift = False

    if source_datatype.type == DataType.UNKNOWN:
        source_datatype.ref = datatypes.Primitive(Size.WORD)
    #elif source_datatype.type == DataType.PRIMITIVE:
    #    if source_datatype.ref.sym.name == "LCDControl" or source_datatype.ref.sym.name == "timer_2000000":
    #        fileline_msg("FakePointerWarning: Fake pointer \"%s\" being used in numeric operation!" % source_datatype.ref.sym.name)
    elif source_datatype.type == DataType.POINTER:
        if callback in (left_shift_imm, right_shift_imm) and not sprite_addrs.isdisjoint(sym.value for sym in source_datatype.ref.possible_syms):
            fileline_msg(f"PtrShiftWarning: Detected pointer shift! source_reg: {source_reg}, dest_reg: {dest_reg}, operand_reg_or_imm: {operand_reg_or_imm}, source_datatype.ref.possible_syms: {[x.name for x in source_datatype.ref.possible_syms]}", fileline)
            is_ptr_shift = True
        else:
            fileline_error(f"Tried performing numeric operation on pointer! registers['r1']: {registers['r1'].data.ref}, source_reg: {source_reg}, dest_reg: {dest_reg}, operand_reg_or_imm: {operand_reg_or_imm}, source_datatype.ref.possible_syms: {[x.name for x in source_datatype.ref.possible_syms]}", fileline)

    if not is_ptr_shift:
        immediate_value = evaluate_reg_or_imm_require_primitive(registers, operand_reg_or_imm, fileline)
    
        try:
            new_value = callback(source_datatype.ref.value, immediate_value.ref.value)
        except TypeError:
            new_value = NaN

        new_dest_datatype = datatypes.Primitive(Size.UNKNOWN, new_value).wrap()
    else:
        new_dest_datatype = copy.deepcopy(source_datatype)

    registers[dest_reg].set_new_reg(analyzer.RegisterInfo(new_dest_datatype, fileline))

def add_rd_rs_rn_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], add_datatypes, fileline)
    return True

def add_rd_rs_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], add_datatypes, fileline)
    return True

def add_rd_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], add_datatypes, fileline)
    return True

def add_rhd_rhs_opcode_function(opcode_params, funcstate, src_file, fileline):
    if opcode_params[1] == "sp":
        fileline_error("Found instance of add rHS, sp", fileline)
    do_double_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], add_datatypes, fileline)
    return True

def add_rd_sp_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    immediate_value = evaluate_imm_sym_or_num_error_if_undefined(opcode_params[1], fileline)
    new_sp = copy.deepcopy(funcstate.regs["sp"].data)
    new_sp.ref.add_offset(immediate_value)
    funcstate.regs[opcode_params[0]].set_new_reg(analyzer.RegisterInfo(new_sp, fileline))
    return True

def add_sp_opcode_function(opcode_params, funcstate, src_file, fileline):
    sp_offset = evaluate_imm_sym_or_num_error_if_undefined(opcode_params[1], fileline)
    add_offset_to_sp(funcstate.regs, sp_offset, fileline)
    return True

def sub_rd_rs_rn_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], subtract_datatypes, fileline)
    return True

def sub_rd_rs_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], subtract_datatypes, fileline)
    return True

def sub_rd_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], subtract_datatypes, fileline)
    return True

def sub_rd_rs_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], subtract_datatypes, fileline)
    return True

def sub_sp_opcode_function(opcode_params, funcstate, src_file, fileline):
    sp_offset = evaluate_imm_sym_or_num_error_if_undefined(opcode_params[1], fileline) * -1
    add_offset_to_sp(funcstate.regs, sp_offset, fileline)
    return True

def add_offset_to_sp(registers, sp_offset, fileline):
    new_sp = copy.deepcopy(registers["sp"].data)
    new_sp.ref.add_offset(sp_offset)
    registers["sp"].set_new_reg(analyzer.RegisterInfo(new_sp, fileline))
    return

def mov_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    imm_value = evaluate_imm_sym_or_num_error_if_undefined(opcode_params[1], fileline)
    new_dest_reg = datatypes.Primitive(Size.BYTE, imm_value).wrap()
    funcstate.regs[opcode_params[0]].set_new_reg(analyzer.RegisterInfo(new_dest_reg, fileline))
    return True

def mov_reg_opcode_function(opcode_params, funcstate, src_file, fileline):
    new_dest_reg = copy.deepcopy(funcstate.regs[opcode_params[1]].data)
    if opcode_params[1] == "pc":
        new_dest_reg.ref.line_num = parser.get_line_num_at_num_directives_ahead(src_file, 2)

    funcstate.regs[opcode_params[0]].set_new_reg(analyzer.RegisterInfo(new_dest_reg, fileline))
    return True

def cmp_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    dest_datatype = funcstate.regs[opcode_params[0]].data

    assert_valid_datatype(dest_datatype, fileline)

    if dest_datatype.type == DataType.UNKNOWN:
        if opcode_params[1] == "#NULL":
            dest_datatype.ref = datatypes.UnkPointer()
        elif evaluate_imm_sym_or_num_error_if_undefined(opcode_params[1], fileline) != 0:
            dest_datatype.ref = datatypes.Primitive(Size.WORD)
        else:
            global_fileline_msg("NullPointerWarning: Possible null pointer immediate found!")
    elif dest_datatype.type == DataType.POINTER:
        if evaluate_imm_sym_or_num_error_if_undefined(opcode_params[1], fileline) != 0:
            fileline_msg("BadPointerCmpWarning: Context information: cmp pointer, #imm-nonzero", fileline)

    return True

def cmp_reg_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_tst_or_cmp_reg_opcode(opcode_params, funcstate, "cmp", fileline)
    return True

def and_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a & b, fileline)
    return True

def eor_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a ^ b, fileline)
    return True

def adc_opcode_function(opcode_params, funcstate, src_file, fileline):
    fileline_error("adc not implemented!", fileline)
    return True

def sbc_opcode_function(opcode_params, funcstate, src_file, fileline):
    fileline_error("sbc not implemented!", fileline)
    return True

def ror_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda val, rotate: ((val & MAX_UINT32) >> (rotate & 31)) | ((val << (32 - (rotate & 31))) & MAX_UINT32), fileline)
    return True

def tst_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_tst_or_cmp_reg_opcode(opcode_params, funcstate, "tst", fileline)
    return True

def do_tst_or_cmp_reg_opcode(opcode_params, funcstate, opcode_name, fileline):
    datatype_weak, datatype_strong, dest_datatype, source_datatype = read_ordered_and_unordered_alu_args(opcode_params, funcstate)

    assert_valid_datatypes(dest_datatype, source_datatype, fileline)

    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.PRIMITIVE:
            datatype_weak.ref = datatypes.Primitive(Size.WORD)
        elif datatype_strong.type == DataType.POINTER:
            datatype_weak.ref = datatypes.UnkPointer()
            if dest_datatype.type == DataType.POINTER:
                fileline_msg("Context information: %s pointer, unknown" % opcode_name, fileline)
            else:
                fileline_msg("Context information: %s unknown, pointer" % opcode_name, fileline)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.POINTER:
            if dest_datatype.type == DataType.POINTER:
                fileline_error("Impossible comparison found! (%s pointer, primitive)" % opcode_name, fileline)
            else:
                fileline_error("Impossible comparison found! (%s primitive, pointer)" % opcode_name, fileline)

    return True

def neg_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_single_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: (-b) & 0xffffffff, fileline)
    return True

def cmn_opcode_function(opcode_params, funcstate, src_file, fileline):
    fileline_error("cmn not implemented!", fileline)
    return True

def orr_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a | b, fileline)
    return True

def mul_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a * b, fileline)
    return True

def bic_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a & ~b, fileline)
    return True

def mvn_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_single_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: (~b) & 0xffffffff, fileline)
    return True

def bx_opcode_function(opcode_params, funcstate, src_file, fileline):
    #if funcstate.function.name == "sub_3006B94":
    #    debug_print("sub_3006B94: r7 jumptable type: %s, r1 function type: %s" % (type(funcstate.regs["r7"].data.ref).__name__, type(funcstate.regs["r1"].data.ref).__name__))
    bx_reg = copy.deepcopy(funcstate.regs[opcode_params].data)
    funcstate.regs["pc"].set_new_reg(analyzer.RegisterInfo(bx_reg, fileline))
    return True

def ldr_label_opcode_function(opcode_params, funcstate, src_file, fileline):
    label_name = opcode_params[1]
    contents = parser.get_ldr_label_contents(label_name, src_file)
    #debug_print(f"ldr_label_opcode_function contents: {contents}")
    dest_datatype = evaluate_data(contents, fileline)
    funcstate.regs[opcode_params[0]].set_new_reg(analyzer.RegisterInfo(dest_datatype, fileline))
    return True

def ldr_pool_opcode_function(opcode_params, funcstate, src_file, fileline):
    dest_datatype = evaluate_data(opcode_params[1], fileline)
    funcstate.regs[opcode_params[0]].set_new_reg(analyzer.RegisterInfo(dest_datatype, fileline))
    return True

def ldr_rb_ro_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[2], Size.WORD, fileline)
    return True

def ldr_rb_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[3], Size.WORD, fileline)
    return True

def ldr_sp_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], "sp", opcode_params[2], Size.WORD, fileline)
    return True

def str_rb_ro_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_store_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[2], Size.WORD, fileline)
    return True

def str_rb_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_store_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[3], Size.WORD, fileline)
    return True

def str_sp_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_store_operation(funcstate, opcode_params[0], "sp", opcode_params[2], Size.WORD, fileline)
    return True

def ldrb_rb_ro_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[2], Size.BYTE, fileline)
    return True

def ldrb_rb_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[3], Size.BYTE, fileline)
    return True

def strb_rb_ro_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_store_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[2], Size.BYTE, fileline)
    return True

def strb_rb_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_store_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[3], Size.BYTE, fileline)
    return True

def ldrh_rb_ro_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[2], Size.HWORD, fileline)
    return True

def ldrh_rb_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[3], Size.HWORD, fileline)
    return True

def strh_rb_ro_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_store_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[2], Size.HWORD, fileline)
    return True

def strh_rb_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_store_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[3], Size.HWORD, fileline)
    return True

def ldrsb_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[2], Size.BYTE, fileline)
    return True

def ldrsh_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_load_operation(funcstate, opcode_params[0], opcode_params[1], opcode_params[2], Size.HWORD, fileline)
    return True

def adr_opcode_function(opcode_params, funcstate, src_file, fileline):
    fileline_error("adr not implemented!", fileline)
    return True

def parse_reglist(reglist_str):
    split_reglist = reglist_str[1:-1].split(",")
    reglist = []
    for reg in split_reglist:
        regex_groups = re.findall(r"^r([0-7])-r([0-7])$", reg)
        if len(regex_groups) == 0:
            reglist.append(reg)
        else:
            reglist.extend(("r%s" % regnum) for regnum in range(int(regex_groups[0][0]), int(regex_groups[0][1])+1))

    return reglist
    
def push_opcode_function(opcode_params, funcstate, src_file, fileline):
    reglist = parse_reglist(opcode_params)
    new_sp_reg = copy.deepcopy(funcstate.regs["sp"].data)

    for reg_name in reversed(reglist):
        new_sp_reg.ref.add_offset(-Size.WORD.value)
        push_datatype = copy.deepcopy(funcstate.regs[reg_name].data)
        debug_print("push reg: %s, datatype: %s" % (reg_name, type(push_datatype.ref).__name__))
        new_sp_reg.ref.store(push_datatype, Size.WORD, fileline, funcstate)

    funcstate.regs["sp"].set_new_reg(analyzer.RegisterInfo(new_sp_reg, fileline))
    return True

def pop_opcode_function(opcode_params, funcstate, src_file, fileline):
    reglist = parse_reglist(opcode_params)
    new_sp_reg = copy.deepcopy(funcstate.regs["sp"].data)

    for reg_name in reglist:
        pop_datatype = copy.deepcopy(new_sp_reg.ref.load(Size.WORD, fileline, funcstate))
        debug_print("pop reg: %s, datatype: %s" % (reg_name, type(pop_datatype.ref).__name__))
        funcstate.regs[reg_name].set_new_reg(analyzer.RegisterInfo(pop_datatype, fileline))
        new_sp_reg.ref.add_offset(Size.WORD.value)

    funcstate.regs["sp"].set_new_reg(analyzer.RegisterInfo(new_sp_reg, fileline))
    return True

def stmia_opcode_function(opcode_params, funcstate, src_file, fileline):
    reglist = parse_reglist(opcode_params[1])
    store_src_datatype = copy.deepcopy(funcstate.regs[opcode_params[0]].data)

    for reg_name in reglist:
        store_datatype = copy.deepcopy(funcstate.regs[reg_name].data)
        store_src_datatype.ref.store(store_datatype, Size.WORD, fileline, funcstate)
        store_src_datatype.ref.add_offset(Size.WORD.value)

    funcstate.regs[opcode_params[0]].set_new_reg(analyzer.RegisterInfo(store_src_datatype, fileline))
    return True

def ldmia_opcode_function(opcode_params, funcstate, src_file, fileline):
    reglist = parse_reglist(opcode_params[1])
    load_src_datatype = copy.deepcopy(funcstate.regs[opcode_params[0]].data)

    for reg_name in reglist:
        load_datatype = copy.deepcopy(load_src_datatype.ref.load(Size.WORD, fileline, funcstate))
        funcstate.regs[reg_name].set_new_reg(analyzer.RegisterInfo(load_datatype, fileline))
        load_src_datatype.ref.add_offset(Size.WORD.value)

    funcstate.regs[opcode_params[0]].set_new_reg(analyzer.RegisterInfo(load_src_datatype, fileline))
    return True

def beq_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bne_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bcs_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bcc_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bmi_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bpl_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bvs_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bvc_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bhi_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bls_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bge_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def blt_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def bgt_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def ble_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.cond_branches.append(analyzer.CondBranchInfo(opcode_params, funcstate.regs))
    return True

def infer_math_swi_arg_types(registers, swi_inputs, swi_outputs, operation_name, fileline):
    for input_name in swi_inputs:
        input_reg = registers[input_name].data
        if input_reg.type == DataType.UNKNOWN:
            input_reg.ref = datatypes.Primitive(Size.WORD)
        elif input_reg.type == DataType.POINTER:
            fileline_error("Tried performing %s on pointer %s!" % (operation_name, input_name), fileline)

    for output_name in swi_outputs:
        registers[output_name].set_new_reg(analyzer.RegisterInfo(datatypes.Primitive(Size.UNKNOWN, NaN).wrap(), fileline))

def do_mem_transfer_swi(registers, has_length, operation_name, fileline):
    pointer_reg_names = ("r0", "r1")

    for pointer_reg_name in pointer_reg_names:
        pointer_reg = registers[pointer_reg_name].data
        if pointer_reg.type == DataType.UNKNOWN:
            pointer_reg.ref = datatypes.UnkPointer()
        elif pointer_reg.type == DataType.PRIMITIVE:
            fileline_error("Tried performing %s on primitive %s!" % (operation_name, pointer_reg_name), fileline)
    
    if has_length:
        length_reg = registers["r2"].data
        if length_reg.type == DataType.UNKNOWN:
            length_reg.ref = datatypes.Primitive(Size.WORD)
        elif length_reg.type == DataType.POINTER:
            fileline_error("Operation %s expects primitive type for r2 but found pointer instead!" % (operation_name), fileline)

def swi_opcode_function(opcode_params, funcstate, src_file, fileline):
    try:
        swi_value = int(opcode_params, 0)
    except ValueError:
        fileline_error("No support for non-numeric swi argument yet!", fileline)

    # divide
    if swi_value == 6:
        infer_math_swi_arg_types(funcstate.regs, ("r0", "r1"), ("r0", "r1", "r3"), "division", fileline)
    # square root
    elif swi_value == 8:
        infer_math_swi_arg_types(funcstate.regs, ("r0",), ("r0",), "square root", fileline)
    # arctan2
    elif swi_value == 10:
        infer_math_swi_arg_types(funcstate.regs, ("r0", "r1"), ("r0",), "arctan2", fileline)
    elif swi_value == 0x11:
        do_mem_transfer_swi(funcstate.regs, False, "LZ77UnCompWRAM", fileline)
    elif swi_value == 0x12:
        do_mem_transfer_swi(funcstate.regs, False, "LZ77UnCompVRAM", fileline)
    elif swi_value == 0xc:
        do_mem_transfer_swi(funcstate.regs, True, "CpuFastSet", fileline)
    elif swi_value == 0xb:
        do_mem_transfer_swi(funcstate.regs, True, "CpuSet", fileline)
    else:
        fileline_error("Unimplemented swi \"%s\"" % swi_value, fileline)

    return True

def b_opcode_function(opcode_params, funcstate, src_file, fileline):
    funcstate.uncond_branch = opcode_params
    return True

spawn_battle_object_function_names = set(("object_spawnType1", "object_spawnType3", "object_spawnType4", "sub_8003374", "sub_80033E4"))
RegNameAndSize = namedtuple("RegNameAndSize", ("regname", "size"))
spawn_battle_object_numeric_reg_name_and_sizes = (
    RegNameAndSize("r0", Size.BYTE),
    RegNameAndSize("r1", Size.WORD),
    RegNameAndSize("r2", Size.WORD),
    RegNameAndSize("r3", Size.WORD),
)
    
def check_spawn_battle_object(opcode_params, funcstate, src_file, fileline):
    try:
        bl_sym = syms[opcode_params]
    except KeyError:
        fileline_error("Could not find sym of function \"%s\"!" % opcode_params[0], fileline)

    if bl_sym.name in spawn_battle_object_function_names:
        for spawn_battle_object_numeric_reg_name_and_size in spawn_battle_object_numeric_reg_name_and_sizes:
            reg_datatype = funcstate.regs[spawn_battle_object_numeric_reg_name_and_size.regname].data
            if reg_datatype.type == DataType.UNKNOWN:
                reg_datatype.ref = datatypes.Primitive(spawn_battle_object_numeric_reg_name_and_size.size)
            elif reg_datatype.type == DataType.POINTER:
                pass
                #fileline_msg("BattleObjectSpawnWarning: %s is pointer for Battle Object Spawn function!" % spawn_battle_object_numeric_reg_name_and_size.regname, fileline)
            funcstate.regs[spawn_battle_object_numeric_reg_name_and_size.regname].set_new_reg(analyzer.RegisterInfo(datatypes.Primitive().wrap(), fileline))

        funcstate.regs["r5"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
        fileline_msg("Called special function \"%s\"." % opcode_params, fileline)
        return False
    elif bl_sym.name == "sub_80103BC" or bl_sym.name == "sub_80CD488":
        funcstate.regs["r0"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
        fileline_msg("Called special function \"%s\"." % opcode_params, fileline)
        return False
    #else:
    #    debug_print("not object spawn function: %s" % bl_sym.name)

    return True

def bl_opcode_function(opcode_params, funcstate, src_file, fileline):
    new_lr_reg = datatypes.ProgramCounter(src_file.filename, parser.get_line_num_at_num_directives_ahead(src_file, 1)).wrap()
    debug_print("bl: this line num: %s, next line num: %s" % (fileline.line_num + 1, new_lr_reg.ref.line_num + 1))
    funcstate.regs["lr"].set_new_reg(analyzer.RegisterInfo(new_lr_reg, fileline))

    try:
        bl_sym = syms[opcode_params]
    except KeyError:
        fileline_error("Could not find sym of function \"%s\"!" % opcode_params[0], fileline)

    bl_reg = datatypes.ROMPointer(bl_sym).wrap()
    #debug_print("bl fileline: %s:%s" % (bl_sym.filename, bl_sym.line_num))
    funcstate.regs["pc"].set_new_reg(analyzer.RegisterInfo(bl_reg, fileline))
    return True

def movflag_pseudo_opcode_function(opcode_params, funcstate, src_file, fileline):
    try:
        imm_value = syms[opcode_params].value
    except KeyError:
        fileline_error("Could not find sym of movflag operand \"%s\"!" % opcode_params, fileline)

    r0_value = imm_value >> 8
    r1_value = imm_value & 0xff
    new_r0_reg = datatypes.Primitive(Size.BYTE, r0_value).wrap()
    new_r1_reg = datatypes.Primitive(Size.BYTE, r1_value).wrap()
    funcstate.regs["r0"].set_new_reg(analyzer.RegisterInfo(new_r0_reg, fileline))
    funcstate.regs["r1"].set_new_reg(analyzer.RegisterInfo(new_r1_reg, fileline))
    return True

class Opcode:
    def __init__(self, regex, function):
        self.regex = regex
        self.function = function
        self.callbacks = []
    
    def run_function(self, opcode_params, funcstate, src_file, fileline):
        chosen_callback = None
        for callback in self.callbacks:
            if not callback(opcode_params, funcstate, src_file, fileline):
                chosen_callback = callback
                break

        if chosen_callback is None:
            self.function(opcode_params, funcstate, src_file, fileline)
        else:
            fileline_msg("Ran chosen callback \"%s\" for opcode \"%s\"." % (chosen_callback.__name__, self.function.__name__), fileline)

    def append_callback(self, callback):
        self.callbacks.append(callback)
        return len(self.callbacks) - 1

    def remove_callback(self, callback):
        self.callbacks.remove(callback)

lsl_imm_opcode = Opcode(rd_rs_imm_regex, lsl_imm_opcode_function)
lsl_reg_opcode = Opcode(rd_rs_regex, lsl_reg_opcode_function)
lsr_imm_opcode = Opcode(rd_rs_imm_regex, lsr_imm_opcode_function)
lsr_reg_opcode = Opcode(rd_rs_regex, lsr_reg_opcode_function)
asr_imm_opcode = Opcode(rd_rs_imm_regex, asr_imm_opcode_function)
asr_reg_opcode = Opcode(rd_rs_regex, asr_reg_opcode_function)
add_rd_rs_rn_opcode = Opcode(rd_rs_rn_regex, add_rd_rs_rn_opcode_function)
add_rd_rs_imm_opcode = Opcode(rd_rs_imm_regex, add_rd_rs_imm_opcode_function)
add_rd_imm_opcode = Opcode(rd_imm_regex, add_rd_imm_opcode_function)
add_rhd_rhs_opcode = Opcode(rhd_rhs_regex, add_rhd_rhs_opcode_function)
add_rd_sp_imm_opcode = Opcode(rd_sp_imm_regex, add_rd_sp_imm_opcode_function)
add_sp_opcode = Opcode(sp_or_sp_sp_imm_regex, add_sp_opcode_function)
sub_rd_rs_rn_opcode = Opcode(rd_rs_rn_regex, sub_rd_rs_rn_opcode_function)
sub_rd_rs_imm_opcode = Opcode(rd_rs_imm_regex, sub_rd_rs_imm_opcode_function)
sub_rd_imm_opcode = Opcode(rd_imm_regex, sub_rd_imm_opcode_function)
sub_rd_rs_opcode = Opcode(rd_rs_regex, sub_rd_rs_opcode_function)
sub_sp_opcode = Opcode(sp_or_sp_sp_imm_regex, sub_sp_opcode_function)
mov_imm_opcode = Opcode(rd_imm_regex, mov_imm_opcode_function)
mov_reg_opcode = Opcode(rhd_rhs_regex, mov_reg_opcode_function)
cmp_imm_opcode = Opcode(rd_imm_regex, cmp_imm_opcode_function)
cmp_reg_opcode = Opcode(rhd_rhs_regex, cmp_reg_opcode_function)
and_opcode = Opcode(rd_rs_regex, and_opcode_function)
eor_opcode = Opcode(rd_rs_regex, eor_opcode_function)
adc_opcode = Opcode(rd_rs_regex, adc_opcode_function)
sbc_opcode = Opcode(rd_rs_regex, sbc_opcode_function)
ror_opcode = Opcode(rd_rs_regex, ror_opcode_function)
tst_opcode = Opcode(rd_rs_regex, tst_opcode_function)
neg_opcode = Opcode(rd_rs_regex, neg_opcode_function)
cmn_opcode = Opcode(rd_rs_regex, cmn_opcode_function)
orr_opcode = Opcode(rd_rs_regex, orr_opcode_function)
mul_opcode = Opcode(rd_rs_regex, mul_opcode_function)
bic_opcode = Opcode(rd_rs_regex, bic_opcode_function)
mvn_opcode = Opcode(rd_rs_regex, mvn_opcode_function)
bx_opcode = Opcode(rhs_regex, bx_opcode_function)
ldr_label_opcode = Opcode(rd_label_regex, ldr_label_opcode_function)
ldr_pool_opcode = Opcode(rd_pool_regex, ldr_pool_opcode_function)
ldr_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, ldr_rb_ro_opcode_function)
ldr_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, ldr_rb_imm_opcode_function)
ldr_sp_imm_opcode = Opcode(rd_deref_sp_imm_regex, ldr_sp_imm_opcode_function)
str_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, str_rb_ro_opcode_function)
str_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, str_rb_imm_opcode_function)
str_sp_imm_opcode = Opcode(rd_deref_sp_imm_regex, str_sp_imm_opcode_function)
ldrb_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, ldrb_rb_ro_opcode_function)
ldrb_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, ldrb_rb_imm_opcode_function)
strb_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, strb_rb_ro_opcode_function)
strb_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, strb_rb_imm_opcode_function)
ldrh_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, ldrh_rb_ro_opcode_function)
ldrh_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, ldrh_rb_imm_opcode_function)
strh_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, strh_rb_ro_opcode_function)
strh_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, strh_rb_imm_opcode_function)
ldrsb_opcode = Opcode(rd_deref_rb_ro_regex, ldrsb_opcode_function)
ldrsh_opcode = Opcode(rd_deref_rb_ro_regex, ldrsh_opcode_function)
adr_opcode = Opcode(rd_label_regex, adr_opcode_function)
push_opcode = Opcode(rlist_regex, push_opcode_function)
pop_opcode = Opcode(rlist_regex, pop_opcode_function)
stmia_opcode = Opcode(rb_excl_rlist_regex, stmia_opcode_function)
ldmia_opcode = Opcode(rb_excl_rlist_regex, ldmia_opcode_function)
beq_opcode = Opcode(label_or_imm_regex, beq_opcode_function)
bne_opcode = Opcode(label_or_imm_regex, bne_opcode_function)
bcs_opcode = Opcode(label_or_imm_regex, bcs_opcode_function)
bcc_opcode = Opcode(label_or_imm_regex, bcc_opcode_function)
bmi_opcode = Opcode(label_or_imm_regex, bmi_opcode_function)
bpl_opcode = Opcode(label_or_imm_regex, bpl_opcode_function)
bvs_opcode = Opcode(label_or_imm_regex, bvs_opcode_function)
bvc_opcode = Opcode(label_or_imm_regex, bvc_opcode_function)
bhi_opcode = Opcode(label_or_imm_regex, bhi_opcode_function)
bls_opcode = Opcode(label_or_imm_regex, bls_opcode_function)
bge_opcode = Opcode(label_or_imm_regex, bge_opcode_function)
blt_opcode = Opcode(label_or_imm_regex, blt_opcode_function)
bgt_opcode = Opcode(label_or_imm_regex, bgt_opcode_function)
ble_opcode = Opcode(label_or_imm_regex, ble_opcode_function)
swi_opcode = Opcode(label_or_imm_regex, swi_opcode_function)
b_opcode = Opcode(label_or_imm_regex, b_opcode_function)
bl_opcode = Opcode(label_or_imm_regex, bl_opcode_function)
movflag_pseudo_opcode = Opcode(label_or_imm_regex, movflag_pseudo_opcode_function)

opcodes = {
    "lsl": (
        lsl_imm_opcode,
        lsl_reg_opcode,
    ),
    "lsr": (
        lsr_imm_opcode,
        lsr_reg_opcode,
    ),
    "asr": (
        asr_imm_opcode,
        asr_reg_opcode,
    ),
    "add": (
        add_rd_rs_rn_opcode,
        add_rd_rs_imm_opcode,
        add_rd_imm_opcode,
        add_rhd_rhs_opcode,
        add_rd_sp_imm_opcode,
        add_sp_opcode
    ),
    "sub": (
        sub_rd_rs_rn_opcode,
        sub_rd_rs_imm_opcode,
        sub_rd_imm_opcode,
        sub_rd_rs_opcode,
        sub_sp_opcode,
    ),
    "mov": (
        mov_imm_opcode,
        mov_reg_opcode,
    ),
    "cmp": (
        cmp_imm_opcode,
        cmp_reg_opcode,
    ),
    "and": (
        and_opcode,
    ),
    "eor": (
        eor_opcode,
    ),
    "adc": (
        adc_opcode,
    ),
    "sbc": (
        sbc_opcode,
    ),
    "ror": (
        ror_opcode,
    ),
    "tst": (
        tst_opcode,
    ),
    "neg": (
        neg_opcode,
    ),
    "cmn": (
        cmn_opcode,
    ),
    "orr": (
        orr_opcode,
    ),
    "mul": (
        mul_opcode,
    ),
    "bic": (
        bic_opcode,
    ),
    "mvn": (
        mvn_opcode,
    ),
    "bx": (
        bx_opcode,
    ),
    "ldr": (
        ldr_label_opcode,
        ldr_pool_opcode,
        ldr_rb_ro_opcode,
        ldr_rb_imm_opcode,
        ldr_sp_imm_opcode,
    ),
    "str": (
        str_rb_ro_opcode,
        str_rb_imm_opcode,
        str_sp_imm_opcode,
    ),
    "ldrb": (
        ldrb_rb_ro_opcode,
        ldrb_rb_imm_opcode,
    ),
    "strb": (
        strb_rb_ro_opcode,
        strb_rb_imm_opcode,
    ),
    "ldrh": (
        ldrh_rb_ro_opcode,
        ldrh_rb_imm_opcode,
    ),
    "strh": (
        strh_rb_ro_opcode,
        strh_rb_imm_opcode,
    ),
    "ldrsb": (
        ldrsb_opcode,
    ),
    "ldrsh": (
        ldrsh_opcode,
    ),
    "adr": (
        adr_opcode,
    ),
    "push": (
        push_opcode,
    ),
    "pop": (
        pop_opcode,
    ),
    "stmia": (
        stmia_opcode,
    ),
    "ldmia": (
        ldmia_opcode,
    ),
    "beq": (
        beq_opcode,
    ),
    "bne": (
        bne_opcode,
    ),
    "bcs": (
        bcs_opcode,
    ),
    "bcc": (
        bcc_opcode,
    ),
    "bmi": (
        bmi_opcode,
    ),
    "bpl": (
        bpl_opcode,
    ),
    "bvs": (
        bvs_opcode,
    ),
    "bvc": (
        bvc_opcode,
    ),
    "bhi": (
        bhi_opcode,
    ),
    "bls": (
        bls_opcode,
    ),
    "bge": (
        bge_opcode,
    ),
    "blt": (
        blt_opcode,
    ),
    "bgt": (
        bgt_opcode,
    ),
    "ble": (
        ble_opcode,
    ),
    "svc": (
        swi_opcode,
    ),
    "swi": (
        swi_opcode,
    ),
    "b": (
        b_opcode,
    ),
    "bl": (
        bl_opcode,
    ),
    "movflag": (
        movflag_pseudo_opcode,
    )
}

def get_datatypes_for_triple_arg_operation(registers, source_reg, operand_reg_or_imm, fileline):
    source_datatype = registers[source_reg].data
    # if source_datatype.type == DataType.POINTER and isinstance(source_datatype.ref.offset, readelf.SymInfo):
        # fileline_error("Offset is somehow SymInfo! (reg: %s, %s:%s)" % (source_reg, registers[source_reg].fileline.filename, registers[source_reg].fileline.line_num))
    # elif operand_reg_or_imm != "" and not operand_reg_or_imm.startswith("#"):
        # if registers[operand_reg_or_imm].data.type == DataType.POINTER and isinstance(registers[operand_reg_or_imm].data.ref.offset, readelf.SymInfo):
            # fileline_error("Offset is somehow SymInfo! reg: %s (%s:%s)" % (operand_reg_or_imm, registers[operand_reg_or_imm].fileline.filename, registers[operand_reg_or_imm].fileline.line_num))
    #debug_print("reg or imm: \"%s\"" % operand_reg_or_imm)
    if operand_reg_or_imm == "":
        operand_reg_or_imm = "#0"

    operand_datatype = evaluate_reg_or_imm(registers, operand_reg_or_imm, fileline)
    assert_valid_datatypes(source_datatype, operand_datatype, fileline)
    return source_datatype, operand_datatype

def do_double_arg_operation(registers, dest_reg, source_reg, callback, fileline):
    do_triple_arg_operation(registers, dest_reg, dest_reg, source_reg, callback, fileline)

def do_triple_arg_operation(registers, dest_reg, source_reg, operand_reg_or_imm, callback, fileline):
    source_datatype, operand_datatype = get_datatypes_for_triple_arg_operation(registers, source_reg, operand_reg_or_imm, fileline)
    result_datatype = callback(source_datatype, operand_datatype, fileline)
    registers[dest_reg].set_new_reg(analyzer.RegisterInfo(result_datatype, fileline))

def do_load_operation(funcstate, dest_reg, source_reg, operand_reg_or_imm, size, fileline):
    registers = funcstate.regs
    source_datatype, operand_datatype = get_datatypes_for_triple_arg_operation(registers, source_reg, operand_reg_or_imm, fileline)
    result_datatype = load_from_datatypes(source_datatype, operand_datatype, size, funcstate, fileline)
    registers[dest_reg].set_new_reg(analyzer.RegisterInfo(result_datatype, fileline))

def do_store_operation(funcstate, dest_reg, source_reg, operand_reg_or_imm, size, fileline):
    registers = funcstate.regs
    source_datatype, operand_datatype = get_datatypes_for_triple_arg_operation(registers, source_reg, operand_reg_or_imm, fileline)
    dest_datatype = registers[dest_reg].data
    assert_valid_datatype(dest_datatype, fileline)
    store_to_datatypes(dest_datatype, source_datatype, operand_datatype, size, funcstate, fileline)

def load_from_datatypes(source_datatype, operand_datatype, size, funcstate, fileline):
    datatype_weak, datatype_strong = order_datatypes(source_datatype, operand_datatype)

    #if funcstate.function.name == "chatbox_EA_flag":
    #    r2_type_name = type(funcstate.regs["r2"].data.ref).__name__
    #    debug_print("r2_type_name: %s" % r2_type_name)

    #if funcstate.function.name == "GetRNG2":
    #    r2_type_name = type(funcstate.regs["r7"].data.ref).__name__
    #    debug_print(f"r7_type_name: {r2_type_name}, datatype_weak.type: {datatype_weak.type}, datatype_strong.type: {datatype_strong.type}, datatype_strong.ref: {datatype_strong.ref}")

    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.UNKNOWN:
            return datatypes.new_unk_datatype_from_size(size)
        elif datatype_strong.type == DataType.PRIMITIVE:
            datatype_weak.ref = datatypes.UnkPointer()
            return datatype_weak.ref.load(size, fileline, funcstate, datatype_strong)
        elif datatype_strong.type == DataType.POINTER:
            datatype_weak.ref = datatypes.Primitive(Size.WORD)
            return datatype_strong.ref.load(size, fileline, funcstate, datatype_weak)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.PRIMITIVE:
            fileline_msg("DereferenceWarning: Impossible load operation found! (load [num, num])", fileline)
            return datatypes.new_unk_datatype_from_size(size)
        elif datatype_strong.type == DataType.POINTER:
            return datatype_strong.ref.load(size, fileline, funcstate, datatype_weak)
    elif datatype_weak == DataType.POINTER and datatype_strong == DataType.POINTER:
        fileline_error("Impossible load operation found! (load [pointer, pointer])", fileline)

def store_to_datatypes(dest_datatype, source_datatype, operand_datatype, size, funcstate, fileline):
    if dest_datatype.type == DataType.UNKNOWN and size == Size.BYTE or size == Size.HWORD:
        dest_datatype.ref = datatypes.Primitive(size)

    datatype_weak, datatype_strong = order_datatypes(source_datatype, operand_datatype)

    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.UNKNOWN:
            fileline_msg("Context information: store [unk, unk]", fileline)
        elif datatype_strong.type == DataType.PRIMITIVE:
            datatype_weak.ref = datatypes.UnkPointer()
            datatype_weak.ref.store(dest_datatype, size, fileline, funcstate, datatype_strong)
        elif datatype_strong.type == DataType.POINTER:
            datatype_weak.ref = datatypes.Primitive(Size.WORD)
            datatype_strong.ref.store(dest_datatype, size, fileline, funcstate, datatype_weak)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.PRIMITIVE:
            fileline_msg("DereferenceWarning: Impossible store operation found! (store [num, num])", fileline)
        elif datatype_strong.type == DataType.POINTER:
            datatype_strong.ref.store(dest_datatype, size, fileline, funcstate, datatype_weak)
    elif datatype_weak == DataType.POINTER and datatype_strong == DataType.POINTER:
        fileline_error("Impossible store operation found! (store [pointer, pointer])", fileline)

def add_datatypes(source_datatype, operand_datatype, fileline):
    datatype_weak, datatype_strong = order_datatypes(source_datatype, operand_datatype)

    #print(f"add_datatypes {fileline.filename}:{fileline.line_num} datatype_weak.type: {datatype_weak.type}, datatype_strong.type: {datatype_strong.type}")
    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.UNKNOWN:
            return datatypes.UnknownDataType().wrap()
        elif datatype_strong.type == DataType.PRIMITIVE:
            return datatypes.UnknownDataType().wrap()
        elif datatype_strong.type == DataType.POINTER:
            # if the operation is pointer + unk, then we know (assume) that unk is a primitive
            datatype_weak.ref = datatypes.Primitive(Size.WORD)
            debug_print("Context information: unk + pointer")
            result_datatype = copy.deepcopy(datatype_strong)
            result_datatype.ref.add_offset(NaN)
            return result_datatype
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.PRIMITIVE:
            return datatypes.Primitive(Size.UNKNOWN, source_datatype.ref.value + operand_datatype.ref.value).wrap()
        elif datatype_strong.type == DataType.POINTER:
            result_datatype = copy.deepcopy(datatype_strong)
            result_datatype.ref.add_offset(datatype_weak.ref.value)
            return result_datatype
    elif datatype_weak == DataType.POINTER and datatype_strong == DataType.POINTER:
        fileline_error("Impossible add operation found! (pointer + pointer)", fileline)

def subtract_datatypes(source_datatype, operand_datatype, fileline):
    datatype_weak, datatype_strong = order_datatypes(source_datatype, operand_datatype)

    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.UNKNOWN:
            return datatypes.UnknownDataType().wrap()
        elif datatype_strong.type == DataType.PRIMITIVE:
            return datatypes.UnknownDataType().wrap()
        elif datatype_strong.type == DataType.POINTER:
            # if the operand datatype is the pointer, then it is an error
            if source_datatype.type == DataType.POINTER:
                operand_datatype.ref = datatypes.Primitive(Size.WORD)
                debug_print("Context information: pointer - unk")
                result_datatype = copy.deepcopy(source_datatype)
                result_datatype.ref.add_offset(NaN)
                return result_datatype
            else:
                fileline_error("Impossible sub operation found! (unk - pointer)", fileline)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.PRIMITIVE:
            return datatypes.Primitive(Size.UNKNOWN, source_datatype.ref.value - operand_datatype.ref.value).wrap()
        elif datatype_strong.type == DataType.POINTER:
            if source_datatype.type == DataType.POINTER:
                result_datatype = copy.deepcopy(source_datatype)
                result_datatype.ref.add_offset(-operand_datatype.ref.value)
                return result_datatype
            else:
                fileline_error("Impossible sub operation found! (num - pointer)", fileline)
    elif datatype_weak == DataType.POINTER and datatype_strong == DataType.POINTER:
        fileline_error("Context information: pointer - pointer", fileline)

def read_opcode(line, funcstate, src_file, fileline):
    #debug_print(f"read_opcode {fileline.filename}:{fileline.line_num}, line: {line}")
    global read_opcode_count
    read_opcode_count += 1

    line = line.strip()
    if line == "nop":
        return True

    opcode_parts = line.split(None, 1)
    try:
        opcode_subsyntaxes = opcodes[opcode_parts[0]]
    except KeyError:
        return False

    for subsyntax in opcode_subsyntaxes:
        regex_groups = subsyntax.regex.findall(opcode_parts[1])
        if len(regex_groups) == 1:
            subsyntax.run_function(regex_groups[0], funcstate, src_file, fileline)
            return True
    else:
        return False
    