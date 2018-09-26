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
pt.env(incPath='inc/')
# progress: 4.82% (0x62BFC/0x800000)
pt.env(gameFiles={
'asm/start.s':
	(0x8000000, 0x80002BC), # size=0x2BC
'asm/main.s':
	(0x80002BC, 0x80005AC), # size=0x2F0
'asm/asm00_0.s':
	(0x80005AC, 0x80026A4), # size=0x20F8
'asm/sprite.s':
	(0x80026A4, 0x8002DC8), # size=0x724
'asm/asm00_1.s':
	(0x8002DC8, 0x800BD34), # size=0x8F6C
'asm/object.s':
	(0x800BD34, 0x800ED80), # size=0x304C
'asm/asm00_2.s':
	(0x800ED80, 0x801ECB4), # size=0xFF34
'data/dat00.s':
	(0x801ECB4, 0x801FE00), # size=0x114C
'asm/asm01.s':
	(0x801FE00, 0x8020354), # size=0x554
'data/dat01.s':
	(0x8020354, 0x8021AA4), # size=0x1750
'asm/asm02.s':
	(0x8021AA4, 0x8021DA8), # size=0x304
'data/ChipDataArr_8021DA8.s':
	(0x8021DA8, 0x8024110), # size=0x2368
'data/dat02.s':
	(0x8024110, 0x8026450), # size=0x2340
'asm/asm03_0.s':
	(0x8026450, 0x803FD08), # size=0x198B8
'asm/chatbox.s':
	(0x803FD08, 0x8045F8C), # size=0x6284
'asm/asm03_1.s':
	(0x8045F8C, 0x804CFBC), # size=0x7030
'data/dat03.s':
	(0x804CFBC, 0x804E62C), # size=0x1670
'asm/asm04.s':
	(0x804E62C, 0x804E74C), # size=0x120
'data/dat04.s':
	(0x804E74C, 0x8052688), # size=0x3F3C
'asm/asm05.s':
	(0x8052688, 0x8052834), # size=0x1AC
'data/dat05.s':
	(0x8052834, 0x80595B8), # size=0x6D84
'asm/asm06.s':
	(0x80595B8, 0x80596F4), # size=0x13C
'data/dat06.s':
	(0x80596F4, 0x805DF08), # size=0x4814
'asm/asm07.s':
	(0x805DF08, 0x805E01C), # size=0x114
'data/dat07.s':
	(0x805E01C, 0x806036C), # size=0x2350
'asm/asm08.s':
	(0x806036C, 0x8060474), # size=0x108
'data/dat08.s':
	(0x8060474, 0x8062AB0), # size=0x263C
'asm/asm09.s':
	(0x8062AB0, 0x8062BFC), # size=0x14C
'data/dat09.s':
	(0x8062BFC, 0x80663D0), # size=0x37D4
'asm/asm10.s':
	(0x80663D0, 0x8067DF8), # size=0x1A28
'data/dat10.s':
	(0x8067DF8, 0x8069038), # size=0x1240
'asm/asm11.s':
	(0x8069038, 0x806C5D0), # size=0x3598
'data/dat11.s':
	(0x806C5D0, 0x806D8F8), # size=0x1328
'asm/asm12.s':
	(0x806D8F8, 0x806DD2C), # size=0x434
'data/dat12.s':
	(0x806DD2C, 0x806FC08), # size=0x1EDC
'asm/asm13.s':
	(0x806FC08, 0x8070034), # size=0x42C
'data/dat13.s':
	(0x8070034, 0x8071B50), # size=0x1B1C
'asm/asm14.s':
	(0x8071B50, 0x8072BCC), # size=0x107C
'data/dat14.s':
	(0x8072BCC, 0x807544C), # size=0x2880
'asm/asm15.s':
	(0x807544C, 0x8075614), # size=0x1C8
'data/dat15.s':
	(0x8075614, 0x8077D00), # size=0x26EC
'asm/asm16.s':
	(0x8077D00, 0x8077EA4), # size=0x1A4
'data/dat16.s':
	(0x8077EA4, 0x807931C), # size=0x1478
'asm/asm17.s':
	(0x807931C, 0x80794AC), # size=0x190
'data/dat17.s':
	(0x80794AC, 0x807A8E0), # size=0x1434
'asm/asm18.s':
	(0x807A8E0, 0x807AAFC), # size=0x21C
'data/dat18.s':
	(0x807AAFC, 0x807CDEC), # size=0x22F0
'asm/asm19.s':
	(0x807CDEC, 0x807D024), # size=0x238
'data/dat19.s':
	(0x807D024, 0x807ECD0), # size=0x1CAC
'asm/asm20.s':
	(0x807ECD0, 0x807EEB8), # size=0x1E8
'data/dat20.s':
	(0x807EEB8, 0x8080D90), # size=0x1ED8
'asm/asm21.s':
	(0x8080D90, 0x80813F8), # size=0x668
'data/dat21.s':
	(0x80813F8, 0x8086F18), # size=0x5B20
'asm/asm22.s':
	(0x8086F18, 0x80871D8), # size=0x2C0
'data/dat22.s':
	(0x80871D8, 0x8088CA0), # size=0x1AC8
'asm/asm23.s':
	(0x8088CA0, 0x8089D58), # size=0x10B8
'data/dat23.s':
	(0x8089D58, 0x808BEFC), # size=0x21A4
'asm/asm24.s':
	(0x808BEFC, 0x808D266), # size=0x136A
'data/dat24.s':
	(0x808D266, 0x808F810), # size=0x25AA
'asm/asm25.s':
	(0x808F810, 0x8090340), # size=0xB30
'data/dat25.s':
	(0x8090340, 0x80924D0), # size=0x2190
'asm/asm26.s':
	(0x80924D0, 0x80924DA), # size=0xA
'data/dat26.s':
	(0x80924DA, 0x80946C4), # size=0x21EA
'asm/asm27.s':
	(0x80946C4, 0x8094780), # size=0xBC
'data/dat27.s':
	(0x8094780, 0x8098BE8), # size=0x4468
'asm/asm28_0.s':
	(0x8098BE8, 0x809E570), # size=0x5988
'asm/npc.s':
	(0x809E570, 0x809F526), # size=0xFB6
'asm/asm28_1.s':
	(0x809F526, 0x809FEA8), # size=0x982
'data/dat28.s':
	(0x809FEA8, 0x80A4984), # size=0x4ADC
'asm/asm29.s':
	(0x80A4984, 0x80AAEA8), # size=0x6524
'data/dat29.s':
	(0x80AAEA8, 0x80AED50), # size=0x3EA8
'asm/asm30_0.s':
	(0x80AED50, 0x80AEE70), # size=0x120
'data/BattleSettings.s':
	(0x80AEE70, 0x80B1B7C), # size=0x2D0C
'data/dat30.s':
	(0x80B1B7C, 0x80B81EC), # size=0x6670
'asm/asm31.s':
	(0x80B81EC, 0x810C35C), # size=0x54170
'data/dat31.s':
	(0x810C35C, 0x810D970), # size=0x1614
'asm/asm32.s':
	(0x810D970, 0x8121270), # size=0x13900
'data/dat32.s':
	(0x8121270, 0x8123208), # size=0x1F98
'asm/asm33.s':
	(0x8123208, 0x812C258), # size=0x9050
'data/dat33.s':
	(0x812C258, 0x812D378), # size=0x1120
'asm/asm34.s':
	(0x812D378, 0x812DA94), # size=0x71C
'data/dat34.s':
	(0x812DA94, 0x812EAAC), # size=0x1018
'asm/asm35.s':
	(0x812EAAC, 0x812EFD8), # size=0x52C
'data/dat35.s':
	(0x812EFD8, 0x8130020), # size=0x1048
'asm/asm36.s':
	(0x8130020, 0x8138944), # size=0x8924
'data/dat36.s':
	(0x8138944, 0x813B768), # size=0x2E24
'asm/asm37_0.s':
	(0x813B768, 0x813E07C), # size=0x2914
'asm/reqBBS.s':
	(0x813E07C, 0x814187C), # size=0x3800
'asm/asm37_1.s':
	(0x814187C, 0x814FE8D), # size=0xE611
'data/dat37.s':
	(0x814FE8D, 0x81D61DA), # size=0x8634D
'asm/asm38.s':
	(0x81D61DA, 0x81D7EF8), # size=0x1D1E
'data/dat38_0.s':
	(0x81D7EF8, 0x84E0C4C), # size=0x308D54
'data/compressed/comp_84E0C4C.lz77':
	(0x84E0C4C, 0x84E0E68), # size=0x21C
'data/dat38_1.s':
	(0x84E0E68, 0x857CCC8), # size=0x9BE60
'data/compressed/comp_857CCC8.lz77':
	(0x857CCC8, 0x857D43C), # size=0x774
'data/compressed/comp_857D43C.lz77':
	(0x857D43C, 0x857D63C), # size=0x200
'data/compressed/comp_857D63C.lz77':
	(0x857D63C, 0x857D86C), # size=0x230
'data/dat38_2.s':
	(0x857D86C, 0x86C23A0), # size=0x144B34
'data/compressed/compFile_86C23A0.lz77':
	(0x86C23A0, 0x86C2E2C), # size=0xA8C
'data/compressed/comp_86C2E2C.lz77':
	(0x86C2E2C, 0x86C33B4), # size=0x588
'data/compressed/comp_86C33B4.lz77':
	(0x86C33B4, 0x86C3528), # size=0x174
'data/compressed/comp_86C3528.lz77':
	(0x86C3528, 0x86C3C92), # size=0x76A
'data/dat38_3.s':
	(0x86C3C92, 0x86C3E94), # size=0x202
'data/compressed/comp_86C3E94.lz77':
	(0x86C3E94, 0x86C3FD4), # size=0x140
'data/dat38_4.s':
	(0x86C3FD4, 0x86C41D0), # size=0x1FC
'data/compressed/comp_86C41D0.lz77':
	(0x86C41D0, 0x86C4490), # size=0x2C0
'data/compressed/comp_86C4490.lz77':
	(0x86C4490, 0x86C45A8), # size=0x118
'data/compressed/comp_86C45A8.lz77':
	(0x86C45A8, 0x86C4660), # size=0xB8
'data/dat38_5.s':
	(0x86C4660, 0x86C4B58), # size=0x4F8
'data/scripts/compScripts_credits_86C4B58.lz77':
	(0x86C4B58, 0x86C4FB0), # size=0x458
'data/dat38_6.s':
	(0x86C4FB0, 0x86C5190), # size=0x1E0
'data/compressed/comp_86C5190.lz77':
	(0x86C5190, 0x86C526C), # size=0xDC
'data/compressed/comp_86C526C.lz77':
	(0x86C526C, 0x86C52B4), # size=0x48
'data/dat38_7.s':
	(0x86C52B4, 0x86C580C), # size=0x558
'data/scripts/scripts_86C580C.bin':
	(0x86C580C, 0x86C67E4), # size=0xFD8
'data/dat38_8.s':
	(0x86C67E4, 0x86C6B30), # size=0x34C
'data/compressed/comp_86C6B30.lz77':
	(0x86C6B30, 0x86C6FD0), # size=0x4A0
'data/compressed/comp_86C6FD0.lz77':
	(0x86C6FD0, 0x86C73D8), # size=0x408
'data/compressed/comp_86C73D8.lz77':
	(0x86C73D8, 0x86C7764), # size=0x38C
'data/compressed/comp_86C7764.lz77':
	(0x86C7764, 0x86C7980), # size=0x21C
'data/compressed/comp_86C7980.lz77':
	(0x86C7980, 0x86C7DCC), # size=0x44C
'data/compressed/comp_86C7DCC.lz77':
	(0x86C7DCC, 0x86C7E74), # size=0xA8
'data/compressed/comp_86C7E74.lz77':
	(0x86C7E74, 0x86C7F70), # size=0xFC
'data/compressed/comp_86C7F70.lz77':
	(0x86C7F70, 0x86C7F98), # size=0x28
'data/compressed/comp_86C7F98.lz77':
	(0x86C7F98, 0x86C8034), # size=0x9C
'data/compressed/comp_86C8034.lz77':
	(0x86C8034, 0x86C8054), # size=0x20
'data/compressed/comp_86C8054.lz77':
	(0x86C8054, 0x86C9108), # size=0x10B4
'data/dat38_9.s':
	(0x86C9108, 0x86C9148), # size=0x40
'data/compressed/comp_86C9148.lz77':
	(0x86C9148, 0x86C9240), # size=0xF8
'data/compressed/comp_86C9240.lz77':
	(0x86C9240, 0x86C9274), # size=0x34
'data/compressed/comp_86C9274.lz77':
	(0x86C9274, 0x86C9668), # size=0x3F4
'data/compressed/comp_86C9668.lz77':
	(0x86C9668, 0x86C9694), # size=0x2C
'data/dat38_11.s':
	(0x86C9694, 0x86C96C0), # size=0x2C
'data/compressed/comp_86C96C0.lz77':
	(0x86C96C0, 0x86C980C), # size=0x14C
'data/compressed/comp_86C980C.lz77':
	(0x86C980C, 0x86C9AA4), # size=0x298
'data/compressed/comp_86C9AA4.lz77':
	(0x86C9AA4, 0x86C9AF4), # size=0x50
'data/dat38_12.s':
	(0x86C9AF4, 0x86C9BD4), # size=0xE0
'data/compressed/comp_86C9BD4.lz77':
	(0x86C9BD4, 0x86C9C80), # size=0xAC
'data/compressed/comp_86C9C80.lz77':
	(0x86C9C80, 0x86C9CE4), # size=0x64
'data/compressed/comp_86C9CE4.lz77':
	(0x86C9CE4, 0x86C9D38), # size=0x54
'data/compressed/comp_86C9D38.lz77':
	(0x86C9D38, 0x86C9D6C), # size=0x34
'data/dat38_13.s':
	(0x86C9D6C, 0x86CDCE4), # size=0x3F78
'data/compressed/comp_86CDCE4.lz77':
	(0x86CDCE4, 0x86CDE2C), # size=0x148
'data/compressed/comp_86CDE2C.lz77':
	(0x86CDE2C, 0x86CDEA8), # size=0x7C
'data/compressed/comp_86CDEA8.lz77':
	(0x86CDEA8, 0x86CE51C), # size=0x674
'data/compressed/comp_86CE51C.lz77':
	(0x86CE51C, 0x86CE63C), # size=0x120
'data/compressed/comp_86CE63C.lz77':
	(0x86CE63C, 0x86CE724), # size=0xE8
'data/compressed/comp_86CE724.lz77':
	(0x86CE724, 0x86CE77C), # size=0x58
'data/compressed/comp_86CE77C.lz77':
	(0x86CE77C, 0x86CE7D0), # size=0x54
'data/compressed/comp_86CE7D0.lz77':
	(0x86CE7D0, 0x86CE8AC), # size=0xDC
'data/compressed/comp_86CE8AC.lz77':
	(0x86CE8AC, 0x86CE9E8), # size=0x13C
'data/compressed/comp_86CE9E8.lz77':
	(0x86CE9E8, 0x86CEAA8), # size=0xC0
'data/compressed/comp_86CEAA8.lz77':
	(0x86CEAA8, 0x86CEC3C), # size=0x194
'data/compressed/comp_86CEC3C.lz77':
	(0x86CEC3C, 0x86CEE84), # size=0x248
'data/dat38_16.s':
	(0x86CEE84, 0x86CF82C), # size=0x9A8
'data/compressed/comp_86CF82C.lz77':
	(0x86CF82C, 0x86CF994), # size=0x168
'data/dat38_17.s':
	(0x86CF994, 0x86CFC64), # size=0x2D0
'data/compressed/comp_86CFC64.lz77':
	(0x86CFC64, 0x86CFCFC), # size=0x98
'data/compressed/comp_86CFCFC.lz77':
	(0x86CFCFC, 0x86CFD1C), # size=0x20
'data/dat38_18.s':
	(0x86CFD1C, 0x86D6974), # size=0x6C58
'data/compressed/comp_86D6974.lz77':
	(0x86D6974, 0x86D6C70), # size=0x2FC
'data/compressed/comp_86D6C70.lz77':
	(0x86D6C70, 0x86D6D50), # size=0xE0
'data/compressed/comp_86D6D50.lz77':
	(0x86D6D50, 0x86D6EE4), # size=0x194
'data/compressed/comp_86D6EE4.lz77':
	(0x86D6EE4, 0x86D6F30), # size=0x4C
'data/compressed/comp_86D6F30.lz77':
	(0x86D6F30, 0x86D737C), # size=0x44C
'data/compressed/comp_86D737C.lz77':
	(0x86D737C, 0x86D73D4), # size=0x58
'data/compressed/comp_86D73D4.lz77':
	(0x86D73D4, 0x86D7424), # size=0x50
'data/compressed/comp_86D7424.lz77':
	(0x86D7424, 0x86D747C), # size=0x58
'data/compressed/comp_86D747C.lz77':
	(0x86D747C, 0x86D74B0), # size=0x34
'data/compressed/comp_86D74B0.lz77':
	(0x86D74B0, 0x86D7578), # size=0xC8
'data/dat38_20.s':
	(0x86D7578, 0x86D8C80), # size=0x1708
'data/compressed/comp_86D8C80.lz77':
	(0x86D8C80, 0x86D8E98), # size=0x218
'data/dat38_21.s':
	(0x86D8E98, 0x86D9D10), # size=0xE78
'data/compressed/comp_86D9D10.lz77':
	(0x86D9D10, 0x86DA1B8), # size=0x4A8
'data/compressed/comp_86DA1B8.lz77':
	(0x86DA1B8, 0x86DA944), # size=0x78C
'data/compressed/comp_86DA944.lz77':
	(0x86DA944, 0x86DAC40), # size=0x2FC
'data/dat38_22.s':
	(0x86DAC40, 0x86DBD94), # size=0x1154
'data/compressed/comp_86DBD94.lz77':
	(0x86DBD94, 0x86DC3F8), # size=0x664
'data/dat38_23.s':
	(0x86DC3F8, 0x86DD9B4), # size=0x15BC
'data/compressed/comp_86DD9B4.lz77':
	(0x86DD9B4, 0x86DDAD0), # size=0x11C
'data/compressed/comp_86DDAD0.lz77':
	(0x86DDAD0, 0x86DDB24), # size=0x54
'data/dat38_24.s':
	(0x86DDB24, 0x86DDB44), # size=0x20
'data/compressed/comp_86DDB44.lz77':
	(0x86DDB44, 0x86DDB7C), # size=0x38
'data/compressed/comp_86DDB7C.lz77':
	(0x86DDB7C, 0x86DDBA0), # size=0x24
'data/dat38_25.s':
	(0x86DDBA0, 0x86F3F5C), # size=0x163BC
'data/scripts/scripts_fullSynchro_86F3F5C.bin':
	(0x86F3F5C, 0x86F4498), # size=0x53C
'data/scripts/scripts_dad_cybeastTut_86F4498.bin':
	(0x86F4498, 0x86F53CC), # size=0xF34
'data/scripts/scripts_shuko_crossTut_86F53CC.bin':
	(0x86F53CC, 0x86F5834), # size=0x468
'data/dat38_26.s':
	(0x86F5834, 0x87370C0), # size=0x4188C
'data/scripts/scripts_commErr_87370C0.bin':
	(0x87370C0, 0x873811C), # size=0x105C
'data/dat38_27.s':
	(0x873811C, 0x87E4500), # size=0xAC3E4
'data/compressed/comp_87E4500.lz77':
	(0x87E4500, 0x87E4FE0), # size=0xAE0
'data/dat38_28.s':
	(0x87E4FE0, 0x87E5020), # size=0x40
'data/compressed/comp_87E5020.lz77':
	(0x87E5020, 0x87E50D4), # size=0xB4
'data/compressed/comp_87E50D4.lz77':
	(0x87E50D4, 0x87E54B0), # size=0x3DC
'data/dat38_29.s':
	(0x87E54B0, 0x87E5550), # size=0xA0
'data/compressed/comp_87E5550.lz77':
	(0x87E5550, 0x87E56A0), # size=0x150
'data/compressed/comp_87E56A0.lz77':
	(0x87E56A0, 0x87E57BC), # size=0x11C
'data/compressed/comp_87E57BC.lz77':
	(0x87E57BC, 0x87E660C), # size=0xE50
'data/dat38_30.s':
	(0x87E660C, 0x87E674C), # size=0x140
'data/compressed/comp_87E674C.lz77':
	(0x87E674C, 0x87E6840), # size=0xF4
'data/compressed/comp_87E6840.lz77':
	(0x87E6840, 0x87E6924), # size=0xE4
'data/compressed/comp_87E6924.lz77':
	(0x87E6924, 0x87E6980), # size=0x5C
'data/compressed/comp_87E6980.lz77':
	(0x87E6980, 0x87E6BDC), # size=0x25C
'data/dat38_31.s':
	(0x87E6BDC, 0x87E6BFC), # size=0x20
'data/compressed/comp_87E6BFC.lz77':
	(0x87E6BFC, 0x87E6DD0), # size=0x1D4
'data/dat38_32.s':
	(0x87E6DD0, 0x87F006C), # size=0x929C
'data/compressed/comp_87F006C.lz77':
	(0x87F006C, 0x87F0218), # size=0x1AC
'data/compressed/comp_87F0218.lz77':
	(0x87F0218, 0x87F0340), # size=0x128
'data/dat38_33.s':
	(0x87F0340, 0x87F0360), # size=0x20
'data/compressed/comp_87F0360.lz77':
	(0x87F0360, 0x87F04D4), # size=0x174
'data/compressed/comp_87F04D4.lz77':
	(0x87F04D4, 0x87F0534), # size=0x60
'data/compressed/comp_87F0534.lz77':
	(0x87F0534, 0x87F056C), # size=0x38
'data/compressed/comp_87F056C.lz77':
	(0x87F056C, 0x87F05A4), # size=0x38
'data/dat38_34.s':
	(0x87F05A4, 0x87F0664), # size=0xC0
'data/compressed/comp_87F0664.lz77':
	(0x87F0664, 0x87F0834), # size=0x1D0
'data/compressed/comp_87F0834.lz77':
	(0x87F0834, 0x87F0C00), # size=0x3CC
'data/compressed/comp_87F0C00.lz77':
	(0x87F0C00, 0x87F0DA0), # size=0x1A0
'data/dat38_35.s':
	(0x87F0DA0, 0x87F24FC), # size=0x175C
'data/compressed/comp_87F24FC.lz77':
	(0x87F24FC, 0x87F25B8), # size=0xBC
'data/dat38_36.s':
	(0x87F25B8, 0x87F3370), # size=0xDB8
'data/compressed/comp_87F3370.lz77':
	(0x87F3370, 0x87F3620), # size=0x2B0
'data/dat38_37.s':
	(0x87F3620, 0x87F36A0), # size=0x80
'data/compressed/comp_87F36A0.lz77':
	(0x87F36A0, 0x87F40F4), # size=0xA54
'data/dat38_38.s':
	(0x87F40F4, 0x87F4394), # size=0x2A0
'data/compressed/comp_87F4394.lz77':
	(0x87F4394, 0x87F8EB0), # size=0x4B1C
'data/dat38_39.s':
	(0x87F8EB0, 0x8800000), # size=0x7150
})

print("Environment set!")
