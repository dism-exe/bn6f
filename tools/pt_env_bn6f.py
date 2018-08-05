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
# progress: 4.82% (0x62BFC/0x800000)
pt.env(gameFiles={
    'start.s':        (0x8000000, 0x80002BC),
    'main.s':         (0x80002BC, 0x80005AC),
    'asm00.s':        (0x80005AC, 0x801ECB4),
    'bin00.bin':      (0x801ECB4, 0x801FE00), # 0x115A
    'asm01.s':        (0x801FE00, 0x8020354),
    'bin01.bin':      (0x8020354, 0x8021AA4), # 0x1750
    'asm02.s':        (0x8021AA4, 0x8021DA8),
    'bin02.bin':      (0x8021DA8, 0x8026450), # 0x46A8
    'asm03_0.s':      (0x8026450, 0x803FD08),
    'chatbox.s':      (0x803FD08, 0x8045F8C),
    'asm03_1.s':      (0x8045F8C, 0x804CFBC),
    'bin03.bin':      (0x804CFBC, 0x804E62C), # 0x1670
    'asm04.s':        (0x804E62C, 0x804E74C),
    'bin04.bin':      (0x804E74C, 0x8052688), # 0x3F3C
    'asm05.s':        (0x8052688, 0x8052834),
    'bin05.bin':      (0x8052834, 0x80595B8), # 0x6D84
    'asm06.s':        (0x80595B8, 0x80596F4),
    'bin06.bin':      (0x80596F4, 0x805DF08), # 0x4814
    'asm07.s':        (0x805DF08, 0x805E01C),
    'bin07.bin':      (0x805E01C, 0x806036C), # 0x2350
    'asm08.s':        (0x806036C, 0x8060474),
    'bin08.bin':      (0x8060474, 0x8062AB0), # 0x263C
    'asm09.s':        (0x8062AB0, 0x8062BFC),
    'bin09.bin':      (0x8062BFC, 0x80663D0), # 0x37D4
    'asm10.s':        (0x80663D0, 0x8067DF8),
    'bin10.bin':      (0x8067DF8, 0x8069038), # 0x1240
    'asm11.s':        (0x8069038, 0x806C5D0),
    'bin11.bin':      (0x806C5D0, 0x806D8F8), # 0x1328
    'asm12.s':        (0x806D8F8, 0x806DD2C),
    'bin12.bin':      (0x806DD2C, 0x806FC08), # 0x1EDC
    'asm13.s':        (0x806FC08, 0x8070034),
    'bin13.bin':      (0x8070034, 0x8071B50), # 0x1B1C
    'asm14.s':        (0x8071B50, 0x8072BCC),
    'bin14.bin':      (0x8072BCC, 0x807544C), # 0x2880
    'asm15.s':        (0x807544C, 0x8075614),
    'bin15.bin':      (0x8075614, 0x8077D00), # 0x26EC
    'asm16.s':        (0x8077D00, 0x8077EA4),
    'bin16.bin':      (0x8077EA4, 0x807931C), # 0x1478
    'asm17.s':        (0x807931C, 0x80794AC),
    'bin17.bin':      (0x80794AC, 0x807A8E0), # 0x1434
    'asm18.s':        (0x807A8E0, 0x807AAFC),
    'bin18.bin':      (0x807AAFC, 0x807CDEC), # 0x22F0
    'asm19.s':        (0x807CDEC, 0x807D024),
    'bin19.bin':      (0x807D024, 0x807ECD0), # 0x1CAC
    'asm20.s':        (0x807ECD0, 0x807EEB8),
    'bin20.bin':      (0x807EEB8, 0x8080D90), # 0x1ED8
    'asm21.s':        (0x8080D90, 0x80813F8),
    'bin21.bin':      (0x80813F8, 0x8086F18), # 0x5B20
    'asm22.s':        (0x8086F18, 0x80871D8),
    'bin22.bin':      (0x80871D8, 0x8088CA0), # 0x1AC8
    'asm23.s':        (0x8088CA0, 0x8089D58),
    'bin23.bin':      (0x8089D58, 0x808BEFC), # 0x21A4
    'asm24.s':        (0x808BEFC, 0x808D266),
    'bin24.bin':      (0x808D266, 0x808F810), # 0x25AA
    'asm25.s':        (0x808F810, 0x8090340),
    'bin25.bin':      (0x8090340, 0x80924D0), # 0x2190
    'asm26.s':        (0x80924D0, 0x80924DA),
    'bin26.bin':      (0x80924DA, 0x80946C4), # 0x21EA
    'asm27.s':        (0x80946C4, 0x8094780),
    'bin27.bin':      (0x8094780, 0x8098BE8), # 0x446C
    'asm28.s':        (0x8098BE8, 0x809FEA8),
    'bin28.bin':      (0x809FEA8, 0x80A4984), # 0x4ADC
    'asm29.s':        (0x80A4984, 0x80AAEA8),
    'bin29.bin':      (0x80AAEA8, 0x80AED50), # 0x3EA8
    'asm30.s':        (0x80AED50, 0x80B1B7C),
    'bin30.bin':      (0x80B1B7C, 0x80B81EC), # 0x6670
    'asm31.s':        (0x80B81EC, 0x810C35C),
    'bin31.bin':      (0x810C35C, 0x810D970), # 0x1614
    'asm32.s':        (0x810D970, 0x8121270),
    'bin32.bin':      (0x8121270, 0x8123208), # 0x1F98
    'asm33.s':        (0x8123208, 0x812C258),
    'bin33.bin':      (0x812C258, 0x812D378), # 0x1120
    'asm34.s':        (0x812D378, 0x812DA94),
    'bin34.bin':      (0x812DA94, 0x812EAAC), # 0x1018
    'asm35.s':        (0x812EAAC, 0x812EFD8),
    'bin35.bin':      (0x812EFD8, 0x8130020), # 0x1048
    'asm36.s':        (0x8130020, 0x8138944),
    'bin36.bin':      (0x8138944, 0x813B768), # 0x2E2C
    'asm37_0.s':      (0x813B768, 0x813E07C),
    'reqBBS.s':       (0x813E07C, 0x814187C),
    'asm37_1.s:':     (0x814187C, 0x814FE8D),
    'bin37.bin':      (0x814FE8D, 0x81D61DA), # 0x8634D
    'asm38.s':        (0x81D61DA, 0x81D7EF8),
    'bin38.bin':      (0x81D7EF8, 0x8800000) # 0x628108
})

print("Environment set!")
