"""
Author: Lan <lanhikarixx@gmail.com>
"""

import sys
import argparse
import datetime
# import result
# from result import Result, Ok, Err
from typing import Dict, Tuple, List
import unittest

def app_gen(args):
    print('Hello!')

def main(args: argparse.Namespace):
    print(args)

    if args.subcommand == 'gen':
        app_gen(args)


def cmdline_args():
    # Make parser object
    p = argparse.ArgumentParser(description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    
    #p.add_argument("required_int", type=int,
    #               help="req number")
    #p.add_argument("--on", action="store_true",
    #               help="include to enable")
    #p.add_argument('-v', '--verbose', action='count', default=0,
    #               help="Increase verbosity level (use -v, -vv, or -vvv)")
                   
    subparsers = p.add_subparsers(dest='subcommand')
    subparsers.required = True

    sp = subparsers.add_parser('gen', 
                               help='Runs analysis of the source and generates calltree.db')
    sp.add_argument("rom_addr",
                    help="desc")

    # sp = subparsers.add_parser('today', 
    #                 help='display both iso and week dates for today')
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

    args = cmdline_args()
    main(args)


import unittest
class Module1UnitTests(unittest.TestCase):
   def test_something(self):
       self.assertTrue(True, "rigorous test :)")

   def test_prototype(self):
       pass
       # out = subprocess.check_output('timetrap -v d', shell=True)
       # os.system('timetrap -v d')

class Module2UnitTests(unittest.TestCase):
   def test_something(self):
       self.assertTrue(True, "rigorous test :)")


if __name__ == '__main__':
    _main()
