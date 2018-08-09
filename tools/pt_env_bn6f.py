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
pt.env(dismProjPath= '../SPB_Data/dev/dis/bn6f/')
pt.env(asmPath= 'asm/')
pt.env(binPath='bin/')
pt.env(incPath='inc/')
pt.env(LZ77Path='data/compressedFiles/')
# progress: 4.82% (0x62BFC/0x800000)
pt.env(gameFiles={
    'start.s':            (0x8000000, 0x80002BC), # size=0x2BC
    'main.s':             (0x80002BC, 0x80005AC), # size=0x2F0
    'asm00.s':            (0x80005AC, 0x801ECB4), # size=0x1E708
    'bin00.bin':          (0x801ECB4, 0x801FE00), # size=0x114C
    'asm01.s':            (0x801FE00, 0x8020354), # size=0x554
    'bin01.bin':          (0x8020354, 0x8021AA4), # size=0x1750
    'asm02.s':            (0x8021AA4, 0x8021DA8), # size=0x304
    'bin02.bin':          (0x8021DA8, 0x8026450), # size=0x46A8
    'asm03_0.s':          (0x8026450, 0x803FD08), # size=0x198B8
    'chatbox.s':          (0x803FD08, 0x8045F8C), # size=0x6284
    'asm03_1.s':          (0x8045F8C, 0x804CFBC), # size=0x7030
    'bin03.bin':          (0x804CFBC, 0x804E62C), # size=0x1670
    'asm04.s':            (0x804E62C, 0x804E74C), # size=0x120
    'bin04.bin':          (0x804E74C, 0x8052688), # size=0x3F3C
    'asm05.s':            (0x8052688, 0x8052834), # size=0x1AC
    'bin05.bin':          (0x8052834, 0x80595B8), # size=0x6D84
    'asm06.s':            (0x80595B8, 0x80596F4), # size=0x13C
    'bin06.bin':          (0x80596F4, 0x805DF08), # size=0x4814
    'asm07.s':            (0x805DF08, 0x805E01C), # size=0x114
    'bin07.bin':          (0x805E01C, 0x806036C), # size=0x2350
    'asm08.s':            (0x806036C, 0x8060474), # size=0x108
    'bin08.bin':          (0x8060474, 0x8062AB0), # size=0x263C
    'asm09.s':            (0x8062AB0, 0x8062BFC), # size=0x14C
    'bin09.bin':          (0x8062BFC, 0x80663D0), # size=0x37D4
    'asm10.s':            (0x80663D0, 0x8067DF8), # size=0x1A28
    'bin10.bin':          (0x8067DF8, 0x8069038), # size=0x1240
    'asm11.s':            (0x8069038, 0x806C5D0), # size=0x3598
    'bin11.bin':          (0x806C5D0, 0x806D8F8), # size=0x1328
    'asm12.s':            (0x806D8F8, 0x806DD2C), # size=0x434
    'bin12.bin':          (0x806DD2C, 0x806FC08), # size=0x1EDC
    'asm13.s':            (0x806FC08, 0x8070034), # size=0x42C
    'bin13.bin':          (0x8070034, 0x8071B50), # size=0x1B1C
    'asm14.s':            (0x8071B50, 0x8072BCC), # size=0x107C
    'bin14.bin':          (0x8072BCC, 0x807544C), # size=0x2880
    'asm15.s':            (0x807544C, 0x8075614), # size=0x1C8
    'bin15.bin':          (0x8075614, 0x8077D00), # size=0x26EC
    'asm16.s':            (0x8077D00, 0x8077EA4), # size=0x1A4
    'bin16.bin':          (0x8077EA4, 0x807931C), # size=0x1478
    'asm17.s':            (0x807931C, 0x80794AC), # size=0x190
    'bin17.bin':          (0x80794AC, 0x807A8E0), # size=0x1434
    'asm18.s':            (0x807A8E0, 0x807AAFC), # size=0x21C
    'bin18.bin':          (0x807AAFC, 0x807CDEC), # size=0x22F0
    'asm19.s':            (0x807CDEC, 0x807D024), # size=0x238
    'bin19.bin':          (0x807D024, 0x807ECD0), # size=0x1CAC
    'asm20.s':            (0x807ECD0, 0x807EEB8), # size=0x1E8
    'bin20.bin':          (0x807EEB8, 0x8080D90), # size=0x1ED8
    'asm21.s':            (0x8080D90, 0x80813F8), # size=0x668
    'bin21.bin':          (0x80813F8, 0x8086F18), # size=0x5B20
    'asm22.s':            (0x8086F18, 0x80871D8), # size=0x2C0
    'bin22.bin':          (0x80871D8, 0x8088CA0), # size=0x1AC8
    'asm23.s':            (0x8088CA0, 0x8089D58), # size=0x10B8
    'bin23.bin':          (0x8089D58, 0x808BEFC), # size=0x21A4
    'asm24.s':            (0x808BEFC, 0x808D266), # size=0x136A
    'bin24.bin':          (0x808D266, 0x808F810), # size=0x25AA
    'asm25.s':            (0x808F810, 0x8090340), # size=0xB30
    'bin25.bin':          (0x8090340, 0x80924D0), # size=0x2190
    'asm26.s':            (0x80924D0, 0x80924DA), # size=0xA
    'bin26.bin':          (0x80924DA, 0x80946C4), # size=0x21EA
    'asm27.s':            (0x80946C4, 0x8094780), # size=0xBC
    'bin27.bin':          (0x8094780, 0x8098BE8), # size=0x4468
    'asm28.s':            (0x8098BE8, 0x809FEA8), # size=0x72C0
    'bin28.bin':          (0x809FEA8, 0x80A4984), # size=0x4ADC
    'asm29.s':            (0x80A4984, 0x80AAEA8), # size=0x6524
    'bin29.bin':          (0x80AAEA8, 0x80AED50), # size=0x3EA8
    'asm30.s':            (0x80AED50, 0x80B1B7C), # size=0x2E2C
    'bin30.bin':          (0x80B1B7C, 0x80B81EC), # size=0x6670
    'asm31.s':            (0x80B81EC, 0x810C35C), # size=0x54170
    'bin31.bin':          (0x810C35C, 0x810D970), # size=0x1614
    'asm32.s':            (0x810D970, 0x8121270), # size=0x13900
    'bin32.bin':          (0x8121270, 0x8123208), # size=0x1F98
    'asm33.s':            (0x8123208, 0x812C258), # size=0x9050
    'bin33.bin':          (0x812C258, 0x812D378), # size=0x1120
    'asm34.s':            (0x812D378, 0x812DA94), # size=0x71C
    'bin34.bin':          (0x812DA94, 0x812EAAC), # size=0x1018
    'asm35.s':            (0x812EAAC, 0x812EFD8), # size=0x52C
    'bin35.bin':          (0x812EFD8, 0x8130020), # size=0x1048
    'asm36.s':            (0x8130020, 0x8138944), # size=0x8924
    'bin36.bin':          (0x8138944, 0x813B768), # size=0x2E24
    'asm37_0.s':          (0x813B768, 0x813E07C), # size=0x2914
    'reqBBS.s':           (0x813E07C, 0x814187C), # size=0x3800
    'asm37_1.s:':         (0x814187C, 0x814FE8D), # size=0xE611
    'bin37.bin':          (0x814FE8D, 0x81D61DA), # size=0x8634D
    'asm38.s':            (0x81D61DA, 0x81D7EF8), # size=0x1D1E
    'bin38_0.bin':        (0x81D7EF8, 0x861C780), # size=0x444888
    'comp00.lz77':        (0x861C780, 0x861CBBF), # size=0x43F
    'bin38_1.bin':        (0x861CBBF, 0x8800000), # size=0x1E3441
})

print("Environment set!")
