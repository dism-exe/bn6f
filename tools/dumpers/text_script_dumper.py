import configparser

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

def get_tbl():
    tbl = [' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
           'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '*',
           'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
           'u', 'v', 'w', 'x', 'y', 'z', '[RV]', '[BX]', '[EX]', '[SP]', '[FZ]']
    for i in range(len(tbl), 0xEA):
        tbl.append('\\x%X' % i)
    symbols = ['-', 'x', '=', ':', '%', '?', '+', '[]', '[bat]', '\\xA1', '!', '&', ',', '\\xA5',
               '.', '\\xA7', ';', '\'', '"', '~', '/', '(', ')', '\\xAF', '\\xB0', '\\xB1', '_', '[z]',
               '[L]', '[B]', '[R]', '[A]']
    for i in range(0x98, 0xB8):
        tbl[i] = symbols[i-0x98]
    tbl[0xE6] = '$'
    tbl[0xE9] = '\\n'
    return tbl

def bn6f_str(byte_arr, tbl):
    out = ''
    for byte in byte_arr:
        # byte code
        if byte > len(tbl):
            break
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


def get_param_count(sects, cmd):
    cmd_bytes = []
    num_bytes = -1
    for b in cmd: cmd_bytes.append(b)
    for sect in sects:
        if sect['section'] in ['Command', 'Extension']:
            base = []
            for b in sect['base'].split(' '): base.append(int(b, 16))
            if base == cmd_bytes:
                return sect['mask'].split(' ').count('00')
    return num_bytes


def get_cmd_macro(sects, cmd):
    name = ''
    cmd_bytes = []
    for c in cmd: cmd_bytes.append(c)
    for sect in sects:
        if sect['section'] in ['Command', 'Extension']:
            base = []
            for b in sect['base'].split(' '): base.append(int(b, 16))

            if cmd_bytes == base:
                name = 'ts_'  + sect['name']
    # convert to snake case
    for c in name:
        if c.isupper():
            name = name.replace(c, '_%c' % c.lower())
    return name

def parse_text_script(config_ini_path, bin_path, address):
    #type (str, str, int) -> str
    sects = read_custom_ini(config_ini_path)
    units = [] # text script discrete string/cmd units
    rel_pointers = []
    end_addr = 0
    script_cur = 0
    with open(bin_path, 'rb') as bin_file:
        bin_file.seek(address)
        rel_pointers = read_relative_pointers(bin_file, address)
        last_script_pointer = max(rel_pointers)
        end_script = False
        while bin_file.tell() < address + last_script_pointer or not end_script:
            # define script start
            if bin_file.tell() - address in rel_pointers:
                units.append(script_cur)
                script_cur += 1
            byte = bin_file.read(1)
            # read string
            string = b''
            while byte and ord(byte) < 0xE5 or ord(byte) == 0xE6 or ord(byte) == 0xE9:
                # not a command, process string
                string = string + byte
                # separate strings by line
                if ord(byte) == 0xE9:
                    units.append(string)
                    string = b''
                if ord(byte) == 0xE6:
                    # FIXME: skips last commands in last script if they don't end in e6
                    end_script = bin_file.tell() > address+last_script_pointer
                    break # this string terminates
                byte = bin_file.read(1)
            if string:
                units.append(string)
            if byte == b'':
                print('error: could not read byte')
                break
            cmd = byte
            if ord(cmd) == 0xE6:
                continue # accounted for in string
            if not end_script:
                end_script = bin_file.tell() > address+last_script_pointer and ord(cmd) == 0xE6
            # read command
            num_params = 0
            for i in range(4): # max number of bytes per command base
                num_params = get_param_count(sects, cmd)
                # print(cmd, num_params)
                if num_params >= 0:
                    break
                byte = bin_file.read(1)
                cmd = cmd + byte
            if num_params < 0:
                print("error: could not find number of parameters for ", cmd)
                break
            params = bin_file.read(num_params)
            units.append((cmd, params))
        end_addr = bin_file.tell()

    # generate script
    script = ['text_script_start unk_%X' % address]
    rel_pointer_ids = {}
    last_pointer = 0
    i = 0
    for p in sorted(rel_pointers):
        if p != last_pointer:
            rel_pointer_ids[p] = i
        last_pointer = p
        i+= 1
    rel_pointers_macro = ''
    for p in rel_pointers:
        if rel_pointer_ids[p] % 16 == 0:
            if rel_pointers_macro:
                rel_pointers_macro = rel_pointers_macro[:-2]
            rel_pointers_macro += '\ntext_script_rel_pointers '
        rel_pointers_macro += '%d, ' % rel_pointer_ids[p]
    rel_pointers_macro = rel_pointers_macro[:-2]
    script.append(rel_pointers_macro)
    for unit in units:
        # print(unit)
        if type(unit) is bytes:
            if len(unit) == 1 and unit[0] == 0xE6:
                s = '\t' + get_cmd_macro(sects, unit)
            else:
                s = '\t.string "%s"' % bn6f_str(unit, get_tbl())
            script.append(s)
        elif type(unit) is tuple:
            name = get_cmd_macro(sects, unit[0])
            s = '\t%s ' % name
            for param in unit[1]:
                s += '0x%X, ' % param
            if unit[1]: s = s[:-2]
            script.append(s)
        elif type(unit) is int:
            script.append('text_script %d, scr_%d' %(unit, unit))

    return script, end_addr

def read_script(ea, path=None):
    if not path: path = '../../bn6f.ign'
    script, end_addr = parse_text_script('mmbn6.ini', path, ea)
    return script, end_addr

def gen_macros(config_ini_path):
    sects = read_custom_ini(config_ini_path)
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

if __name__ == '__main__':
    # print(gen_macros('mmbn6.ini'))
    # exit(0)
    import sys
    if len(sys.argv) < 2:
        print('usage: text_script_dumper <address> [file]')
    if len(sys.argv) > 2:
        path = sys.argv[2]
    else:
        path = None
    script, end_addr = read_script(int(sys.argv[1], 16), path)

    for i in script:
        print('    ' + i.replace('\t', '    '))
    print(hex(end_addr))