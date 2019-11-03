import sys
import argparse

def error(msg):
    print(msg)
    exit(1)

class Commands:

    @staticmethod
    def range(args):
        if len(args.args) < 2:
            error('usage: subfile <input_file> range <start_address> <end_address>')
            
        # ~0x8000000 in case of ROM addresses. accounting for this as it's a common task
        start_addr = int(args.args[0], 16) & ~0x8000000
        end_addr = int(args.args[1], 16) & ~0x8000000

        with open(args.input_file, 'rb') as input_file:
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
                print(out)




if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="utility to produce data chunks from binaries")
    parser.add_argument('input_file', type=str, help='file to process')
    parser.add_argument('cmd', type=str, help='determines how to process the file')
    parser.add_argument('args', type=str, nargs='*', help='command arguments')
    parser.add_argument('-o', '--output', type=str)
    parser.add_argument('--dir-bytes', action='store_true', help='outputs .byte directives instead of a binary')
    args = parser.parse_args()

    if not hasattr(Commands, args.cmd):
        print('command %s not found.' % (args.command))
        exit(1)
    getattr(Commands, args.cmd)(args)
    exit(0)

