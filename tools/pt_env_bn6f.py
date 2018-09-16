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
'bin/bin00.bin':
	(0x801ECB4, 0x801FE00), # size=0x114C
'asm/asm01.s':
	(0x801FE00, 0x8020354), # size=0x554
'bin/bin01.bin':
	(0x8020354, 0x8021AA4), # size=0x1750
'asm/asm02.s':
	(0x8021AA4, 0x8021DA8), # size=0x304
'data/ChipDataArr_8021DA8.s':
	(0x8021DA8, 0x8024110), # size=0x2368
'bin/bin02.bin':
	(0x8024110, 0x8026450), # size=0x2340
'asm/asm03_0.s':
	(0x8026450, 0x803FD08), # size=0x198B8
'asm/chatbox.s':
	(0x803FD08, 0x8045F8C), # size=0x6284
'asm/asm03_1.s':
	(0x8045F8C, 0x804CFBC), # size=0x7030
'bin/bin03.bin':
	(0x804CFBC, 0x804E62C), # size=0x1670
'asm/asm04.s':
	(0x804E62C, 0x804E74C), # size=0x120
'bin/bin04.bin':
	(0x804E74C, 0x8052688), # size=0x3F3C
'asm/asm05.s':
	(0x8052688, 0x8052834), # size=0x1AC
'bin/bin05.bin':
	(0x8052834, 0x80595B8), # size=0x6D84
'asm/asm06.s':
	(0x80595B8, 0x80596F4), # size=0x13C
'bin/bin06.bin':
	(0x80596F4, 0x805DF08), # size=0x4814
'asm/asm07.s':
	(0x805DF08, 0x805E01C), # size=0x114
'bin/bin07.bin':
	(0x805E01C, 0x806036C), # size=0x2350
'asm/asm08.s':
	(0x806036C, 0x8060474), # size=0x108
'bin/bin08.bin':
	(0x8060474, 0x8062AB0), # size=0x263C
'asm/asm09.s':
	(0x8062AB0, 0x8062BFC), # size=0x14C
'bin/bin09.bin':
	(0x8062BFC, 0x80663D0), # size=0x37D4
'asm/asm10.s':
	(0x80663D0, 0x8067DF8), # size=0x1A28
'bin/bin10.bin':
	(0x8067DF8, 0x8069038), # size=0x1240
'asm/asm11.s':
	(0x8069038, 0x806C5D0), # size=0x3598
'bin/bin11.bin':
	(0x806C5D0, 0x806D8F8), # size=0x1328
'asm/asm12.s':
	(0x806D8F8, 0x806DD2C), # size=0x434
'bin/bin12.bin':
	(0x806DD2C, 0x806FC08), # size=0x1EDC
'asm/asm13.s':
	(0x806FC08, 0x8070034), # size=0x42C
'bin/bin13.bin':
	(0x8070034, 0x8071B50), # size=0x1B1C
'asm/asm14.s':
	(0x8071B50, 0x8072BCC), # size=0x107C
'bin/bin14.bin':
	(0x8072BCC, 0x807544C), # size=0x2880
'asm/asm15.s':
	(0x807544C, 0x8075614), # size=0x1C8
'bin/bin15.bin':
	(0x8075614, 0x8077D00), # size=0x26EC
'asm/asm16.s':
	(0x8077D00, 0x8077EA4), # size=0x1A4
'bin/bin16.bin':
	(0x8077EA4, 0x807931C), # size=0x1478
'asm/asm17.s':
	(0x807931C, 0x80794AC), # size=0x190
'bin/bin17.bin':
	(0x80794AC, 0x807A8E0), # size=0x1434
'asm/asm18.s':
	(0x807A8E0, 0x807AAFC), # size=0x21C
'bin/bin18.bin':
	(0x807AAFC, 0x807CDEC), # size=0x22F0
'asm/asm19.s':
	(0x807CDEC, 0x807D024), # size=0x238
'bin/bin19.bin':
	(0x807D024, 0x807ECD0), # size=0x1CAC
'asm/asm20.s':
	(0x807ECD0, 0x807EEB8), # size=0x1E8
'bin/bin20.bin':
	(0x807EEB8, 0x8080D90), # size=0x1ED8
'asm/asm21.s':
	(0x8080D90, 0x80813F8), # size=0x668
'bin/bin21.bin':
	(0x80813F8, 0x8086F18), # size=0x5B20
'asm/asm22.s':
	(0x8086F18, 0x80871D8), # size=0x2C0
'bin/bin22.bin':
	(0x80871D8, 0x8088CA0), # size=0x1AC8
'asm/asm23.s':
	(0x8088CA0, 0x8089D58), # size=0x10B8
'bin/bin23.bin':
	(0x8089D58, 0x808BEFC), # size=0x21A4
'asm/asm24.s':
	(0x808BEFC, 0x808D266), # size=0x136A
'bin/bin24.bin':
	(0x808D266, 0x808F810), # size=0x25AA
'asm/asm25.s':
	(0x808F810, 0x8090340), # size=0xB30
'bin/bin25.bin':
	(0x8090340, 0x80924D0), # size=0x2190
'asm/asm26.s':
	(0x80924D0, 0x80924DA), # size=0xA
'bin/bin26.bin':
	(0x80924DA, 0x80946C4), # size=0x21EA
'asm/asm27.s':
	(0x80946C4, 0x8094780), # size=0xBC
'bin/bin27.bin':
	(0x8094780, 0x8098BE8), # size=0x4468
'asm/asm28_0.s':
	(0x8098BE8, 0x809E570), # size=0x5988
'asm/npc.s':
	(0x809E570, 0x809F526), # size=0xFB6
'asm/asm28_1.s':
	(0x809F526, 0x809FEA8), # size=0x982
'bin/bin28.bin':
	(0x809FEA8, 0x80A4984), # size=0x4ADC
'asm/asm29.s':
	(0x80A4984, 0x80AAEA8), # size=0x6524
'bin/bin29.bin':
	(0x80AAEA8, 0x80AED50), # size=0x3EA8
'asm/asm30_0.s':
	(0x80AED50, 0x80AEE70), # size=0x120
'data/BattleSettings.s':
	(0x80AEE70, 0x80B1B7C), # size=0x2D0C
'bin/bin30.bin':
	(0x80B1B7C, 0x80B81EC), # size=0x6670
'asm/asm31.s':
	(0x80B81EC, 0x810C35C), # size=0x54170
'bin/bin31.bin':
	(0x810C35C, 0x810D970), # size=0x1614
'asm/asm32.s':
	(0x810D970, 0x8121270), # size=0x13900
'bin/bin32.bin':
	(0x8121270, 0x8123208), # size=0x1F98
'asm/asm33.s':
	(0x8123208, 0x812C258), # size=0x9050
'bin/bin33.bin':
	(0x812C258, 0x812D378), # size=0x1120
'asm/asm34.s':
	(0x812D378, 0x812DA94), # size=0x71C
'bin/bin34.bin':
	(0x812DA94, 0x812EAAC), # size=0x1018
'asm/asm35.s':
	(0x812EAAC, 0x812EFD8), # size=0x52C
'bin/bin35.bin':
	(0x812EFD8, 0x8130020), # size=0x1048
'asm/asm36.s':
	(0x8130020, 0x8138944), # size=0x8924
'bin/bin36.bin':
	(0x8138944, 0x813B768), # size=0x2E24
'asm/asm37_0.s':
	(0x813B768, 0x813E07C), # size=0x2914
'asm/reqBBS.s':
	(0x813E07C, 0x814187C), # size=0x3800
'asm/asm37_1.s':
	(0x814187C, 0x814FE8D), # size=0xE611
'bin/bin37.bin':
	(0x814FE8D, 0x81D61DA), # size=0x8634D
'asm/asm38.s':
	(0x81D61DA, 0x81D7EF8), # size=0x1D1E
'bin/bin38_0.bin':
	(0x81D7EF8, 0x84E0C4C), # size=0x308D54
'data/compressed/comp_84E0C4C.lz77':
	(0x84E0C4C, 0x84E0E68), # size=0x21C
'bin/bin38_1.bin':
	(0x84E0E68, 0x86C23A0), # size=0x1E1538
'data/compressed/compFile_86C23A0.lz77':
	(0x86C23A0, 0x86C2E2A), # size=0xA8A
'bin/bin38_2.bin':
	(0x86C2E2A, 0x86C2E2C), # size=0x2
'data/compressed/comp_86C2E2C.lz77':
	(0x86C2E2C, 0x86C33B1), # size=0x585
'bin/bin38_3.bin':
	(0x86C33B1, 0x86C33B4), # size=0x3
'data/compressed/comp_86C33B4.lz77':
	(0x86C33B4, 0x86C3528), # size=0x174
'data/compressed/comp_86C3528.lz77':
	(0x86C3528, 0x86C3C92), # size=0x76A
'bin/bin38_4.bin':
	(0x86C3C92, 0x86C3E94), # size=0x202
'data/compressed/comp_86C3E94.lz77':
	(0x86C3E94, 0x86C3FD4), # size=0x140
'bin/bin38_5.bin':
	(0x86C3FD4, 0x86C41D0), # size=0x1FC
'data/compressed/comp_86C41D0.lz77':
	(0x86C41D0, 0x86C448F), # size=0x2BF
'bin/bin38_6.bin':
	(0x86C448F, 0x86C4490), # size=0x1
'data/compressed/comp_86C4490.lz77':
	(0x86C4490, 0x86C45A7), # size=0x117
'bin/bin38_7.bin':
	(0x86C45A7, 0x86C45A8), # size=0x1
'data/compressed/comp_86C45A8.lz77':
	(0x86C45A8, 0x86C4660), # size=0xB8
'bin/bin38_8.bin':
	(0x86C4660, 0x86C4B58), # size=0x4F8
'data/scripts/compScripts_credits_86C4B58.lz77':
	(0x86C4B58, 0x86C4FAF), # size=0x457
'bin/bin38_9.bin':
	(0x86C4FAF, 0x86C5190), # size=0x1E1
'data/compressed/comp_86C5190.lz77':
	(0x86C5190, 0x86C526B), # size=0xDB
'bin/bin38_10.bin':
	(0x86C526B, 0x86C526C), # size=0x1
'data/compressed/comp_86C526C.lz77':
	(0x86C526C, 0x86C52B4), # size=0x48
'bin/bin38_11.bin':
	(0x86C52B4, 0x86C580C), # size=0x558
'data/scripts/scripts_86C580C.bin':
	(0x86C580C, 0x86C67E4), # size=0xFD8
'bin/bin38_12.bin':
	(0x86C67E4, 0x86C73D8), # size=0xBF4
'data/compressed/comp_86C73D8.lz77':
	(0x86C73D8, 0x86C7762), # size=0x38A
'bin/bin38_13.bin':
	(0x86C7762, 0x86C7764), # size=0x2
'data/compressed/comp_86C7764.lz77':
	(0x86C7764, 0x86C797E), # size=0x21A
'bin/bin38_14.bin':
	(0x86C797E, 0x86C7980), # size=0x2
'data/compressed/comp_86C7980.lz77':
	(0x86C7980, 0x86C7DCB), # size=0x44B
'bin/bin38_15.bin':
	(0x86C7DCB, 0x86C8054), # size=0x289
'data/compressed/comp_86C8054.lz77':
	(0x86C8054, 0x86C9108), # size=0x10B4
'bin/bin38_16.bin':
	(0x86C9108, 0x86C9274), # size=0x16C
'data/compressed/comp_86C9274.lz77':
	(0x86C9274, 0x86C9668), # size=0x3F4
'data/compressed/comp_86C9668.lz77':
	(0x86C9668, 0x86C9693), # size=0x2B
'bin/bin38_17.bin':
	(0x86C9693, 0x86C96C0), # size=0x2D
'data/compressed/comp_86C96C0.lz77':
	(0x86C96C0, 0x86C980B), # size=0x14B
'bin/bin38_18.bin':
	(0x86C980B, 0x86C980C), # size=0x1
'data/compressed/comp_86C980C.lz77':
	(0x86C980C, 0x86C9AA1), # size=0x295
'bin/bin38_19.bin':
	(0x86C9AA1, 0x86C9BD4), # size=0x133
'data/compressed/comp_86C9BD4.lz77':
	(0x86C9BD4, 0x86C9C7F), # size=0xAB
'bin/bin38_20.bin':
	(0x86C9C7F, 0x86C9CE4), # size=0x65
'data/compressed/comp_86C9CE4.lz77':
	(0x86C9CE4, 0x86C9D38), # size=0x54
'data/compressed/comp_86C9D38.lz77':
	(0x86C9D38, 0x86C9D6B), # size=0x33
'bin/bin38_21.bin':
	(0x86C9D6B, 0x86CE8AC), # size=0x4B41
'data/compressed/comp_86CE8AC.lz77':
	(0x86CE8AC, 0x86CE9E7), # size=0x13B
'bin/bin38_22.bin':
	(0x86CE9E7, 0x86CE9E8), # size=0x1
'data/compressed/comp_86CE9E8.lz77':
	(0x86CE9E8, 0x86CEAA8), # size=0xC0
'bin/bin38_23.bin':
	(0x86CEAA8, 0x86D6974), # size=0x7ECC
'data/compressed/comp_86D6974.lz77':
	(0x86D6974, 0x86D6C6D), # size=0x2F9
'bin/bin38_24.bin':
	(0x86D6C6D, 0x86DA1B8), # size=0x354B
'data/compressed/comp_86DA1B8.lz77':
	(0x86DA1B8, 0x86DA943), # size=0x78B
'bin/bin38_25.bin':
	(0x86DA943, 0x86DBD94), # size=0x1451
'data/compressed/comp_86DBD94.lz77':
	(0x86DBD94, 0x86DC3F6), # size=0x662
'bin/bin38_26.bin':
	(0x86DC3F6, 0x86DD9B4), # size=0x15BE
'data/compressed/comp_86DD9B4.lz77':
	(0x86DD9B4, 0x86DDA41), # size=0x8D
'bin/bin38_27.bin':
	(0x86DDA41, 0x86DDAD0), # size=0x8F
'data/compressed/comp_86DDAD0.lz77':
	(0x86DDAD0, 0x86DDB21), # size=0x51
'bin/bin38_28.bin':
	(0x86DDB21, 0x86DDB44), # size=0x23
'data/compressed/comp_86DDB44.lz77':
	(0x86DDB44, 0x86DDB7B), # size=0x37
'bin/bin38_29.bin':
	(0x86DDB7B, 0x86DDB7C), # size=0x1
'data/compressed/comp_86DDB7C.lz77':
	(0x86DDB7C, 0x86DDB9D), # size=0x21
'bin/bin38_30.bin':
	(0x86DDB9D, 0x86F3F5C), # size=0x163BF
'data/scripts/scripts_fullSynchro_86F3F5C.bin':
	(0x86F3F5C, 0x86F4498), # size=0x53C
'data/scripts/scripts_dad_cybeastTut_86F4498.bin':
	(0x86F4498, 0x86F53CC), # size=0xF34
'data/scripts/scripts_shuko_crossTut_86F53CC.bin':
	(0x86F53CC, 0x86F5834), # size=0x468
'bin/bin38_31.bin':
	(0x86F5834, 0x87370C0), # size=0x4188C
'data/scripts/scripts_commErr_87370C0.bin':
	(0x87370C0, 0x873811C), # size=0x105C
'bin/bin38_32.bin':
	(0x873811C, 0x87E4500), # size=0xAC3E4
'data/compressed/comp_87E4500.lz77':
	(0x87E4500, 0x87E4FDD), # size=0xADD
'bin/bin38_33.bin':
	(0x87E4FDD, 0x87E5020), # size=0x43
'data/compressed/comp_87E5020.lz77':
	(0x87E5020, 0x87E50D4), # size=0xB4
'data/compressed/comp_87E50D4.lz77':
	(0x87E50D4, 0x87E54AE), # size=0x3DA
'bin/bin38_34.bin':
	(0x87E54AE, 0x87E5550), # size=0xA2
'data/compressed/comp_87E5550.lz77':
	(0x87E5550, 0x87E569D), # size=0x14D
'bin/bin38_35.bin':
	(0x87E569D, 0x87E56A0), # size=0x3
'data/compressed/comp_87E56A0.lz77':
	(0x87E56A0, 0x87E57BA), # size=0x11A
'bin/bin38_36.bin':
	(0x87E57BA, 0x87E57BC), # size=0x2
'data/compressed/comp_87E57BC.lz77':
	(0x87E57BC, 0x87E6609), # size=0xE4D
'bin/bin38_37.bin':
	(0x87E6609, 0x87E674C), # size=0x143
'data/compressed/comp_87E674C.lz77':
	(0x87E674C, 0x87E6840), # size=0xF4
'data/compressed/comp_87E6840.lz77':
	(0x87E6840, 0x87E6922), # size=0xE2
'bin/bin38_38.bin':
	(0x87E6922, 0x87E6924), # size=0x2
'data/compressed/comp_87E6924.lz77':
	(0x87E6924, 0x87E697F), # size=0x5B
'bin/bin38_39.bin':
	(0x87E697F, 0x87E6980), # size=0x1
'data/compressed/comp_87E6980.lz77':
	(0x87E6980, 0x87E6BDA), # size=0x25A
'bin/bin38_40.bin':
	(0x87E6BDA, 0x87E6BFC), # size=0x22
'data/compressed/comp_87E6BFC.lz77':
	(0x87E6BFC, 0x87E6DCF), # size=0x1D3
'bin/bin38_41.bin':
	(0x87E6DCF, 0x87F006C), # size=0x929D
'data/compressed/comp_87F006C.lz77':
	(0x87F006C, 0x87F0217), # size=0x1AB
'bin/bin38_42.bin':
	(0x87F0217, 0x87F0218), # size=0x1
'data/compressed/comp_87F0218.lz77':
	(0x87F0218, 0x87F0340), # size=0x128
'bin/bin38_43.bin':
	(0x87F0340, 0x87F0360), # size=0x20
'data/compressed/comp_87F0360.lz77':
	(0x87F0360, 0x87F04D2), # size=0x172
'bin/bin38_44.bin':
	(0x87F04D2, 0x87F04D4), # size=0x2
'data/compressed/comp_87F04D4.lz77':
	(0x87F04D4, 0x87F0531), # size=0x5D
'bin/bin38_45.bin':
	(0x87F0531, 0x87F0534), # size=0x3
'data/compressed/comp_87F0534.lz77':
	(0x87F0534, 0x87F0569), # size=0x35
'bin/bin38_46.bin':
	(0x87F0569, 0x87F056C), # size=0x3
'data/compressed/comp_87F056C.lz77':
	(0x87F056C, 0x87F05A3), # size=0x37
'bin/bin38_47.bin':
	(0x87F05A3, 0x87F0664), # size=0xC1
'data/compressed/comp_87F0664.lz77':
	(0x87F0664, 0x87F0834), # size=0x1D0
'data/compressed/comp_87F0834.lz77':
	(0x87F0834, 0x87F0BFF), # size=0x3CB
'bin/bin38_48.bin':
	(0x87F0BFF, 0x87F0C00), # size=0x1
'data/compressed/comp_87F0C00.lz77':
	(0x87F0C00, 0x87F0D9D), # size=0x19D
'bin/bin38_49.bin':
	(0x87F0D9D, 0x87F3370), # size=0x25D3
'data/compressed/comp_87F3370.lz77':
	(0x87F3370, 0x87F3620), # size=0x2B0
'bin/bin38_50.bin':
	(0x87F3620, 0x87F36A0), # size=0x80
'data/compressed/comp_87F36A0.lz77':
	(0x87F36A0, 0x87F40F3), # size=0xA53
'bin/bin38_51.bin':
	(0x87F40F3, 0x87F4394), # size=0x2A1
'data/compressed/comp_87F4394.lz77':
	(0x87F4394, 0x87F8EB0), # size=0x4B1C
'bin/bin38_52.bin':
	(0x87F8EB0, 0x8800000), # size=0x7150
})

print("Environment set!")
