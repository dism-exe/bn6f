import unittest
import os
import io
from text_script_dumper import *
import text_script_dumper as uut_dumper
import text_script_scanner
import definitions

class RegressionTests(unittest.TestCase):
    def setUp(self):
        self.test_data_dir = 'data/'
        self.command_context = CommandContext()
        self.rom_path = ModuleState.ROM_PATH
        pass
    def tearDown(self):
        pass

    def assertCompilation(self, textArchive: TextScriptArchive, byte_stream, addr: int):
        """
        Exhaustive test, tests that the text archive compiles to the correct bytes
        Shows the last 10 bytes and where a mismatch occurred
        :param textArchive:
        :param byte_stream:
        :param addr:
        :return:
        """
        prev_addr = byte_stream.tell()
        byte_stream.seek(addr)
        actual_data = b''
        data = textArchive.serialize()
        for i in range(0, textArchive.size):
            actual_data += byte_stream.read(1)
            # if i in textArchive.rel_pointers: print('[rel. pointer] text_script %d (0x%x)' % (sorted(list(set(textArchive.rel_pointers))).index(i), i))
            if i < 2*len(textArchive.rel_pointers):
                continue

            def tail_slice(byte_str, cur: int, window: int) -> str:
                # returns a slice with the last :window: elements up to :cur: inclusive or since the begenning
                return byte_str[max(cur-window, 0):cur+1]

            # print(textArchive.build())

            self.assertEqual(actual_data[i], data[i],
                             'compilation data mismatch at byte 0x%0x\nexpected slice:%s\nactual slice:  %s'
                             % (i, tail_slice(actual_data, i, 10), tail_slice(data, i, 10)))

        byte_stream.seek(prev_addr)


    def assertTestFile(self, test_name):
        with open(self.test_data_dir + test_name + '.bin', 'rb') as bin_file:
            textScript = TextScriptArchive.read_script(self.command_context, 0, bin_file)
            script = textScript.build()
            end_addr = textScript.addr + textScript.size

            # write output to file
            with open(self.test_data_dir + 'out/' + test_name + '.s', 'w') as out_file:
                out_file.write(script)
                out_file.write('\n' + hex(end_addr))

            # print('[script]')
            # print(script, hex(textScript.size))

            with open(self.test_data_dir + test_name + '.s', 'r', encoding='utf-8') as f:
                lines = f.readlines()
                script = script.split('\n')
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
        # tests for
        self.assertTestFile('TextScriptChipTrader86C580C')
        pass

    def test_TextScriptChipNames1(self):
        # tests for a relative label inside a string. Likely the devs' fault.
        pass

    def testAgbasmOutput(self):
        # update agbasm_output.s to test validity of the macro system in some instances
        with open(self.test_data_dir + 'TextScriptChipTrader86C580C' + '.bin', 'rb') as bin_file:
            text_script = TextScriptArchive.read_script(self.command_context, ea=0, bin_file=bin_file)
            with open(self.rom_path, 'rb') as gba_file:
                self.assertCompilation(text_script, gba_file, 0x6C580C)


class CommandIdentificationTess(unittest.TestCase):
    def setUp(self):
        self.ini_dir = ModuleState.INI_DIR
        self.sects = read_custom_ini(self.ini_dir + 'mmbn6.ini')
        self.sects_s = read_custom_ini(self.ini_dir + 'mmbn6s.ini')

    def assertCommandIdentified(self, cmd, params, cmdName, useSecondary):
        if useSecondary:
            sects = self.sects_s
            interpreterMsg = '(secondary interpreter)'
        else:
            sects = self.sects
            interpreterMsg = '(primary interpreter)'

        status, sect = TextScriptCommand.find_valid_cmd_base(list(cmd), sects)
        self.assertTrue(status, 'failed to match on %s command %s' % (cmdName, interpreterMsg))
        self.assertTrue('name' in sect, 'invalid section returned')
        self.assertEqual(cmdName, sect['name'])
        num_params, sect_p = TextScriptCommand.find_param_count(cmd, sects)
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
        self.command_context = CommandContext()
        self.select_sect = lambda sel: [self.command_context.sects, self.command_context.sects_s][sel]

    def assertCommandparsed(self, byteStream, cmd, params, cmdName, prioritize_s):
        startAddr = byteStream.tell()
        out = TextScriptCommand.read(self.command_context, byteStream, byteStream.read(1), prioritize_s)
        if not out:
            self.fail('%s: could not read commad: %s %s' % (cmdName, cmd, params))
        self.assertEqual(out.cmd, cmd, '%s: invalid command read' % cmdName)
        self.assertEqual(out.params, params, '%s: invalid parameters read' % cmdName)
        sect = TextScriptCommand.find_command_section(cmd, params, self.select_sect(out.use_interpreter_s))
        if not sect:
            self.fail('%s: could not find commad section for %s %s' % (cmdName, cmd, params))
        self.assertEqual(sect['name'], cmdName, 'invalid command found')
        self.assertEqual(TextScriptCommand.convert_cmd_name(sect['name']),
                         TextScriptCommand.get_cmd_macro_name(self.command_context, cmd, params, prioritize_s),
                          '%s: failed to convert the command to the correct name' % (cmdName))
        self.assertEqual(byteStream.tell(), startAddr + out.size,
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
        # a basic command in second interpreter, but also a bitfield conflict in first interpreter
        bytes = self.addTestData(bytes, cmds, b'\xfa\x01\xff', b'\xfa\x01', b'\xff',
                                 'printLinkBuffer_s', prioritize_s=True)
        bytes = self.addTestData(bytes, cmds, b'\xfa\x01\x04', b'\xfa\x01\x04', b'',
                                 'printCurrentNaviOw', prioritize_s=False)

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
        bytes = self.addTestData(bytes, cmds, b'\xfa\x00\x00\x11', b'\xfa\x00\x00\x01', b'\x00\x01',
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


class ArchiveListTests(unittest.TestCase):

    def setUp(self) -> None:
        self.archive_path = os.environ['HOME'] + '/dev/dis/downloads/MMBNTextDumps/tpl/mmbn6cf-us.tpl' # FIXME: Hard path
        self.rom_path = os.path.join(definitions.ROM_REPO_DIR, 'bn6f.gba')

        archives = text_script_scanner.process_archives(self.archive_path)
        compressed_archives, regular_archives = text_script_scanner.cache_separate_archives_based_on_compression(self.archive_path, self.rom_path, archives)
        self.compressed_archives = compressed_archives
        self.noncompressed_archives = regular_archives



    # @unittest.skip('skipped till passing in development')
    def test_noncompressed_textscripts(self):
        # asserts no crashes amongst all noncompressed archives in bn6f
        # and that they match original binary
        for archive_ptr, archive_size in self.noncompressed_archives:
            # some non-compressed scripts must have their size specified to know they ended...
            # because their last scripts have been removed, but are still being pointed to.
            if archive_ptr in definitions.SCRIPT_SIZES:
                size = definitions.SCRIPT_SIZES[archive_ptr]
            else:
                size = None

            with open(self.rom_path, 'rb') as rom_file:
                textscript_archive = uut_dumper.TextScriptArchive.read_script(uut_dumper.CommandContext(), archive_ptr,
                                                                      rom_file, size)

    # @unittest.skip('skipped till passing in development')
    def test_compressed_textscripts(self):
        # asserts no crashes amongst all noncompressed archives in bn6f
        # and that they match original binary
        with open(self.rom_path, 'rb') as rom_file:
            for archive_ptr, archive_size in self.compressed_archives:
                self.run_test_compressed_archive(rom_file, archive_ptr)

    def test_comp_8779B1C_char_after_end(self):
        # ensures that a string character after end_script is still read properly as long as it's within that script.
        with open(self.rom_path, 'rb') as rom_file:
            self.run_test_compressed_archive(rom_file, 0x779B1C)

    def test_comp_877E620_e4_extended_char(self):
        # tests for the presense of E42C, a 2-byte character
        with open(self.rom_path, 'rb') as rom_file:
            self.run_test_compressed_archive(rom_file, 0x77E620)

    def test_comp_86D6F30(self):
        with open(self.rom_path, 'rb') as rom_file:
            self.run_test_compressed_archive(rom_file, 0x6D6F30)

    def run_test_compressed_archive(self, rom_file, archive_ptr):
        decompress_path = 'TextScript%07X.lz.bin' % (archive_ptr)
        text_script_scanner.gbagfx_decompress_at(rom_file, archive_ptr, decompress_path)
        size = os.path.getsize(decompress_path) - 4  # must not account for the compression header!
        with open(decompress_path, 'rb') as decompressed_file:
            try:
                textscript_archive = uut_dumper.TextScriptArchive.read_script(uut_dumper.CommandContext(), 4, decompressed_file, size)

                # test matching
                def assert_archive_binary_matches(text_script_archive: TextScriptArchive, bin_file):
                    rel_pointers = text_script_archive.serialize_rel_pointers()
                    self.assertEqual(rel_pointers, bin_file.read(len(rel_pointers)),
                                     'rel. pointers mismatch')

                    for script_idx, text_script in enumerate(text_script_archive.text_scripts):
                        for unit in text_script.units:
                            address = bin_file.tell()
                            if type(unit) is GameString:
                                content = unit.text
                                self.assertEqual(bin_file.read(len(unit.data)), unit.data,
                                                 'mismatch in script {script_idx} at address 0x{address:X}: {content}'.format(**vars()))
                            if type(unit) is TextScriptCommand:
                                content = unit.macro
                                unit_data = unit.serialize()
                                self.assertEqual(bin_file.read(len(unit_data)), unit_data,
                                                'mismatch in script {script_idx} at address 0x{address:X}: {content}'.format(**vars()))
                                address += len(unit_data)

                decompressed_file.seek(4)
                assert_archive_binary_matches(textscript_archive, decompressed_file)

            finally:
                os.remove(decompress_path)



if __name__ == '__main__':
    unittest.main()
