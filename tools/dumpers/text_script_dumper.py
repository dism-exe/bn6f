# usage: text_script_dumper <address> [<rom_file>] [-i <ini_file>]
# This will parse a textScript at the address specified, from the file specified.
# if no file is specified, it will use the default ('../../bn6f.ign')
# ini_file defaults to 'mmbn6.ini'
import configparser

class TextScript:
    def __init__(self, rel_pointers, units, addr, size, sects):
        self.rel_pointers = rel_pointers
        self.units = units
        self.addr = addr
        self.size = size
        self.sects = sects

    @staticmethod
    def compile():
        pass # TODO

    def build(self):
        script = ['\ttext_script_start unk_%X' % self.addr]

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
            # print(unit)
            if type(unit) is bytes:
                if len(unit) == 1 and unit[0] == 0xE6:
                    s = get_cmd_macro(self.sects, unit)
                else:
                    s = '.string "%s"' % bn6f_str(unit, get_tbl())
                script.append('\t' + s)
            elif type(unit) is tuple:
                name = get_cmd_macro(self.sects, unit[0])
                s = '%s ' % name
                for i in range(len(unit[1])):
                    param = unit[1][i]
                    # jump commands go to a linked script
                    if 'jump' in name.lower() and i == 0:
                        s += '%d, ' % param
                    else:
                        s += '0x%X, ' % param
                if unit[1]: s = s[:-2]
                script.append('\t' + s)
            elif type(unit) is int:
                script.append('\n\ttext_script %d, scr_%d' % (unit, unit))

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

    # for c in tbl: print(c);
    # exit(0)

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


def cmd_matches(cmd_bytes, sect):
    if sect['section'] not in ['Command', 'Extension']: return False
    mask = [int(b, 16) for b in sect['mask'].split(' ')]
    base = [int(b, 16) for b in sect['base'].split(' ')]
    # must contain enough information for the base
    if len(cmd_bytes) < len(base): return False
    # clear cmd_bytes by mask to remove parameters
    for i in range(len(base)):
        cmd_bytes[i] &= mask[i]
    # confirm it matches with the base
    return cmd_bytes[:len(base)] == base


def get_param_count(sects, cmd):
    """
    mostly, the number of parameters is simply the number of unmasked bytes if the command
    matches. This is not true for odd numbers of zero nibbles: bitfield paramters.
    An assumption is made that the smallest field always comes first.
    So 00 0F would be 2 fields, a 4-bit field x and 8-bit field y: xy yF
    :raises NotImplemented: for multiple bitfield paramaters
    """
    num_bytes = -1
    cmd_bytes = [b for b in cmd]
    for sect in sects:
        if sect['section'] in ['Command', 'Extension']:
            if cmd_matches(cmd_bytes, sect):
                nzeros = sect['mask'].count('0')
                if nzeros % 2 == 0:
                    return nzeros//2
                elif nzeros == 3:
                    # weird bitfield case... only 3 zeros are supported
                    return 1.5
                else:
                    raise NotImplemented('multiple bitfield paramters are unsupported')
    return num_bytes


def get_cmd_macro(sects, cmd, altSects=None):
    """
    gets the command macro given a full description of the command (all bytes involving the set mask)
    :param sects: array of dictionaries representing ini specs of commands
    :param cmd: byte array that must contain at least
    :param altSects: some commands differ based on the engine. altSect is the representation of
                    the ini file of the said commands. The function will always look for a conflict
                    and uses the definition from the altSects if found, otherwise it will use
                    sects
    :return: string representing the macro for the command
    """
    # TODO: implement altSects functionality
    name = ''
    cmd_bytes = [c for c in cmd]
    for sect in sects:
        if sect['section'] in ['Command', 'Extension']:
            if cmd_matches(cmd_bytes, sect):
                name = 'ts_'  + sect['name']
                break
    # convert to snake case
    for c in name:
        if c.isupper():
            name = name.replace(c, '_%c' % c.lower())
    if not name:
        name = '.byte '
        for b in cmd:
            name += hex(b) + ', '
        if name.endswith(', '):
            name = name[:-2]
        name += ' // ***ERROR***'
    return name


def parse_cmd(bin_file, cmd, sects):
    num_params = 0
    # some commands are prioritized by their input (really just jump_random)
    # so, automatically get the input to determine if it's really that command, or another one
    # (like jump)
    if cmd in [b'\xf0']:
        cmd += bin_file.read(1)
    for i in range(4):  # max number of base bytes per command
        num_params = get_param_count(sects, cmd)
        # print(cmd, num_params)
        if num_params >= 0:
            break
        else:
            byte = bin_file.read(1)
            cmd = cmd + byte

    # no priority commands, go with default (jump_random)
    if cmd[0] in [b'\xf0'] and num_params == 0:
        params = [cmd[1]]
        cmd = cmd[:1]
    # parse cmd and params
    elif num_params >= 0:
        params = bin_file.read(num_params)
    elif num_params == 1.5:
        # params are already part of the command
        # pattern: FF FF ... FF 00 0F
        params = [cmd[-2] >> 4, cmd[-2] << 4 | cmd[-1] >> 4]
    else:
        params = []
        print('error: invalid cmd detected %s' % cmd)

    # edge case: select command is dynamic. assumed dynamic until it encounters a command or after
    # 3 additional parameters. Values allowed are <E5 and FF
    if cmd[0] in [0xED]:
        for i in range(3):
            byte = bin_file.read(1)
            if byte != b'\xff' and byte >= b'\xe5':
                # rewind, doesn't belong to this dynamic command
                bin_file.seek(bin_file.tell()-1)
                break
            else:
                params += byte

    return cmd, params


def parse_text_script(config_ini_path, bin_path, address):
    #type (str, str, int) -> str
    sects = read_custom_ini(config_ini_path)
    units = [] # text script discrete string/cmd units
    rel_pointers = []
    end_addr = 0
    with open(bin_path, 'rb') as bin_file:
        bin_file.seek(address)
        rel_pointers = read_relative_pointers(bin_file, address)
        # for p in rel_pointers: print('0x%02X' % p + ', ', end='');
        # print('')
        last_script_pointer = max(rel_pointers)
        end_script = False

        while bin_file.tell() < address + last_script_pointer or not end_script:
            #advance bytecode
            byte = bin_file.read(1)
            # read string
            string = b''
            while byte and (ord(byte) < 0xE5 or ord(byte) == 0xE6 or ord(byte) == 0xE9):
                # not a command, process string
                string = string + byte
                # separate strings by line
                if ord(byte) == 0xE9:
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
                print('error: reached end of file before script end')
                break
            # current bytecode command
            cmd = byte
            if ord(cmd) == 0xE6:
                continue # accounted for in string

            # handle control commands
            # only end script at the end of the very last segment
            if not end_script:
                end_script = bin_file.tell() > address+last_script_pointer and ord(cmd) == 0xE6

            # read command parameters
            units.append(parse_cmd(bin_file, cmd, sects))
        end_addr = bin_file.tell()

    # link relative pointers into units
    cur_idx = 2*len(rel_pointers)
    cur_id = 0
    linked_units = []
    for unit in units:
        if cur_idx in rel_pointers:
            linked_units.append(cur_id)
            cur_id += 1
        linked_units.append(unit)
        if type(unit) is bytes:
            cur_idx += len(unit)
        elif type(unit) is tuple:
            cur_idx += len(unit[0]) + len(unit[1])
        else:
            print('error: invalid unit detected: %s' % unit)
    units = linked_units

    # create Script object
    return TextScript(rel_pointers, units, address, end_addr-address,sects)

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
                print('error: invalid unit detected: %s' % unit)
                return None
    return None


def read_script(ea, path='../../bn6f.ign', ini_path='mmbn6.ini'):
    # ensure ea is file relative
    ea &= ~0x8000000
    scr = parse_text_script(ini_path, path, ea)
    return scr.build()


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
        if len(argv) > i+1:
            return argv[i+1]
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
    if not path: path = '../../bn6f.ign'

    if ini_dir and ini_dir[-1] != '/':
        ini_dir = ini_dir + '/'
    ini_path = ini_dir + 'mmbn6.ini'

    script, end_addr = read_script(int(sys.argv[1], 16), path, ini_path)

    for i in script: print(i)
    print(hex(end_addr))


if __name__ == '__main__':
    #import os; print(os.getcwd())
    import sys; main(sys.argv)
