import os
import re
import pathlib
import argparse
import pickle
from enum import Enum
import copy
    
class SrcFile:
    def __init__(self):
        self._line_num = 0
        self._commented_lines = []
        self._uncommented_lines = []
        self._line_type = LineType.UNCOMMENTED

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

"""
lsl Rd, Rs, #Offset5
lsl Rd, Rs

lsr Rd, Rs, #Offset5
lsr Rd, Rs

asr Rd, Rs, #Offset5
asr Rd, Rs

add Rd, Rs, Rn
add Rd, Rs, #Offset3
add Rd, #Offset8
add RHd, RHs
add Rd, sp, #imm
add sp, #imm
add sp, sp, #imm
add sp, #-imm
add sp, sp, #-imm

sub Rd, Rs
sub Rd, Rs, Rn
sub Rd, Rs, #Offset3
sub Rd, #Offset8
sub sp, #imm
sub sp, sp, #imm
sub sp, #-imm
sub sp, sp, #imm

mov Rd, #Offset8
mov RHd, RHs

cmp Rd, #Offset8
cmp RHd, RHs

and Rd, Rs
eor Rd, Rs
adc Rd, Rs
sbc Rd, Rs
ror Rd, Rs
tst Rd, Rs
neg Rd, Rs
cmn Rd, Rs
orr Rd, Rs
mul Rd, Rs
bic Rd, Rs
mvn Rd, Rs

bx RHs

ldr Rd, label // ldr Rd, [pc, #imm]
ldr Rd, =label
ldr Rd, [Rb, Ro]
ldr Rd, [Rb, #imm]
ldr Rd, [sp, #imm]

str Rd, [Rb, Ro]
str Rd, [Rb, #imm]
str Rd, [sp, #imm]

ldrb Rd, [Rb, Ro]
ldrb Rd, [Rb, #imm]

strb Rd, [Rb, Ro]
strb Rd, [Rb, #imm]

ldrh Rd, [Rb, Ro]
ldrh Rd, [Rb, #imm]

strh Rd, [Rb, Ro]
strh Rd, [Rb, #imm]

ldsb Rd, [Rb, Ro]
ldsh Rd, [Rb, Ro]

adr Rd, label // add Rd, pc, #imm

push {Rlist}
pop {Rlist}

stmia Rb!, {Rlist}
ldmia Rb!, {Rlist}

bxx label

swi Value8

b label

bl label
"""

def parse_first_register_operand(line):
    register = line.split()[1]
    if register.endswith(","):
        return register[:-1]
    return register

clobber_dest_opcodes = set("lsl", "lsr", "asr", "and", "eor", "adc", "sbc", "ror", "tst", "neg", "orr", "mul", "bic", "mvn")
ignore_opcodes = set("cmp", "tst", "cmn")

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

def lsl_imm_opcode_function(opcode_params, function_state):
    pass

def lsl_reg_opcode_function(opcode_params, function_state):
    pass

def lsr_imm_opcode_function(opcode_params, function_state):
    pass

def lsr_reg_opcode_function(opcode_params, function_state):
    pass

def asr_imm_opcode_function(opcode_params, function_state):
    pass

def asr_reg_opcode_function(opcode_params, function_state):
    pass

def add_rd_rs_ro_opcode_function(opcode_params, function_state):
    pass

def add_rd_rs_imm_opcode_function(opcode_params, function_state):
    pass

def add_rd_imm_opcode_function(opcode_params, function_state):
    pass

def add_rd_rs_opcode_function(opcode_params, function_state):
    pass

def add_rd_sp_imm_opcode_function(opcode_params, function_state):
    pass

def add_sp_opcode_function(opcode_params, function_state):
    pass

def sub_rd_rs_ro_opcode_function(opcode_params, function_state):
    pass

def sub_rd_rs_imm_opcode_function(opcode_params, function_state):
    pass

def sub_rd_imm_opcode_function(opcode_params, function_state):
    pass

def sub_rd_rs_opcode_function(opcode_params, function_state):
    pass

def add_sp_opcode_function(opcode_params, function_state):
    pass

def mov_imm_opcode_function(opcode_params, function_state):
    pass

def mov_reg_opcode_function(opcode_params, function_state):
    pass

def cmp_imm_opcode_function(opcode_params, function_state):
    pass

def cmp_reg_opcode_function(opcode_params, function_state):
    pass

def and_opcode_function(opcode_params, function_state):
    pass

def eor_opcode_function(opcode_params, function_state):
    pass

def adc_opcode_function(opcode_params, function_state):
    pass

def sbc_opcode_function(opcode_params, function_state):
    pass

def ror_opcode_function(opcode_params, function_state):
    pass

def tst_opcode_function(opcode_params, function_state):
    pass

def neg_opcode_function(opcode_params, function_state):
    pass

def cmn_opcode_function(opcode_params, function_state):
    pass

def orr_opcode_function(opcode_params, function_state):
    pass

def mul_opcode_function(opcode_params, function_state):
    pass

def bic_opcode_function(opcode_params, function_state):
    pass

def mvn_opcode_function(opcode_params, function_state):
    pass

def bx_opcode_function(opcode_params, function_state):
    pass

def ldr_label_opcode_function(opcode_params, function_state):
    pass

def ldr_pool_opcode_function(opcode_params, function_state):
    pass

def ldr_rb_ro_opcode_function(opcode_params, function_state):
    pass

def ldr_rb_imm_opcode_function(opcode_params, function_state):
    pass

def ldr_sp_imm_opcode_function(opcode_params, function_state):
    pass

def str_rb_ro_opcode_function(opcode_params, function_state):
    pass

def str_rb_imm_opcode_function(opcode_params, function_state):
    pass

def str_sp_imm_opcode_function(opcode_params, function_state):
    pass

def ldrb_rb_ro_opcode_function(opcode_params, function_state):
    pass

def ldrb_rb_imm_opcode_function(opcode_params, function_state):
    pass

def strb_rb_ro_opcode_function(opcode_params, function_state):
    pass

def strb_rb_imm_opcode_function(opcode_params, function_state):
    pass

def ldrh_rb_ro_opcode_function(opcode_params, function_state):
    pass

def ldrh_rb_imm_opcode_function(opcode_params, function_state):
    pass

def strh_rb_ro_opcode_function(opcode_params, function_state):
    pass

def strh_rb_imm_opcode_function(opcode_params, function_state):
    pass

def ldrsb_opcode_function(opcode_params, function_state):
    pass

def ldrsh_opcode_function(opcode_params, function_state):
    pass

def adr_opcode_function(opcode_params, function_state):
    pass

def push_opcode_function(opcode_params, function_state):
    pass

def pop_opcode_function(opcode_params, function_state):
    pass

def stmia_opcode_function(opcode_params, function_state):
    pass

def ldmia_opcode_function(opcode_params, function_state):
    pass

def beq_opcode_function(opcode_params, function_state):
    pass

def bne_opcode_function(opcode_params, function_state):
    pass

def bcs_opcode_function(opcode_params, function_state):
    pass

def bcc_opcode_function(opcode_params, function_state):
    pass

def bmi_opcode_function(opcode_params, function_state):
    pass

def bpl_opcode_function(opcode_params, function_state):
    pass

def bvs_opcode_function(opcode_params, function_state):
    pass

def bvc_opcode_function(opcode_params, function_state):
    pass

def bhi_opcode_function(opcode_params, function_state):
    pass

def bls_opcode_function(opcode_params, function_state):
    pass

def bge_opcode_function(opcode_params, function_state):
    pass

def blt_opcode_function(opcode_params, function_state):
    pass

def bgt_opcode_function(opcode_params, function_state):
    pass

def ble_opcode_function(opcode_params, function_state):
    pass

def swi_opcode_function(opcode_params, function_state):
    pass

def swi_opcode_function(opcode_params, function_state):
    pass

def b_opcode_function(opcode_params, function_state):
    pass

def bl_opcode_function(opcode_params, function_state):
    pass

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

class RegexFunction:
    def __init__(self, regex, function):
        self.regex = regex
        self.function = function

opcodes = {
    "lsl": (
        RegexFunction(rd_rs_imm_regex, lsl_imm_opcode),
        RegexFunction(rd_rs_regex, lsl_reg_opcode),
    ),
    "lsr": (
        RegexFunction(rd_rs_imm_regex, lsr_imm_opcode),
        RegexFunction(rd_rs_regex, lsr_reg_opcode),
    ),
    "asr": (
        RegexFunction(rd_rs_imm_regex, asr_imm_opcode),
        RegexFunction(rd_rs_regex, asr_reg_opcode),
    ),
    "add": (
        RegexFunction(rd_rs_ro_regex, add_rd_rs_ro_opcode),
        RegexFunction(rd_rs_imm_regex, add_rd_rs_imm_opcode),
        RegexFunction(rd_imm_regex, add_rd_imm_opcode),
        RegexFunction(rd_rs_regex, add_rd_rs_opcode),
        RegexFunction(rd_sp_imm_regex, add_rd_sp_imm_opcode),
        RegexFunction(sp_or_sp_sp_imm_regex, add_sp_opcode)
    ),
    "sub": (
        RegexFunction(rd_rs_ro_regex, sub_rd_rs_ro_opcode),
        RegexFunction(rd_rs_imm_regex, sub_rd_rs_imm_opcode),
        RegexFunction(rd_imm_regex, sub_rd_imm_opcode),
        RegexFunction(rd_rs_regex, sub_rd_rs_opcode),
        RegexFunction(sp_or_sp_sp_imm_regex, add_sp_opcode),
    ), 
    "mov": (
        RegexFunction(rd_imm_regex, mov_imm_opcode),
        RegexFunction(rd_rs_regex, mov_reg_opcode),
    ),
    "cmp": (
        RegexFunction(rd_imm_regex, cmp_imm_opcode),
        RegexFunction(rd_rs_regex, cmp_reg_opcode),
    ),
    "and":, (
        RegexFunction(rd_rs_regex, and_opcode),
    ),
    "eor": (
        RegexFunction(rd_rs_regex, eor_opcode),
    ),
    "adc": (
        RegexFunction(rd_rs_regex, adc_opcode),
    ),
    "sbc": (
        RegexFunction(rd_rs_regex, sbc_opcode),
    ),
    "ror": (
        RegexFunction(rd_rs_regex, ror_opcode),
    ),
    "tst": (
        RegexFunction(rd_rs_regex, tst_opcode),
    ),
    "neg": (
        RegexFunction(rd_rs_regex, neg_opcode),
    ),
    "cmn": (
        RegexFunction(rd_rs_regex, cmn_opcode),
    ),
    "orr": (
        RegexFunction(rd_rs_regex, orr_opcode),
    ),
    "mul": (
        RegexFunction(rd_rs_regex, mul_opcode),
    ),
    "bic": (
        RegexFunction(rd_rs_regex, bic_opcode),
    ),
    "mvn": (
        RegexFunction(rd_rs_regex, mvn_opcode),
    ), 
    "bx": (
        RegexFunction(rhs_regex, bx_opcode),
    ),
    "ldr": (
        RegexFunction(rd_label_regex, ldr_label_opcode),
        RegexFunction(rd_pool_regex, ldr_pool_opcode),
        RegexFunction(rd_deref_rb_ro_regex, ldr_rb_ro_opcode),
        RegexFunction(rd_deref_rb_imm_regex, ldr_rb_imm_opcode),
        RegexFunction(rd_deref_sp_imm_regex, ldr_sp_imm_opcode),
    ),
    "str": (
        RegexFunction(rd_deref_rb_ro_regex, str_rb_ro_opcode),
        RegexFunction(rd_deref_rb_imm_regex, str_rb_imm_opcode),
        RegexFunction(rd_deref_sp_imm_regex, str_sp_imm_opcode),
    ),
    "ldrb": (
        RegexFunction(rd_deref_rb_ro_regex, ldrb_rb_ro_opcode),
        RegexFunction(rd_deref_rb_imm_regex, ldrb_rb_imm_opcode),
    ),
    "strb": (
        RegexFunction(rd_deref_rb_ro_regex, strb_rb_ro_opcode),
        RegexFunction(rd_deref_rb_imm_regex, strb_rb_imm_opcode),
    ),
    "ldrh": (
        RegexFunction(rd_deref_rb_ro_regex, ldrh_rb_ro_opcode),
        RegexFunction(rd_deref_rb_imm_regex, ldrh_rb_imm_opcode),
    ),
    "strh": (
        RegexFunction(rd_deref_rb_ro_regex, strh_rb_ro_opcode),
        RegexFunction(rd_deref_rb_imm_regex, strh_rb_imm_opcode),
    ),
    "ldrsb": (
        RegexFunction(rd_deref_rb_ro_regex, ldrsb_opcode),
    ),
    "ldrsh": (
        RegexFunction(rd_deref_rb_ro_regex, ldrsh_opcode),
    ),
    "adr": (
        RegexFunction(rd_label_regex, adr_opcode),
    ),
    "push": (
        RegexFunction(rlist_regex, push_opcode),
    ),
    "pop": (
        RegexFunction(rlist_regex, pop_opcode),
    ),
    "stmia": (
        RegexFunction(rb_excl_rlist_regex, stmia_opcode),
    ),
    "ldmia": (
        RegexFunction(rb_excl_rlist_regex, ldmia_opcode),
    ),
    "beq": (
        RegexFunction(label_or_imm_regex, beq_opcode),
    ),
    "bne": (
        RegexFunction(label_or_imm_regex, bne_opcode),
    ),
    "bcs": (
        RegexFunction(label_or_imm_regex, bcs_opcode),
    ),
    "bcc": (
        RegexFunction(label_or_imm_regex, bcc_opcode),
    ),
    "bmi": (
        RegexFunction(label_or_imm_regex, bmi_opcode),
    ),
    "bpl": (
        RegexFunction(label_or_imm_regex, bpl_opcode),
    ),
    "bvs": (
        RegexFunction(label_or_imm_regex, bvs_opcode),
    ),
    "bvc": (
        RegexFunction(label_or_imm_regex, bvc_opcode),
    ),
    "bhi": (
        RegexFunction(label_or_imm_regex, bhi_opcode),
    ),
    "bls": (
        RegexFunction(label_or_imm_regex, bls_opcode),
    ),
    "bge": (
        RegexFunction(label_or_imm_regex, bge_opcode),
    ),
    "blt": (
        RegexFunction(label_or_imm_regex, blt_opcode),
    ),
    "bgt": (
        RegexFunction(label_or_imm_regex, bgt_opcode),
    ),
    "ble": (
        RegexFunction(label_or_imm_regex, ble_opcode),
    ),
    "svc": (
        RegexFunction(label_or_imm_regex, swi_opcode),
    ),
    "swi": (
        RegexFunction(label_or_imm_regex, swi_opcode),
    ),
    "b": (
        RegexFunction(label_or_imm_regex, b_opcode),
    ),
    "bl": (
        RegexFunction(label_or_imm_regex, bl_opcode),
    )
}

def read_opcode(line, function_state):
    line = line.strip()
    opcode_parts = line.split(None, 1)
    opcode_subsyntaxes = opcodes[opcode_parts[0]]
    
    for subsyntax in opcode_syntaxes:
        regex_groups = re.findall(subsyntax.regex, opcode_parts[1])
        if len(regex_groups) == 1:
            subsyntax.function(regex_groups[0], function_state)
            break
    else:
        raise RuntimeError("Unknown opcode \"%s\"!" % line)

class RegisterValue(ABC):
    def __init__(self, value, offset=0):
        self.value = value
        self.offset = offset
        super().__init__()

    @abstractmethod
    @property
    def is_array(self):
        pass
    
    @abstractmethod
    def add_op(self, data):
        
    # [r0, #2]
    def read_as_pointer

"""

Rs is confirmed primitive, new Rd is primitive
lsl Rd, Rs, #Offset5
lsl Rd, Rs

Rs is confirmed primitive, new Rd is primitive
lsr Rd, Rs, #Offset5
lsr Rd, Rs

Rs is confirmed primitive signed, new Rd is primitive signed
asr Rd, Rs, #Offset5
asr Rd, Rs

if Rs or Rn is pointer, new Rd is confirmed pointer, if the other register is unknown, it is primitive (probably)
if Rs and Rn are primitive, new Rd is confirmed primitive
add Rd, Rs, Rn
add Rd, Rs, #Offset3
add Rd, #Offset8
add RHd, RHs

Rd is stack
add Rd, sp, #imm

stack related
add sp, #imm
add sp, sp, #imm
add sp, #-imm
add sp, sp, #-imm

if Rs or Rn is pointer, new Rd is confirmed pointer, if the not pointer register is unknown, it is primitive (probably)
if Rs and Rn are primitive, Rd is confirmed primitive
sub Rd, Rs
sub Rd, Rs, Rn
sub Rd, Rs, #Offset3
sub Rd, #Offset8

stack related
sub sp, #imm
sub sp, sp, #imm
sub sp, #-imm
sub sp, sp, #imm

Rd will be confirmed primitive
mov Rd, #Offset8

RHd inherits RHs
mov RHd, RHs

Rd is primitive (probably, maybe have a "don't assume zero is primitive" flag)
cmp Rd, #Offset8

if RHd or RHs is primitive (and not zero?), then the other register is primitive
if RHd or RHs is pointer, then the other register is pointer
cmp RHd, RHs

todo: find edge cases for ALU operations

Rd and Rs are probably primitive (flag?, should find edge case)
and Rd, Rs

Rd and Rs are primitive (flag?, should find edge case)
eor Rd, Rs

not used in mmbn6, but both primitive
adc Rd, Rs

not used in mmbn6, but both primitive
sbc Rd, Rs

Rd and Rs are primitive
ror Rd, Rs

if Rd or Rs is primitive, the other register is primitive
if Rd or Rs is pointer, the other register is pointer
tst Rd, Rs

Rs is primitive, new Rd is primitive
neg Rd, Rs

not used in mmbn6, but both primitive
cmn Rd, Rs

both probably primitive
orr Rd, Rs

both probably primitive
mul Rd, Rs

both probably primitive
bic Rd, Rs

Rs is primitive, new Rd is primitive
mvn Rd, Rs

RHs is function
bx RHs

evaluate [label] (check if label, if so it is pointer, otherwise it is primitive)
ldr Rd, label // ldr Rd, [pc, #imm]

evaluate label
ldr Rd, =label

if Rb or Ro is primitive, the other register is pointer
if both are primitive or both are pointer then error
ldr Rd, [Rb, Ro]

Rb is pointer
ldr Rd, [Rb, #imm]

unknown
ldr Rd, [sp, #imm]

if Rb or Ro is primitive, the other register is pointer
if both are primitive or both are pointer then error
str Rd, [Rb, Ro]

Rb is pointer
str Rd, [Rb, #imm]

unknown
str Rd, [sp, #imm]

Rd is primitive
if Rb or Ro is primitive, the other register is pointer
if both are primitive or both are pointer then error
ldrb Rd, [Rb, Ro]
ldrb Rd, [Rb, #imm]

strb Rd, [Rb, Ro]
strb Rd, [Rb, #imm]

ldrh Rd, [Rb, Ro]
ldrh Rd, [Rb, #imm]

strh Rd, [Rb, Ro]
strh Rd, [Rb, #imm]

ldrsb Rd, [Rb, Ro]
ldrsh Rd, [Rb, Ro]

adr Rd, label // add Rd, pc, #imm

push {Rlist}
pop {Rlist}

stmia Rb!, {Rlist}
ldmia Rb!, {Rlist}

bxx label

swi Value8

b label

bl label
"""

class Type:
    BYTE = 0
    HWORD = 1
    WORD = 2
    def __init__(self, size, signed):
        self.size = size
        self.signed = signed

class Primitive(RegisterValue):
    def __init__(self, value, type):
        super().__init__(self, value, 0)
        self.primary_type = type
        self.confirmed_primitive = (type.size == Type.BYTE or type.size == Type.HWORD)

    @property
    def is_array(self):
        return False
    
    def add_op(self, register_value):
        if register_value is Pointer:
            new_register_value = copy.copy(register_value)
            new_register_value.offset += self.value
            return new_register_value
        elif register_value is PrimitiveType:
            

class Pointer(Data):
    def __init__(self, value, offset=0):
        super().__init__(self, value, offset)
        

class Struct(Data):
    def __init__(self, value, offset=0):
        super().__init__(self, value, offset)

    @abstractmethod
    def get_fields(self):
        pass

class Stack(Data):
    
class FunctionState:
    def __init__(self, registers):
        self.branch_states = []
        self.registers = registers.copy() # ignore lr and pc
        self.cond_branch_labels = {}
        self.uncond_branch_labels = {}
        self.labels = {}

class RegisterState(dict):
    default_registers = {
        "r0": "",
        "r1": "",
        "r2": "",
        "r3": "",
        "r4": "",
        "r5": "",
        "r6": "",
        "r7": "",
        "r8": "",
        "r9": "",
        "r10": "",
        "r11": "",
        "r12": "",
        "sp": 0
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
        scanned_files[filepath] = SrcFile()
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

