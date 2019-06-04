import unittest
from tools.dumpers.text_script_dumper import *

class BasicTests(unittest.TestCase):
    def setUp(self):
        pass
    def tearDown(self):
        pass

    def assertTestFile(self, test_name):
        curdir = 'text_script_dumper/'
        script, end_addr = read_script(0, curdir + test_name + '.bin', '../dumpers/mmbn6.ini')
        with open(curdir + test_name + '.s', 'r') as f:
            lines = f.readlines()
            script = '\n'.join(script).split('\n')
            for line in script:
                if not line.strip():
                    script.remove(line)
            for line in lines:
                if not line.strip():
                    lines.remove(line)
            self.assertEqual(int(lines[-1], 16), end_addr, 'end address mismatch')
            self.assertEqual(len(script), len(lines) - 1, 'content length /ismatch')
            for i in range(len(script)):
                self.assertEqual(script[i].strip(), lines[i].strip(), 'item %d mismatch' % i)


    def test_TestScriptFolderNames(self):
        self.assertTestFile('TextScriptFolderNames86cf4ac')

    def test_TextScriptChipDescriptions0(self):
        # tests for maximum number of rel. pointers
        self.assertTestFile('TextScriptChipDescriptions0_86eb8b8')

    def test_TextScriptDialog87E30A0(self):
        # tests for multiple repetitive rel. pointers
        self.assertTestFile('TextScriptDialog87E30A0')

    def test_TextScriptBattleTutFullSynchro(self):
        # tests for escaped double quotes
        # tests for priority of ts_jump and ts_jump_random
        self.assertTestFile('TextScriptBattleTutFullSynchro')

class CommandParsingTests(unittest.TestCase):
    pass
    # def testBasicCase(self):
    #     # mask: FF 00
    #     pass


if __name__ == '__main__':
    unittest.main()
