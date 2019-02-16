"""
import opcodes
import parser
import readelf
import scanner
"""
import multiprocessing

from analyze_source import *
import analyze_source
import datatypes
from datatypes import Size
import parser
import copy
import opcodes
import time

syms = {}
scanned_files = {}

def set_syms_and_scanned_files(_syms, _scanned_files):
    global syms
    global scanned_files
    syms = _syms
    scanned_files = _scanned_files

class FunctionState:
    __slots__ = ("regs", "_function_branches", "_uncond_branch", "_cond_branches", "found_labels", "_function")
    def __init__(self, registers, function):
        self.regs = copy.deepcopy(registers) # ignore lr and pc
        self._function_branches = [] # (function, None)
        self._uncond_branch = ""
        self._cond_branches = []
        self.found_labels = {}
        self._function = function

    @property
    def function(self):
        return self._function

    @function.setter
    def function(self, function):
        self._function = function

    @property
    def function_branches(self):
        return self._function_branches

    def function_branch(self, function):
        self.function_branches.append(function)

    @property
    def uncond_branch(self):
        return self._uncond_branch
    
    @uncond_branch.setter
    def uncond_branch(self, label):
        self._uncond_branch = label
    
    @property
    def cond_branches(self):
        return self._cond_branches
    
    @cond_branches.setter
    def cond_branches(self, cond_branches):
        self._cond_branches = cond_branches

    def reset_function_branches(self, function):
        self.function_branches = []

    def set_registers(self, registers):
        self.regs = copy.deepcopy(registers)

class CondBranchInfo:
    __slots__ = ("branch_name", "registers")
    def __init__(self, branch_name, registers):
        self.branch_name = branch_name
        self.registers = copy.deepcopy(registers)

class RegisterInfo:
    __slots__ = ("datatype", "fileline")
    def __init__(self, datatype=None, fileline=None):
        if datatype is None:
            datatype = datatypes.UnknownDataType().wrap()
        if fileline is None:
            fileline = default_fileline
        if not isinstance(datatype, datatypes.DataTypeContainer):
            global_fileline_error("Did not pass wrapped datatype to RegisterInfo!")
        self.datatype = datatype
        self.fileline = fileline

class RegisterInfoList(list):
    def __init__(self):
        super().__init__()

    @property
    def data(self):
        if len(self) == 0:
            global_fileline_error("Found instance of uninitialized reg!")
        return self[-1].datatype

    def default_initialize(self, fileline):
        self.append(RegisterInfo(datatypes.UnknownDataType().wrap(), fileline))

    def set_new_reg(self, val):
        self[0] = val

class RegisterState(dict):
    valid_registers = set(["r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10", "r11", "r12", "sp", "lr", "pc"])

    def __init__(self):
        default_registers = {
            "r0": RegisterInfoList(),
            "r1": RegisterInfoList(),
            "r2": RegisterInfoList(),
            "r3": RegisterInfoList(),
            "r4": RegisterInfoList(),
            "r5": RegisterInfoList(),
            "r6": RegisterInfoList(),
            "r7": RegisterInfoList(),
            "r8": RegisterInfoList(),
            "r9": RegisterInfoList(),
            "r10": RegisterInfoList(),
            "r11": RegisterInfoList(),
            "r12": RegisterInfoList(),
            "sp": RegisterInfoList(),
            "lr": RegisterInfoList(),
            "pc": RegisterInfoList()
        }
        dict.__init__(self, default_registers)

    def __getitem__(self, key):
        if key not in RegisterState.valid_registers:
            raise KeyError(key)
        #if key != "pc":
        return dict.__getitem__(self, key)
        #item = dict.__getitem__(self, key)
        #if len(item) == 0:
        #    return item
        #if isinstance(item.data.ref, datatypes.UnknownDataType):
        #    global_fileline_error("pc is somehow UnknownDataType!")
        #return item

    def __setitem__(self, key, val):
        if key not in RegisterState.valid_registers:
            raise KeyError(key)
        dict.__setitem__(self, key, val)

class BranchState:
    __slots__ = ("line_num", "register_states")
    def __init__(self, line_num, register_states):
        self.line_num = line_num
        self.register_states = register_states

def run_analyzer_from_sym(sym, registers, function_start_time):
    src_file = scanned_files[sym.filename]
    src_file.line_num = sym.line_num
    funcstate = FunctionState(registers, sym)
    return run_analyzer_common(src_file, funcstate, function_start_time)

# note: probably tuned towards battle objects, fix later
def run_analyzer_from_label(label, registers, function_start_time):
    src_file = parser.find_and_position_at_nonlocal_label(label)
    funcstate = FunctionState(registers, syms[label])
    return run_analyzer_common(src_file, funcstate, function_start_time)

# sub_801E1E4 - detected as recursive
# sub_801E4F4 - writes to sp in a loop
# sub_3006C8E - blatant read from invalid address
problem_functions = set(("sub_801E1E4", "sub_801E4F4", "sub_3006C8E"))

class FunctionTracker:
    __slots__ = ("count", "time")
    def __init__(self, time):
        self.count = 1
        self.time = time

function_trackers = {}

def run_analyzer_common(src_file, funcstate, function_start_time):
    function_total_time = 0
    return_lr = funcstate.regs["lr"].data
    base_stack_offset = funcstate.regs["sp"].data.ref.offset
    function_name = funcstate.function.name
    function_filename = funcstate.function.filename

    debug_print("funcstart: base stack offset: %s, function: %s (%s:%s)" % (base_stack_offset, function_name, function_filename, funcstate.function.line_num + 1))
    return_regs = None
    return_pc = None

    funcstate.regs["pc"].set_new_reg(RegisterInfo(datatypes.ProgramCounter(src_file.filename, src_file.line_num).wrap(), FileLine(src_file.filename, src_file.line_num)))

    while True:
        debug_print("start src_file: %s:%s" % (src_file.filename, src_file.line_num + 1))
        for line in src_file:
            debug_print("cur src_file: %s:%s" % (src_file.filename, src_file.line_num + 1))
            funcstate.regs["pc"].data.ref.line_num = src_file.line_num

            pc_fileline = funcstate.regs["pc"][-1].fileline
            if not line.startswith("\t"):
                split_line = line.split(":", 1)
                funcstate.found_labels[split_line[0]] = FileLine(src_file.filename, src_file.line_num)
                # if we're currently in an unconditional branch, don't read opcodes until we find the label
                if funcstate.uncond_branch != "":
                    if funcstate.uncond_branch != split_line[0]:
                        continue
                    funcstate.uncond_branch = ""
                if len(split_line) > 1:
                    line = split_line[1]
                else:
                    continue
    
            if line.strip() == "":
                continue

            if funcstate.uncond_branch != "":
                continue

            fileline = FileLine(src_file.filename, src_file.line_num)
            analyze_source.global_fileline = fileline
            if opcodes.read_opcode(line, funcstate, src_file, fileline):
                new_pc_fileline = funcstate.regs["pc"][-1].fileline
                if new_pc_fileline.line_num != pc_fileline.line_num or new_pc_fileline.filename != pc_fileline.filename:
                    
                    sp_datatype_ref = funcstate.regs["sp"].data.ref
                    pc_datatype_ref = funcstate.regs["pc"].data.ref
                    possible_syms = pc_datatype_ref.possible_syms
                    if len(possible_syms) > 1:
                        #debug_print("sp offset: %s" % sp_datatype_ref.offset)
                        if sp_datatype_ref.offset == base_stack_offset:
                            fileline_error("Tried performing jumptable at base stack offset!", fileline)
                        for sym in possible_syms:
                            if sym.type != "F":
                                fileline_msg("BadFunctionDefinitionWarning: Tried executing jumptable non-function symbol \"%s\"!" % sym.name, fileline)
                            if sym.name not in problem_functions:
                                debug_print("Start of jumptable function called from \"%s\" (%s:%s)" % (function_name, function_filename, funcstate.function.line_num + 1))
                                function_total_time += time.time() - function_start_time
                                subroutine_return_regs = run_analyzer_from_sym(sym, funcstate.regs, time.time())
                                function_start_time = time.time()
                                debug_print("End of jumptable function called from \"%s\" (%s:%s)" % (function_name, function_filename, funcstate.function.line_num + 1))
                            else:
                                debug_print("Skipped problem function \"%s\" called from \"%s\" (%s:%s)" % (sym.name, function_name, function_filename, funcstate.function.line_num + 1))
                    elif len(possible_syms) == 1:
                        if sp_datatype_ref.offset == base_stack_offset:
                            # returning from function
                            if return_lr.ref.filename == pc_datatype_ref.filename and return_lr.ref.line_num == pc_datatype_ref.line_num:
                                if return_regs is None:
                                    # just use first return regs found for now
                                    return_regs = funcstate.regs
                                break
                            # not returning from function, then this is a noreturn bx or something similar
                            # I think this only happens when performing an interwork return
                            else:
                                
                                fileline_error("Tried performing noreturn branch!", fileline)
                        else:
                            if possible_syms[0].type != "F":
                                fileline_msg("BadFunctionDefinitionWarning: Tried executing regular non-function symbol \"%s\"!" % possible_syms[0].name, fileline)
                            debug_print("Start of regular function called from \"%s\" (%s:%s)" % (function_name, function_filename, funcstate.function.line_num + 1))                            
                            function_total_time = time.time() - function_start_time
                            subroutine_return_regs = run_analyzer_from_sym(possible_syms[0], funcstate.regs, time.time())
                            function_start_time = time.time()
                            debug_print("End of regular function called from \"%s\" (%s:%s)" % (function_name, function_filename, funcstate.function.line_num + 1))
                            #debug_print("return regs: %s" % subroutine_return_regs)
                    else:
                        fileline_error("Tried executing function but there was none!", fileline)

                    funcstate.set_registers(subroutine_return_regs)
                    src_file.line_num = funcstate.regs["pc"].data.ref.line_num - 1
                elif funcstate.uncond_branch != "":
                    debug_print("uncond branch: %s" % funcstate.uncond_branch)
                    if funcstate.uncond_branch in funcstate.found_labels:
                        # TODO: potential for loop detection here
                        funcstate.uncond_branch = ""
                        break
            else:
                stripped_line = line.strip()
                if stripped_line.startswith("thumb_func"):
                    continue
                fileline_error("Unknown directive \"%s\"!" % line, fileline)

        # now check if we have any conditional labels left
        for cond_branch_info in funcstate.cond_branches:
            if cond_branch_info.branch_name not in funcstate.found_labels:
                #debug_print("found labels: %s\nbranch name: %s" % (funcstate.found_labels, cond_branch_info.branch_name))
                funcstate.set_registers(cond_branch_info.registers)
                src_file.line_num = parser.find_label_line_num(cond_branch_info.branch_name, funcstate)
                break
        else:
            if return_regs is not None:
                #debug_print("about to return regs: %s" % return_regs)
                # return_regs["pc"].append(RegisterInfo(copy.deepcopy(return_pc), fileline))
                break
            else:
                fileline_error("Did not find a return point in function!", fileline)

    debug_print("funcend: base stack offset: %s, function: %s (%s:%s)" % (base_stack_offset, function_name, function_filename, funcstate.function.line_num + 1))

    if function_name in function_trackers:
        function_trackers[function_name].count += 1
        function_total_time += time.time() - function_start_time
        function_trackers[function_name].time += function_total_time
    else:
        function_total_time += time.time() - function_start_time
        function_trackers[function_name] = FunctionTracker(function_total_time)

    return return_regs

def check_pointer_shift_in_sprite_decompress(opcode_params, funcstate, src_file, fileline):
    if funcstate.function.name != "sprite_decompress":
        return True
    return not (opcode_params[0] == "r2" and opcode_params[1] == "r2" and opcode_params[2] == "#1")

def read_jumptable(jumptable):
    """
    Returns a jumptable's entries in a list specified by the given label.
    
    Parameters
    ----------
    jumptable : str
        The label of the jumptable.

    Raises
    ------
    RuntimeError
        Thrown if the jumptable was not found.
    """

    found_jumptable = False

    src_file = parser.find_and_position_at_nonlocal_label(jumptable)
    #debug_print("line: %s" % src_file.cur_line)
    words = parser.parse_word_directives(src_file)
    #debug_print("words: %s" % words)
    registers = RegisterState()
    fileline = FileLine(src_file.filename, src_file.line_num)
    registers["r0"].default_initialize(fileline)
    registers["r1"].default_initialize(fileline)
    registers["r2"].default_initialize(fileline)
    registers["r3"].default_initialize(fileline)
    registers["r4"].append(RegisterInfo(datatypes.Primitive(Size.BYTE).wrap(), fileline))
    registers["r5"].append(RegisterInfo(datatypes.BattleObject().wrap(), fileline))
    registers["r6"].append(RegisterInfo(datatypes.RAMPointer().wrap(), fileline))
    registers["r7"].append(RegisterInfo(datatypes.BattleObject(-0x10).wrap(), fileline))
    registers["r8"].default_initialize(fileline)
    registers["r9"].default_initialize(fileline)
    registers["r10"].append(RegisterInfo(datatypes.RAMPointer().wrap(), fileline))
    registers["r12"].default_initialize(fileline)
    registers["lr"].append(RegisterInfo(datatypes.ProgramCounter("asm00_1.s", 99).wrap(), fileline))
    registers["sp"].append(RegisterInfo(datatypes.Stack().wrap(), fileline))
    registers["pc"].default_initialize(fileline)
    opcodes.bl_opcode.append_callback(opcodes.check_spawn_battle_object)
    opcodes.ble_opcode.append_callback(opcodes.check_loc_80EE4F0)
    opcodes.lsl_imm_opcode.append_callback(check_pointer_shift_in_sprite_decompress)
    opcodes.lsr_imm_opcode.append_callback(check_pointer_shift_in_sprite_decompress)
    debug_print("function: %s" % parser.strip_plus1(words[0]))
    run_analyzer_from_label(parser.strip_plus1(words[0]), registers, time.time())
