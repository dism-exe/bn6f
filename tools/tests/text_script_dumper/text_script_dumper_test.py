import unittest
from tools.dumpers.text_script_dumper import *

class RegressionTests(unittest.TestCase):
    def setUp(self):
        pass
    def tearDown(self):
        pass

    def assertTestFile(self, test_name):
        curdir = 'text_script_dumper/'

        with open(curdir + test_name + '.bin', 'rb') as bin_file:
            script, end_addr = read_script(0, bin_file, '../dumpers/').build()
        # for i in script: print(i)
        # print(hex(end_addr))
        with open(curdir + test_name + '.s', 'r', encoding='utf-8') as f:
            lines = f.readlines()
            script = '\n'.join(script).split('\n')
            for line in script:
                if not line.strip():
                    script.remove(line)
            for line in lines:
                if not line.strip():
                    lines.remove(line)
            cur_script_idx = -1
            for i in range(len(script)):
                if script[i].strip().startswith('text_script '):
                    cur_script_idx += 1
                self.assertEqual(script[i].strip(), lines[i].strip(), 'mismatch in script %d' % cur_script_idx)
            self.assertEqual(int(lines[-1], 16), end_addr, 'end address mismatch')
            self.assertEqual(len(script), len(lines) - 1, 'content length mismatch')


    def test_TestScriptFolderNames(self):
        # tests for basic functionality
        self.assertTestFile('TextScriptFolderNames86cf4ac')

    def test_TextScriptChipDescriptions0(self):
        # tests for maximum number of rel. pointers
        # tests for unicode occurance: ー
        self.assertTestFile('TextScriptChipDescriptions0_86eb8b8')

    def test_TextScriptDialog87E30A0(self):
        # tests for multiple repetitive rel. pointers
        self.assertTestFile('TextScriptDialog87E30A0')

    def test_TextScriptBattleTutFullSynchro(self):
        # tests for escaped double quotes
        # tests for higher priority of ts_jump against ts_jump_random
        self.assertTestFile('TextScriptBattleTutFullSynchro')

    def test_TextScriptWhoAmI(self):
        # tests for dynamic ts_select parameters
        # tests for higher priority of ts_jump against ts_jump_random
        self.assertTestFile('TextScriptWhoAmI')

    def test_TextScriptChipTrader86C580C(self):
        # tests for printing commands and partial parameter masks
        # tests for alternative commands (requires mmbn6s.ini)
        # tests for dynamic ts_select parameters
        # self.assertTestFile('TextScriptChipTrader86C580C')
        pass

    def test_TextScriptChipNames1(self):
        # tests for a relative label inside a string. Likely the devs' fault.
        pass

class CommandParsingTests(unittest.TestCase):
    pass
    # def testBasicCase(self):
    #     # mask: FF 00
    #     pass


if __name__ == '__main__':
    unittest.main()
