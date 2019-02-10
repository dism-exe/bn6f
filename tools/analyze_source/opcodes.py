import ctypes

def fileline_error(error_msg, fileline):
    raise RuntimeError("%s:%s: %s" % fileline.filename, fileline.line_num, error_msg)

def evaluate_possible_sym_error_if_undefined(possible_sym, fileline):
    try:
        immediate_value = evaluate_possible_sym(possible_sym)
    except KeyError:
        fileline_error("Could not evaluate undefined symbol \"%s\"!" % possible_sym, fileline)
    return immediate_value

def evaluate_possible_sym(possible_sym):
    global syms
    try:
        return int(possible_sym, 0)
    except ValueError:
        return syms[possible_sym].value

rhd_rhs_regex = r"^(r[0-9]|r1[0-2]|sp|lr|pc), *(r[0-9]|r1[0-2]|sp|lr|pc)(?!,)$"
rd_rs_regex = r"^(r[0-7]), *(r[0-7])(?!,)$"
rd_rs_imm_regex = r"^(r[0-7]), *(r[0-7]), *#([^,]+)(?!,)$"
rd_rs_rn_regex = r"^(r[0-7]), *(r[0-7]), *(r[0-7])$"
rd_imm_regex = r"^(r[0-7]), *#([^,]+)(?!,)$"
rd_sp_imm_regex = r"^(r[0-7]), *sp, *#([^,]+)(?!,)$"
sp_or_sp_sp_imm_regex = r"^(sp, *){1,2}#([^,]+)(?!,)$"
rhs_regex = r"^(r[0-9]|r1[0-2]|sp|lr|pc)$"
rd_label_regex = r"^(r[0-7]), *([^,]+)(?!,)$"
rd_pool_regex = r"^(r[0-7]), *([^,]+)(?!,)$"
rd_deref_rb_ro_regex = r"^(r[0-7]), *\[ *(r[0-7]), *(r[0-7])\]$"
rd_deref_rb_imm_regex = r"^(r[0-7]), *\[ *(r[0-7]), *#([^\]]+)\]$"
rd_deref_sp_imm_regex = r"^(r[0-7]), *\[ *sp, *#([^\]]+)\]$"
rlist_regex = r"^({[^}]+})$"
rb_excl_rlist_regex = r"^(r[0-7])!, *({[^}]+})$"
label_or_imm_regex = r"^(.+)$"

def lsl_imm_opcode_function(opcode_params, funcstate, fileline):
    immediate_value = evaluate_possible_sym_error_if_undefined(opcode_params[2], fileline)
    shift_datatypes_from_regs(funcstate.regs, opcode_params[0], opcode_params[1], immediate_value, lambda a, b: a << b, fileline)
    return True

def lsl_reg_opcode_function(opcode_params, funcstate, fileline):
    shift_datatypes_from_regs(funcstate.regs, opcode_params[0], opcode_params[0], opcode_params[1], lambda a, b: a << b, fileline)
    return True
    
def lsr_imm_opcode_function(opcode_params, funcstate, fileline):
    immediate_value = evaluate_possible_sym_error_if_undefined(opcode_params[2], fileline)
    shift_datatypes_from_regs(funcstate.regs, opcode_params[0], opcode_params[1], immediate_value, lambda a, b: a >> b, fileline)
    return True

def lsr_reg_opcode_function(opcode_params, funcstate, fileline):
    shift_datatypes_from_regs(funcstate.regs, opcode_params[0], opcode_params[0], opcode_params[1], lambda a, b: a >> b, fileline)
    return True

def asr_imm_opcode_function(opcode_params, funcstate, fileline):
    immediate_value = evaluate_possible_sym_error_if_undefined(opcode_params[2], fileline)
    shift_datatypes_from_regs(funcstate.regs, opcode_params[0], opcode_params[1], immediate_value, lambda val, shift: ctypes.c_uint32(ctypes.c_int32(val).value >> shift).value, fileline)
    return True

def asr_reg_opcode_function(opcode_params, funcstate, fileline):
    shift_datatypes_from_regs(funcstate.regs, opcode_params[0], opcode_params[0], opcode_params[1], lambda val, shift: ctypes.c_uint32(ctypes.c_int32(val).value >> shift).value, fileline)
    return True

def shift_datatypes_from_regs(registers, dest_reg, source_reg, operand_reg_or_imm, callback, fileline):
    source_datatype = registers[source_reg][-1]
    if source_datatype.type == DataType.UNKNOWN:
        source_datatype.ref = Primitive(Size.WORD)
    elif source_datatype.type == DataType.POINTER:
        fileline_error("Impossible shift operation found! (Pointer shift imm)", fileline)

    if isinstance(operand_reg_or_imm, int):
        immediate_value = Primitive(Size.BYTE, operand_reg_or_imm).wrap()
    else:
        immediate_value = operand_reg_or_imm

    try:
        new_value = callback(source_datatype.ref.value, immediate_value.ref.value)
    except TypeError:
        new_value = NaN

    new_dest_datatype = Primitive(Size.UNKNOWN, new_value)
    registers[dest_reg].append(RegisterInfo(new_dest_datatype, fileline))

def add_rd_rs_rn_opcode_function(opcode_params, funcstate, fileline):
    add_datatypes_from_registers(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], fileline)
    return True

def add_rd_rs_imm_opcode_function(opcode_params, funcstate, fileline):
    immediate_value = evaluate_possible_sym_error_if_undefined(opcode_params[2], fileline)
    add_datatypes_from_registers(funcstate.regs, opcode_params[0], opcode_params[1], immediate_value, fileline)
    return True

def add_rd_imm_opcode_function(opcode_params, funcstate, fileline):
    immediate_value = evaluate_possible_sym_error_if_undefined(opcode_params[1], fileline)
    add_datatypes_from_registers(funcstate.regs, opcode_params[0], opcode_params[0], immediate_value, fileline)
    return True

def add_rd_rs_opcode_function(opcode_params, funcstate, fileline):
    add_datatypes_from_registers(funcstate.regs, opcode_params[0], opcode_params[0], opcode_params[1], fileline)
    return True

def add_rd_sp_imm_opcode_function(opcode_params, funcstate, fileline):
    immediate_value = evaluate_possible_sym_error_if_undefined(opcode_params[2], fileline)
    new_sp = copy.deepcopy(funcstate.regs["sp"][-1])
    new_sp.ref.add_offset(immediate_value)
    funcstate.regs[opcode_params[0]].append(RegisterInfo(new_sp, fileline))
    return True

def add_sp_opcode_function(opcode_params, funcstate, fileline):
    return True

def sub_rd_rs_rn_opcode_function(opcode_params, funcstate, fileline):
    return True

def sub_rd_rs_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def sub_rd_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def sub_rd_rs_opcode_function(opcode_params, funcstate, fileline):
    return True

def add_sp_opcode_function(opcode_params, funcstate, fileline):
    return True

def mov_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def mov_reg_opcode_function(opcode_params, funcstate, fileline):
    return True

def cmp_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def cmp_reg_opcode_function(opcode_params, funcstate, fileline):
    return True

def and_opcode_function(opcode_params, funcstate, fileline):
    return True

def eor_opcode_function(opcode_params, funcstate, fileline):
    return True

def adc_opcode_function(opcode_params, funcstate, fileline):
    return True

def sbc_opcode_function(opcode_params, funcstate, fileline):
    return True

def ror_opcode_function(opcode_params, funcstate, fileline):
    return True

def tst_opcode_function(opcode_params, funcstate, fileline):
    return True

def neg_opcode_function(opcode_params, funcstate, fileline):
    return True

def cmn_opcode_function(opcode_params, funcstate, fileline):
    return True

def orr_opcode_function(opcode_params, funcstate, fileline):
    return True

def mul_opcode_function(opcode_params, funcstate, fileline):
    return True

def bic_opcode_function(opcode_params, funcstate, fileline):
    return True

def mvn_opcode_function(opcode_params, funcstate, fileline):
    return True

def bx_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_label_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_pool_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_sp_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def str_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def str_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def str_sp_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrb_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrb_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def strb_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def strb_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrh_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrh_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def strh_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def strh_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrsb_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrsh_opcode_function(opcode_params, funcstate, fileline):
    return True

def adr_opcode_function(opcode_params, funcstate, fileline):
    return True

def push_opcode_function(opcode_params, funcstate, fileline):
    return True

def pop_opcode_function(opcode_params, funcstate, fileline):
    return True

def stmia_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldmia_opcode_function(opcode_params, funcstate, fileline):
    return True

def beq_opcode_function(opcode_params, funcstate, fileline):
    return True

def bne_opcode_function(opcode_params, funcstate, fileline):
    return True

def bcs_opcode_function(opcode_params, funcstate, fileline):
    return True

def bcc_opcode_function(opcode_params, funcstate, fileline):
    return True

def bmi_opcode_function(opcode_params, funcstate, fileline):
    return True

def bpl_opcode_function(opcode_params, funcstate, fileline):
    return True

def bvs_opcode_function(opcode_params, funcstate, fileline):
    return True

def bvc_opcode_function(opcode_params, funcstate, fileline):
    return True

def bhi_opcode_function(opcode_params, funcstate, fileline):
    return True

def bls_opcode_function(opcode_params, funcstate, fileline):
    return True

def bge_opcode_function(opcode_params, funcstate, fileline):
    return True

def blt_opcode_function(opcode_params, funcstate, fileline):
    return True

def bgt_opcode_function(opcode_params, funcstate, fileline):
    return True

def ble_opcode_function(opcode_params, funcstate, fileline):
    return True

def swi_opcode_function(opcode_params, funcstate, fileline):
    return True

def swi_opcode_function(opcode_params, funcstate, fileline):
    return True

def b_opcode_function(opcode_params, funcstate, fileline):
    return True

def bl_opcode_function(opcode_params, funcstate, fileline):
    return True

class Opcode:
    def __init__(self, regex, function):
        self.regex = regex
        self.function = function
        self.callbacks = []
    
    def run_function(self, opcode_params, funcstate, fileline):
        do_main_function = True
        for callback in self.callbacks:
            do_main_function &= callback(opcode_params, funcstate, fileline)
        
        if do_main_function:
            self.function(opcode_params, funcstate, fileline)
    
    def append_callback(self, callback):
        self.callbacks.append(callback)

lsl_imm_opcode = Opcode(rd_rs_imm_regex, lsl_imm_opcode_function)
lsl_reg_opcode = Opcode(rd_rs_regex, lsl_reg_opcode_function)
lsr_imm_opcode = Opcode(rd_rs_imm_regex, lsr_imm_opcode_function)
lsr_reg_opcode = Opcode(rd_rs_regex, lsr_reg_opcode_function)
asr_imm_opcode = Opcode(rd_rs_imm_regex, asr_imm_opcode_function)
asr_reg_opcode = Opcode(rd_rs_regex, asr_reg_opcode_function)
add_rd_rs_rn_opcode = Opcode(rd_rs_rn_regex, add_rd_rs_rn_opcode_function)
add_rd_rs_imm_opcode = Opcode(rd_rs_imm_regex, add_rd_rs_imm_opcode_function)
add_rd_imm_opcode = Opcode(rd_imm_regex, add_rd_imm_opcode_function)
add_rd_rs_opcode = Opcode(rd_rs_regex, add_rd_rs_opcode_function)
add_rd_sp_imm_opcode = Opcode(rd_sp_imm_regex, add_rd_sp_imm_opcode_function)
add_sp_opcode = Opcode(sp_or_sp_sp_imm_regex, add_sp_opcode_function)
sub_rd_rs_rn_opcode = Opcode(rd_rs_rn_regex, sub_rd_rs_rn_opcode_function)
sub_rd_rs_imm_opcode = Opcode(rd_rs_imm_regex, sub_rd_rs_imm_opcode_function)
sub_rd_imm_opcode = Opcode(rd_imm_regex, sub_rd_imm_opcode_function)
sub_rd_rs_opcode = Opcode(rd_rs_regex, sub_rd_rs_opcode_function)
add_sp_opcode = Opcode(sp_or_sp_sp_imm_regex, add_sp_opcode_function)
mov_imm_opcode = Opcode(rd_imm_regex, mov_imm_opcode_function)
mov_reg_opcode = Opcode(rd_rs_regex, mov_reg_opcode_function)
cmp_imm_opcode = Opcode(rd_imm_regex, cmp_imm_opcode_function)
cmp_reg_opcode = Opcode(rd_rs_regex, cmp_reg_opcode_function)
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
swi_opcode = Opcode(label_or_imm_regex, swi_opcode_function)
b_opcode = Opcode(label_or_imm_regex, b_opcode_function)
bl_opcode = Opcode(label_or_imm_regex, bl_opcode_function)

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
        add_rd_rs_opcode,
        add_rd_sp_imm_opcode,
        add_sp_opcode
    ),
    "sub": (
        sub_rd_rs_rn_opcode,
        sub_rd_rs_imm_opcode,
        sub_rd_imm_opcode,
        sub_rd_rs_opcode,
        add_sp_opcode,
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
    )
}

def add_datatypes_from_registers(registers, dest_reg, source_reg, operand_reg_or_imm, fileline):
    source_datatype = registers[source_reg][-1]
    if isinstance(operand_reg_or_imm, int):
        operand_datatype = Primitive(Size.BYTE, operand_reg_or_imm).wrap()
    else:
        operand_datatype = registers[operand_reg_or_imm][-1]
    
    result_datatype = add_datatypes(source_datatype, operand_datatype, fileline)
    registers[dest_reg].append(RegisterInfo(result_datatype, fileline))

def add_datatypes(source_datatype, operand_datatype):
    if source_datatype.type < operand_datatype.type:
        datatype_weak = source_datatype
        datatype_strong = operand_datatype
    else:
        datatype_weak = operand_datatype
        datatype_strong = source_datatype

    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.UNKNOWN:
            return UnknownDataType()
        elif datatype_strong.type == DataType.PRIMITIVE:
            return UnknownDataType()
        elif datatype_strong.type == DataType.POINTER:
            # if the operation is pointer + unk, then we know (assume) that unk is a primitive
            datatype_weak.ref = Primitive(Size.WORD)
            print("Context information: unk + pointer")
            result_datatype = copy.deepcopy(datatype_strong)
            result_datatype.ref.add_offset(NaN)
            return result_datatype
        else:
            raise fileline_error("Invalid DataType constant of %s!" % datatype_strong.type, fileline)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.PRIMITIVE:
            return (source_datatype.ref.value + operand_datatype.ref.value)
        elif datatype_strong.type == DataType.POINTER:
            result_datatype = copy.deepcopy(datatype_strong)
            result_datatype.add_offset(datatype_weak.value)
            return result_datatype
        else:
            raise fileline_error("Invalid DataType constant of %s!" % datatype_strong.type, fileline)
    elif datatype_weak == DataType.POINTER and datatype_strong == DataType.POINTER:
        raise fileline_error("Impossible add operation found! (pointer + pointer)", fileline)
    else:
        raise fileline_error("Invalid DataType constant of %s!" % datatype_weak.type, fileline)

def add_datatypes_for_dereference(datatype1, datatype2):
    

def read_opcode(line, funcstate, fileline):
    line = line.strip()
    opcode_parts = line.split(None, 1)
    opcode_subsyntaxes = opcodes[opcode_parts[0]]
    
    for subsyntax in opcode_syntaxes:
        regex_groups = re.findall(subsyntax.regex, opcode_parts[1])
        if len(regex_groups) == 1:
            subsyntax.function(regex_groups[0], funcstate, fileline)
            break
    else:
        raise RuntimeError("Unknown opcode \"%s\"!" % line)

