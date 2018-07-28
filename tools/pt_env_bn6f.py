# execute this file after pt.py in IDA to define the environmental variables
# for pt there.

# set up a new environment
pt.clrenv()

## ROM Paths
pt.env(ROMPath= '')

## search utils
pt.env(compareBinPath= '')

## disassembly utils
# TODO set this to your project path relative to your analysis idb path
pt.env(dismProjPath= 'GameDev/Disassembly/bn6f/')
pt.env(asmPath= 'asm/')
pt.env(binPath='bin/')
pt.env(incPath='inc/')
pt.env(gameFiles={
    'start.s':        (0x8000000, 0x80002BC),
    'main.s':         (0x80002BC, 0x80005AC),
    'asm00.s':        (0x80005AC, 0x801ECB4),
    'bin00.bin':      (0x801ECB4, 0x801FE00), # 0x115A
})

print("Environment set!")
