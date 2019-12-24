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


# TODO: refactored version of AsmFile._is_code
def filter_label_and_check_if_code(content_lines, line_number):
    # filter label
    if ':' in content_lines[line_number]:
        line = content_lines[line_number+1].strip()
    else:
        line = content_lines[line_number].strip()
    return is_code(line)


def reworked_filter_label_and_check_if_code(content_lines, line_number):
    # filter label
    if ':' in content_lines[line_number]:
        line = content_lines[line_number+1].strip()
    else:
        line = content_lines[line_number].strip()
    return is_code(line)


def is_data(line):
    data_directives = \
        [
        '.byte', '.hword', '.word', '.asciz', '.ascii', '.align',
        '.balign', '.incbin', '.space',
        ]
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
    if not has_label(line):
        return line

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