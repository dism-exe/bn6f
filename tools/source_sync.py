"""
:author Lan: This module generates a *.rsyc file that contains relevant analysis data about all of symbols.
This allows to synchronize IDA and radare2 databases to the source. The file can also be accessed for analysis
by different tools.
"""

MAIN_FILES = ['rom.s', 'data.s', 'ewram.s', 'iwram.s']



class DATA_TYPES:
    i = 0
    BYTE = i; i+=1
    HWORD = i; i+=1
    WORD = i; i+=1
    OFF = i; i+=1
    ASCII = i; i+=1
    ALIGN = i; i+=1
    MACRO = i; i+=1
    ERROR = i; i+=1

    SIZES = [1, 2, 4, 4, 0, 0]

DATA_TYPES_STR = ['BYTE', 'HWORD', 'WORD', 'OFF', 'ASCII', 'ALIGN', 'MACRO', 'ERROR']

class AsmFile:
    """
    Treats the content of asm files as functional units: Directivee, Functions, Code Labels, Data Labels
    Each functional unit has
    """

    class UNITS:
        i = 0
        DIRECTIVE_INCLUDE = i; i+=1
        DIRECTIVE = i; i+=1
        FUNCTION = i; i+=1
        CODE = i; i+=1
        RAM_DATA = i; i+=1
        DATA = i; i+=1
        LABEL = i; i+=1
        ERROR = i; i+=1

    class Unit:
        def __init__(self, unit_id, content, file_path, line_number):
            # type: (UNITS, str, str, int) -> void
            self.id = unit_id
            self.content = content
            self.file_path = file_path
            self.line_number = line_number


    def __init__(self, file_path):
        self.file_path = file_path
        file = open(file_path, 'r')
        self.lines = file.readlines()
        file.close()
        self.line = 0
        self.cur = 0 # cursor into file content string


    def get_unit(self, loc, is_line_number=True):
        """
        :param loc: ea or line number
        :param is_line_number: loc is a line number, else it's an effective address
        :return: unit object
        """
        # TODO: handle ea
        if not is_line_number:
            raise NotImplementedError()
        line_num = loc
        if line_num >= len(self.lines):
            return None

        # filter line
        line = self.lines[line_num].strip()
        if '//' in line: line = line[:line.index('//')]

        if line.startswith('.'):
            if line.startswith('.include'):
                return AsmFile.Unit(AsmFile.UNITS.DIRECTIVE_INCLUDE, self.lines[line_num], self.file_path, line_num)
            else:
                return AsmFile.Unit(AsmFile.UNITS.DIRECTIVE, self.lines[line_num], self.file_path, line_num)
        if self._is_function(line_num):
            func_end = self._find_function_end(line_num)
            return AsmFile.Unit(AsmFile.UNITS.FUNCTION, ''.join(self.lines[line_num:func_end]), self.file_path, line_num)
        if self._is_data(line_num):
            data_end = self._find_data_end(line_num)
            return AsmFile.Unit(AsmFile.UNITS.DATA, ''.join(self.lines[line_num:data_end]), self.file_path, line_num)
        if self._is_code(line_num):
            code_end = self._find_code_end(line_num)
            return AsmFile.Unit(AsmFile.UNITS.CODE, ''.join(self.lines[line_num:code_end]), self.file_path, line_num)
        if ':' in line:
            return AsmFile.Unit(AsmFile.UNITS.LABEL, self.lines[line_num], self.file_path, line_num)
        return AsmFile.Unit(AsmFile.UNITS.ERROR, self.lines[line_num], self.file_path, line_num)


    def next_unit(self):
        """
        Returns the line number and file
        :return: unit object
        """
        self.cur = self._advance_line(self.cur) # move to current functional line
        if self.cur == len(self.lines)-1: # FIXME: you will likely not reach the end so neatly
            return None
        unit = self.get_unit(self.cur)
        if not unit: return None
        # move to next functional line
        self.cur += unit.content.count('\n')
        self.cur = self._advance_line(self.cur)
        return unit


    def _advance_line(self, line_number):
        """
        Moves past comments and empty lines
        :return: new line number
        """
        comment = False
        cur_line = line_number
        while cur_line < len(self.lines):
            line = self.lines[cur_line]
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


    def _is_function(self, line_number):
        """
        function is detected based on the function macro before its label
        """
        return 'thumb_func_start' in self.lines[line_number] or 'thumb_local_start' in self.lines[line_number] or \
            'arm_func_start' in self.lines[line_number] or 'arm_local_start' in self.lines[line_number]


    def _is_code(self, line_number):
        # filter label
        if ':' in self.lines[line_number]:
            line = self.lines[line_number+1].strip()
        else:
            line = self.lines[line_number].strip()
        return is_code(line)


    def _is_data(self, line_number):
        if ':' not in self.lines[line_number]:
            return False

        for i in [line_number, self._advance_line(line_number+1)]:
            if is_data(self.lines[i]):
                return True
        return False


    def _find_function_end(self, line_number):
        cur_line = line_number
        while cur_line < len(self.lines):
            # end function macro
            if 'thumb_func_end' in self.lines[cur_line] or 'arm_func_end' in self.lines[cur_line]:
                break
            cur_line = self._advance_line(cur_line+1)
        return cur_line+1


    def _find_code_end(self, line_number):
        cur_line = line_number
        while cur_line < len(self.lines):
            # a data definition is present
            if self._is_data(cur_line):
                break
            cur_line = self._advance_line(cur_line+1)
        return cur_line


    def _find_data_end(self, line_num):
        cur_line = self._advance_line(line_num+1)
        while cur_line < len(self.lines):
            # a new label
            if ':' in self.lines[cur_line]:
                break
            # something other than .data_def
            line = self.lines[cur_line].rstrip()
            if '.' in line: line = line[line.index('.'):]
            if not ('.' in line and line[:line.index(' ')] in ['.byte', '.hword', '.word']):
                break
            cur_line = self._advance_line(cur_line+1)
        return cur_line


def is_code(line):
    # check all possible mnemonics for code
    mnemonics = ['PUSH', 'POP', 'MOV', 'LSL', 'BL', 'B', 'BX', 'BEQ', 'BNE', 'BLT', 'BGT', 'ADD', 'SUB', 'MUL',
                 'LSR', 'ASR', 'TST', 'CMP', 'AND', 'ORR', 'EOR', 'BIC', 'LDR', 'LDRB', 'LDRH', 'STR', 'STRB', 'STRH',
                 'SWI', 'NEG', 'NOP',
                 # some ARM mnemonics
                 'ADR',
                 ]
    line = line.strip()
    if ' ' in line and not line.startswith('.'):
        mnemonic = line[:line.index(' ')].strip().upper()
        return len(mnemonic) <= 4 and mnemonic in mnemonics
    return False


def is_data(line):
    data_directives = ['.byte', '.hword', '.word', '.asciz', '.ascii', '.align', '.balign']
    # filter label
    line = line.strip()
    if ':' in line:
        line = line[line.index(':'):]
    if '.' in line: line = line[line.index('.'):]
    if '.' in line and ' ' in line and line[:line.index(' ')] not in data_directives:
        line = line[line.index(' '):].strip()
    if '.' in line and ' ' in line and line[:line.index(' ')] in data_directives:
        return True
    return False


def has_label(line):
    # type: (str) -> bool
    # corner case: string literals
    if not line.startswith('.') and '"' in line and ':' in line and line.index('"') < line.index(':'):
        return False
    return line.startswith('.') or ':' in line


def filter_label(line):
    # type: (str) -> str
    if not has_label(line): return line
    if '::' in line:
        line = line[line.index('::')+2:]
    elif ':' in line:
        line = line[line.index(':')+1:]
    elif line.startswith('.'):
        line = line.replace('\t', ' ').replace('  ', ' ')
        if '/t' in line:
            line = line[line.index('\t')+1:]
        elif ' ' in line:
            line = line[line.index(' ')+1:]
        else:
            line = ''
    return line


def get_label(line):
    """
    includes the label colon, or double colon as it conveys information about the label
    """
    #type: (str) -> str
    if not has_label(line): return ''
    if '::' in line:
        line = line[:line.index('::')+2]
    elif ':' in line:
        line = line[:line.index(':')+1]
    elif line.startswith('.'):
        line = line.replace('\t', ' ').replace('  ', ' ')
        if ' ' in line:
            line = line[:line.index(' '):]
    return line.strip()


def read_file(file_path):
    """
    reads an asm fle and returns its content as a list of functional units.
    This reads includes recursively.
    :return: list of AsmFile.Unit objects
    """
    #type: (str) -> list[AsmFile.Unit]
    import os.path
    file = AsmFile(file_path)

    output = []

    unit_types = ['DIRECTIVE_INCLUDE', 'DIRECTIVE', 'FUNCTION', 'CODE', 'RAM_DATA', 'DATA', 'LABEL', 'ERROR']
    while 1:
        unit = file.next_unit()
        if not unit: break
        # print("UNIT %s (%s:%d)\n%s" % (unit_types[unit.id], unit.file_path, unit.line_number, unit.content))
        output.append(unit)
        if unit.id == AsmFile.UNITS.DIRECTIVE_INCLUDE:
            file_path = unit.content[unit.content.index('"')+1:]
            file_path = file_path[:file_path.index('"')]

            if '.inc' in file_path:
                continue

            if not os.path.isfile(file_path):
                file_path = 'include/' + file_path
            output += read_file(file_path)

    return output


def get_sym_table(elf_path):
    """
    This creates temporary files and deletes them immediately after for interacting with arm-none-eabi-readelf
    It displays the symbol table of the elf file, and searches for the specified symbol
    :param elf_path:  the elf file path to read the symbol from
    :return: symbol table dictionary of symbol names to effective ddresses
    """
    # type: (str) -> dict[str, int]
    import os, re
    sym_table = {}
    FILE_NAME = 'tempGetSymbols'

    tmp_stdout = '%s_stdout.tmp' % FILE_NAME
    tmp_stderr = '%s_stderr.tmp' % FILE_NAME
    os.system('arm-none-eabi-objdump -t %s 1> %s 2> %s' % (elf_path, tmp_stdout, tmp_stderr))

    stdout_file = open(tmp_stdout, 'r')

    for line in stdout_file.readlines()[5:]: # skip header and SYMBOL TABLE:
        fields = list(filter(None, re.split('[ \r\n]', line)))
        if len(fields) >= 4:
            addr = int(fields[0], 16)
            name = fields[-1].strip()
            sym_table[name] = addr

    stdout_file.close()
    # delete temporary files
    os.remove(tmp_stdout)
    os.remove(tmp_stderr)
    return sym_table


def filter_source(content):
    """
    Removes comments and empty space for analysis
    :param content: source snippet t filter
    :return: filtered version
    """
    # type: (str) -> str
    # filter all inline comments
    while '//' in content:
        comment_idx = content.index('//')
        after_comment = content[comment_idx+2:]
        if '\n' in after_comment:
            after_comment = after_comment[after_comment.index('\n'):]
        else:
            after_comment = ''
        content = content[:comment_idx] + after_comment

    # filter all block comments
    while '/*' in content and '*/' in content:
        content = content[:content.index('/*')] + content[content.index('*/')+2:]

    # filter all empty lines
    content = content.replace('\r', '')
    while '  ' in content: content = content.replace('  ', ' ')
    while '\n\n' in content: content = content.replace('\n\n', '\n')

    return content.strip()


def process_function(unit, sym_table, function_types):
    """
    Processes the following parameters:
        Function effective address (according to the symbol table)
        Function name
        File Location: what file, which line number
        Function type: This is taken from the C file of its file_path
        Local symbols, ea and name: all symbols within the function
        xrefs_to, ea and name: all external symbols to the function
        pool: processed as data
    Format:
        F function_ea <function_name>:
            path: file_path:line_number
            type: function_type
            local: [local_ea <local_name>, ...]
            xrefs_to: [xref_ea <xref_name>, ...]
            pool:
                processed pool data
    :param unit: AsmFile.Unit representing the function to analyze
    :param sym_table:
    :return: string format
    """
    # first label in function is the function label
    content = filter_source(unit.content)
    function_name = content[:content.index(':')]
    if '\n' in function_name: function_name = function_name[function_name.rindex('\n')+1:].strip()
    function_ea = sym_table[function_name]

    # find the type from the corresponding function signature in the C file
    if function_types:
        if function_name in function_types:
            function_type = function_types[function_name]
        else:
            print('ERROR: type unidentified for function %s' % function_name)
            function_type = ''
    else:
        function_type = ''

    locals = []
    xrefs_to = []
    skipFunctionLabel = False
    pool_data = ''
    lines = content.split('\n')
    for i in range(len(lines)):
        line = lines[i]
        # find all local labels, and xrefs_to
        if has_label(line):
            # function label is not one of the locals
            if not skipFunctionLabel:
                skipFunctionLabel = True
            else:
                if line.startswith('.'):
                    #colonless and local labels
                    if ' ' in line:
                        label = line[:line.index(' ')].strip()
                    else:
                        label = line.strip()
                    label = label.replace(':', '')
                else:
                    label = line[:line.index(':')].strip()
                label = label.replace('.', '%s.' % function_name) # process local labels
                locals.append(label)
        if is_code(line):
            mnemonic = line[:line.index(' ')].strip().upper()
            if mnemonic in ['BL', 'B', 'BEQ', 'BNE', 'BLT', 'BGT']:
                symbol = line[line.index(' '):].strip()
                symbol = symbol.replace('.', '%s.' % function_name) # process local labels
                xrefs_to.append(symbol)
            if mnemonic == 'LDR' and '[' not in line:
                pool = line[line.index(',')+1:].strip()
                pool = pool.replace('.', '%s.' % function_name) # process local labels
                pool = pool.replace('=', '') # remove = from pool
                xrefs_to.append(pool)

        # process any pool data present in the function
        if (has_label(line) and is_data(line)
                # in case only a label first line, and data the next
                or (i+1 <= len(lines) and has_label(line) and is_data(lines[i+1]))):

            # find the end of the data unit
            data_end = i
            for j in range(i+1, len(lines)):
                data_end = j # data unit could end at the last line
                # the presence of a next label or code ends a data unit
                if has_label(lines[j]) or is_code(lines[j]):
                    break
            # compute line numbers relative to unfiltered content
            cur_label = get_label(line)
            start_idx = unit.content.index('\n' + cur_label)+1

            # find the pool data content
            if data_end == len(lines)-1 and 'thumb_func_end' in unit.content:
                pool_content = unit.content[start_idx:unit.content.rindex('thumb_func_end')]
            elif data_end == len(lines)-1 and 'arm_func_end' in unit.content:
                pool_content = unit.content[start_idx:unit.content.rindex('arm_func_end')]
            elif is_code(lines[data_end]):
                # code is not unique, therefore unsafe to search. Just return filtered content
                # TODO: maybe redesign to not filter at all?
                pool_content = ''.join(lines[i:data_end])
            elif data_end != i:
                new_label = get_label(lines[data_end])
                end_search = '\n' + new_label if new_label else lines[data_end]
                pool_content = unit.content[start_idx:unit.content.rindex(end_search)]
            else:
                pool_content = unit.content[start_idx:]

            # create sub unit and process it
            line_number = unit.line_number + unit.content[:start_idx].count('\n')+1
            pool_unit = AsmFile.Unit(AsmFile.UNITS.DATA, pool_content, unit.file_path, line_number)
            pool_data += process_data(pool_unit, sym_table, function_name)

    # filter out xrefs_to that are locals
    for ea in xrefs_to:
        if ea in locals:
            xrefs_to.remove(ea)

    # construct output
    out = 'F %07x <%s>:\n' % (function_ea, function_name)
    out += '\tpath: %s:%d\n' % (unit.file_path, unit.line_number)
    out += '\ttype: %s\n' % (function_type)
    out += '\tlocal: ['
    for label in locals:
        # process local labels
        if label.startswith('.'):
            label = function_name + label
        out += '%07x <%s>, ' % (sym_table[label], label)
    if len(locals): out = out[:-2] # filer last ', '
    out += ']\n'
    out += '\txrefs_to: ['
    for label in xrefs_to:
        offset = 0
        if '+' in label:
            base = 16 if '0x' in label else 10
            offset = int(label[label.index('+')+1:], base)
            label = label[:label.index('+')]
        # process local labels
        if label.startswith('.'):
            label = function_name + label
        out += '%07x <%s>, ' % (sym_table[label]+offset, label)
    if len(xrefs_to): out = out[:-2] # filer last ', '
    out += ']\n'
    if pool_data:
        out += '\tpool:\n\t\t' + pool_data.replace('\n', '\n\t\t') + '\n'

    return out


def process_code(unit, sym_table, warning=False):
    # first label in function is the function label
    content = filter_source(unit.content)
    lines = content.split('\n')
    if warning: print('WARNING: Non-function code in %s:%d' % (unit.file_path, unit.line_number))
    if has_label(lines[0]):
        return process_function(unit, sym_table, None).replace('F ', 'C ', 1)
    return ''

def process_data(unit, sym_table, function_label=''):
    """
    Processes the following parameters:
        Data effective address (according to the symbol table
        Data name
        File Location: what file, which line number
        Data types: List of each type, followed by number of elements. Types indicated by DATA_TYPES.
        xrefsTo: List of symbols being referred to and their effective address
    Format:
        D data_ea <data_name>:
            path: file_path:line_number
            types: [(data_type, num_elements), ...]
            xrefs_to: [xref_ea <xref_name>, ...]
    :param unit: AsmFile.Unit representing the data to analyze
    :param sym_table: dictionary to map labels to effective addresses
    :param function_label: if thsi is a local data unit, its function label must be identified
    :return: string format
    """
    content = filter_source(unit.content)
    lines = content.split('\n')
    data_label = get_label(lines[0]).replace(':', '')
    if data_label.startswith('.'):
        data_label = function_label + data_label
    data_ea = sym_table[data_label]

    types = [[DATA_TYPES.ERROR, 0]]
    xrefs_to = []
    for i in range(len(lines)):
        line = filter_label(lines[i]).strip()
        if line == '':
            continue
        elements = line.split(', ')
        # parse data directives
        if line.startswith('.byte'):
            data_type = DATA_TYPES.BYTE
        elif line.startswith('.hword'):
            data_type = DATA_TYPES.HWORD
            pass
        elif line.startswith('.ascii') or line.startswith('.asciz'):
            data_type = DATA_TYPES.ASCII
        elif line.startswith('.balign'):
            data_type = DATA_TYPES.ALIGN
            line = line.replace('.balign ', '')
            line = line[:line.index(', 0')] ## usually aligns need to specify padding byte
            types.append([data_type, int(line, 16 if '0x' in line else 10)])
        elif line.startswith('.align'):
            data_type = DATA_TYPES.ALIGN
            line = line.replace('.align ', '')
            line = line[:line.index(', 0')] ## usually aligns need to specify padding byte
            types.append([data_type, 2**int(line, 16 if '0x' in line else 10)])
        elif line.startswith('.word'):
            # might be data or an xref
            data = elements[0].replace('.word ', '').strip()
            if data.isdigit() or data.startswith('0x') or '*' in data: # TODO: handle constant multipliction properly
                data_type = DATA_TYPES.WORD
            else:
                data_type = DATA_TYPES.OFF
                # register xrefs
                for element in elements:
                    element = element.replace('.word ','').strip()

                    # handle operations on offsets
                    if '<<' in element:
                        # TODO: process expressions properly
                        element = element.replace('+ 1<<31', '').strip() # compressed pointers
                    if '*' in element:
                        continue
                    if element.isdigit() or element.startswith('0x'):
                        # sometimes data is put alongside symbols, such as 0x0
                        continue
                    xrefs_to.append(element)
        else:
            data_type = DATA_TYPES.ERROR
            print('ERROR: invalid data format\n', function_label, '||', data_label, '||', unit.content)

        # record number of elements
        if types[-1][0] == data_type and data_type != DATA_TYPES.ALIGN:
            types[-1][1] += len(elements)
        else:
            types.append([data_type, len(elements)])

    # remove placeholder ERROR type, unless it has more than 0 count
    if types[0][1] == 0:
        types = types[1:] if len(types) > 1 else []

    # construct output
    out = 'D %07x <%s>:\n' % (data_ea, data_label)
    out += '\tpath: %s:%d\n' % (unit.file_path, unit.line_number)
    if types:
        out += '\ttypes: ['
        for type in types:
            out += '(%s, %d), ' % (DATA_TYPES_STR[type[0]], type[1])
        out += ']\n'
    if xrefs_to:
        out += '\txrefs_to: ['
        for label in xrefs_to:
            offset = 0
            if '+' in label:
                base = 16 if '0x' in label else 10
                offset = int(label[label.index('+')+1:], base)
                label = label[:label.index('+')]
             # process local labels
            if label.startswith('.'):
                label = function_label + label
            out += '%07x <%s>, ' % (sym_table[label]+offset, label)
        out += ']\n'

    return out


def process_function_types(units, warning=False):
    # type: list[AsmFile.Unit] -> dict[str, str]
    def find_nth(string, substring, n):
        if (n == 1):
            return string.find(substring)
        else:
            return string.find(substring, find_nth(string, substring, n - 1) + 1)

    out = {} # type: dict(str, str)
    units.sort(key=lambda x: x.file_path, reverse=True)
    file_functions = {} # type: dict(str, list[AsmFile.Unit])
    for unit in units:
        if unit.id == AsmFile.UNITS.FUNCTION:
            if unit.file_path in file_functions:
                file_functions[unit.file_path].append(unit)
            else:
                file_functions[unit.file_path] = [unit]

    for path in file_functions.keys():
        with open('docs/decomp/' + path[path.rindex('/')+1:path.rindex('.')] + '.c', 'r') as c_file:
            c_lines = c_file.readlines()
        c_content = ''.join(c_lines)

        for unit in file_functions[path]:
            content = filter_source(unit.content)
            function_name = content[:content.index(':')]
            function_name = function_name[function_name.rindex('\n')+1:].strip()
            for i in range(c_content.count(function_name + '(')):
                line_number = c_content[:find_nth(c_content, function_name + '(', i+1)].count('\n')
                if '{' in c_lines[line_number+1]:
                    out[function_name] = c_lines[line_number]
                    break
            if function_name not in out and function_name + '@' in c_content:
                line_number = c_content[:c_content.index(function_name + '@')].count('\n')
                if '{' in c_lines[line_number+1]:
                    out[function_name] = c_lines[line_number]
            if function_name not in out:
                if warning: print('WARNING: Type unidentified for %s' % function_name)
                out[function_name] = ''

    return out


def main():
    import sys

    if len(sys.argv) < 2:
        print('usage: <asmFile>')
        exit(0)

    units = []
    for arg in sys.argv[1:]:
        print('> reading %s...' % arg)
        units += read_file(arg)

    print('> processing symbol table from elf...')
    sym_table = get_sym_table('bn6f.elf')

    print('> processing function types...')
    function_types = process_function_types(units)

    print('> processing into bn6f.rsync...')
    write_file = open('bn6f.rsync', 'w')
    for unit in units:
        if unit.id == AsmFile.UNITS.FUNCTION:
            write_file.write(process_function(unit, sym_table, function_types) + '\n')
        elif unit.id == AsmFile.UNITS.CODE:
            write_file.write(process_code(unit, sym_table) + '\n')
        elif unit.id == AsmFile.UNITS.DATA:
            write_file.write(process_data(unit, sym_table) + '\n')
        else:
            pass
    write_file.close()

    print("Program Complete!")

if __name__ == '__main__':
    main()
