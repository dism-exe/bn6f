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

def set_syms_and_scanned_files(_syms, _scanned_files):
    global syms
    global scanned_files
    syms = _syms
    scanned_files = _scanned_files

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
            fileline_error("Could not evaluate undefined symbol \"%s\"!" % data, fileline)
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
        else:
            return datatypes.ROMPointer(sym).wrap()

def evaluate_sym_or_num_error_if_undefined(sym_or_num, fileline):
    try:
        sym_value = evaluate_sym_or_num(sym_or_num)
    except KeyError:
        fileline_error("Could not evaluate undefined symbol \"%s\"!" % sym_or_num, fileline)
    return sym_value

plus_or_minus_regex = re.compile(r" *\+ *| *- *")

def evaluate_sym_or_num(sym_or_num):
    global syms    
    try:
        return int(sym_or_num, 0)
    except ValueError:
        try:
            return syms[sym_or_num].value
        except KeyError:
        # allow simple + or - operations
            split_sym_or_num = plus_or_minus_regex.split(sym_or_num)
            if len(split_sym_or_num) != 2:
                debug_print("Failed recursive plus or minus sym split: %s" % split_sym_or_num)
                raise KeyError
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

def lsl_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], lambda a, b: a << b, fileline)
    return True

def lsl_reg_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a << b, fileline)
    return True
    
def lsr_imm_opcode_function(opcode_params, funcstate, src_file, fileline):
    do_triple_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], lambda a, b: a >> b, fileline)
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

    if source_datatype.type == DataType.UNKNOWN:
        source_datatype.ref = datatypes.Primitive(Size.WORD)
    #elif source_datatype.type == DataType.PRIMITIVE:
    #    if source_datatype.ref.sym.name == "LCDControl" or source_datatype.ref.sym.name == "timer_2000000":
    #        fileline_msg("FakePointerWarning: Fake pointer \"%s\" being used in numeric operation!" % source_datatype.ref.sym.name)
    elif source_datatype.type == DataType.POINTER:
        fileline_error("Tried performing numeric operation on pointer!", fileline)

    immediate_value = evaluate_reg_or_imm_require_primitive(registers, operand_reg_or_imm, fileline)

    try:
        new_value = callback(source_datatype.ref.value, immediate_value.ref.value)
    except TypeError:
        new_value = NaN

    new_dest_datatype = datatypes.Primitive(Size.UNKNOWN, new_value).wrap()
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
    line = line.strip()
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
    