import os

import idaapi
import idc
import ida_enum
import ida_ua
import MiscTools.miscTools
from MiscTools import FuncAnalyzer
from IDAItems import Data, Function, Instruction
from idc_bc695 import AddHotkey
from idc import here
import MiscTools.Operations as ops
import SrchTools.nextTools as next
import SrchTools.srchTools as st
import FixTools.fixTools as fix
import MiscTools.miscTools as mt
import MiscTools.TimeProfiler as tp
import DisasmTools.GNUDisassembler as dis
from Definitions.Environment import env

from include import definitions
import ida_scripts
__package__ = 'ida_scripts'

from .utils import ida_dumper
from shared_utils import cache
from edit_source.utils import source_unit

compiled_functions = {}

source_units = cache.load_cache_file(os.path.join(definitions.shared.CACHE_DIR, 'source_units.cache'))
source_unit_computations = source_unit.SourceUnitComputations(source_units)
address_space = source_unit_computations.address_space


def ida_run_python_function(func_name):
    if func_name not in compiled_functions:
        ida_func_name = "py_%s" % func_name
        idaapi.CompileLine('static %s() { RunPythonStatement("%s()"); }'
                           % (ida_func_name, func_name))
        compiled_functions[func_name] = ida_func_name
        return ida_func_name
    else:
        return func_name


def actionZ():
    # return next.ret(here(), end_ea=env['gameFiles'][mt.ea2gf(here())][1])
    # return next.byDataElement(here(), lambda ea: ('POP' in idc.GetDisasm(ea) and 'PC' in idc.GetDisasm(ea))
    #                                              or 'PC, LR' in idc.GetDisasm(ea),
    #                           end_ea=env['gameFiles'][mt.ea2gf(here())][1])
    # fix.fixThumbPushPopFuncRanges(Function.Function(here()-4).func_ea, here())
    # return next.unkptr(here())
    # return ops.tillName(here(), ops.delShiftedContent)
    # currFile = env['gameFiles'][MiscTools.miscTools.ea2gf(here())]
    unit = source_unit_computations.find_unit_containing(int(idc.here()))
    unit = source_unit.to_physical_unit(unit)
    unit_size = source_unit.compute_unit_size(address_space, unit['ea'])
    print('dumping unit [{:07X}:{:07X}] <{}>'.format(unit['ea'], unit['ea'] + unit_size, unit['name']))
    ida_dumper.dump_unit_at(source_unit_computations, int(idc.here()))

    # if not ops.delShiftedContentRange(*currFile): print(False)
    pass


def actionX():
    # Mainly for removing things, or fixing things.
    # return ops.tillName(here(), ops.delShiftedContent)
    def collapseUnknowns():
        if not fix.collapseUnknowns(*env['gameFiles'][MiscTools.miscTools.ea2gf(here())]):
            print(False)
    def filterChangedSyms():
        global syms
        if not syms: syms = st.getSymTable(env['elfPath'])
        out = syms.copy()
        # for ea, name in out:
            # if '_' in name and name[:name.lindex('_')] in ['sub', 'loc', '']


def actionA():

    def reportPointers(currFile):
        unkPts = fix.getUnkPointers(currFile, rom=False, verbose=False)
        filesUtilized = {} # dict of filename, [ptrs]
        for ea, data in unkPts:
            fileUsed = mt.ea2gf(data)
            if fileUsed == '': fileUsed = 'ram'
            if fileUsed in filesUtilized:
                filesUtilized[fileUsed].append(data)
            else:
                filesUtilized[fileUsed] = [data]

        print('[Report] Unknown Pointers in file %s:' % mt.ea2gf(currFile[0]))
        for file in filesUtilized:
            print('\t%s: %d pointers\n\t\t%s' % (file, len(filesUtilized[file]), mt.hexArr(filesUtilized[file])))
    def arr2dword(pointerRange):
        d = Data.Data(pointerRange[0])
        outputStatus = True
        while (d.ea < pointerRange[1]):
            content = d.getContent()

            # case: byte array that's 4 elements. Likely a word
            if type(content) == list and len(content) == 4 and (d.getSize() / len(content) == 1):
                # transform to dword
                status = idc.del_items(d.ea)
                status = status and idc.MakeDword(d.ea)
                outputStatus = outputStatus and status
                if status:
                    print('[OK] %07X: u8[4] -> u32 %07X' % (d.ea, d.getContent()))
                else:
                    print('[FAIL] %07X: u8[4] -> u32' % d.ea)
                # advance 4 bytes
                d = Data.Data(d.ea + 4)
            else:
                d = Data.Data(d.ea + d.getSize())
        return outputStatus

    # print(arr2dword(env['gameFiles'][mt.ea2gf(here())]))
    # print(arr2dword((0x8000000, 0x8800000)))

    # print(ops.arrTillName(here()))
    print(ops.arrTillRef(here()))
    # fix.resolvePointers(currFile, currFile)

    # for ea, name in idautils.Names():
    #     if 'LibDebugMsg' in name:
    #         name = name.replace('LibDebugMsg', 'LibInfoText')
    #         print('%07X: name -> ' + name)
    #         idc.MakeName(ea, name)


    # for file in sorted(env['gameFiles'].keys(), key=env['gameFiles'].__getitem__):
    #     if file.endswith('.s') and env['gameFiles'][file][0] >= 0x8000000:
    #         print('')
    #         reportPointers(env['gameFiles'][file])



def actionS(ea=None, pointerRange=None):
    # Mainly for search-type actions or analysis
    if not ea: ea = here()

    # if not pointerRange:
    #     global ptrRange
    #     try:
    #         print('@input ptrRange=(%07X, %07X)' % (ptrRange[0], ptrRange[1]))
    #     except Exception:
    #         print('[input ptrRange]')
    #     pointerRange = ptrRange

    def nextOneWordArr():
        d = Data.Data(ea)
        while (d.ea < pointerRange[1]):
            content = d.getContent()

            # case: byte array that's 4 elements. Likely a word
            if type(content) == list and len(content) == 4 and (d.getSize() / len(content) == 1):
                break
            d = Data.Data(d.ea + d.getSize())

        if d.ea >= pointerRange[1]:
            print(False)
        else:
            print('%07X' % d.ea)
            idc.jumpto(d.ea)

    # output = next.unkptr(here(), end_ea=env['gameFiles'][mt.ea2gf(here())][1], pointerRange=pointerRange, showLabel=False)
    # output = next.red(here(), end_ea=env['gameFiles'][mt.ea2gf(here())][1])
    # output = next.ascii(here())

    # if output == idaapi.BADADDR:
    # print(False)


            # global v, cur
    # idaapi.jumpto(v[cur])
    # print('%07X [%d/%d]' % (v[cur], cur, len(v)))
    # cur += 1

    # ops.tillName(here(), lambda ea: idc.SetRegEx(ea, "T", 0, idc.SR_user))
    # pt.misc.getLZ77CompressedSize(pointerOf(here()) - (1<<31))

    def nextCompressedData(ea, end_ea=None):
        if not end_ea:
            end_ea = idc.SegEnd(ea)

        while ea < end_ea:
            if mt.getLZ77CompressedSize(ea) >= 0:
                return ea
            ea += 1
        return -1

    out = nextCompressedData(ea+1)
    print('%07X' % (out))
    idaapi.jumpto(out)

def actionQ():
    # print(ops.arrTillName(here()))
    idc.jumpto(env['gameFiles'][mt.ea2gf(here())][1])
    print('jumped to %s' % mt.ea2gf(here()))

def actionW():
    # fix.fixThumbPushPopFuncRanges(Function.Function(here() - 4).func_ea, here())
    # fix.makeThumb(*env['gameFiles'][mt.ea2gf(here())])
    idc.jumpto(env['gameFiles'][mt.ea2gf(here())][0])
    # print('jumped to %s' % mt.ea2gf(here()))


# Convenient Actions
#
def actionF():
    """
    Shift+F - Display current file
    """
    gfs = env['gameFiles']
    gf = mt.ea2gf(here())
    fileAddr = here() - gfs[gf][0]
    size = gfs[gf][1] - gfs[gf][0]
    # get last name found
    ea = here()
    while not idc.Name(ea):
        ea -= 1
    relAddr = here() - ea
    print('%s+0x%X::<%s>+0x%X (%d%%)' % (gf, fileAddr, idc.Name(ea), relAddr, float(fileAddr) / size * 100))

def actionI():
    """
    Import files for quick access to functions not registered within the pseudoterminal
    """

    status = True
    status = status and dis.readStructMacro("dev/dis/bn6f/include/structs/Toolkit.inc")
    status = status and dis.readStructMacro("dev/dis/bn6f/include/structs/GameState.inc")
    status = status and dis.readStructMacro("dev/dis/bn6f/include/structs/BattleObject.inc")
    print(status)

def actionP():
    """
    Profiling Action. Time Profiling and other analyses go here.
    """
    # tp.runTimeTests()
    n = 10
    x = lambda ea: Data.Data(ea).__str__()
    t, output = tp.avgTime_us(n, x, here())
    print('[%03d us] %s' % (t, Data.Data(here()).getDisasm()))

def actionT():
    """
    Test Action. Scratchpad, you can erase this.
    """

    # for ea in range(0x3005B00, 0x3007FFF):
    #     if idc.Name(ea):
    #         print('.equ %s, 0x%07x' % (idc.Name(ea), ea))

    # print(mt.getLabelsWithSpaceDirective(0x2009450, 0x203a9b0))
    # print(mt.getLabelsWithSpaceDirective(0x203C4A0, 0x203F7E4))
    global currSymbols, lastDump
    if not currSymbols:
        currSymbols = dis._listUpdatedSymbols('dev/dis/bn6f.elf')
    if not lastDump:
        lastDump = dis._listUpdatedSymbols('dev/dis/bn6f_ida.elf')

    # separate changes made by IDA from external changes
    newSymbols = []
    for symbol in (currSymbols or lastDump):
        if symbol not in lastDump:
            newSymbols.append(symbol)

    for ea, names in newSymbols:
        if (len(names) == 1 and '_' in names[0][0]
            and names[0][0][:names[0][0].index('_')+1] in ['loc_', 'unk_', 'byte_', 'word_', 'dword_', 'locret_']
        ):
            continue
        print('%07X <%s>: ' % (ea, idc.Name(ea)) + str(names))


def markStructOffsets():
    ea = here()
    while ea < 0x8800000:
        if Function.isFunction(ea):
            f = Function.Function(ea)
            print(f.getName())
            markToolkit(f.func_ea)
            markStructFromToolkit(f.func_ea, 0x3C, 'oGameState')
            ea += f.getSize(withPool=True)
        else:
            ea += Data.Data(ea).getSize()


def markToolkit(func_ea):
    f = Function.Function(func_ea)
    toolkitAccesses = FuncAnalyzer.traceRegVar(f.func_ea, f.func_ea + f.getSize(withPool=False), 10, 0)
    for trace_ea in toolkitAccesses:
        # lock into the register in question
        insn = Instruction.Insn(trace_ea)
        # print('trace', hex(trace_ea), insn.ops[0].reg, idc.GetDisasm(trace_ea))
        if insn.isComputationalInsn():
            regWrites = FuncAnalyzer.traceRegWrites(f.func_ea, f.func_ea + f.getSize(withPool=False),
                                                    insn.ops[0].reg)
            # TODO: traceRegWrites messes up insn
            insn = Instruction.Insn(trace_ea)
            # find the relevent register variable to trace
            regVarIdx = FuncAnalyzer.getRegWriteIndex(trace_ea, regWrites)
            insn = Instruction.Insn(trace_ea)
            # trace all reads to this register variable in particular
            # print('args', f.func_ea, f.func_ea + f.getSize(withPool=False),
            #                                           insn.ops[0].reg, regVarIdx)
            structAccesses = FuncAnalyzer.traceRegVar(f.func_ea, f.func_ea + f.getSize(withPool=False),
                                                      insn.ops[0].reg, regVarIdx)
            # those now will represent all registers R10 moved to, and thus, all of those accesses
            # are accesses to the R10 struct
            for access in structAccesses:
                # print(hex(access), idc.GetDisasm(access))
                # now mark with Toolkit enum
                if Instruction.Insn(access).ops[1].type == ida_ua.o_displ:
                    idc.op_enum(access, 1, idc.get_enum('oToolkit'), 0)
    return True

def markStructFromToolkit(func_ea, structOff, structName):
    f = Function.Function(func_ea)
    toolkitMovs = FuncAnalyzer.traceRegVar(f.func_ea, f.func_ea + f.getSize(withPool=False), 10, 0)
    for trace_ea in toolkitMovs:
        # lock into the register in question
        insn = Instruction.Insn(trace_ea)
        if insn.isComputationalInsn():
            regWrites = FuncAnalyzer.traceRegWrites(f.func_ea, f.func_ea + f.getSize(withPool=False),
                                                    insn.ops[0].reg)
            # TODO: traceRegWrites messes up insn
            insn = Instruction.Insn(trace_ea)
            # find the relevent register variable to trace
            regVarIdx = FuncAnalyzer.getRegWriteIndex(trace_ea, regWrites)
            insn = Instruction.Insn(trace_ea)
            # trace all reads to this register variable in particular
            # print('args', f.func_ea, f.func_ea + f.getSize(withPool=False),
            #                                           insn.ops[0].reg, regVarIdx)
            toolkitAccesses = FuncAnalyzer.traceRegVar(f.func_ea, f.func_ea + f.getSize(withPool=False),
                                                      insn.ops[0].reg, regVarIdx)
            # those now will represent all registers R10 moved to, and thus, all of those accesses
            # are accesses to the R10 struct
            for access in toolkitAccesses:
                # now mark with Toolkit enum
                accessInsn = Instruction.Insn(access)
                if accessInsn.ops[1].type == ida_ua.o_displ:
                    if accessInsn.ops[1].addr == structOff:
                        # print(hex(access), idc.GetDisasm(access))

                        structAcccesses = FuncAnalyzer.traceRegVar(f.func_ea, f.func_ea + f.getSize(withPool=False),
                                                                   accessInsn.ops[0].reg, regVarIdx+1)
                        for structAccess in structAcccesses:
                            # print(hex(structAccess), idc.GetDisasm(structAccess))
                            idc.op_enum(structAccess, 1, idc.get_enum(structName), 0)
    return True

# Quick Action commands
def setHotkeys():
    """
    This compiles the hot key functions and maps them so they can be used with shortcuts in IDA
    """
    AddHotkey("Shift+Z", ida_run_python_function("actionZ"))
    AddHotkey("Shift+X", ida_run_python_function("actionX"))
    AddHotkey("Shift+A", ida_run_python_function("actionA"))
    AddHotkey("Shift+S", ida_run_python_function("actionS"))
    AddHotkey("Shift+Q", ida_run_python_function("actionQ"))
    AddHotkey("Shift+W", ida_run_python_function("actionW"))

    # Perm-mapped
    AddHotkey("Shift+F", ida_run_python_function("actionF"))
    AddHotkey("Shift+I", ida_run_python_function("actionI"))
    AddHotkey("Shift+P", ida_run_python_function("actionP"))
    AddHotkey("Shift+T", ida_run_python_function("actionT"))

    print('Hotkeys set!')

if __name__ == '__main__':
    setHotkeys()
