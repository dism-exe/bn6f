import os
import sys
import configparser
import definitions


def read_custom_ini(ini_path: str) -> list:
    # type: (str) -> list(dict(str, str))
    sections = []
    with open(ini_path, 'r') as ini_file:
        for line in ini_file.readlines():
            # section
            if line.startswith('[') and ']' in line:
                sections.append({})
                sections[-1]['section'] = line[line.index('[') + 1:line.index(']')]
            elif '=' in line:
                key = line[:line.index('=')].strip()
                val = line[line.index('=') + 1:].strip()
                sections[-1][key] = val
    return sections

class CommandSectionsException(Exception): pass
class CommandSections:
    @staticmethod
    def read_custom_ini_commands(config_ini_path):
        """
        scans for all sectors in the ini, and picks everything between two Commands or a Command and an Extension
        as belonging to that command
        :param config_ini_path: the path to the command database ini in question
        :return: List of Lists of sections representing the groups belonging to a command each
        """
        sects = read_custom_ini(config_ini_path)
        # TODO handle extension commands
        commands = []
        for sect in sects:
            if sect['section'] == 'CommandDatabase':
                continue
            if sect['section'] in ['Command', 'Extension']:
                commands.append([sect])
            else:
                commands[-1].append(sect)
        return commands

    @staticmethod
    def get_parameter_offset(parameter_sect):
        offset_s = parameter_sect['offs']
        if '.' in offset_s:
            byte_offset = int(offset_s[:offset_s.index('.')])
            bit_offset = int(offset_s[offset_s.index('.')+1:])
            return byte_offset, bit_offset
        else:
            return int(offset_s), 0

    @staticmethod
    def get_parameter_name(parameter_sect):
        if 'name' not in parameter_sect and parameter_sect['section'] == 'Length':
            return 'length'
        else:
            return parameter_sect['name']

    @staticmethod
    def get_ordered_parameters(command_sects):
        """

        :param commands_sects: list of a command section and related sections.
        :return: a list of the parameters, ordered by their offset location.
        """
        params = filter(lambda s: s['section'] in ['Parameter', 'Length'] and 'offs' in s, command_sects)

        def sort_by_offset(param_sect):
            byte_off, bit_off = CommandSections.get_parameter_offset(param_sect)
            return byte_off * 10 + bit_off

        params = sorted(params, key=lambda s: sort_by_offset(s))
        return params
# if __name__ == '__main__':
#     commands_sects = CommandSections.read_custom_ini_commands(os.path.join(definitions.ROOT_DIR, 'mmbn6.ini'))
#     out = None
#     for command_sects in commands_sects:
#        if command_sects[0]['name'] == 'option':
#             out = CommandSections.get_ordered_parameters(command_sects)
#     exit(0)

    @staticmethod
    def has_bitfield_param(command_sects):
        for sect in filter(lambda s: 'offs' in s, command_sects):
            byte_off, bit_off = CommandSections.get_parameter_offset(sect)
            if bit_off != 0:
                return True
        return False



class ModuleState:
    INI_DIR = definitions.ROOT_DIR
    ROM_PATH = definitions.BASEROM_PATH
    LOG = True
    LOG_FILE = sys.__stdout__
    RAISE_ALL = False

    # base address, such as the text script archive considered
    address = 0

    # the select command is dynamic unlike any other command, so it's its own category
    # TODO this can be determined by the dadd entry in the sections
    DYNAMIC_CMDS = [b'\xed', b'\xf0']

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

class CommandContext:
    sects = read_custom_ini(os.path.join(ModuleState.INI_DIR, 'mmbn6.ini'))
    sects_s = read_custom_ini(os.path.join(ModuleState.INI_DIR, 'mmbn6s.ini'))
    commands_sects = CommandSections.read_custom_ini_commands(os.path.join(ModuleState.INI_DIR, 'mmbn6.ini'))
    commands_sects_s = CommandSections.read_custom_ini_commands(os.path.join(ModuleState.INI_DIR, 'mmbn6s.ini'))

    def __init__(self, ini_path=None):
        if ini_path:
            self.update_command_sects(ini_path)

    def update_command_sects(self, ini_path):
        """
        :param sects: list of command dictionaries using the regular interpreter
        :param sects_s: list of command dictionaries using the secondary interpreter
        """
        self.sects = read_custom_ini(os.path.join(ini_path, 'mmbn6.ini'))
        self.sects_s = read_custom_ini(os.path.join(ini_path, 'mmbn6s.ini'))
        self.commands_sects = CommandSections.read_custom_ini_commands(os.path.join(ini_path, 'mmbn6.ini'))
        self.commands_sects_s = CommandSections.read_custom_ini_commands(os.path.join(ini_path, 'mmbn6s.ini'))


def printlocals(locals, halt=False):
    s = ''
    for key in locals:
        s += '%s: %s\n' % (str(key), str(locals[key]))
    if halt:
        raise Exception(s)
    else:
        print(s)

def log(*args, **kwargs):
    if ModuleState.LOG:
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
    if critical or ModuleState.RAISE_ALL:
        raise exception(msg)
    error.list.append(msg)


error.list = []



class TextScript:
    def __init__(self, command_context: CommandContext, units: list, archive_idx: int, addr: int, size: int):
        """
        :param command_context: required knowledge to be able to identify and parse commands
        :param units: list of textscript elements: GameString and TextScriptCommand
        :param archive_idx: represents the index of the TextScript in its container TextScriptArchive
        :param addr: the base address of the textscript
        :param size: the size of the text script
        """
        self.command_context = command_context
        self.units = units
        self.archive_idx = archive_idx
        self.addr = addr
        self.size = size

    @staticmethod
    def read(command_context: CommandContext, bin_file, size: int, archive_idx: int, use_first_interpreter=True):
        """
        reads a textscript segment that terminates with E6 or has a known size
        :param bin_file: binary file stream to read the file from
        :param size: if None, this is computed as the text script is parsed, and size is determined
            at the first occurance of an E6 (or termination command)
        :param use_first_interpreter: assumed True, but sometimes this will fail. This can be anticipated with failure if
            size is provided.
        :return: TextScript object representation
        """
        addr = bin_file.tell()

        def in_script(bin_file, byte, size: int) -> bool:
            """
            checks if the script has ended by checking for the current presence of an end_script command, or
            if the script size has been reached
            in the absense of size, end_script is the only sign to termination. However, size overrides it.
            it is possible for a command to come after end_script in a script.
            :param bin_file: the file reading the bytecode from
            :param byte: current byte in the bytecode
            :param size: size of the textscript
            :return: true if we haven't reached the end of this textscript
            """
            if not size: # zero or None
                return byte != b'\xE6'
            else:
                return bin_file.tell() < addr + size

        def is_valid_game_string_char(byte) -> bool:
            return byte != b'' and (ord(byte) < 0xE5 or ord(byte) == 0xE6 or ord(byte) == 0xE9)

        # process TextScript units (commands or strings)
        byte = bin_file.read(1)
        units = []  # text script discrete string/cmd units
        while True:
            def read_string_lines(bin_file, byte, size):
                out = []
                string = b''
                # we need to force shut this down, due to the rare case of scripts ending mid-string...
                while in_script(bin_file, byte, size) and is_valid_game_string_char(byte):
                    # not a command, process string
                    string = string + byte
                    if ord(byte) == 0xE9:
                        # separate strings by line
                        out.append(GameString(string))
                        string = b''
                    byte = bin_file.read(1)

                # a string may contain an end_script character, even though it terminates our search
                if byte == b'\xE6':
                    string = string + byte
                elif is_valid_game_string_char(byte):
                    # this means that the script has reached its end with a string character that is not E6
                    # must be included in the string as well
                    string = string + byte

                if string != b'':
                    out.append(GameString(string))

                return out, byte

            # reached end of file, cannot process any more
            if byte == b'':
                break

            if is_valid_game_string_char(byte):
                # read strings, which may be multiple line-separated units
                strings, byte = read_string_lines(bin_file, byte, size)
                if strings != []:
                    units.extend(strings)
                    # if a command comes right after the text in the same script, it needs to be parsed as well
                    #   read_string_lines already advanced to the command byte, so it has to be interpreted too, next iteration.
                    if byte > b'\xE6':
                        continue
            else:
                # read current bytecode command
                units.append(TextScriptCommand.read(command_context, bin_file, byte,
                                                    use_first_interpreter))

            # do while the script has not ended
            if not in_script(bin_file, byte, size):
                break

            byte = bin_file.read(1)

        # compute script size. ensure it matches with expected size if given
        computed_size = bin_file.tell() - addr
        if size is not None and size != computed_size:
            raise TextScriptException('computed script size {computed_size} does not match expected size of {size}'.format(**vars()))

        # FIXME: don't pass addr, it's not actually relative to the archive address, it's based purely on the location in bin_file
        return TextScript(command_context, units, archive_idx, addr, computed_size)

    def build(self) -> str:
        """
        builds the TextScript into a text format
        """
        out = '\tdef_text_script TextScript{0}_unk{1}\n'.format('%X' % ModuleState.address, self.archive_idx)

        # build units
        for unit in self.units:
            if type(unit) is GameString:
                if len(unit.data) == 1 and unit.data[0] == 0xE6:
                    # for empty scripts, we just put the end script command instead of representing it as an empty string
                    s = TextScriptCommand.get_cmd_macro_name(self.command_context, unit.data, b'', False)
                else:
                    s = '.string "%s"' % unit.to_string()
                if s == '':
                    raise TextScriptException('invalid string output for %s' % unit)
                out += '\t' + s + '\n'
            elif type(unit) is TextScriptCommand:
                out += TextScriptCommand.build_cmd_macro(self.command_context, unit.cmd, unit.params, unit.use_interpreter_s)
            else:
                raise TextScriptException('invalid unit type')

        return out

    def serialize(self) -> bytes:
        out = b''
        # compile data
        for unit in self.units:
            if type(unit) == GameString:
                # game string
                out += unit.data
            elif type(unit) == TextScriptCommand:
                out += unit.serialize()
            else:
                raise TextScriptException('invalid unit type')
        return out

    def get_unit_at(self, base_idx, idx):
        cur_idx = base_idx
        prev_idx = cur_idx
        prev_unit = self.units[0]
        for unit in self.units:
            if type(unit) != int:
                if prev_idx < idx < cur_idx:
                    return prev_unit, prev_idx
                if idx == cur_idx:
                    return unit, cur_idx
                prev_idx = cur_idx
                prev_unit = unit
                if type(unit) is GameString:
                    cur_idx += len(unit.data)
                elif type(unit) is TextScriptCommand:
                    cur_idx += len(unit.cmd) + len(unit.params)
                else:
                    raise InvalidTextScriptCommandException('invalid unit detected: %s' % unit)
        return None


class TextScriptArchive:
    def __init__(self, command_context: CommandContext, rel_pointers: list, text_scripts: list, addr: int, size: int):
        self.command_context = command_context
        self.rel_pointers = rel_pointers
        self.text_scripts = text_scripts
        self.addr = addr
        self.size = size


    def serialize(self) -> bytes:
        out = b''
        out += self.serialize_rel_pointers()
        # serialize scripts
        for text_script in self.text_scripts:
            out += text_script.serialize()
        return out

    def serialize_rel_pointers(self) -> bytes:
        out = b''
        # since rel. pointers are hwords, a \x00 has to be appended if the pointer is < 0xFF
        for b in self.rel_pointers:
            if b > 0xFF:
                out += bytes([b & 0xFF, b >> 8])
            else:
                out += bytes([b, 0x00])
        return out

    def build(self) -> str:
        """
        :return: the text script archive as a string
        """
        out = '\ttext_archive_start\n\n'

        # build text scripts
        for text_script in self.text_scripts:
            out += text_script.build() + '\n'

        # text scripts are always aligned by 4
        out += '\t.balign 4, 0'

        return out

    def get_unit_at(self, idx):
        cur_idx = 2 * len(self.rel_pointers)
        prev_idx = cur_idx
        for script in self.text_scripts:
            out = script.get_unit_at(cur_idx, idx)
            if out is not None:
                return out
            # advance idx
            cur_idx += script.size
        return None


    @staticmethod
    def read_relative_pointers(bin_file, address: int) -> list:
        def read_hword(bin_file) -> int:
            bytes = bin_file.read(2)
            return bytes[0] + (bytes[1] << 8)

        # assuming first relative pointer is first script
        size_rel_pointers = read_hword(bin_file)
        rel_pointers = [size_rel_pointers]
        while bin_file.tell() < address + size_rel_pointers:
            rel_pointers.append(read_hword(bin_file))
        return rel_pointers

    @staticmethod
    def read(command_context: CommandContext, bin_file, archive_size: int=None) -> 'TextScriptArchive':
        """
        :param command_context: necessary data to parse commands
        :param bin_file: binary file stream to read the file from
        :param archive_size: if not None, the script archive will end at the specified size
        :return: TextScriptArchive object representation
        """
        address = bin_file.tell()
        rel_pointers = TextScriptArchive.read_relative_pointers(bin_file, address)
        last_script_pointer = max(rel_pointers)
        assume_first_interpreter = True # assumed unless something goes bad

        # print('// numScripts: {0}, [{1}, {2}]'.format(len(rel_pointers), hex(rel_pointers[0]), hex(rel_pointers[-1])))

        scripts = []
        for i, ptr in enumerate(rel_pointers):
            # determine size of script, if known
            if i < len(rel_pointers)-1:
                script_size = rel_pointers[i + 1] - ptr
            else:
                script_size = None

            if archive_size:
                if script_size is None:
                    script_size = archive_size - ptr
                # TODO check: should we truncate based on script_size > archive_size or flag this as an invalid state?
                script_size = min(script_size, archive_size)

            # make sure when reading each script that we reached its location
            if bin_file.tell() - address == ptr:
                if script_size == 0:
                    scripts.append(TextScript(command_context, [], i, ptr, 0))
                else:
                    # try using both interpreters to see which one generates correct TextScript with the right size
                    rewind_addr = bin_file.tell()
                    try:
                        scripts.append(TextScript.read(command_context, bin_file, script_size, i, assume_first_interpreter))
                    except (InvalidTextScriptCommandException, TextScriptException) as e:
                        bin_file.seek(rewind_addr) # rewind,and try again
                        try:
                            # flip assumptions for next time, since the trend may continue.
                            assume_first_interpreter = not assume_first_interpreter
                            scripts.append(TextScript.read(command_context, bin_file, script_size, i, assume_first_interpreter))
                        except (InvalidTextScriptCommandException, TextScriptException) as e:
                            # failure on both assumptions -- might be unrelated to the interpreter used
                            raise
            else:
                # invalid state
                # TODO refactor: to TextScriptError
                raise TextScriptException('invalid state: reading a script in a different location from its pointer {0} != {1}'
                                          .format(hex(bin_file.tell() - address), hex(ptr)))

            if archive_size and bin_file.tell() - address >= archive_size:
                # check for tail empty scripts, don't cut them out, just output them all
                if len(scripts) > 0 and ptr + scripts[-1].size == archive_size:
                    continue
                break

        # create Script object
        return TextScriptArchive(command_context, rel_pointers, scripts, address, bin_file.tell() - address)


    @staticmethod
    def read_script(command_context: CommandContext, ea: int, bin_file, size: int=None) -> 'TextScriptArchive':
        # ensure ea is file relative
        ea &= ~0x8000000
        bin_file.seek(ea)

        error.list = []
        return TextScriptArchive.read(command_context, bin_file, size)


class TextScriptCommand:
    def __init__(self, cmd: bytes, params: bytes, with_interpreter_s: bool, macro: str):
        """
        :param cmd: bytes representing the base part of the command
        :param params: bytes representing the parameters. Bitwise params are an exception to this, in which
        they have to be combined according to a mask rule, not just a simple concatenation
        :param with_interpreter_s: flag that specifies if this runs on the secondary interpreter
        running outside the dialog box.
        """
        self.cmd = cmd
        self.params = params
        self.use_interpreter_s = with_interpreter_s
        self.macro = macro
        self.size = self.get_cmd_len(cmd, params, with_interpreter_s)

    def serialize(self):
        return TextScriptCommand.to_bytes(self.cmd, self.params, self.use_interpreter_s)

    @staticmethod
    def to_bytes(cmd, params, using_interpreter_s):
        if cmd[0:2] == b'\xfa\x00':
            # have to put the params back into the command
            cmd_bytes = list(cmd)
            param_bytes = list(params)
            cmd_bytes[2] |= param_bytes[0]
            cmd_bytes[3] |= (param_bytes[1] & 0xF) << 4
            compiled_cmd = bytes(cmd_bytes)
        else:
            compiled_cmd = bytes(cmd) + bytes(params)

        size = TextScriptCommand.get_cmd_len(cmd, params, using_interpreter_s)
        if len(compiled_cmd) != size:
            raise TextScriptException(
                'compiling command failed due to its length not matching: %s' % (compiled_cmd))
        return compiled_cmd

    def __str__(self):
        return self.macro

    @staticmethod
    def read(command_context: CommandContext, bin_file, cmd: bytes, use_first_interpreter) -> 'TextScriptCommand':
        """
        :param use_first_interpreter: is the distinction between dilog and visual commands.
            an entire script may use one or another interpreter.
            However, the first interperter has most of the commands shared between the two, so it is fallen on if
            a command is not found in the second.
        """
        select_sects = lambda select: [command_context.sects_s, command_context.sects][select]
        out = TextScriptCommand.read_cmd_from_sects(bin_file, cmd, select_sects(use_first_interpreter))

        # if a command was not found in the second interpreter, fall back and find it in the first.
        # this is not true the other way around. The first interpreter should contain all of its commands.
        if not out and not use_first_interpreter:
            use_first_interpreter = not use_first_interpreter
            out = TextScriptCommand.read_cmd_from_sects(bin_file, cmd, select_sects(use_first_interpreter))

        if not out:
            raise InvalidTextScriptCommandException(
                  'invalid cmd %s detected at 0x%x' % (cmd, bin_file.tell()))

        # FIXME refactor this boolean inconsistency with which interpreter to use...
        use_second_interpreter = not use_first_interpreter
        return TextScriptCommand(out[0], out[1], use_second_interpreter,
                                 TextScriptCommand.get_cmd_macro_name(command_context, out[0], out[1], use_second_interpreter))


    @staticmethod
    def find_valid_cmd_base(cmd: bytes, sects) -> (bool, dict):
        for sect in sects:
            if TextScriptCommand.valid_cmd_base(cmd, sect):
                return True, sect
        return False, None

    @staticmethod
    def valid_cmd_base(cmd: bytes, sect: dict) -> bool:
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

    @staticmethod
    def get_param_count(cmd: bytes, sect: dict):
        if sect['section'] in ['Command', 'Extension']:
            if TextScriptCommand.valid_cmd_base(cmd, sect):
                nzeros = sect['mask'].count('0')
                if nzeros % 2 == 0:
                    return nzeros // 2
                elif len(cmd) > 2 and cmd[0:2] == b'\xfa\x00' and nzeros == 3:
                    # weird bitfield case... only 3 zeros are supported
                    return 1.5
                else:
                    raise NotImplemented('multiple bitfield paramters are unsupported')
        return -1

    @staticmethod
    def find_param_count(cmd: bytes, sects: list):
        """
        mostly, the number of parameters is simply the number of unmasked bytes if the command
        matches. This is not true for odd numbers of zero nibbles: bitfield paramters.
        An assumption is made that the smallest field always comes first.
        So 00 0F would be 2 fields, a 4-bit field x and 8-bit field y: xy yF
        :raises NotImplemented: for multiple bitfield paramaters
        """
        for sect in sects:
            num_params = TextScriptCommand.get_param_count(cmd, sect)
            if num_params != -1:
               return num_params, sect
        return -1, None

    @staticmethod
    def valid_cmd(cmd: bytes, params: bytes, sect) -> bool:
        if sect['section'] in ['Command', 'Extension']:
            # ensure parameters match, unless it's a command with dynamic parameters
            valid_params = lambda: bytes(cmd) in ModuleState.DYNAMIC_CMDS or len(params) == TextScriptCommand.get_param_count(cmd, sect) \
                                   or TextScriptCommand.get_param_count(cmd, sect) == 1.5
            if TextScriptCommand.valid_cmd_base(cmd, sect) and valid_params():
                return True
        return False

    @staticmethod
    def find_command_section(cmd: bytes, params: bytes, sects: list) -> dict or None:
        for sect in sects:
            if TextScriptCommand.valid_cmd(cmd, params, sect):
                return sect
        return None

    @staticmethod
    def convert_cmd_name(name: str) -> str:
        name = 'ts_' + name
        # convert to snake case
        for c in name:
            if c.isupper():
                name = name.replace(c, '_%c' % c.lower())
        return name

    @staticmethod
    def get_cmd_len(cmd: bytes, params: bytes, from_sect_s: bool) -> int:
        # 0xFA bitfield commands span have parameters in base length
        if cmd[0:1] == b'\xfa' and cmd[0:2] == b'\xfa\x00' and len(cmd) == 4 and not from_sect_s:
            return len(cmd)
        else:
            return len(cmd) + len(params)

    @staticmethod
    def get_cmd_macro_name(command_context: CommandContext, cmd: bytes, params: bytes, prioritize_s: bool) -> str:
        """
        gets the command macro given a full description of the command (all bytes involving the set mask)
        :param command_context: Contains necessary information about commands, including the database sections for both interpreters
        :param cmd: byte array that must contain at least
        :return: string representing the macro for the command
        """
        select_sects = lambda select: [command_context.sects, command_context.sects_s][select]
        sect = TextScriptCommand.find_command_section(cmd, params, select_sects(prioritize_s))
        if not sect:
            sect = TextScriptCommand.find_command_section(cmd, params, select_sects(not prioritize_s))
        if not sect:
            error(InvalidTextScriptCommandException,
                  'could not find command %s %s' % (str(cmd), str(params)),
                  critical=False)

        name = TextScriptCommand.convert_cmd_name(sect['name']) # converts to snake case and add ts_
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

    @staticmethod
    def build_cmd_macro(command_context: CommandContext, cmd: bytes, params: bytes, use_secondary_interpreter: bool) -> str:
        out = ''

        # find the command section
        select_sects = lambda select: [command_context.sects, command_context.sects_s][select]
        sect = TextScriptCommand.find_command_section(cmd, params, select_sects(use_secondary_interpreter))
        if not sect and use_secondary_interpreter:
            sect = TextScriptCommand.find_command_section(cmd, params, select_sects(not use_secondary_interpreter))
        if not sect:
            raise InvalidTextScriptCommandException('could not find command %s %s' % (str(cmd), str(params)))

        name = TextScriptCommand.convert_cmd_name(sect['name']) # converts to snake case and add ts_
        if not name:
            raise InvalidTextScriptCommandException('no name exists for the cmd ' + str(cmd) + ' ' + str(params))
        name = name.strip()

        # search for it to retrieve parameters
        command_sect_and_params = None
        if use_secondary_interpreter:
            # search both since secondary interpreter uses commands from first
            all_commands_sects = command_context.commands_sects.copy()
            all_commands_sects.extend(command_context.commands_sects_s)
            for command_sects in all_commands_sects:
                if command_sects[0] == sect:
                    command_sect_and_params = command_sects
        else:
            for command_sects in command_context.commands_sects:
                if command_sects[0] == sect:
                    command_sect_and_params = command_sects
        if command_sect_and_params is None:
            raise InvalidTextScriptCommandException('could not find command and param sections for {0}'.format(sect['name']))
        command_sects = command_sect_and_params

        # build parameters
        command_bytes = TextScriptCommand.to_bytes(cmd, params, use_secondary_interpreter)
        s = '%s ' % name

        if cmd in ModuleState.DYNAMIC_CMDS:
            # TODO: just parse dynamic command as non-keyworded args for now
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
                raise TextScriptException('invalid string output for %s' % cmd)
            out += '\t' + s + '\n'
        else:
            # using keyworded args
            if len(params) != 0:
                s += '[\n'

            last_param_byte_off = 0 # used to include potential dynamic data after last "parameter" argument
            for param_sect in CommandSections.get_ordered_parameters(command_sects):
                byte_off, bit_off = CommandSections.get_parameter_offset(param_sect)
                last_param_byte_off = byte_off
                field_bit_size = int(param_sect['bits'])

                # compute parameter value based on its offset and size
                # print(byte_off, bit_off, field_bit_size)
                val_bytes = command_bytes[byte_off:byte_off + max((field_bit_size // 8), 1)]
                val = 0
                for digit, b in enumerate(val_bytes):
                    val |= (b << (8*digit))
                val >>= bit_off
                val &= 2**field_bit_size - 1 # mask by the size, 4 bits would mask 0x0F


                param_name = CommandSections.get_parameter_name(param_sect)
                s += '\t\t{name}: '.format(name=param_name)

                # jump commands go to a linked script
                if 'jump' in name.lower() and param_name == 'target':
                    s += '%d,\n' % val
                else:
                    s += '0x%X,\n' % val

            if s.endswith(', \n'):
                s = s[:-3] + '\n'
            if len(params) != 0:
                s += '\t]'

            s = s.rstrip()
            if s == '':
                raise TextScriptException('invalid string output for %s' % unit)
            out += '\t' + s + '\n'
        return out


    @staticmethod
    def read_cmd_from_sects(bin_file, cmd: bytes, sects: list) -> (bytes, bytes) or None:
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
        if cmd in ModuleState.PRIORITY_CMDS:
            cmd += bin_file.read(1)

        # read in bytes until the base is read and the parameters are determined
        for i in range(4):  # max number of base bytes per command
            num_params, sect = TextScriptCommand.find_param_count(cmd, sects)
            if num_params >= 0:
                break
            else:
                byte = bin_file.read(1)
                cmd = cmd + byte


        # valid command found
        if num_params >= 0:
            # no priority commands, go with default (jump_random)
            if cmd[0:1] in ModuleState.PRIORITY_CMDS and cmd[1] >= 3:
                params = cmd[1:2]
                cmd = cmd[:1]
            # bitfield commands, prints
            elif num_params == 1.5:
                # params are already part of the command
                # pattern: FF FF 00 0F
                params = bytes([cmd[2], (cmd[3] >> 4)])  # XX YF
                cmd = bytes([cmd[0], cmd[1], 0x00, cmd[3]&0xF])
            # parse cmd and params
            elif num_params >= 0:
                params = bin_file.read(num_params)
            # command not detected
            else:
                params = []
                error(InvalidTextScriptCommandException, 'invalid num_parameters states detected at %s' % cmd)

            # dynamic commands also take in data, not just parameters. Data can be 0xFF, or <0xE5
            # different dynamic commands have their own maximum number of dynamci arguments.
            if cmd in ModuleState.DYNAMIC_CMDS:
                def parse_dynamic_command_length(cmd, params):
                    # TODO: load command specific context from config sects
                    # parse the length, command-dependant
                    # the length refers to the entire command bytecode

                    # ts_jump_random
                    if cmd == b'\xf0':
                        # TODO: for some reason, high numbers are specified when no more than 8 pairs are ever given
                        length = min(params[0] & ~0x3F, 16 + len(cmd) + len(params))
                    # ts_select
                    elif cmd == b'\xed':
                        length = params[0]
                    else:
                        raise TextScriptException('cound not determine dynamic length of command {cmd}'.format(**vars()))
                    return length

                max_dynamic_args = parse_dynamic_command_length(cmd, params) - len(cmd) - len(params)
                num_dynamic_args = 0
                last_param = False
                while True:
                    byte = bin_file.read(1)
                    if byte == b'\xff':
                        last_param = True

                    def dynamic_command_ended(cmd, params, byte, num_dynamic_args, max_dynamic_args):
                        start_of_new_command = lambda byte: byte != b'\xff' and byte >= b'\xe5'

                        return start_of_new_command(byte) or num_dynamic_args >= max_dynamic_args

                    if dynamic_command_ended(cmd, params, byte, num_dynamic_args, max_dynamic_args):
                        # rewind, doesn't belong to this dynamic command
                        bin_file.seek(bin_file.tell() - 1)
                        break
                    else:
                        params += byte
                    num_dynamic_args += 1


            return cmd, params
        else:
            # no command found
            bin_file.seek(rewind_addr)
            return None


class GameString:
    def __init__(self, byte_data, tbl_path=definitions.GAME_STRING_TBL_PATH):
        self.data = byte_data
        self.tbl_path = tbl_path
        self.text = self.to_string()

    def to_string(self):
        return GameString.bn6f_str(self.data, GameString.get_tbl(self.tbl_path))

    def __str__(self):
        return self.to_string()

    @staticmethod
    def get_tbl(path):
        # TODO: refactor to read charmap.inc
        if 'tbl' in GameString.get_tbl.__dict__.keys():
            return GameString.get_tbl.tbl
        tbl = {}
        with open(path, 'r', encoding='utf-8') as f:
            for line in f.readlines():
                if '=' in line:
                    lhs = line[:line.index('=')].strip()
                    rhs = line[line.index('=') + 1:].strip()
                    if rhs == '': rhs = ' '  # space would be filtered out
                    tbl[int(lhs, 16)] = rhs
        for i in range(len(tbl), 0xEA):
            tbl.append('\\x%X' % i)

        tbl[0xE6] = '@' # for shortness, represent the end of script as a '$' in strings
        tbl[0xE9] = '\\n'
        GameString.get_tbl.tbl = tbl

        return tbl

    @staticmethod
    def bn6f_str(byte_arr, tbl):
        out = ''
        skip_next = False
        for i, byte in enumerate(byte_arr):
            if skip_next:
                skip_next = False
                continue
            if byte == 0xE4:
                short = (byte << 8) + byte_arr[i+1]
                out = out + tbl[short]
                skip_next = True
            elif tbl[byte] == '"':
                out = out + '\\"'
            else:
                out = out + tbl[byte]
        return out



def gen_macros(config_ini_path):
    def build_command_documentation(command_sects):
        out = ''

        # document the command
        if 'desc' in command_sects[0]:
            out += '// {0}\n'.format(command_sects[0]['desc'])

        def get_param_doc(sect):
            if 'offs' in sect:
                offset = CommandSections.get_parameter_offset(sect)
            else:
                offset = None

            if 'name' in sect:
                name = sect['name']
            elif sect['section'] == 'Length':
                name = 'length'
            else:
                raise CommandSectionsException('parameter does not have a name: ' + sect['section'])

            if 'desc' in sect:
                return '// :param {0}[{1}:{2}:{3}]: {4}\n'.format(name, offset[0], offset[1], sect['bits'], sect['desc'])
            else:
                return '// :param {0}[{1}:{2}:{3}]:\n'.format(name, offset[0], offset[1], sect['bits'])

            return ''

        for sect in CommandSections.get_ordered_parameters(command_sects):
            out += get_param_doc(sect)
        for sect in filter(lambda sect: 'name' in sect and sect['name'] == 'Data', command_sects):
            out += get_param_doc(sect)

        return out.strip()


    def build_byte_parameters(mask, base):
        params = ''
        i = 0
        for b in mask:
            if b != 0xFF:
                params += 'p%d:req, ' % i
                i += 1
        if params.endswith(', '): params = params[:-2]

        # build macro implementation: .byte <base> <param_bytes>
        impl = '.byte '
        for b in base:
            impl += '0x%X, ' % b
        impl += params.replace('p', '\p').replace(':req', '')
        if impl.endswith(', '): impl = impl[:-2]
        return params, impl

    def build_named_parameters(command_sects):
        param_defs = ''
        params = ''

        for param_sect in CommandSections.get_ordered_parameters(command_sects):
            if 'name' not in param_sect and param_sect['section'] == 'Length':
                name = 'length'
            else:
                name = param_sect['name']
            param_defs += '{0}:req, '.format(name)
            params += '\\{0}, '.format(name)
        if param_defs.endswith(', '): param_defs = param_defs[:-2]
        if params.endswith(', '): params = params[:-2]

        # build macro implementation: .byte <base>
        impl = '.byte '
        for b in base:
            impl += '0x%X, ' % b

        # TODO WIP assuming no bitfield parameters, and no dynamic parameters

        impl += params
        if impl.endswith(', '): impl = impl[:-2]

        # group parameters by byte



        return param_defs, impl

    commands_sects = CommandSections.read_custom_ini_commands(config_ini_path)
    # TODO: generate correct dynamic ts_select
    macros = ''

    for command_sects in commands_sects:
        command = command_sects[0]
        if command['section'] in ['Command', 'Extension']:
            base = []
            mask = []
            for b in command['base'].split(' '): base.append(int(b, 16))
            for b in command['mask'].split(' '): mask.append(int(b, 16))

            # convert name to snake case
            name = 'ts_'  + command['name']
            for c in name:
                if c.isupper():
                    name = name.replace(c, '_%c' % c.lower())

            # build parameters
            params, impl = build_named_parameters(command_sects)

            macros += '{desc}\n.macro {name} {params}\n\t{impl}\n.endm\n\n'.format(desc=build_command_documentation(command_sects), **vars())

    return '\t' + macros.replace('\n', '\n\t')

if __name__ == '__main__':
    import codecs
    import argparse

    def auto_int(i):
        return int(i, 0)

    parser = argparse.ArgumentParser(description='TextScript dumper for Megaman Battle Network')
    parser.add_argument('address', type=auto_int, help='address of text script archive in file')
    parser.add_argument('-f', '--file', help='file to parse from, usually the ROM.')
    parser.add_argument('-i', '--ini_dir', help='directory of command database ini files to use')
    parser.add_argument('-o', '--output', help='output file to write to')
    parser.add_argument('-s', '--size', type=auto_int, help='the size of script, if known')
    parser.add_argument('--generate-macros', action='store_true', help='auto generates macros for the commands then exits')
    args = parser.parse_args()

    # in case the default encoding doesn't support utf8
    sys.stdout = codecs.getwriter('utf8')(sys.stdout.buffer)

    # defaults
    if not args.file:
        args.file = ModuleState.ROM_PATH

    # create the command context by reading from the command database ini
    if not args.ini_dir:
        command_context = CommandContext()
    else:
        if args.ini_dir and args.ini_dir[-1] != '/':
            args.ini_dir = args.ini_dir + '/'
        command_context = CommandContext(args.ini_dir)

    # search for if address has a known size in config ini
    if not args.size:
        for address in definitions.SCRIPT_SIZES.keys():
            size = definitions.SCRIPT_SIZES[address]
            if address == args.address:
                args.size = size

    # setting additional information
    ModuleState.address = args.address

    # generate macros instead of dumping if command is present
    if args.generate_macros:
        print('// mmbn6.ini')
        print(gen_macros(os.path.join(definitions.ROOT_DIR, 'mmbn6.ini')))
        print('// mmbn6s.ini')
        print(gen_macros(os.path.join(definitions.ROOT_DIR, 'mmbn6s.ini')))
        exit(0)

    with open(args.file, 'rb') as f:
        text_script_archive: TextScriptArchive = TextScriptArchive.read_script(command_context, args.address, f, args.size)

    if args.output:
        with open(args.output, 'w') as output_file:
            output_file.write(text_script_archive.build())
            output_file.write(hex(text_script_archive.addr + text_script_archive.size))
    else:
        print(text_script_archive.build())
        print(hex(text_script_archive.addr + text_script_archive.size))

    # TODO fix: use a logger instead
    for e in error.list:
        print('error: ' + e)