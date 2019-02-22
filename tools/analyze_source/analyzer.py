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
from datatypes import Size, DataType
import parser
import copy
import opcodes
import time
import collections
import analyzer
import functools

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
    __slots__ = ("branch_name", "registers", "stack")
    def __init__(self, branch_name, registers):
        self.branch_name = branch_name
        self.registers = copy.deepcopy(registers)
        self.stack = copy.deepcopy(datatypes.Stack.datatypes)

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
        if len(self) == 1:
            self[0] = RegisterInfo(datatypes.UnknownDataType().wrap(), fileline)
        else:
            self.append(RegisterInfo(datatypes.UnknownDataType().wrap(), fileline))

    def initialize(self, val):
        if len(self) == 1:
            self[0] = val
        else:
            self.append(val)

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
global_function_tree = {}
already_executed_jumptables = set()

class FunctionSpecificCallback:
    __slots__ = ("opcode", "callback")
    def __init__(self, opcode, callback):
        self.opcode = opcode
        self.callback = callback

function_specific_callbacks = {}

def add_function_specific_callbacks(function_value):
    if function_value in function_specific_callbacks:
        for function_specific_callback in function_specific_callbacks[function_value]:
            function_specific_callback.opcode.append_callback(function_specific_callback.callback)

def remove_function_specific_callbacks(function_value):
    if function_value in function_specific_callbacks:
        for function_specific_callback in function_specific_callbacks[function_value]:
            function_specific_callback.opcode.remove_callback(function_specific_callback.callback)

def run_analyzer_common(src_file, funcstate, function_start_time):
    function_total_time = 0
    return_lr = funcstate.regs["lr"].data
    base_stack_offset = funcstate.regs["sp"].data.ref.offset
    function_name = funcstate.function.name
    function_filename = funcstate.function.filename
    #function_tree = collections.OrderedDict()

    debug_print("funcstart: base stack offset: %s, function: %s (%s:%s)" % (base_stack_offset, function_name, function_filename, funcstate.function.line_num + 1))
    return_regs = None
    return_pc = None
    return_stack = None

    funcstate.regs["pc"].set_new_reg(RegisterInfo(datatypes.ProgramCounter(src_file.filename, src_file.line_num).wrap(), FileLine(src_file.filename, src_file.line_num)))

    add_function_specific_callbacks(funcstate.function.value)

    while True:
        debug_print("start src_file: %s:%s" % (src_file.filename, src_file.line_num + 1))
        for line in src_file:
            #if funcstate.function.value == 0x80BE8AE: # sub_80BE8AE
            #    debug_print("cur src_file: %s:%s" % (src_file.filename, src_file.line_num + 1))
            if not line.startswith("\t"):
                split_line = line.split(":", 1)
                # if we're currently in an unconditional branch, don't read opcodes until we find the label
                if funcstate.uncond_branch != "":
                    if funcstate.uncond_branch != split_line[0]:
                        continue
                    funcstate.uncond_branch = ""
                funcstate.found_labels[split_line[0]] = FileLine(src_file.filename, src_file.line_num)
                if len(split_line) > 1:
                    line = split_line[1]
                else:
                    continue
    
            if line.strip() == "":
                continue
            elif funcstate.uncond_branch != "":
                continue

            funcstate.regs["pc"].data.ref.line_num = src_file.line_num
            pc_fileline = funcstate.regs["pc"][-1].fileline

            fileline = FileLine(src_file.filename, src_file.line_num)
            analyze_source.global_fileline = fileline
            if opcodes.read_opcode(line, funcstate, src_file, fileline):
                new_pc_fileline = funcstate.regs["pc"][-1].fileline
                if new_pc_fileline.line_num != pc_fileline.line_num or new_pc_fileline.filename != pc_fileline.filename:
                    sp_datatype_ref = funcstate.regs["sp"].data.ref
                    pc_datatype_ref = funcstate.regs["pc"].data.ref
                    try:
                        possible_syms = pc_datatype_ref.possible_syms
                    except AttributeError:
                    # need to fundamentally rethink how to parse variable callbacks, for now just hope that they don't do anything significant
                        fileline_msg("VariableCallbackWarning: Skipped bad callback of type \"%s\"!" % type(pc_datatype_ref).__name__, fileline)
                        funcstate.regs["r0"].set_new_reg(analyzer.RegisterInfo(datatypes.UnknownDataType().wrap(), fileline))
                        funcstate.regs["r1"].set_new_reg(analyzer.RegisterInfo(datatypes.UnknownDataType().wrap(), fileline))
                        funcstate.regs["r2"].set_new_reg(analyzer.RegisterInfo(datatypes.UnknownDataType().wrap(), fileline))
                        funcstate.regs["r3"].set_new_reg(analyzer.RegisterInfo(datatypes.UnknownDataType().wrap(), fileline))
                        possible_syms = None

                    if possible_syms is not None:
                        if len(possible_syms) > 1:
                            #debug_print("sp offset: %s" % sp_datatype_ref.offset)
                            if sp_datatype_ref.offset == base_stack_offset:
                                fileline_error("Tried performing jumptable at base stack offset!", fileline)
    
                            remove_function_specific_callbacks(funcstate.function.value)
                            jumptable_already_executed = pc_datatype_ref.original_sym.value in already_executed_jumptables
                            debug_print("Jumptable found: name: %s" % pc_datatype_ref.original_sym.name)
                            #if funcstate.function.value == 0x801B9E6: # sub_801B9E6, runs jumptables
                            #    dumb_hack_please_remove_function_memory = datatypes.Struct.dumb_hack_basic_struct_fields[datatypes.AIData][0xc8][Size.WORD].memory
                            #    dumb_hack_please_remove_function_memory.function = None
                            #    dumb_hack_please_remove_function_memory.dumb_hack_please_remove_in_sub_801B9E6 = True
                            already_executed_jumptables.add(pc_datatype_ref.original_sym.value)
                            for sym in possible_syms:
                                if sym.type != "F":
                                    fileline_msg("BadFunctionDefinitionWarning: Tried executing jumptable non-function symbol \"%s\"!" % sym.name, fileline)
                                if sym.name not in problem_functions:
                                    debug_print("Start of jumptable function called from \"%s\" (%s:%s)" % (function_name, src_file.filename, src_file.line_num + 1))
                                    function_total_time += time.time() - function_start_time
                                    #subroutine_return_regs, function_tree["!" + sym.name] = run_analyzer_from_sym(sym, funcstate.regs, time.time())
                                    subroutine_return_regs = run_analyzer_from_sym(sym, funcstate.regs, time.time())
                                    function_start_time = time.time()
                                    debug_print("End of jumptable function called from \"%s\" (%s:%s)" % (function_name, src_file.filename, src_file.line_num + 1))
                                    if jumptable_already_executed:
                                        break
                                else:
                                    debug_print("Skipped problem function \"%s\" called from \"%s\" (%s:%s)" % (sym.name, function_name, src_file.filename, src_file.line_num + 1))
                            #if funcstate.function.value == 0x801B9E6: # sub_801B9E6
                            #    dumb_hack_please_remove_function_memory.dumb_hack_please_remove_in_sub_801B9E6 = False
                            add_function_specific_callbacks(funcstate.function.value)
                        elif len(possible_syms) == 1:
                            if sp_datatype_ref.offset == base_stack_offset:
                                # returning from function
                                if return_lr.ref.filename == pc_datatype_ref.filename and return_lr.ref.line_num == pc_datatype_ref.line_num:
                                    if return_regs is None:
                                        # just use first return regs found for now
                                        return_regs = funcstate.regs
                                        return_stack = datatypes.Stack.datatypes
                                    break
                                # not returning from function, then this is a noreturn bx or something similar
                                # I think this only happens when performing an interwork return
                                else:
                                    fileline_error("Tried performing noreturn branch!", fileline)
                            else:
                                if possible_syms[0].type != "F":
                                    fileline_msg("BadFunctionDefinitionWarning: Tried executing regular non-function symbol \"%s\"!" % possible_syms[0].name, fileline)
                                debug_print("Start of regular function called from \"%s\" (%s:%s)" % (function_name, src_file.filename, src_file.line_num + 1))
                                remove_function_specific_callbacks(funcstate.function.value)
                                function_total_time = time.time() - function_start_time
                                #subroutine_return_regs, function_tree[possible_syms[0].name] = run_analyzer_from_sym(possible_syms[0], funcstate.regs, time.time())
                                subroutine_return_regs = run_analyzer_from_sym(possible_syms[0], funcstate.regs, time.time())
                                function_start_time = time.time()
                                debug_print("End of regular function called from \"%s\" (%s:%s)" % (function_name, src_file.filename, src_file.line_num + 1))
                                add_function_specific_callbacks(funcstate.function.value)
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
                    elif funcstate.uncond_branch in syms:
                        if src_file.filename != syms[funcstate.uncond_branch].filename:
                            global_fileline_error("Unconditional branch jumps to other file!")
                        src_file.line_num = syms[funcstate.uncond_branch].line_num - 1
            else:
                stripped_line = line.strip()
                if stripped_line.startswith("thumb_func") or stripped_line.startswith(".align 1, 0"):
                    continue
                fileline_error("Unknown directive \"%s\"!" % stripped_line, fileline)
        else:
            global_fileline_error("Reached end of file while parsing!")

        # don't attempt to run any conditional branches if this function already had its conditional branches executed
        if function_name in function_trackers and return_regs is not None and funcstate.function.value != 0x8019892: # object_createCollisionData
            break

        # now check if we have any conditional labels left
        for cond_branch_info in funcstate.cond_branches:
            if cond_branch_info.branch_name not in funcstate.found_labels:
                #debug_print("found labels: %s\nbranch name: %s" % (funcstate.found_labels, cond_branch_info.branch_name))
                funcstate.set_registers(cond_branch_info.registers)
                src_file.line_num = parser.find_label_line_num(cond_branch_info.branch_name, funcstate)
                datatypes.Stack.datatypes = cond_branch_info.stack
                break
        else:
            if return_regs is not None:
                #debug_print("about to return regs: %s" % return_regs)
                # return_regs["pc"].append(RegisterInfo(copy.deepcopy(return_pc), fileline))
                break
            else:
                fileline_error("Did not find a return point in function!", fileline)

    remove_function_specific_callbacks(funcstate.function.value)
    if funcstate.function.value == 0x8019892: # object_createCollisionData
        return_regs = funcstate.regs

    datatypes.Stack.datatypes = return_stack

    debug_print("funcend: base stack offset: %s, function: %s (%s:%s)" % (base_stack_offset, function_name, function_filename, funcstate.function.line_num + 1))

    if function_name in function_trackers:
        function_trackers[function_name].count += 1
        function_total_time += time.time() - function_start_time
        function_trackers[function_name].time += function_total_time
    else:
        function_total_time += time.time() - function_start_time
        function_trackers[function_name] = FunctionTracker(function_total_time)

    #return (return_regs, function_tree)
    return return_regs

class ReturnValue:
    __slots__ = ("regname", "datatype")
    def __init__(self, regname, *datatype):
        self.regname = regname
        if len(datatype) == 1:
            self.datatype = datatype[0]
        else:
            self.datatype = functools.partial(datatype[0], datatype[1:])

template_functions = None

# do this later once syms has been set
def set_template_functions():
    analyzer.template_functions = {
        "sound_play": (
            ReturnValue("r0", datatypes.UnknownDataType),
        ),
        "sub_3007958": (
            ReturnValue("r0", datatypes.RAMPointer),
            ReturnValue("r1", datatypes.RAMPointer), # side effect
            ReturnValue("r3", datatypes.Primitive.new_byte)
        ),
        "object_getPanelDataOffset": (
            ReturnValue("r0", datatypes.RAMPointer),
            ReturnValue("r1", datatypes.RAMPointer), # side effect
            ReturnValue("r2", datatypes.ROMPointer, syms["sub_3007958"]), # side effect
            ReturnValue("r3", datatypes.Primitive.new_byte) # side effect
        ),
        "object_getPanelParameters": (
            ReturnValue("r0", datatypes.Primitive.new_word),
            ReturnValue("r1", datatypes.RAMPointer), # side effect
            ReturnValue("r2", datatypes.ROMPointer, syms["sub_3007958"]), # side effect
            ReturnValue("r3", datatypes.Primitive.new_byte) # side effect
        ),
        "sub_8013682": (
            ReturnValue("r0", datatypes.RAMPointer),
            ReturnValue("r1", datatypes.Primitive.new_byte)
        ),
        "sub_8013774": (
            ReturnValue("r0", datatypes.Primitive.new_byte),
            ReturnValue("r1", datatypes.Primitive.new_byte)
        ),
        "object_checkPanelParameters": (
            ReturnValue("r0", datatypes.Primitive.new_byte),
            ReturnValue("r1", datatypes.RAMPointer), # side effect
            ReturnValue("r2", datatypes.ROMPointer, syms["sub_3007958"]), # side effect
            ReturnValue("r3", datatypes.Primitive.new_byte) # side effect
        ),
        "sub_800E994": (
            ReturnValue("r0", datatypes.Primitive.new_byte),
            ReturnValue("r1", datatypes.Primitive.new_byte), # side effect
        ),
        "sub_3007978": (
            ReturnValue("r0", datatypes.Primitive.new_word),
            ReturnValue("r1", datatypes.RAMPointer),
            ReturnValue("r2", datatypes.Primitive, Size.WORD, 0),
            ReturnValue("r3", datatypes.Primitive.new_word)
        ),
        "sub_80113FC": (
            ReturnValue("r0", datatypes.BattleObject),
            ReturnValue("r1", datatypes.Primitive, Size.WORD, 8)
        ),
        "sub_80C44A8": ( # spawns t1 object 0x56
            ReturnValue("r0", datatypes.BattleObject),
            ReturnValue("r1", datatypes.Primitive.new_byte),
            ReturnValue("r2", datatypes.Primitive, Size.BYTE, 0x14)
        ),
        "sub_80E1620": ( # spawns t4 object 0x14
            ReturnValue("r0", datatypes.BattleObject),
            ReturnValue("r1", datatypes.Primitive.new_byte),
            ReturnValue("r2", datatypes.Primitive, Size.BYTE, 0x4)
        ),
        "object_setCounterTime": (
            ReturnValue("r1", datatypes.Primitive.new_byte),
            ReturnValue("r2", datatypes.RAMPointer),
            ReturnValue("r3", datatypes.UnknownDataType)
        ),
        "get_802D246": (
            ReturnValue("r0", datatypes.Primitive.new_word),
        ),
        "battle_isTimeStop": (
            ReturnValue("r0", datatypes.Primitive.new_hword),
            ReturnValue("r1", datatypes.Primitive, Size.BYTE, 0x4),
        ),
        "battle_getFlags": (
            ReturnValue("r0", datatypes.Primitive.new_hword),
            ReturnValue("r1", datatypes.RAMPointer), # toolkit
        ),
        "sub_80C44C8": (
            ReturnValue("r1", datatypes.Primitive, Size.BYTE, 0x8),
        ),
        "object_setAnimation": (
            ReturnValue("r0", datatypes.Primitive, Size.BYTE, 0xff),
            ReturnValue("r1", datatypes.Primitive.new_hword),
        ),
        "sub_801140E": (
            ReturnValue("r0", datatypes.RAMPointer, 0, syms["NULL"]),
            ReturnValue("r1", datatypes.Primitive, Size.BYTE, 0x8),
        ),
        "sub_80C46B0": (
            ReturnValue("r1", datatypes.Primitive, Size.BYTE, 0x8),
        ),
        "battle_isPaused": (
            ReturnValue("r0", datatypes.Primitive.new_byte),
            ReturnValue("r1", datatypes.RAMPointer), # game state
        ),
        "sub_800E680": (
            ReturnValue("r0", datatypes.Primitive.new_byte),
            ReturnValue("r1", datatypes.RAMPointer), # side effect
            ReturnValue("r2", datatypes.ROMPointer, syms["sub_3007958"]), # side effect
            ReturnValue("r3", datatypes.Primitive.new_byte) # side effect
        ),
        "object_isValidPanel": (
            ReturnValue("r0", datatypes.Primitive.new_byte),
            ReturnValue("r1", datatypes.Primitive.new_byte)
        ),
        "sub_8000C00": (
            ReturnValue("r0", datatypes.Primitive.new_word),
            ReturnValue("r1", datatypes.Primitive.new_word),
            ReturnValue("r2", datatypes.Primitive.new_word),
            ReturnValue("r3", datatypes.Primitive.new_word),
        ),
        "sub_80E7486": (
            ReturnValue("r0", datatypes.BattleObject),
        ),
    }

def check_stored_functions(opcode_params, funcstate, src_file, fileline):
    if opcode_params.startswith("nullsub"):
        return False
    elif opcode_params not in analyzer.template_functions:
        return True

    return_values = analyzer.template_functions[opcode_params]
    for return_value in return_values:
        funcstate.regs[return_value.regname].set_new_reg(analyzer.RegisterInfo(return_value.datatype().wrap(), fileline))

    fileline_msg("Called stored function \"%s\"." % opcode_params, fileline)
    return False

def check_pointer_shift(opcode_params, funcstate, src_file, fileline):
    if funcstate.function.value == 0x8002b30: # sprite_decompress
        return not (opcode_params[0] == "r2" and opcode_params[1] == "r2" and opcode_params[2] == "#1")
    elif funcstate.function.value == 0x8000B8E: # decomp_initGfx_8000B8E
        return not (opcode_params[0] == "r0")
    else:
        return True

def check_loc_800EA38(opcode_params, funcstate, src_file, fileline):
    funcstate.regs["r3"].set_new_reg(analyzer.RegisterInfo(datatypes.Primitive(Size.BYTE, 0x8c).wrap(), fileline))
    return True

def check_sub_810AB8C(opcode_params, funcstate, src_file, fileline):
    funcstate.regs["r4"].set_new_reg(analyzer.RegisterInfo(datatypes.Primitive(Size.BYTE).wrap(), fileline))
    return False

def check_sub_80127C0(opcode_params, funcstate, src_file, fileline):
    funcstate.regs["r6"].set_new_reg(analyzer.RegisterInfo(datatypes.Primitive(Size.BYTE).wrap(), fileline))
    funcstate.regs["r4"].set_new_reg(analyzer.RegisterInfo(datatypes.Primitive().wrap(), fileline))
    return False

def check_sub_800FC30(opcode_params, funcstate, src_file, fileline):
    if funcstate.regs["r1"].data.type == DataType.POINTER:
        return funcstate.regs["r1"].data.ref.sym.value != 0x800FCD5 # byte_800FCD5
    else:
        return True

def check_sub_802EF74_ldr(opcode_params, funcstate, src_file, fileline):
    if opcode_params[0] == "r6" and opcode_params[1] == "r0":
        funcstate.regs["r6"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
        return False

    return True

def check_sub_802EF74_tst(opcode_params, funcstate, src_file, fileline):
    if opcode_params[0] == "r7":
        funcstate.regs["r7"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
        return False

    return True

def check_sub_8013892_push_r7(opcode_params, funcstate, src_file, fileline):
    if opcode_params == "{r7}":
        funcstate.regs["r4"].set_new_reg(analyzer.RegisterInfo(datatypes.AIData().wrap(), fileline))
    return True

def check_loc_80EE4F0(opcode_params, funcstate, src_file, fileline):    
    if opcode_params != "loc_80EE4F0":
        return True
    funcstate.uncond_branch = opcode_params
    return False

def sub_8107E66_hack_push_lr(opcode_params, funcstate, src_file, fileline):
    opcodes.push_opcode_function("{lr}", funcstate, src_file, fileline)
    return False

def sub_80F0700_hack_pop_balance(opcode_params, funcstate, src_file, fileline):
    opcodes.pop_opcode_function("{pc}", funcstate, src_file, fileline)
    return False

def sub_80103F8_hack_battle_obj_null(opcode_params, funcstate, src_file, fileline):
    if opcode_params[0] != "r7":
        return True
    funcstate.regs["r7"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
    return False

def sub_8109D08_bx_callback_fix(opcode_params, funcstate, src_file, fileline):
    funcstate.regs["r1"].set_new_reg(analyzer.RegisterInfo(datatypes.ROMPointer([syms["sub_810A21A"], syms["sub_810A254"]], syms["off_810A2B0"]).wrap(), fileline))
    return True

def check_bl_sub_80BC3B8(opcode_params, funcstate, src_file, fileline):
    if opcode_params == "sub_80BC3B8":
        funcstate.regs["r0"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
    return True
#def sub_810A724
#def set_function_only_callback(
# funcstate.regs["r1"]

def hack_battle_state_field_0x80_object_read(opcode_params, funcstate, src_file, fileline):
    if opcode_params[0] == "r7" and opcode_params[1] == "r4":
        funcstate.regs["r7"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
        return False
    return True

def object_get_panel_region_set_correct_return_value(opcode_params, funcstate, src_file, fileline):
    funcstate.regs["r0"].set_new_reg(analyzer.RegisterInfo(datatypes.Primitive().wrap(), fileline))
    return True

def sub_80BC670_set_r0_battle_object(opcode_params, funcstate, src_file, fileline):
    funcstate.regs["r0"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
    return True

def sub_80BDB3C_sub_80DA68C_fix_misaligned_push(opcode_params, funcstate, src_file, fileline):
    opcodes.push_opcode_function("{r4,lr}", funcstate, src_file, fileline)
    return False

def fix_misaligned_pop_r7_lr(opcode_params, funcstate, src_file, fileline):
    if opcode_params == "{pc}":
        opcodes.pop_opcode_function("{r7,pc}", funcstate, src_file, fileline)
        return False
    return True

def sub_80C57F4_fix_misaligned_pop(opcode_params, funcstate, src_file, fileline):
    opcodes.pop_opcode_function("{r4,pc}", funcstate, src_file, fileline)
    return False

def sub_80C7A58_sub_80CAC44_ignore_cmp(opcode_params, funcstate, src_file, fileline):
    return False

def sub_80DCA38_fix_uninitialized_stack_read(opcode_params, funcstate, src_file, fileline):
    if opcode_params[1] == "r6":
        funcstate.regs["r6"].set_new_reg(analyzer.RegisterInfo(datatypes.Primitive().wrap(), fileline))
    return True

def sub_80E1566_fix_sub_80E1670_return_value(opcode_params, funcstate, src_file, fileline):
    funcstate.regs["r0"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
    return True

def sub_80E72C8_fix_extra_vars_0x74_read(opcode_params, funcstate, src_file, fileline):
    if opcode_params[0] == "r0" and opcode_params[1] == "r5":
        funcstate.regs["r0"].set_new_reg(analyzer.RegisterInfo(datatypes.BattleObject().wrap(), fileline))
        return False
    return True

def sub_80E72C8_fix_misaligned_stack(opcode_params, funcstate, src_file, fileline):
    return False

def read_battle_object_jumptables():
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

    jumptables = ("T1BattleObjectJumptable", "T3BattleObjectJumptable", "T4BattleObjectJumptable")

    registers = RegisterState()
    fileline = default_fileline
    opcodes.bl_opcode.append_callback(check_stored_functions)
    opcodes.bl_opcode.append_callback(opcodes.check_spawn_battle_object)

    global function_specific_callbacks
    function_specific_callbacks.update({
        0x800EA22: (FunctionSpecificCallback(opcodes.bne_opcode, check_loc_800EA38),), # sub_800EA22
        0x810ab8c: (FunctionSpecificCallback(opcodes.ldrb_rb_imm_opcode, check_sub_810AB8C),), # sub_810AB8C
        0x80127c0: (FunctionSpecificCallback(opcodes.and_opcode, check_sub_80127C0),), # sub_80127C0
        0x800fc30: (FunctionSpecificCallback(opcodes.cmp_reg_opcode, check_sub_800FC30),), # sub_800FC30
        0x802EF74: (FunctionSpecificCallback(opcodes.ldr_rb_imm_opcode, check_sub_802EF74_ldr), # sub_802EF74
                    FunctionSpecificCallback(opcodes.tst_opcode, check_sub_802EF74_tst)),
        0x8013892: (FunctionSpecificCallback(opcodes.push_opcode, check_sub_8013892_push_r7),), # sub_8013892
        0x8002b30: (FunctionSpecificCallback(opcodes.lsl_imm_opcode, check_pointer_shift), # sprite_decompress
                    FunctionSpecificCallback(opcodes.lsr_imm_opcode, check_pointer_shift)),
        0x8000B8E: (FunctionSpecificCallback(opcodes.lsl_imm_opcode, check_pointer_shift), # decomp_initGfx_8000B8E
                    FunctionSpecificCallback(opcodes.lsr_imm_opcode, check_pointer_shift)),
        0x80EE406: (FunctionSpecificCallback(opcodes.ble_opcode, check_loc_80EE4F0),), # sub_80EE406
        0x8107E66: (FunctionSpecificCallback(opcodes.tst_opcode, sub_8107E66_hack_push_lr),), # sub_8107E66
        0x80F0700: (FunctionSpecificCallback(opcodes.pop_opcode, sub_80F0700_hack_pop_balance),), # sub_80F0700
        0x80103F8: (FunctionSpecificCallback(opcodes.mov_imm_opcode, sub_80103F8_hack_battle_obj_null),), # sub_80103F8
        0x8109D08: (FunctionSpecificCallback(opcodes.bx_opcode, sub_8109D08_bx_callback_fix),), # sub_8109D08
        0x810A94C: (FunctionSpecificCallback(opcodes.bl_opcode, check_bl_sub_80BC3B8),),
        0x800ebd4: (FunctionSpecificCallback(opcodes.ldr_rb_imm_opcode, hack_battle_state_field_0x80_object_read),), # object_getEnemyByNameRange
        0x800d3fe: (FunctionSpecificCallback(opcodes.add_sp_opcode, object_get_panel_region_set_correct_return_value),), # object_getPanelRegion
        0x80BC670: (FunctionSpecificCallback(opcodes.bne_opcode, sub_80BC670_set_r0_battle_object),), # sub_80BC670
        0x80BDB3C: (FunctionSpecificCallback(opcodes.push_opcode, sub_80BDB3C_sub_80DA68C_fix_misaligned_push),), # sub_80BDB3C
        0x80C51CC: (FunctionSpecificCallback(opcodes.pop_opcode, fix_misaligned_pop_r7_lr),), # sub_80C51CC
        0x80C57F4: (FunctionSpecificCallback(opcodes.pop_opcode, sub_80C57F4_fix_misaligned_pop),), # sub_80C57F4
        0x80C7A58: (FunctionSpecificCallback(opcodes.cmp_reg_opcode, sub_80C7A58_sub_80CAC44_ignore_cmp),), # sub_80C7A58
        0x80CAC44: (FunctionSpecificCallback(opcodes.cmp_reg_opcode, sub_80C7A58_sub_80CAC44_ignore_cmp),), # sub_80CAC44
        0x80CBB76: (FunctionSpecificCallback(opcodes.pop_opcode, fix_misaligned_pop_r7_lr),), # sub_80CBB76
        0x80CF3DC: (FunctionSpecificCallback(opcodes.pop_opcode, fix_misaligned_pop_r7_lr),), # sub_80CF3DC
        0x80DA68C: (FunctionSpecificCallback(opcodes.push_opcode, sub_80BDB3C_sub_80DA68C_fix_misaligned_push),), # sub_80DA68C
        0x80DBF04: (FunctionSpecificCallback(opcodes.pop_opcode, fix_misaligned_pop_r7_lr),), # sub_80DBF04
        0x80DCA38: (FunctionSpecificCallback(opcodes.mov_reg_opcode, sub_80DCA38_fix_uninitialized_stack_read),), # sub_80DCA38
        0x80DDC30: (FunctionSpecificCallback(opcodes.pop_opcode, fix_misaligned_pop_r7_lr),), # sub_80DDC30
        0x80E1566: (FunctionSpecificCallback(opcodes.mov_reg_opcode, sub_80E1566_fix_sub_80E1670_return_value),), # sub_80E1566
        0x80E72C8: (FunctionSpecificCallback(opcodes.ldr_rb_imm_opcode, sub_80E72C8_fix_extra_vars_0x74_read),
                    FunctionSpecificCallback(opcodes.add_sp_opcode, sub_80E72C8_fix_misaligned_stack)), # sub_80E72C8
    })

    #global global_function_tree
    #global_function_tree = run_analyzer_from_label(parser.strip_plus1(words[0]), registers, time.time())[1]
    set_template_functions()
    for jumptable in jumptables:
        src_file = parser.find_and_position_at_nonlocal_label(jumptable)
        words = parser.parse_word_directives(src_file)
        for word in words:
            if word not in function_trackers:
                registers["r0"].default_initialize(fileline)
                registers["r1"].default_initialize(fileline)
                registers["r2"].default_initialize(fileline)
                registers["r3"].default_initialize(fileline)
                registers["r4"].initialize(RegisterInfo(datatypes.Primitive(Size.BYTE).wrap(), fileline))
                registers["r5"].initialize(RegisterInfo(datatypes.BattleObject().wrap(), fileline))
                registers["r6"].initialize(RegisterInfo(datatypes.RAMPointer().wrap(), fileline))
                registers["r7"].initialize(RegisterInfo(datatypes.BattleObject(-0x10).wrap(), fileline))
                registers["r8"].default_initialize(fileline)
                registers["r9"].default_initialize(fileline)
                registers["r10"].initialize(RegisterInfo(datatypes.Toolkit().wrap(), fileline))
                registers["r12"].default_initialize(fileline)
                registers["lr"].initialize(RegisterInfo(datatypes.ProgramCounter("asm00_1.s", 99).wrap(), fileline))
                registers["sp"].initialize(RegisterInfo(datatypes.Stack().wrap(), fileline))
                registers["pc"].default_initialize(fileline)
                datatypes.Stack.datatypes = {}
                function_name = parser.strip_plus1(word)
                debug_print("function: %s" % function_name)
                run_analyzer_from_label(function_name, registers, time.time())
