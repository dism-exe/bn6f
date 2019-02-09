import os
import re
import pathlib
import argparse
import pickle
from enum import Enum
import copy
from collections import namedtuple

NaN = float("nan")

FileLine = namedtuple("FileLine", ("filename", "line_num"))
default_fileline = FileLine("", 0)

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
conditional_branches = ("beq", "bne", "bcs", "bcc", "bmi", "bpl", "bvs", "bvc", "bhi", "bls", "bge", "blt", "bgt", "ble")
cond_branches_pattern = r"^\t(" + "|".join(cond_branch for cond_branch in conditional_branches) + ") (\S+)"
#scanned_files = {}

FileLines = 

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

def lsl_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def lsl_reg_opcode_function(opcode_params, function_state, fileline):
    pass

def lsr_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def lsr_reg_opcode_function(opcode_params, function_state, fileline):
    pass

def asr_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def asr_reg_opcode_function(opcode_params, function_state, fileline):
    pass

def add_rd_rs_ro_opcode_function(opcode_params, function_state, fileline):
    pass

def add_rd_rs_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def add_rd_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def add_rd_rs_opcode_function(opcode_params, function_state, fileline):
    pass

def add_rd_sp_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def add_sp_opcode_function(opcode_params, function_state, fileline):
    pass

def sub_rd_rs_ro_opcode_function(opcode_params, function_state, fileline):
    pass

def sub_rd_rs_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def sub_rd_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def sub_rd_rs_opcode_function(opcode_params, function_state, fileline):
    pass

def add_sp_opcode_function(opcode_params, function_state, fileline):
    pass

def mov_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def mov_reg_opcode_function(opcode_params, function_state, fileline):
    pass

def cmp_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def cmp_reg_opcode_function(opcode_params, function_state, fileline):
    pass

def and_opcode_function(opcode_params, function_state, fileline):
    pass

def eor_opcode_function(opcode_params, function_state, fileline):
    pass

def adc_opcode_function(opcode_params, function_state, fileline):
    pass

def sbc_opcode_function(opcode_params, function_state, fileline):
    pass

def ror_opcode_function(opcode_params, function_state, fileline):
    pass

def tst_opcode_function(opcode_params, function_state, fileline):
    pass

def neg_opcode_function(opcode_params, function_state, fileline):
    pass

def cmn_opcode_function(opcode_params, function_state, fileline):
    pass

def orr_opcode_function(opcode_params, function_state, fileline):
    pass

def mul_opcode_function(opcode_params, function_state, fileline):
    pass

def bic_opcode_function(opcode_params, function_state, fileline):
    pass

def mvn_opcode_function(opcode_params, function_state, fileline):
    pass

def bx_opcode_function(opcode_params, function_state, fileline):
    pass

def ldr_label_opcode_function(opcode_params, function_state, fileline):
    pass

def ldr_pool_opcode_function(opcode_params, function_state, fileline):
    pass

def ldr_rb_ro_opcode_function(opcode_params, function_state, fileline):
    pass

def ldr_rb_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def ldr_sp_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def str_rb_ro_opcode_function(opcode_params, function_state, fileline):
    pass

def str_rb_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def str_sp_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def ldrb_rb_ro_opcode_function(opcode_params, function_state, fileline):
    pass

def ldrb_rb_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def strb_rb_ro_opcode_function(opcode_params, function_state, fileline):
    pass

def strb_rb_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def ldrh_rb_ro_opcode_function(opcode_params, function_state, fileline):
    pass

def ldrh_rb_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def strh_rb_ro_opcode_function(opcode_params, function_state, fileline):
    pass

def strh_rb_imm_opcode_function(opcode_params, function_state, fileline):
    pass

def ldrsb_opcode_function(opcode_params, function_state, fileline):
    pass

def ldrsh_opcode_function(opcode_params, function_state, fileline):
    pass

def adr_opcode_function(opcode_params, function_state, fileline):
    pass

def push_opcode_function(opcode_params, function_state, fileline):
    pass

def pop_opcode_function(opcode_params, function_state, fileline):
    pass

def stmia_opcode_function(opcode_params, function_state, fileline):
    pass

def ldmia_opcode_function(opcode_params, function_state, fileline):
    pass

def beq_opcode_function(opcode_params, function_state, fileline):
    pass

def bne_opcode_function(opcode_params, function_state, fileline):
    pass

def bcs_opcode_function(opcode_params, function_state, fileline):
    pass

def bcc_opcode_function(opcode_params, function_state, fileline):
    pass

def bmi_opcode_function(opcode_params, function_state, fileline):
    pass

def bpl_opcode_function(opcode_params, function_state, fileline):
    pass

def bvs_opcode_function(opcode_params, function_state, fileline):
    pass

def bvc_opcode_function(opcode_params, function_state, fileline):
    pass

def bhi_opcode_function(opcode_params, function_state, fileline):
    pass

def bls_opcode_function(opcode_params, function_state, fileline):
    pass

def bge_opcode_function(opcode_params, function_state, fileline):
    pass

def blt_opcode_function(opcode_params, function_state, fileline):
    pass

def bgt_opcode_function(opcode_params, function_state, fileline):
    pass

def ble_opcode_function(opcode_params, function_state, fileline):
    pass

def swi_opcode_function(opcode_params, function_state, fileline):
    pass

def swi_opcode_function(opcode_params, function_state, fileline):
    pass

def b_opcode_function(opcode_params, function_state, fileline):
    pass

def bl_opcode_function(opcode_params, function_state, fileline):
    pass

class Opcode:
    def __init__(self, regex, function):
        self.regex = regex
        self.function = function
        self.callbacks = []
    
    def run_function(self, opcode_params, function_state, fileline):
        do_main_function = True
        for callback in self.callbacks:
            do_main_function &= callback(opcode_params, function_state, fileline)
        
        if do_main_function:
            self.function(opcode_params, function_state, fileline)
    
    def append_callback(self, callback):
        self.callbacks.append(callback)

lsl_imm_opcode = Opcode(rd_rs_imm_regex, lsl_imm_opcode_function)
lsl_reg_opcode = Opcode(rd_rs_regex, lsl_reg_opcode_function)
lsr_imm_opcode = Opcode(rd_rs_imm_regex, lsr_imm_opcode_function)
lsr_reg_opcode = Opcode(rd_rs_regex, lsr_reg_opcode_function)
asr_imm_opcode = Opcode(rd_rs_imm_regex, asr_imm_opcode_function)
asr_reg_opcode = Opcode(rd_rs_regex, asr_reg_opcode_function)
add_rd_rs_ro_opcode = Opcode(rd_rs_ro_regex, add_rd_rs_ro_opcode_function)
add_rd_rs_imm_opcode = Opcode(rd_rs_imm_regex, add_rd_rs_imm_opcode_function)
add_rd_imm_opcode = Opcode(rd_imm_regex, add_rd_imm_opcode_function)
add_rd_rs_opcode = Opcode(rd_rs_regex, add_rd_rs_opcode_function)
add_rd_sp_imm_opcode = Opcode(rd_sp_imm_regex, add_rd_sp_imm_opcode_function)
add_sp_opcode = Opcode(sp_or_sp_sp_imm_regex, add_sp_opcode_function)
sub_rd_rs_ro_opcode = Opcode(rd_rs_ro_regex, sub_rd_rs_ro_opcode_function)
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
        add_rd_rs_ro_opcode,
        add_rd_rs_imm_opcode,
        add_rd_imm_opcode,
        add_rd_rs_opcode,
        add_rd_sp_imm_opcode,
        add_sp_opcode
    ),
    "sub": (
        sub_rd_rs_ro_opcode,
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
    source_datatype = registers[source_reg]
    if operand_reg_or_imm is Immediate:
        operand_datatype = operand_reg_or_imm
    else:
        operand_datatype = registers[operand_reg_or_imm]
    
    result_datatype = add_datatypes(source_datatype, operand_datatype)
    

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
            datatype_weak.type = DataType.PRIMITIVE
            print("Context information: unk + pointer")
            result_datatype = copy.deepcopy(datatype_strong)
            result_datatype.add_offset(NaN)
            return result_datatype
        else:
            raise RuntimeError("Invalid DataType constant of %s!" % datatype_strong.type)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.PRIMITIVE:
            return new_primitive(source_datatype.value + operand_datatype.value)
        elif datatype_strong.type == DataType.POINTER:
            result_datatype = copy.deepcopy(datatype_strong)
            result_datatype.add_offset(datatype_weak.value)
            return result_datatype
        else:
            raise RuntimeError("Invalid DataType constant of %s!" % datatype_strong.type)
    elif datatype_weak == DataType.POINTER and datatype_strong == DataType.POINTER:
        raise RuntimeError("Impossible add operation found! (pointer + pointer)")
    else:
        raise RuntimeError("Invalid DataType constant of %s!" % datatype_weak.type)

def add_datatypes_for_dereference(datatype1, datatype2):
    

def read_opcode(line, function_state, fileline):
    line = line.strip()
    opcode_parts = line.split(None, 1)
    opcode_subsyntaxes = opcodes[opcode_parts[0]]
    
    for subsyntax in opcode_syntaxes:
        regex_groups = re.findall(subsyntax.regex, opcode_parts[1])
        if len(regex_groups) == 1:
            subsyntax.function(regex_groups[0], function_state, fileline)
            break
    else:
        raise RuntimeError("Unknown opcode \"%s\"!" % line)

class Size(Enum):
    BYTE = 1
    HWORD = 2
    WORD = 4

def new_unknown_data_type():
    return DataType(NaN, DataType.UNKNOWN, Size.WORD)

def new_primitive(value=NaN, size=Size.WORD):
    return DataType(value, DataType.PRIMITIVE, size)

def new_byte_primitive(value=NaN):
    return DataType(value, DataType.PRIMITIVE, Size.BYTE)

def new_hword_primitive(value=NaN):
    return DataType(value, DataType.PRIMITIVE, Size.HWORD)

def new_word_primitive(value=NaN):
    return DataType(value, DataType.PRIMITIVE, Size.WORD)

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
    
    def wrap(self):
        return DataTypeContainer(self)

class UnknownDataType(DataTypeBase):
    def __init__(self):
        self.size = Size.WORD
        pass

    @property
    def type(self):
        return DataType.UNKNOWN

class Primitive:
    def __init__(self, value):
        
class Pointer:
    def __init__(self, offset=0):
        super().__init__(self, NaN, DataType.POINTER, size=Size.WORD)
        self.offset = offset

    @abstractmethod
    def dereference(self, offset):
        pass

    def add_offset(self, offset):
        self.offset += offset

class RAMPointer(Pointer):
    def __init__(self, mem_type, offset=0):
        super().__init__(self, NaN, DataType.POINTER, size=Size.WORD)
        self.mem_type = mem_type
        self.offset = offset

    def dereference(self, offset):
        total_offset = offset + self.offset
        if total_offset == NaN:
            raise NotImplementedError("Context information: pointer deref with NaN offset")

class ROMPointer(Pointer):
    def __init__(self, possible_fields=[], offset=0):
        super().__init__(self, NaN, DataType.POINTER, size=Size.WORD)
        self.possible_fields = possible_fields
        self.offset = offset

    def dereference(self, offset):
        total_offset = offset + self.offset
        if total_offset == NaN:
            raise NotImplementedError("Context information: ROM pointer deref with NaN offset")
            # return self.possible_fields
        else:
            # todo

class Struct(RAMPointer):
    def __init__(self, value, offset=0):
        super().__init__(self, value, offset)

    def dereference(self, offset):
        total_offset = offset + self.offset
        if total_offset == NaN:
            raise NotImplementedError("Context information: pointer deref with NaN offset")

    @abstractmethod
    def get_struct_data(self):
        pass

class StructField:
    def __init__(self, field_name, datatype):
        self.field_name = field_name
        self.datatype = datatype

class StructData:
    def __init__(self, struct_prefix, struct_fields):
        self.struct_prefix = struct_prefix
        self.struct_fields = struct_fields

class BattleObject(Struct):
    struct_fields = StructData("oBattleObject",
        {
            0x0: "_Flags", new_byte_primitive,
            0x1: "_Index", new_byte_primitive,
            0x2: "_TypeAndSpriteOffset", new_byte_primitive
            0x3: "_ListIndex", new_byte_primitive
            0x4: "_Param1", 
            0x5: "_Param2"
    def __init__(self, value, offset=0):
        super().__init__(self, value, offset)

    def get_struct_data(self):
        return StructField(
class Stack(DataType):
    
class FunctionState:
    def __init__(self, registers):
        self.branch_states = []
        self.registers = registers.copy() # ignore lr and pc
        self.cond_branch_labels = {}
        self.uncond_branch_labels = {}
        self.labels = {}

class RegisterInfo:
    def __init__(self, datatype=new_unknown_data_type(), fileline=default_fileline):
        self.datatype = datatype
        self.fileline = fileline

class RegisterState(dict):
    default_registers = {
        "r0": RegisterInfo(),
        "r1": RegisterInfo(),
        "r2": RegisterInfo(),
        "r3": RegisterInfo(),
        "r4": RegisterInfo(),
        "r5": RegisterInfo(),
        "r6": RegisterInfo(),
        "r7": RegisterInfo(),
        "r8": RegisterInfo(),
        "r9": RegisterInfo(),
        "r10": RegisterInfo(),
        "r11": RegisterInfo(),
        "r12": RegisterInfo(),
        "sp": 0
        "lr": RegisterInfo(),
        "pc": RegisterInfo()
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
    function_state = FunctionState(registers)
    lines = find_colon_label_in_files(label, scanned_files)
    lines.line_num += 1
    end_codepath = False
    
    for line in lines:
        if line.startswith("\t"):
            # label stuff
            pass
        else:
            read_opcode(line, function_state, FileLine(lines.filename, lines.line_num))

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

    args = ap.parse_args()
    # if symfile is unspecified, use the rom name as the symfile name

    output_path = os.getcwd()

    if args.input_path is None and os.path.basename(os.getcwd()) == "tools":
        os.chdir("..")
    else:
        os.chdir(args.input_path)

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

