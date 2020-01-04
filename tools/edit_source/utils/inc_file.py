import logging

##################################################
# pre-processing
##################################################
class ParsingError(Exception):
    def __init__(self, msg):
        self.msg = msg

class IncFile:
    class UNIT_IDS:
        i = 0
        DIRECTIVE_INCLUDE  = i; i += 1
        DIRECTIVE          = i; i += 1
        MACRO              = i; i += 1
        CONSTANT           = i; i += 1
        ENUM_START         = i; i += 1
        ENUM_FRAGMENT      = i; i += 1
        EQUIV              = i; i += 1
        # STRUCT             = i; i += 1
        STRUCT_OFF_DEF     = i; i += 1
        IGNORED            = i; i += 1

        # post-processing
        ENUM               = i; i += 1
        FLAG_ENUM          = i; i += 1
        MAP_ENUM           = i; i += 1

        ERROR              = i; i += 1

        STR = ['DIRECTIVE_INCLUDE', 'DIRECTIVE', 'MACRO', 'CONSTANT', 'DATA', 'LABEL', 'ERROR']

    class Unit:
        def __init__(self, unit_id, content, body, file_path, line_number):
            """
            a unit is a token categorized by its $unit_id. its string content from the repository is in $content,
            while its $body may contain further parsed fields if it's not None.
            :param unit_id: determines the type of unit this is
            :param content:
            :param body: based on the unit type, may return an object with its fields or None
            :param file_path:
            :param line_number:
            """
            # type: (IncFile.UNIT_IDS, str, object, str, int) -> None
            self.id = unit_id
            self.content = content
            self.body = body
            self.file_path = file_path
            self.line_number = line_number

    def __init__(self, file_path):
        self.file_path = file_path
        file = open(file_path, 'r')
        self.lines = file.readlines()
        file.close()
        self.line = 0
        self.cur = 0 # cursor into file content string

    def get_unit(self, line_num):
        """
        :return: unit object
        """
        if line_num >= len(self.lines):
            return None

        # filter line
        line = self.lines[line_num].strip()
        if '//' in line: line = line[:line.index('//')]

        if line.startswith('.include'):
                return IncFile.Unit(IncFile.UNIT_IDS.DIRECTIVE_INCLUDE, self.lines[line_num], None, self.file_path, line_num)

        def try_parse(parse_callback, unit_id, contains_body):
            res = parse_callback(self.lines[line_num:])
            if type(res) != ParsingError:
                if contains_body:
                    return IncFile.Unit(unit_id, res[0], res[1], self.file_path, line_num)
                else:
                    return IncFile.Unit(unit_id, res, None, self.file_path, line_num)

        res = try_parse(parse_macro, IncFile.UNIT_IDS.MACRO, contains_body=False)
        if res: return res
        res = try_parse(parse_constant, IncFile.UNIT_IDS.CONSTANT, contains_body=False)
        if res: return res
        res = try_parse(parse_enum_start, IncFile.UNIT_IDS.ENUM_START, contains_body=False)
        if res: return res
        res = try_parse(parse_enum_fragment, IncFile.UNIT_IDS.ENUM_FRAGMENT, contains_body=False)
        if res: return res
        res = try_parse(parse_struct_offset_definition, IncFile.UNIT_IDS.STRUCT_OFF_DEF, contains_body=True)
        if res: return res
        res = try_parse(parse_directive, IncFile.UNIT_IDS.DIRECTIVE, contains_body=False)
        if res: return res
        res = try_parse(parse_ignored, IncFile.UNIT_IDS.DIRECTIVE, contains_body=False)
        if res: return res

        logging.error('unknown unit {} at {}:{}'.format(self.lines[line_num], self.file_path, line_num))
        return IncFile.Unit(IncFile.UNIT_IDS.ERROR, self.lines[line_num], None, self.file_path, line_num)

    def next_unit(self):
        """
        Returns the line number and file
        :return: unit object
        """
        self.cur = advance_line(self.lines, self.cur) # move to current functional line
        unit = self.get_unit(self.cur)
        if not unit:
            return None

        # move to next functional line
        self.cur += unit.content.count('\n')
        self.cur = advance_line(self.lines, self.cur)
        return unit



def parse_directive(lines):
    """
    generic directives that are not handled or supported yet
    """
    unsupported_directives = [
        '.ifndef', '.ifdef', '.endif',
        '.charmap', '.set', '.struct',
    ]
    for directive in unsupported_directives:
        if directive in lines[0]:
            return lines[0]

    return ParsingError('')


def parse_ignored(lines):
    """
    unsupported assembler syntax like setting variables
    :param lines:
    :return:
    """
    # variables
    if '=' in lines[0] or lines[0].strip().startswith('_'):
        return lines[0]

    return ParsingError('')



def parse_constant(lines):
    # type: (List[str]) -> str or ParsingError
    if '.equ' in lines[0] or '.equiv' in lines[0]:
        return lines[0]

    return ParsingError('')


def parse_enum_fragment(lines):
    # type: (List[str]) -> str or ParsingError
    """
    A fragment of an enum allows for regular enums ('enum' macro), flag enums ('flag_enum'),
    map enums ('new_group', 'map_enum'), and subenums ('subenum').
    The entire enum is stetched together later on in post-processing of units.
    :param lines:
    :return:
    """
    line = filter_comments(lines[0]).strip()

    def str_starts_with(s, v):
        for pattern in v:
            if s.startswith(pattern):
                return True
        return False

    if line.startswith('enum_start'):
        return ParsingError('an enum start cannot be parsed as an enum fragment')

    if str_starts_with(line, ['enum', 'subenum', 'flag_enum', 'map_enum', 'new_group']):
        return lines[0]

    return ParsingError('')


def parse_enum_start(lines):
    """
    this parses the token that determines the start of a new enum. Enums as units are fragmented by the start, and
    fragment enums. post-processing will be used to piece them together into their individual enum units.
    This is done because the implementation of enum allows it to be sprinkled amongst other code.
    :param lines:
    :return:
    """
    if not lines[0].strip().startswith('enum_start'):
        return ParsingError('')

    return lines[0]


class StructOffsetDefinition:
    def __init__(self, is_ram, macro_name, prefix):
        # type: (bool, str, str) -> None
        self.is_ram = is_ram
        self.macro_name = macro_name
        self.prefix = prefix


def parse_struct_offset_definition(lines):
    # type: (List[str]) -> (str, StructOffsetDefinition) or ParsingError
    if 'def_struct_offsets' not in lines[0] and 'def_rom_struct_offsets' not in lines[0]:
        return ParsingError('')

    tokens = lines[0].split(' ')
    tokens = filter(lambda token: token != '', tokens)
    tokens = map(lambda token: token.replace(',', ''), tokens)
    tokens = map(lambda token: token.replace('\t', ''), tokens)
    tokens = list(tokens)

    if len(tokens) > 3:
        return ParsingError('invalid def_struct_offsets syntax')

    if tokens[0] == 'def_struct_offsets':
        return lines[0], StructOffsetDefinition(is_ram=True, macro_name=tokens[1], prefix=tokens[2])
    elif tokens[0] == 'def_rom_struct_offsets':
        return lines[0], StructOffsetDefinition(is_ram=False, macro_name=tokens[1], prefix=tokens[2])
    else:
        print(tokens[0])
        raise ParsingError('invalid parsing state reached')


def parse_macro(lines):
    # type: (List[str]) -> str or ParsingError
    """
    parses macros, this includes struct macros, and general purpose nestable macros
    :param lines: a slice of lines from where to parse the macro
    :return: the macro, or ParsingError
    """
    if '.macro' not in lines[0]:
        return ParsingError('invalid macro to parse')

    nested_level = 0
    for i, line in enumerate(map(lambda line: filter_comments(line).strip(), lines)):
        if line.startswith('.macro'):
            nested_level += 1

        if line.startswith('.endm'):
            nested_level -= 1
            if nested_level == 0:
                return ''.join(lines[:i+1])

    return ParsingError('could not find ending .endm to macro')


def filter_comments(line):
    # type: (str) -> str
    if '//' in line:
        line = line[:line.index('//')]

    if '/*' in line and '*/' in line:
        line = line[:line.index('/*')] + line[line.index('*/')+2:]

    return line


def advance_line(lines, line_number):
    # type: (List[str], int) -> int
    """
    Moves past comments and empty lines
    :return: new line number
    """
    comment = False
    cur_line = line_number
    while cur_line < len(lines):
        line = lines[cur_line]
        if '//' in line: line = line[:line.index('//')]
        while '/*' in line:
            if '*/' in line:
                line = line[:line.index('/*')] + line[line.index('*/')+2:]
                comment = False
            else:
                line = line[:line.index('/*')]
                comment = True
        if comment and '*/' in line:
            comment = False
            line = line[line.index('*/')+2:]

        if line.strip() != '' and not comment:
            break
        cur_line += 1
    return cur_line

##################################################
# post-processing
##################################################
def post_process(units):
    """
    post-processes and creates units like structs and enums by handling the parsed tokens
    :param units:
    :return:
    """
    pass

class Enum:
    class EnumType:
        @staticmethod
        def next_value(prev_count):
            # type: (int) -> int
            NotImplemented("implement this type and define this function")

    class FlagEnum(EnumType):
        @staticmethod
        def next_value(prev_count):
            NotImplemented()

    class MapEnum(EnumType):
        @staticmethod
        def next_value(prev_count):
            NotImplemented()

    class NewGroup(EnumType):
        @staticmethod
        def next_value(prev_count):
            NotImplemented()

    class JustEnum(EnumType):
        @staticmethod
        def next_value(prev_count):
            return prev_count + 1

    class SubEnum(EnumType):
        @staticmethod
        def next_value(prev_count):
            NotImplemented()

    def __init__(self, name, start_count, variants):
        # type: (str, int, List[(EnumType, str)]) -> None
        self.name = name
        self.start_value = start_count
        self.variants = variants

    @staticmethod
    def from_inc_units(units):
        # type: (List[IncFile.Unit]) -> Enum or ValueError
        pass

    @staticmethod
    def extract_enum_from_inc_units(units):
        # type: (List[IncFile.Unit]) -> (Enum, List[IncFile.Unit]) or ValueError
        pass

    @staticmethod
    def extract_enums_from_inc_units(units):
        # type: (List[IncFile.Unit]) -> (List[Enum], List[IncFile.Unit])
        pass

    @staticmethod
    def _find_enum_units(units):
        # type: (List[IncFile.Unit] -> List[IncFile.Unit] or ValueError
        pass
