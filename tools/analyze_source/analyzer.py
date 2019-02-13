class FunctionState:
    def __init__(self, registers, function):
        self.regs = registers.copy() # ignore lr and pc
        self.next_execution_point = None # (function, None)
        self.found_labels = {}
        self._function = function

    @property
    def function(self):
        return self._function

    @function.setter
    def function(self, function):
        self._function = function

class RegisterInfo:
    def __init__(self, datatype=None, fileline=default_fileline):
        if datatype is None:
            datatype = UnknownDataType().wrap()
        self.datatype = datatype
        self.fileline = fileline

class RegisterState(dict):
    default_registers = {
        "r0": [RegisterInfo()],
        "r1": [RegisterInfo()],
        "r2": [RegisterInfo()],
        "r3": [RegisterInfo()],
        "r4": [RegisterInfo()],
        "r5": [RegisterInfo()],
        "r6": [RegisterInfo()],
        "r7": [RegisterInfo()],
        "r8": [RegisterInfo()],
        "r9": [RegisterInfo()],
        "r10": [RegisterInfo()],
        "r11": [RegisterInfo()],
        "r12": [RegisterInfo()],
        "sp": [Stack()],
        "lr": [RegisterInfo()],
        "pc": [RegisterInfo()]
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
def parse_jumptable_function(label, registers):
    global global_fileline
    src_file = parser.find_and_position_at_nonlocal_label(label)
    src_file.line_num += 1
    funcstate = FunctionState(registers, syms[label])

    for line in src_file:
        if not line.startswith("\t"):
            # TODO: label logic
            split_line = line.split(":", 1)
            funcstate.found_labels[split_line[0]] = FileLine(src_file.filename, src_file.line_num)
            if len(split_line) > 1:
                line = split_line[1]
            else:
                continue

        if line.strip() == "":
            continue

        global_fileline = FileLine(src_file.filename, src_file.line_num)
        read_opcode(line, funcstate, src_file, global_fileline)
        else:

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
    parse_jumptable_function(words[0], registers)
