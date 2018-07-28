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
# progress: 1.64% (0x021A9C/0x800000)
pt.env(gameFiles={
    'start.s':        (0x8000000, 0x80002BC),
    'main.s':         (0x80002BC, 0x80005AC),
    'asm00.s':        (0x80005AC, 0x801ECB4),
    'bin00.bin':      (0x801ECB4, 0x801FE00), # 0x115A
    'asm01.s':        (0x801FE00, 0x8020354),
    'bin01.bin':      (0x8020354, 0x8021AA4), # 0x1750
    'asm02.s':        (0x8021AA4, 0x8021DA8),
    'bin02.bin':      (0x8021DA8, 0x8026450), # 0x46A8
    'asm03.s':        (0x8026450, 0x804CFBC),
    'bin03.bin':      (0x804CFBC, 0x804E62C), # 0x1670

})

print("Environment set!")
