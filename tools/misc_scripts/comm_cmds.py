import sys
import argparse
import enum
import re
from typing import Dict, List, Optional, Tuple, TypeVar
import checkpipe as pipe

T = TypeVar('T')
U = TypeVar('U')

g_cache_dict = {}

def file_debug_log(s):
    path = 'debug.log'

    if file_debug_log._first:
        file_debug_log._first = False

        with open(path, 'w') as f:
            f.write(s + '\n')
    else:
        with open(path, 'a') as f:
            f.write(s + '\n')

file_debug_log._first = True


class AppDiffSuppressSingleChanges:
    '''
    We are expecting lines similar to this:

    ```sh
    --- /home/lan/a 2026-08-01 16:29:13.637607040 +0300
    +++ /home/lan/b 2026-08-01 16:28:02.006071348 +0300
    @@ -347,13 +347,13 @@
    ^~~ start of changeset
          306:      3101            adds    r1, #1
    ^~~ neutral line since no prefix.
          308:      8001            strh    r1, [r0, #0]
          30a:      f000 fd81       bl      0xe10
    -     30e:      4802            ldr     r0, [pc, #8]    ; (0x318)
    ^~~ minus: start of negative line changes
    -     310:      46fe            mov     lr, pc
    -     312:      4700            bx      r0
    -     314:      e002            b.n     0x31c
    -     316:      0000            movs    r0, r0
    -     318:      e3f1            b.n     0xafe
    -     31a:      087f            lsrs    r7, r7, #1
    +     30e:      480e            ldr     r0, [pc, #56]   ; (0x348)
    ^~~ positive: start of postiive line changes
    +     310:      4651            mov     r1, sl
    +     312:      6809            ldr     r1, [r1, #0]
    +     314:      7809            ldrb    r1, [r1, #0]
    +     316:      5840            ldr     r0, [r0, r1]
    +     318:      46fe            mov     lr, pc
    +     31a:      4700            bx      r0
          31c:      f001 f916       bl      0x154c
          320:      f00a fa07       bl      0xa732
          324:      d001            beq.n   0x32a
    ```

    A single changeset may have many changes.

    Lines may be ANSI colored, so they may contain \\x1be[{n}m and end with \\x1be[0m.
    '''
    class Mode(enum.Enum):
        NEUTRAL = enum.auto()   # A neutral line (common)
        POS = enum.auto()       # A positive line
        NEG = enum.auto()       # A negative line
        SET = enum.auto()       # changeset line (of form "@@ ...")
        NEGF = enum.auto()      # negative file
        POSF = enum.auto()      # positive file

    @staticmethod
    def filter_out_color_ansi(line: str) -> str:
        cls = AppDiffSuppressSingleChanges
        global g_cache_dict

        cache_key = 'AppDiffSuppressSingleChanges.filter_out_color_ansi.regex'

        if cache_key in g_cache_dict:
            regex = g_cache_dict[cache_key]
        else:
            regex = re.compile(r'\x1b\[[0-9]*m')
            g_cache_dict[cache_key] = regex

        matches = regex.findall(line)

        for match in matches:
            line = line.replace(match, '')

        return line

    @staticmethod
    def get_line_mode(line: str) -> 'AppDiffSuppressSingleChanges.Mode':
        cls = AppDiffSuppressSingleChanges

        line1 = cls.filter_out_color_ansi(line.strip())

        if line1.startswith('---'):
            return cls.Mode.NEGF
        elif line1.startswith('+++'):
            return cls.Mode.POSF
        elif line1.startswith('+'):
            return cls.Mode.POS
        elif line1.startswith('-'):
            return cls.Mode.NEG
        elif line1.startswith('@@'):
            return cls.Mode.SET
        else:
            return cls.Mode.NEUTRAL

    @staticmethod
    def get_current_change(lines: List[str], from_nth: int) -> Tuple[List[str], List[str]]:
        """
        # Contract
        - The following conditions must hold or an exception will be raised:
            - `from_nth` line must be of mode POS or NEG.
            - Provided `from_nth - 1`th line exists (`prev_line`), `prev_line` is of mode NEUTRAL or SET.
        """
        cls = AppDiffSuppressSingleChanges

        line_mode = cls.get_line_mode(lines[from_nth])
        if not (line_mode == cls.Mode.POS or line_mode == cls.Mode.NEG):
            raise Exception(f'(line_mode {line_mode}) for (line {lines[from_nth]}) is invalid.')

        if from_nth > 0:
            prev_line_mode = cls.get_line_mode(lines[from_nth - 1])
            assert(prev_line_mode == cls.Mode.NEUTRAL or prev_line_mode == cls.Mode.SET)

        mut_out_neg = []
        mut_out_pos = []

        for i in range(from_nth, len(lines)):
            cur_line = lines[i]
            cur_line_mode = cls.get_line_mode(cur_line)

            if cur_line_mode == cls.Mode.POS:
                mut_out_pos.append(cur_line)
            elif cur_line_mode == cls.Mode.NEG:
                mut_out_neg.append(cur_line)
            else:
                break

        return (mut_out_neg, mut_out_pos)

    class Changeset:
        def __init__(self, changes: List[Tuple[List[str, List[str]]]], neutral_lines: List[str]):
            # A list of contiguous negative/positive lines.
            self.changes = changes

            # Common lines
            self.neutral_lines = neutral_lines

                
    @staticmethod
    def get_current_changeset(lines: List[str], from_nth: int) -> 'AppDiffSuppressSingleChanges.Changeset':
        """
        Gets the negative, postive, and neutral lines of a changeset.
        # Contract
        - The following conditions must hold or an exception will be raised:
            - line at `from_nth` must be a valid changeset start, ie it must be of mode SET.
        """
        cls = AppDiffSuppressSingleChanges

        line_from = lines[from_nth]
        line_from_mode = cls.get_line_mode(line_from)
        assert(line_from_mode == cls.Mode.SET)

        mut_changes = []
        mut_neutral = []
        mut_remaining_to_skip = 0

        for i in range(from_nth + 1, len(lines)):
            if mut_remaining_to_skip != 0:
                mut_remaining_to_skip -= 1
                continue

            cur_line = lines[i]
            cur_line_mode = cls.get_line_mode(cur_line)

            if cur_line_mode == cls.Mode.NEUTRAL:
                mut_neutral.append(lines[i])
                continue

            if cur_line_mode == cls.Mode.SET or cur_line_mode == cls.Mode.POSF or cur_line_mode == cls.Mode.NEGF:
                break

            (pos_change, neg_change) = cls.get_current_change(lines, i)

            mut_remaining_to_skip = len(pos_change) + len(neg_change) - 1
            assert(mut_remaining_to_skip > 0)

            mut_changes.append((pos_change, neg_change))

        return cls.Changeset(mut_changes, mut_neutral)

    @staticmethod
    def app_diff_suppress_single_changes(args: argparse.NameSpace):
        cls = AppDiffSuppressSingleChanges
        inp = sys.stdin.read()

        mut_remaining_to_skip = 0
        mut_remaining_to_print = 0

        lines = inp.splitlines()

        for (i, line) in enumerate(lines):
            if mut_remaining_to_skip != 0:
                mut_remaining_to_skip -= 1
                continue

            if mut_remaining_to_print != 0:
                mut_remaining_to_print -= 1
                print(line)
                continue

            line_mode = cls.get_line_mode(line)

            if line_mode == cls.Mode.NEGF or line_mode == cls.Mode.POSF:
                print(line)
            elif line_mode == cls.Mode.SET:
                changeset = cls.get_current_changeset(lines, i)

                changeset_changes_all_one_checks = (
                    changeset
                        .changes
                        .__iter__()
                        | pipe.OfIter[Tuple[List[str], List[str]]].map(lambda t: len(t[0]) == 1 and len(t[1]) == 1)
                        | pipe.OfIter[bool].to_list()
                )

                changeset_num_lines = (
                    changeset
                        .changes
                        .__iter__()
                        | pipe.OfIter[Tuple[List[str], List[str]]].map(lambda t: len(t[0]) + len(t[1]))
                        | pipe.OfIter[int].to_list()
                        | pipe.Of[List[int]].map(sum)
                ) + len(changeset.neutral_lines)

                if all(changeset_changes_all_one_checks):
                    # Skip this
                    mut_remaining_to_skip = changeset_num_lines
                else:
                    # non-suppressed changeset, print it
                    print(line)
                    mut_remaining_to_print = changeset_num_lines
            else:
                raise Exception('We must not process changeset internals at this level')


def main(args: argparse.Namespace):
    if args.subcommand == 'diff-suppress-single-changes':
        AppDiffSuppressSingleChanges.app_diff_suppress_single_changes(args)


def parse_cmdline_args() -> argparse.Namespace:
    desc = '''
    Commands I ended up using while reverse engineering bn6f that could come in handy
    '''

    p = argparse.ArgumentParser(prog='comm-cmds', description=desc,
        formatter_class=argparse.RawDescriptionHelpFormatter)

    p.add_argument('-v', '--verbose', action='count', default=0,
                   help='Increase verbosity level (use -v, -vv, or -vvv)')

    subparsers = p.add_subparsers(dest='subcommand')
    subparsers.required = True

    sp = subparsers.add_parser('diff-suppress-single-changes',
                               help='Suppress all changes with exactly 1 deletion and 1 addition')

    sp = subparsers.add_parser('unittest',
                    help='run the unit tests instead of main')

    return(p.parse_args())


def _main():
    if sys.version_info<(3,5,0):
        sys.stderr.write("You need python 3.5 or later to run this script\n")
        sys.exit(1)

    # if you have unittest as part of the script, you can forward to it this way
    if len(sys.argv) >= 2 and sys.argv[1] == 'unittest':
        import unittest
        sys.argv[0] += ' unittest'
        sys.argv.remove('unittest')
        print(sys.argv)
        unittest.main()
        exit(0)

    args = parse_cmdline_args()
    return main(args)


import unittest
class Module1UnitTests(unittest.TestCase):
   def test_something(self) -> None:
       self.assertTrue(True, "rigorous test :)")


if __name__ == '__main__':
    _main()
