class FunctionState:
    def __init__(self, registers, function):
        self.regs = copy.deepcopy(registers) # ignore lr and pc
        self._function_branches = [] # (function, None)
        self._uncond_branch = ""
        self._cond_branches = {}
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
    
    @local_branch.setter
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

class CondBranch:
    __slots__ = ("registers", "line_num")
    def __init__(self, registers, line_num):
        self.registers = registers
        self.line_num = line_num

class RegisterInfo:
    def __init__(self, datatype=None, fileline=default_fileline):
        if datatype is None:
            datatype = UnknownDataType().wrap()
        self.datatype = datatype
        self.fileline = fileline

class RegisterInfoList(list):
    def __init__(self, iterable):
        list.__init__(self, iterable)

    @property
    def reg(self):
        return self[-1].datatype

class RegisterState(dict):
    default_registers = {
        "r0": RegisterInfoList(RegisterInfo(),),
        "r1": RegisterInfoList(RegisterInfo(),),
        "r2": RegisterInfoList(RegisterInfo(),),
        "r3": RegisterInfoList(RegisterInfo(),),
        "r4": RegisterInfoList(RegisterInfo(),),
        "r5": RegisterInfoList(RegisterInfo(),),
        "r6": RegisterInfoList(RegisterInfo(),),
        "r7": RegisterInfoList(RegisterInfo(),),
        "r8": RegisterInfoList(RegisterInfo(),),
        "r9": RegisterInfoList(RegisterInfo(),),
        "r10": RegisterInfoList(RegisterInfo(),),
        "r11": RegisterInfoList(RegisterInfo(),),
        "r12": RegisterInfoList(RegisterInfo(),),
        "sp": RegisterInfoList(Stack(),),
        "lr": RegisterInfoList(RegisterInfo(),),
        "pc": RegisterInfoList(RegisterInfo(),)
    }

    valid_registers = set("r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10", "r11", "r12", "sp", "lr", "pc")

    def __init__(self):
        dict.__init__(self, default_registers)

    def __init__(self, *args):
        if args is None:
            dict.__init__(self, args)
        else:
            dict.__init__(self, default_registers)

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

def run_analyzer_from_sym(sym, registers):
    src_file = scanned_files[sym.filename]
    funcstate = FunctionState(registers, sym)
    run_analyzer_common(src_file, funcstate)

# note: probably tuned towards battle objects, fix later
def run_analyzer_from_label(label, registers):
    src_file = parser.find_and_position_at_nonlocal_label(label)
    funcstate = FunctionState(registers, syms[label])
    run_analyzer_common(src_file, funcstate)

def run_analyzer_common(src_file, funcstate):
    global global_fileline
    return_lr = funcstate.regs["lr"].data
    base_stack_offset = funcstate.regs["sp"].data.offset
    return_regs = None

    while True:
        for line in src_file:
            pc_history_len = len(funcstate.regs["pc"])
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
    
            global_fileline = FileLine(src_file.filename, src_file.line_num)
            if read_opcode(line, funcstate, src_file, global_fileline):
                if len(funcstate.regs["pc"]) > pc_history_len:
                    sp_reg = funcstate.regs["sp"].data
                    lr_reg = funcstate.regs["lr"].data
                    pc_reg = funcstate.regs["pc"].data
                    possible_syms = pc_reg.possible_syms
                    if len(possible_syms) > 1:
                        if sp_reg.offset == base_stack_offset:
                            fileline_error("Tried performing jumptable at base stack offset!", global_fileline)
                        for sym in possible_syms:
                            if sym.type != "F":
                                fileline_error("Tried executing non-function symbol \"%s\"!" % sym.name, global_fileline)                        
                            result_regs = funcstate.set_registers(run_analyzer_from_sym(sym, funcstate.regs))
                        funcstate.set_registers(result_regs)
                    elif len(possible_syms) == 1:
                        if sp_reg.offset == base_stack_offset:
                            # returning from function
                            if return_lr.filename == pc_reg.filename and return_lr.line_num == pc_reg.line_num:
                                if return_regs is not None:
                                    # just use first return regs found for now
                                    return_regs = funcstate.regs
                                break
                            # not returning from function, then this is a noreturn bx or something similar
                            # I don't think this happens in mmbn6 so don't implement yet
                            else:
                                fileline_error("Tried performing noreturn branch!", global_fileline)
                        else:
                            if possible_syms[0].type != "F":
                                fileline_error("Tried executing non-function symbol \"%s\"!" % sym.name, global_fileline)
                            funcstate.set_registers(run_analyzer_from_sym(possible_syms[0], funcstate.regs))
                    else:
                        fileline_error("Tried executing function but there was none!", global_fileline)
                elif funcstate.uncond_branch != "":
                    if funcstate.uncond_branch in funcstate.found_labels:
                        # TODO: potential for loop detection here
                        funcstate.uncond_branch = ""
                        break
            else:
                fileline_error("Unknown directive \"%s\"!" % line, global_fileline)

        # now check if we have any conditional labels left
        for cond_branch in funcstate.cond_branches:
            if cond_branch not in funcstate.found_labels:
                cond_branch_info = funcstate.cond_branches[cond_branch]
                funcstate.set_registers(cond_branch_info.registers)
                src_file.line_num = cond_branch_info.line_num
                break
        else:
            if return_regs is not None:
                return_regs["pc"].append(RegisterInfo(copy.deepcopy(return_lr), global_fileline))
                return return_regs
            else:
                fileline_error("Did not find a return point in function!", global_fileline)

    """
    for line in src_file:
        if line.startswith("\t"):
            
        cond_branch_label_tuple = re.findall(cond_branches_pattern, line)
        if len(cond_branch_label_tuple) == 2:
            cond_branch_labels[cond_branch_label_tuple[1]] = BranchInfo(src_file.line_num, list(register_states))
            continue

        uncond_branch_label_tuple = re.findall(r"^\tb (\S+)", line)
        if len(uncond_branch_label_tuple) == 1:
            uncond_branch_labels[uncond_branch_label_tuple[0]] = BranchInfo(src_file.line_num, list(register_states))
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
                raise RuntimeError("Duplicate label \"%s\" found! (prev line num: %s, this line num: %s)" % (label_tuple[0], labels[label_tuple[0]], src_file.line_num))
            labels[label_tuple[0]] = src_file.line_num
    else:
        raise RuntimeError("Hit end of file while parsing jumptable function \"%s\"!" % label)
    """

def read_jumptable(jumptable):
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

    src_file = parser.find_colon_label_in_files(jumptable, input_file)
    print("line: %s" % src_file.cur_line)
    words = parse_word_directives(src_file)
    print("words: %s" % words)
    registers = RegisterState()
    registers["r5"] = "BattleObject"
    run_analyzer(words[0], registers)
