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
    for i in range(len(tbl), 0xE5):
        tbl.append('\\x%X' % i)
    symbols = ['-', 'x', '=', ':', '%', '?', '+', '[]', '[bat]', '\xA1', '!', '&', ',', '\xA5',
               '.', '\xA7', ';', '\'', '"', '~', '/', '(', ')', '\xAF', '\xB0', '_', '[z]',
               '[L]', '[B]', '[R]', '[A]']
    for i in range(0x98, 0xB7):
        tbl[i] = symbols[i-0x98]
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
                name = '%x_' % cmd_bytes[0] + sect['name']

    return name
    pass


def parse_text_script(config_ini_path, bin_path, address):
    #type (str, str, int) -> str
    sects = read_custom_ini(config_ini_path)
    units = [] # text script discrete string/cmd units
    rel_pointers = []
    end_addr = 0
    with open(bin_path, 'rb') as bin_file:
        bin_file.seek(address)
        rel_pointers = read_relative_pointers(bin_file, address)
        last_script_pointer = max(rel_pointers)
        end_script = False
        while bin_file.tell() < address + last_script_pointer or not end_script:
            byte = bin_file.read(1)
            # read string
            string = b''
            while byte and ord(byte) < 0xE5:
                # not a command, process string
                string = string + byte
                byte = bin_file.read(1)
            if string:
                units.append(string)
                # print(units[-1])
            if byte == b'': break
            cmd = byte
            end_script = bin_file.tell() > address+last_script_pointer and ord(cmd) == 0xE6
            # read command
            num_params = 0
            for i in range(4): # max number of bytes per command base
                num_params = get_param_count(sects, cmd)
                # print(cmd, num_params)
                if num_params >= 0: break
                byte = bin_file.read(1)
                cmd = cmd + byte
            if num_params < 0: break
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
    start_unit = True
    script_count = 0
    for unit in units:
        print(unit)
        if start_unit:
            script.append('text_script %d, unk_%d' %(script_count, script_count))
            script_count += 1
            start_unit = False
        if type(unit) is bytes:
            s = '\t// %s\n' % bn6f_str(unit, get_tbl())
            s += '\t.byte '
            for i in unit:
                s += '0x%X, ' % i
            s = s[:-2]
            script.append(s)
        elif type(unit) is tuple:
            if unit[0] == b'\xe6':
                start_unit = True
            name = get_cmd_macro(sects, unit[0])
            s = '\t%s ' % name
            for param in unit[1]:
                s += '0x%X, ' % param
            if unit[1]: s = s[:-2]
            script.append(s)

    return script, end_addr

def read_script():
    # script, end_addr = parse_text_script('mmbn6.ini', '../../bn6f.gba', 0x6cf4ac)
    script, end_addr = parse_text_script('mmbn6.ini', '../../bn6f.gba', 0x6EB354)
    # script, end_addr = parse_text_script('mmbn6.ini', '../../data/scripts/compScripts_credits_86C4B58.lz77.bin', 2)
    return script, end_addr


if __name__ == '__main__':
    read_script()