# usage: text_script_dumper <address> [<rom_file>] [-i <ini_file>]
# This will parse a textScript at the address specified, from the file specified.
# if no file is specified, it will use the default ('../../bn6f.ign')
# ini_file defaults to 'mmbn6.ini'
import configparser
import sys

# configure module state
def config(**kwargs):
    def set_configuration(key):
        if key in kwargs:
            config.dict[key] = kwargs[key]
    for key in config.dict:
        set_configuration(key)
config.dict = {
    'log': True,
    'log_file': sys.__stdout__,
    'raise_all': False,
}

def printlocals(locals, halt=False):
    s = ''
    for key in locals:
        s += '%s: %s\n' % (str(key), str(locals[key]))
    if halt:
        raise Exception(s)
    else:
        print(s)

def log(*args, **kwargs):
    if config.dict['log']:
        print(*args, **kwargs)


class TextScriptException(Exception):
    pass

class InvalidTextScriptCommandException(Exception):
    pass


def error(exception, msg, critical=True):
    """
    for debugging purposes, sometimes it's useful to see the faulty output than to
    completely halt execution. Also doubles as a logging means for those errors in that case.
    specify critical to False for an exception not to be raised.
    """
    if 'list' not in error.__dict__:
        error.list = []
    if critical or config.dict['raise_all']:
        raise exception(msg)
    error.list.append(msg)

error.list = []

# the select command is dynamic unlike any other command, so it's its own category
DYNAMIC_CMDS = [b'\xed']

# priority commands are prioritized by their input, ie. their bases are in conflict but are
# respolved with priority. this only applies to jump.
PRIORITY_CMDS = [b'\xf0']

# commands that are parsed correctly with the secondary interpreter, when they can be primary
# 0xef: this is the case in ts_check_game_version and ts_check_global, the way to know if it's
# ts_check_global is if ts_check_game_version fails
# 0xfa: print commands also have conflicts between the interpreters
# TODO 0xf2: clearMsg conflicting with printBuffer
CONFLICT_CMDS = [b'\xef', b'\xfa', b'\xf2']

# each family carries different masking
BITFIELD_CMDS = [b'\xfa\x00', b'\xf2']

class TextScript:
    def __init__(self, rel_pointers, units, addr, size, sects, sects_s):
        self.rel_pointers = rel_pointers
        self.units = units # int (link ids), tuple (command), str (bytes)
        self.addr = addr
        self.size = size
        self.sects = sects
        self.sects_s = sects_s

    def compile(self) -> bytes:
        out = b''
        # since they are hwords, a \x00 has to be appended if the pointer is < 0xFF
        for b in self.rel_pointers:
            if b > 0xFF:
                out += bytes([b & 0xFF, b >> 8])
            else:
                out += bytes([b, 0x00])
        # compile data
        for unit in self.units:
            if type(unit) == bytes:
                # game string
                out += unit
            elif type(unit) == tuple:
                cmd, params, from_sect_s = unit
                # command
                if cmd[0:2] == b'\xfa\x00':
                    # have to put the params back into the command
                    cmd_bytes = list(cmd)
                    param_bytes = list(params)
                    cmd_bytes[2] |= param_bytes[0] << 4
                    cmd_bytes[2] |= param_bytes[1] >> 4
                    cmd_bytes[3] |= (param_bytes[1] & 0xF) << 4
                    compiled_cmd = bytes(cmd_bytes)
                else:
                    compiled_cmd = bytes(cmd) + bytes(params)

                if len(compiled_cmd) != get_cmd_len(cmd, params, from_sect_s):
                    raise TextScriptException(
                        'compiling command failed due to its length not matching: %s' % (compiled_cmd))
                out += compiled_cmd
            elif type(unit) == int:
                # link id, not needed
                pass
            else:
                raise TextScriptException('invalid unit type')
        return out

    def build(self) -> (list, int):
        """
        creates the script textual output
        :return: the text output in a list of lines, and the end address
        """
        script = ['\ttext_script_start unk_%X // TODO: change this if label is named different' % self.addr]

        # assign unique ids to each pointer for reference
        rel_pointer_ids = {}
        last_pointer = 0
        i = 0
        for p in sorted(self.rel_pointers):
            if p != last_pointer:
                rel_pointer_ids[p] = i
                i += 1
            last_pointer = p

        # build rel. pointer macros
        rel_pointers_macro = ''
        item_idx = 0
        for p in self.rel_pointers:
            # new macro every 16 items
            if item_idx % 16 == 0:
                if len(rel_pointers_macro) > 2:
                    rel_pointers_macro = rel_pointers_macro[:-2]
                rel_pointers_macro += '\n\ttext_script_rel_pointers '
            rel_pointers_macro += '%d, ' % rel_pointer_ids[p]
            item_idx += 1
        rel_pointers_macro = rel_pointers_macro[:-2] # remove tail ', '
        script.append(rel_pointers_macro)

        # build units
        for unit in self.units:
            if type(unit) is bytes:
                if len(unit) == 1 and unit[0] == 0xE6:
                    s = get_cmd_macro(unit, b'', self.sects, self.sects_s, False)
                else:
                    s = '.string "%s"' % bn6f_str(unit, get_tbl())
                if s == '':
                    raise TextScriptException('invalid string output for %s' % unit)
                script.append('\t' + s)
            elif type(unit) is tuple:
                cmd, params, from_sect_s = unit
                name = get_cmd_macro(cmd, params, self.sects, self.sects_s, from_sect_s)
                s = '%s ' % name
                for i in range(len(params)):
                    # jump commands go to a linked script
                    if 'jump' in name.lower() and i == 0:
                        s += '%d, ' % params[i]
                    else:
                        s += '0x%X, ' % params[i]
                if params: s = s[:-2]
                s = s.rstrip()
                if s == '':
                    raise TextScriptException('invalid string output for %s' % unit)
                script.append('\t' + s)
            elif type(unit) is int:
                script.append('\n\ttext_script %d, scr_%d' % (unit, unit))
            else:
                raise TextScriptException('invalid unit type')

        # text scripts are always aligned by 4
        script.append('\n\t.balign 4, 0')

        return script, self.addr + self.size

def read_custom_ini(ini_path):

    # type: (str) -> list(dict(str, str))
    sections = []
    with open(ini_path, 'r') as ini_file:
        for line in ini_file.readlines():
            # section
            if line.startswith('[') and ']' in line:
                sections.append({})
                sections[-1]['section'] = line[line.index('[')+1:line.index(']')]
            elif '=' in line:
                key = line[:line.index('=')].strip()
                val = line[line.index('=')+1:].strip()
                sections[-1][key] = val
    return sections


def get_tbl(path='../../constants/bn6-charmap.tbl'):
    if 'tbl' in get_tbl.__dict__.keys():
        return get_tbl.tbl
    tbl = []
    with open(path, 'r', encoding='utf-8') as f:
        for line in f.readlines():
            if '=' in line:
                lhs = line[:line.index('=')].strip()
                rhs = line[line.index('=')+1:].strip()
                if rhs == '': rhs = ' ' # space would be filtered out
                if len(lhs) == 2:
                    tbl.append(rhs)
                elif lhs == 'E400':
                    tbl.append(' ')
                    break
    for i in range(len(tbl), 0xEA):
        tbl.append('\\x%X' % i)

    tbl[0xE6] = '$'
    tbl[0xE9] = '\\n'
    get_tbl.tbl = tbl

    return tbl


def bn6f_str(byte_arr, tbl):
    out = ''
    for byte in byte_arr:
        # byte code
        if byte > len(tbl):
            break
        if tbl[byte] == '"':
            out = out + '\\"'
        else:
            out = out + tbl[byte]
    return out


def read_relative_pointers(bin_file, address):
    def read_hword(bin_file):
        bytes = bin_file.read(2)
        return bytes[0] + (bytes[1] << 8)
    # assuming first relative pointer is first script
    size_rel_pointers = read_hword(bin_file)
    rel_pointers = [size_rel_pointers]
    while bin_file.tell() < address + size_rel_pointers:
        rel_pointers.append(read_hword(bin_file))
    return rel_pointers


def valid_cmd_base(cmd, sect):
    if sect['section'] not in ['Command', 'Extension']:
        return False
    cmd_bytes = list(cmd)
    mask = [int(b, 16) for b in sect['mask'].split(' ')]
    base = [int(b, 16) for b in sect['base'].split(' ')]
    # must contain enough information for the base
    if len(cmd_bytes) < len(base):
        return False
    # clear cmd_bytes by mask to remove parameters
    for i in range(len(base)):
        cmd_bytes[i] &= mask[i]

    # if it's a priority command, then it can have more bytes than base
    if cmd_bytes[0] == 0xF0:
        return cmd_bytes[:len(base)] == base
    # confirm it matches with the base
    return len(cmd_bytes) == len(base) and cmd_bytes[:len(base)] == base


def find_valid_cmd_base(cmd, sects):
    for sect in sects:
        if valid_cmd_base(cmd, sect):
            return True, sect
    return False, None

def get_param_count(cmd, sect):
    if sect['section'] in ['Command', 'Extension']:
        if valid_cmd_base(cmd, sect):
            nzeros = sect['mask'].count('0')
            if nzeros % 2 == 0:
                return nzeros // 2
            elif len(cmd) > 2 and cmd[0:2] == b'\xfa\x00' and nzeros == 3:
                # weird bitfield case... only 3 zeros are supported
                return 1.5
            else:
                raise NotImplemented('multiple bitfield paramters are unsupported')
    return -1

def find_param_count(cmd, sects):
    """
    mostly, the number of parameters is simply the number of unmasked bytes if the command
    matches. This is not true for odd numbers of zero nibbles: bitfield paramters.
    An assumption is made that the smallest field always comes first.
    So 00 0F would be 2 fields, a 4-bit field x and 8-bit field y: xy yF
    :raises NotImplemented: for multiple bitfield paramaters
    """
    for sect in sects:
        num_params = get_param_count(cmd, sect)
        if num_params != -1:
           return num_params, sect
    return -1, None


def valid_cmd(cmd, params, sect):
    if sect['section'] in ['Command', 'Extension']:
        # ensure parameters match, unless it's a command with dynamic parameters
        valid_params = lambda: bytes(cmd) in DYNAMIC_CMDS or len(params) == get_param_count(cmd, sect) or get_param_count(cmd, sect) == 1.5
        if valid_cmd_base(cmd, sect) and valid_params():
            return True
    return False



def find_cmd(cmd, params, sects):
    for sect in sects:
        if valid_cmd(cmd, params, sect):
            return sect
    return None


def get_cmd_len(cmd, params, from_sect_s):
    # 0xFA bitfield commands span have parameters in base length
    if cmd[0:1] == b'\xfa' and cmd[0:2] == b'\xfa\x00' and len(cmd) == 4 and not from_sect_s:
        return len(cmd)
    else:
        return len(cmd) + len(params)


def convert_cmd_name(name: str) -> str:
    name = 'ts_' + name
    # convert to snake case
    for c in name:
        if c.isupper():
            name = name.replace(c, '_%c' % c.lower())
    return name

def get_cmd_macro(cmd, params, sects, sects_s, prioritize_s):
    """
    gets the command macro given a full description of the command (all bytes involving the set mask)
    :param sects: array of dictionaries representing ini specs of commands
    :param cmd: byte array that must contain at least
    :param sects_s: for commands running the alternatsects.erpreter. This is always prioritized over sects.
    :return: string representing the macro for the command
    """
    select_sects = lambda select: [sects, sects_s][select]
    sect = find_cmd(cmd, params, select_sects(prioritize_s))
    if not sect:
        sect = find_cmd(cmd, params, select_sects(not prioritize_s))
    if not sect:
        error(InvalidTextScriptCommandException,
              'could not find command %s %s' % (str(cmd), str(params)),
              critical=False)
    name = convert_cmd_name(sect['name']) # converts to snake case and add ts_
    if not name:
        error(InvalidTextScriptCommandException,
              'no name exists for the cmd ' + str(cmd) + ' ' + str(params),
              critical=False)
        name = '.byte '
        for b in cmd:
            name += hex(b) + ', '
        if name.endswith(', '):
            name = name[:-2]
        name += ' // ***ERROR***'
    return name.strip()


def read_cmd_from_sects(bin_file, cmd, sects):
    """
    if this function fails to read a valid command, it rewinds the bin_file
    :param bin_file: bin file to read the command from
    :param cmd: first byte of the command
    :param sects: sections to use to identify the command
    :return: cmd, params if found or None
    """
    rewind_addr = bin_file.tell()
    num_params = -1

    # some commands are prioritized by their input (really just jump_random)
    # so, automatically get the input to determine if it's really that command, or another one
    # (like jump)
    if cmd in PRIORITY_CMDS:
        cmd += bin_file.read(1)
    for i in range(4):  # max number of base bytes per command
        num_params, sect = find_param_count(cmd, sects)
        if num_params >= 0:
            break
        else:
            byte = bin_file.read(1)
            cmd = cmd + byte


    # valid command found
    if num_params >= 0:
        # no priority commands, go with default (jump_random)
        if cmd[0:1] in PRIORITY_CMDS and cmd[1] >= 3:
            params = cmd[1:2]
            cmd = cmd[:1]
        # bitfield commands, prints
        elif num_params == 1.5:
            # params are already part of the command
            # pattern: FF FF ... FF 00 0F
            params = bytes([cmd[2] >> 4, ((cmd[2]<<4)&0xFF)|(cmd[3]>>4)])  # X0 0, 0X X
            cmd = bytes([cmd[0], cmd[1], 0x00, cmd[3]&0xF])
        # parse cmd and params
        elif num_params >= 0:
            params = bin_file.read(num_params)
        # command not detected
        else:
            params = []
            error(InvalidTextScriptCommandException, 'invalid num_parameters states detected at %s' % cmd)

        # edge case: select command is dynamic. assumed dynamic until it encounters a command or after
        # 3 additional parameters. Values allowed are <E5 and FF
        if cmd[0:1] in DYNAMIC_CMDS:
            for i in range(3):
                byte = bin_file.read(1)
                if byte != b'\xff' and byte >= b'\xe5':
                    # rewind, doesn't belong to this dynamic command
                    bin_file.seek(bin_file.tell() - 1)
                    break
                else:
                    params += byte

        return cmd, params
    else:
        # no command found
        bin_file.seek(rewind_addr)
        return None


def read_cmd(bin_file, cmd, sects, sects_s, prioritize_s):
    """
    attempts to read the command on both interpreters, given priority
    """
    select_sects = lambda select: [sects, sects_s][select]
    out = read_cmd_from_sects(bin_file, cmd, select_sects(prioritize_s))
    interpreter_used = prioritize_s
    if not out:
        out = read_cmd_from_sects(bin_file, cmd, select_sects(not prioritize_s))
        interpreter_used = not prioritize_s
    if not out:
        raise InvalidTextScriptCommandException(
              'invalid cmd %s detected at 0x%x' % (cmd, bin_file.tell()))
    return out[0], out[1], interpreter_used


def parse_text_script(address, bin_file, sects, sects_s):
    #type (str, str, int) -> str

    units = [] # text script discrete string/cmd units
    bin_file.seek(address)
    rel_pointers = read_relative_pointers(bin_file, address)
    last_script_pointer = max(rel_pointers)
    end_script = False

    while bin_file.tell() < address + last_script_pointer or not end_script:
        if bin_file.tell() == 0x6c6b30: break
        #advance bytecode
        byte = bin_file.read(1)
        # read string
        string = b''
        while byte and (ord(byte) < 0xE5 or ord(byte) == 0xE6 or ord(byte) == 0xE9):
            # not a command, process string
            string = string + byte
            # separate strings by line or rel. pointers
            if ord(byte) == 0xE9 or bin_file.tell() in rel_pointers:
                units.append(string)
                string = b''
            if ord(byte) == 0xE6:
                # FIXME: skips last commands in last script if they don't end in e6?
                end_script = bin_file.tell() > address+last_script_pointer
                break # this string terminates
            byte = bin_file.read(1)

        if string:
            units.append(string)
        if byte == b'':
            error(TextScriptException, 'error: reached end of file before script end', critical=True)
            break
        # current bytecode command
        cmd = byte
        if ord(cmd) == 0xE6:
            continue # accounted for in string

        # handle control commands
        # only end script at the end of the very last segment
        if not end_script:
            end_script = bin_file.tell() > address+last_script_pointer and ord(cmd) == 0xE6

        # read command, this can be using either interpreters, but sometimes it can lead to conflicts
        if cmd in CONFLICT_CMDS:
            # check if there's a 0xFF in the hypothetical parameters of the command, this is a way
            # to tell if this a ts_check_global or ts_check_game_version
            if cmd == b'\xef':
                if b'\xff' in bin_file.read(5):
                    bin_file.seek(bin_file.tell() - 5) # rewind
                    units.append(read_cmd(bin_file, cmd, sects, sects_s, prioritize_s=False))
                else:
                    units.append(read_cmd(bin_file, cmd, sects, sects_s, prioritize_s=True))
            else:
                units.append(read_cmd(bin_file, cmd, sects, sects_s, prioritize_s=False))
        else:
            units.append(read_cmd(bin_file, cmd, sects, sects_s, prioritize_s=True))
    end_addr = bin_file.tell()

    # link relative pointers into units
    cur_idx = 2*len(rel_pointers)
    prev_idx = cur_idx
    unique_rel_pointers = sorted(list(set(rel_pointers)))
    used_rel_pointers = []
    linked_units = []
    prev_unit = None
    for unit in units:
        if type(unit) != int:
            for i in range(len(unique_rel_pointers)):
                # v false logic, inverted
                if prev_idx < unique_rel_pointers[i] < cur_idx:
                    if type(prev_unit) == tuple:
                        error(TextScriptException,
                              'found rel. pointer %d (%xh<%xh<%xh) in element %s %s'
                              % (i, prev_idx, unique_rel_pointers[i], cur_idx,
                                 get_cmd_macro(prev_unit[0], prev_unit[1], sects, sects_s, prev_unit[2]),
                                 str(prev_unit)),
                              critical=False)
                    elif type(prev_unit) == bytes:
                        error(TextScriptException,
                              'found rel. pointer %d (%xh<%xh<%xh) in element "%s"'
                              % (i, prev_idx, unique_rel_pointers[i], cur_idx,
                                 bn6f_str(list(prev_unit), get_tbl())),
                              critical=False)
                    else:
                        error(TextScriptException, 'invalid unit state while linking')
                if cur_idx == unique_rel_pointers[i]:
                    linked_units.append(i)
                    used_rel_pointers.append(i)
                    break
        linked_units.append(unit)

        # compute new cur_idx and store prev_idx
        prev_idx = cur_idx
        if type(unit) is bytes:
            cur_idx += len(unit)
        elif type(unit) is tuple:
            cur_idx += get_cmd_len(unit[0], unit[1], unit[2])
        elif type(unit) is int:
            pass
        else:
            raise InvalidTextScriptCommandException('invalid unit detected: %s' % unit)

        prev_unit = unit
    units = linked_units

    if len(used_rel_pointers) != len(unique_rel_pointers):
        error(TextScriptException, 'did not link all rel. pointers (%d missing).'
              % (len(rel_pointers) - len(used_rel_pointers)),
              critical=False)

    # create Script object
    return TextScript(rel_pointers, units, address, end_addr-address,sects, sects_s)

def get_unit_at(scr: TextScript, idx):
    curr_idx = 2*len(scr.rel_pointers)
    prev_idx = curr_idx
    prev_unit = scr.units[0]
    for unit in scr.units:
        if type(unit) != int:
            if prev_idx < idx < curr_idx:
                return prev_unit, prev_idx
            if idx == curr_idx:
                return unit, curr_idx
            prev_idx = curr_idx
            prev_unit = unit
            if type(unit) is bytes:
                curr_idx += len(unit)
            elif type(unit) is tuple:
                curr_idx += len(unit[0]) + len(unit[1])
            else:
                raise InvalidTextScriptCommandException('invalid unit detected: %s' % unit)
    return None


def read_script(ea: int, bin_file, ini_path='./', fault=False) -> TextScript:
    # ensure ea is file relative
    ea &= ~0x8000000

    if not ini_path.endswith('/'):
        ini_path += '/'

    error.list = []
    sects = read_custom_ini(ini_path + 'mmbn6.ini')
    sects_s = read_custom_ini(ini_path + 'mmbn6s.ini')
    scr = parse_text_script(ea, bin_file, sects, sects_s)
    return scr


def gen_macros(config_ini_path):
    sects = read_custom_ini(config_ini_path)
    # TODO: generate correct dynamic ts_select
    macros = ''
    for sect in sects:
        if sect['section'] in ['Command', 'Extension']:
            base = []
            mask = []
            for b in sect['base'].split(' '): base.append(int(b, 16))
            for b in sect['mask'].split(' '): mask.append(int(b, 16))
            name = 'ts_'  + sect['name']
            # convert to snake case
            for c in name:
                if c.isupper():
                    name = name.replace(c, '_%c' % c.lower())
            # figure out how many parameters
            params = ''
            i = 0
            for b in mask:
                if b != 0xFF:
                    params += 'p%d:req, ' % i
                    i += 1
            if params.endswith(', '): params = params[:-2]
            macros += '.macro %s %s\n' % (name, params)
            # define base bytes
            bytes = '.byte '
            for b in base:
                bytes += '0x%X, ' % b
            bytes += params.replace('p', '\p').replace(':req', '')
            if bytes.endswith(', '): bytes = bytes[:-2]
            macros += '\t' + bytes + '\n'
            macros += '.endm\n'
    return macros

def error_print_usage():
    print('usage: text_script_dumper <address> [-i <rom_file>] [-d <ini_dir>]')
    exit(0)

def try_parse_int(s, b):
    try:
        return int(s, b)
    except ValueError:
        return None

def parse_switch(argv, i, flag):
    if argv[i] == flag:
        if len(argv) > i + 1:
            return argv[i + 1]
        else:
            error_print_usage()
    else:
        return None

def main(argv):

    # print(gen_macros('mmbn6.ini'))
    # exit(0)
    if len(argv) < 2:
        error_print_usage()

    address = try_parse_int(argv[1], 16)
    if address is None:
        error_print_usage()

    # parse optional arguments
    path = ini_dir = ''
    if len(argv) > 3:
        for i in range(2,len(argv)):
            arg = parse_switch(argv, i, '-i')
            if arg:
                print(arg)
                path = arg
                continue
            arg = parse_switch(argv, i, '-d')
            if arg:
                ini_dir = arg
                continue

    # defaults
    if not path:
        path = '../../bn6f.ign'
    if not ini_dir:
        ini_dir = './'
    if ini_dir and ini_dir[-1] != '/':
        ini_dir = ini_dir + '/'

    with open(path, 'rb') as f:
        script, end_addr = read_script(int(sys.argv[1], 16), f, ini_dir).build()
    for i in script:
        print(i)
    print(hex(end_addr))
    for e in error.list:
        print('error: ' + e)


if __name__ == '__main__':
    #import os; print(os.getcwd())
    import sys
    import codecs

    # in case the default encoding doesn't support utf8
    sys.stdout = codecs.getwriter('utf8')(sys.stdout.buffer)

    # sys.argv[1] = '6C580C' # TextScriptChipTrader86C580C
    sys.argv[1] = '6C67E4' # TextScriptLottery86C67E4

    main(sys.argv)
