import unittest
import io
from tools.dumpers.text_script_dumper import *

class RegressionTests(unittest.TestCase):
    def setUp(self):
        pass
    def tearDown(self):
        pass

    def assertCompilation(self, textScript: TextScript, byte_stream, addr: int):
        prev_addr = byte_stream.tell()
        byte_stream.seek(addr)

        data = textScript.compile()
        for i in range(0, textScript.size):
            self.assertEqual(byte_stream.read(1), data[i:i+1],
                             'compilation data mismatch at byte 0x%0x' % i)

        byte_stream.seek(prev_addr)

    def assertTestFile(self, test_name):
        curdir = 'text_script_dumper/'

        with open(curdir + test_name + '.bin', 'rb') as bin_file:
            textScript = read_script(0, bin_file, '../dumpers/')
            script, end_addr = textScript.build()

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
            bin_file.seek(0)
            self.assertCompilation(textScript, bin_file, 0)

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

class CommandIdentificationTess(unittest.TestCase):
    def setUp(self):
        self.sects = read_custom_ini('../dumpers/' + 'mmbn6.ini')
        self.sects_s = read_custom_ini('../dumpers/' + 'mmbn6s.ini')

    def assertCommandIdentified(self, cmd, params, cmdName, useSecondary):
        if useSecondary:
            sects = self.sects_s
            interpreterMsg = '(secondary interpreter)'
        else:
            sects = self.sects
            interpreterMsg = '(primary interpreter)'

        status, sect = find_valid_cmd_base(list(cmd), sects)
        self.assertTrue(status, 'failed to match on %s command %s' % (cmdName, interpreterMsg))
        self.assertTrue('name' in sect, 'invalid section returned')
        self.assertEqual(cmdName, sect['name'])
        num_params, sect_p = find_param_count(cmd, sects)
        self.assertEqual(num_params, len(params), 'invalid number of params for command %s' % cmdName)
        self.assertEqual(sect, sect_p, 'identified sect mismmatch')

    def testZeroParameterCommands(self):
        self.assertCommandIdentified(b'\xe5', b'', 'nop', useSecondary=False)
        self.assertCommandIdentified(b'\xe6', b'', 'end', useSecondary=False)
        self.assertCommandIdentified(b'\xe6', b'', 'end', useSecondary=True)
        self.assertCommandIdentified(b'\xfa\x00', b'', 'printShortString', useSecondary=True)

    def testNormalParameterCommands(self):
        self.assertCommandIdentified(b'\xe7', b'\x00', 'keyWait', useSecondary=False)
        self.assertCommandIdentified(b'\xef', b'\x00\x01', 'checkGameVersion', useSecondary=True)
        self.assertCommandIdentified(b'\xec\x01', b'\x00', 'spacePx', useSecondary=True)
        self.assertCommandIdentified(b'\xed', b'\x00\x00', 'select', useSecondary=False)

    @staticmethod
    def createPrintCommand(param0, param1, id):
        return bytes([0xFA, 0x00, ((param0<<4)&0xFF) | (param1>>4), ((param1<<4)&0xFF) | id])

    def testBitfieldParameterCommands(self):
        # self.assertCommandIdentified(self.createPrintCommand(0xF, 0xFF, 0), b'\x0f\x00', 'printItem', useSecondary=False)
        # self.assertCommandIdentified(self.createPrintCommand(0xF, 0xFF, 2), b'\x0f\xff', 'printChip2', useSecondary=False)
        pass


class CommandParsingTests(unittest.TestCase):
    def setUp(self):
        self.sects = read_custom_ini('../dumpers/' + 'mmbn6.ini')
        self.sects_s = read_custom_ini('../dumpers/' + 'mmbn6s.ini')
        self.select_sect = lambda sel: [self.sects, self.sects_s][sel]

    def assertCommandparsed(self, byteStream, cmd, params, cmdName, prioritize_s):
        startAddr = byteStream.tell()
        out = read_cmd(byteStream,byteStream.read(1), self.sects, self.sects_s, prioritize_s)
        if not out:
            self.fail('%s: could not read commad: %s %s' % (cmdName, cmd, params))
        self.assertEqual(out[0], cmd, '%s: invalid command read' % cmdName)
        self.assertEqual(out[1], params, '%s: invalid parameters read' % cmdName)
        sect = find_cmd(cmd, params, self.select_sect(out[2]))
        if not sect:
            self.fail('%s: could not find commad section: %s %s' % (cmdName, cmd, params))
        self.assertEqual(sect['name'], cmdName, 'invalid command found')
        # print(sect['name'])
        self.assertEqual(byteStream.tell(), startAddr + get_cmd_len(*out),
                          '%s: read additional bytes from stream' % cmdName)

    def addTestData(self, bytes, cmds, data, cmd, param, name, prioritize_s, nop=0):
        bytes += data
        cmds.append((cmd, param, name, prioritize_s))
        # if there are nops in the data for demonstration purposes (not all bytes read)
        for i in range(nop):
            cmds.append((b'\xe5', b'', 'nop', False))
        return bytes

    def runTestData(self, bytes, cmds):
        bs = io.BytesIO(bytes)
        for cmd, params, name, priority in cmds:
            self.assertCommandparsed(bs, cmd, params, name, priority)

    def testBasicCommands(self):
        self.assertCommandparsed(io.BytesIO(b'\xe6'), b'\xe6', b'', 'end', prioritize_s=False)
        bytes = b''
        cmds = []
        bytes = self.addTestData(bytes, cmds, b'\xe5', b'\xe5', b'', 'nop', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xe6', b'\xe6', b'', 'end', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xe6', b'\xe6', b'', 'end', prioritize_s=True)
        bytes = self.addTestData(bytes, cmds, b'\xe8\x08', b'\xe8\x08', b'',
                                 'msgOpenMenu', prioritize_s=True)
        bytes = self.addTestData(bytes, cmds, b'\xe8\x05\x00\xff', b'\xe8\x05', b'\x00\xff',
                                 'msgCloseExt', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xfa\x04\x00\x01', b'\xfa\x04', b'\x00\x01',
                                 'printBuffer04', prioritize_s=False)
        self.runTestData(bytes, cmds)

    def  testConflictedCommands(self):
        bytes = b''
        cmds = []
        bytes = self.addTestData(bytes, cmds, b'\xef\x1e\x00\x11\x22\x33\x44\x55',
                                 b'\xef\x1e', b'\x00\x11\x22\x33\x44\x55',
                                 'checkNaviCustProgram', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xef\x1e\x00\xe5\xe5\xe5\xe5\xe5',
                                 b'\xef', b'\x1e\x00',
                          'checkGameVersion', prioritize_s=True, nop=5)
        # in order to ensure the correct command is parsed, the conflict must trigger an error.
        # the 0xFF would do this unless the command is parsed correctly
        bytes = self.addTestData(bytes, cmds, b'\xef\x1e\x00\x11\x22\x33\x44\xff',
                                 b'\xef\x1e', b'\x00\x11\x22\x33\x44\xff',
                                 'checkNaviCustProgram', prioritize_s=False)
        self.runTestData(bytes, cmds)

    def testPriorityCommands(self):
        bytes = b''
        cmds = []
        bytes = self.addTestData(bytes, cmds, b'\xf0\x03\xe5', b'\xf0', b'\x03',
                                 'jumpRandom', prioritize_s=False, nop=1)
        bytes = self.addTestData(bytes, cmds, b'\xf0\xff', b'\xf0', b'\xff',
                                 'jumpRandom', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xf0\x00\xff', b'\xf0\x00', b'\xff',
                                 'jump', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xf0\x01', b'\xf0\x01', b'',
                                 'jumpBuffer', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xf0\x02\xff', b'\xf0\x02', b'\xff',
                                 'jumpBufferSet', prioritize_s=False)
        self.runTestData(bytes, cmds)


    def testBitfieldCommands(self):
        bytes = b''
        cmds = []
        bytes = self.addTestData(bytes, cmds, b'\xfa\x00\x1f\xf0', b'\xfa\x00\x00\x00', b'\x01\xff',
                                 'printItem', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xfa\x00\x1f\xf1', b'\xfa\x00\x00\x01', b'\x01\xff',
                                 'printChip1', prioritize_s=False)
        bytes = self.addTestData(bytes, cmds, b'\xfa\x00\x1f\xf6', b'\xfa\x00\x00\x06', b'\x01\xff',
                                 'printNaviCustProgram6', prioritize_s=False)
        self.runTestData(bytes, cmds)

    def testDynamicCommands(self):
        bytes = b''
        cmds = []
        bytes = self.addTestData(bytes, cmds, b'\xed\x00\x11', b'\xed', b'\x00\x11',
                                 'select', prioritize_s=True)
        # cut off by a different command, but continues on for 3 more commands
        bytes = self.addTestData(bytes, cmds, b'\xed\x00\x11\xe5', b'\xed', b'\x00\x11',
                                 'select', prioritize_s=False, nop=1)
        bytes = self.addTestData(bytes, cmds, b'\xed\x00\x11\x22\xe5', b'\xed', b'\x00\x11\x22',
                                 'select', prioritize_s=False, nop=1)
        bytes = self.addTestData(bytes, cmds, b'\xed\x00\x11\x22\x33\xe5', b'\xed', b'\x00\x11\x22\x33',
                                 'select', prioritize_s=False, nop=1)
        bytes = self.addTestData(bytes, cmds, b'\xed\x00\x11\x22\x33\x44\xe5', b'\xed', b'\x00\x11\x22\x33\x44',
                                 'select', prioritize_s=False, nop=1)
        self.runTestData(bytes, cmds)


if __name__ == '__main__':
    unittest.main()
