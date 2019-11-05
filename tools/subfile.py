import sys
import argparse

def error(m):
    print('error: {m}'.format(**vars()))
    exit(1)

class Commands:
    @staticmethod
    def range(input_file, argv, get_desc=False):
        desc = 'computes a subset of the file based on a start and end address'
        if get_desc:
            return desc

        parser = argparse.ArgumentParser(description=desc)
        parser.prog = parser.prog + ' ' + Commands.range.__name__
        parser.add_argument('start_address')
        parser.add_argument('end_address')
        parser.add_argument('-o', '--output', type=str)
        parser.add_argument('--dir-bytes', action='store_true', help='outputs .byte directives instead of a binary')
        args = parser.parse_args(argv)

            
        # ~0x8000000 in case of ROM addresses. accounting for this as it's a common task
        start_addr = int(args.start_address, 16) & ~0x8000000
        end_addr = int(args.end_address, 16) & ~0x8000000

        with open(input_file, 'rb') as input_file:
            input_file.seek(start_addr)
            out = input_file.read(end_addr-start_addr)

            def print_directives(data, directive: str, entry_per_line: int):
                s = ''
                i = 0
                for b in data:
                    if i % entry_per_line == 0:
                        if i != 0:
                            if s.endswith(', '):
                                s = s[:-2]
                            s += '\n'
                        s += '.{0} '.format(directive)
                    s += hex(b) + ', '
                    i += 1
                if s.endswith(', '):
                    s = s[:-2]
                return s

            # determine output method
            if args.dir_bytes:
                out = print_directives(out, 'byte', 16)

            if args.output:
                with open(args.output, 'wb') as output_file:
                    output_file.write(out)
            else:
                sys.stdout.buffer.write(out)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="utility to produce data chunks from binaries", add_help=False)
    parser.add_argument('input_file', type=str, help='file to process')
    parser.add_argument('cmd', type=str, help='command to execute regarding the archive list',)

    # add list of commands and their descriptions to usage
    help = parser.format_help() + '\n'
    help += 'available commands:\n'
    for cmd in filter(lambda key: not key.startswith('__'), Commands.__dict__.keys()):
        help += "  {0}: {1}\n".format(cmd, getattr(Commands, cmd)(None, None, get_desc=True))
    help += ' \n' # for some reason, I had to add that space for it to add an empty new line
    parser.usage = help[help.index(':')+1:]

    # when specifying argv, it mustn't contain the program name
    args = parser.parse_args(sys.argv[1:3])

    getattr(Commands, args.cmd)(args.input_file, sys.argv[3:])
