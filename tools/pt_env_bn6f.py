# execute this file after pt.py in IDA to define the environmental variables
# for pt there.

# TODO: if using IDA tools, make sure to update all relative paths appropriately

# set up a new environment
pt.clrenv()

# project path
projPath = '../../../SPB_Data/dev/dis/bn6f/'
pt.env(projPath=projPath)

## ROM Paths
pt.env(ROMPath= '')
pt.env(elfPath=projPath + 'bn6f.elf')

## search utils
pt.env(compareBinPath= '')

## decomp path
pt.env(decompPath='docs/decomp/')

## disassembly utils
# TODO set this to your project path relative to your analysis idb path
pt.env(dismProjPath= [projPath])
# header files generated for *.s files. The file structure is duplicated there
# (ie. files in data/datXX.s will have headers as inc/data/datXX.inc)
pt.env(incPath='include/')
# aliases for file extensions of files to be binary extracted, not disassembled
pt.env(binAliases=['bin', 'lz77', 'spr'])

# the complete filemap of the ROM
pt.env(gameFiles={
'asm/start.s':
	(0x8000000, 0x80002BC), # size=0x2BC
'asm/main.s':
	(0x80002BC, 0x80005AC), # size=0x2F0
'asm/asm00_0.s':
	(0x80005AC, 0x80026A4), # size=0x20F8
'asm/sprite.s':
	(0x80026A4, 0x80030FC), # size=0xa58
'asm/asm00_1.s':
	(0x80030FC, 0x800BD34), # size=0x8F6C
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
'data/ChipDataArr.s':
	(0x8021DA8, 0x8026450), # size=0x46a8
'asm/asm03_0.s':
	(0x8026450, 0x8031CC4), # size=0xB874
'data/spritePointersList.s':
	(0x8031CC4, 0x8033764), # size=0x1AA0
'asm/asm03_1.s':
	(0x8033764, 0x803FD08), # size=0xC5A4
'asm/chatbox.s':
	(0x803FD08, 0x8045F8C), # size=0x6284
'asm/asm03_2.s':
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
	(0x814187C, 0x81440D8), # size=0xE611
'asm/libs.s':
	(0x81440D8, 0x814FE8D),
'data/dat37.s':
	(0x814FE8D, 0x81D6000), # size=0x8634D
'asm/asm38.s':
	(0x3005B00, 0x3007B00), # size=0x2000
	# (0x81D6000, 0x81D8000), # size=0x2000
'data/sprites/battleSpriteMegaMan.spr':
	(0x81D8000, 0x81DF420), # size=0x7420
'data/sprites/battleSpriteFlameCross.spr':
	(0x81DF420, 0x81E7CC8), # size=0x88A8
'data/sprites/battleSpriteElecCross.spr':
	(0x81E7CC8, 0x81F1414), # size=0x974C
'data/sprites/battleSpriteSlashCross.spr':
	(0x81F1414, 0x81FA9E8), # size=0x95D4
'data/sprites/battleSprite_81FA9E8.spr':
	(0x81FA9E8, 0x8200810), # size=0x5E28
'data/dat38_0.s':
	(0x8200810, 0x8204108), # size=0x38F8
'data/sprites/battleSprite_8204108.spr':
	(0x8204108, 0x820CD4C), # size=0x8C44
'data/sprites/battleSprite_820CD4C.spr':
	(0x820CD4C, 0x8214808), # size=0x7ABC
'data/sprites/battleSprite_8214808.spr':
	(0x8214808, 0x821C354), # size=0x7B4C
'data/sprites/battleSprite_821C354.spr':
	(0x821C354, 0x8223C48), # size=0x78F4
'data/sprites/battleSprite_8223C48.spr':
	(0x8223C48, 0x822CC50), # size=0x9008
'data/sprites/battleSprite_822CC50.spr':
	(0x822CC50, 0x8233728), # size=0x6AD8
'data/sprites/battleSprite_8233728.spr':
	(0x8233728, 0x823B768), # size=0x8040
'data/sprites/battleSprite_823B768.spr':
	(0x823B768, 0x8241EC4), # size=0x675C
'data/sprites/compVirusBattleSpriteMetteur.lz77':
	(0x8241EC4, 0x8242E94), # size=0xFD0
'data/sprites/compVirusBattleSprite_8242E94.lz77':
	(0x8242E94, 0x8244164), # size=0x12D0
'data/sprites/virusBattleSprite_8244164.spr':
	(0x8244164, 0x82455B0), # size=0x144C
'data/sprites/compVirusBattleSprite_82455B0.lz77':
	(0x82455B0, 0x8246A24), # size=0x1474
'data/sprites/virusBattleSprite_8246A24.spr':
	(0x8246A24, 0x82489C8), # size=0x1FA4
'data/sprites/compVirusBattleSprite_82489C8.lz77':
	(0x82489C8, 0x82492FC), # size=0x934
'data/sprites/compVirusBattleSprite_82492FC.lz77':
	(0x82492FC, 0x8249C7C), # size=0x980
'data/sprites/compVirusBattleSprite_8249C7C.lz77':
	(0x8249C7C, 0x824AC94), # size=0x1018
'data/sprites/virusBattleSprite_824AC94.spr':
	(0x824AC94, 0x824B254), # size=0x5C0
'data/sprites/virusBattleSprite_824B254.spr':
	(0x824B254, 0x824D23C), # size=0x1FE8
'data/sprites/compVirusBattleSprite_824D23C.lz77':
	(0x824D23C, 0x824DC7C), # size=0xA40
'data/sprites/compVirusBattleSprite_824DC7C.lz77':
	(0x824DC7C, 0x824EAF4), # size=0xE78
'data/sprites/virusBattleSprite_824EAF4.spr':
	(0x824EAF4, 0x8252558), # size=0x3A64
'data/sprites/compVirusBattleSprite_8252558.lz77':
	(0x8252558, 0x82533F4), # size=0xE9C
'data/sprites/byte_82533F4.spr':
	(0x82533F4, 0x8253F88), # size=0xB94
'data/sprites/byte_8253F88.spr':
	(0x8253F88, 0x8257994), # size=0x3A0C
'data/sprites/comp_8257994.lz77':
	(0x8257994, 0x825859C), # size=0xC08
'data/sprites/comp_825859C.lz77':
	(0x825859C, 0x8258FF8), # size=0xA5C
'data/sprites/comp_8258FF8.lz77':
	(0x8258FF8, 0x825A0D8), # size=0x10E0
'data/sprites/comp_825A0D8.lz77':
	(0x825A0D8, 0x825AD90), # size=0xCB8
'data/sprites/comp_825AD90.lz77':
	(0x825AD90, 0x825B860), # size=0xAD0
'data/sprites/comp_825B860.lz77':
	(0x825B860, 0x825BFC4), # size=0x764
'data/sprites/comp_825BFC4.lz77':
	(0x825BFC4, 0x825C9AC), # size=0x9E8
'data/sprites/byte_825C9AC.spr':
	(0x825C9AC, 0x825DFB4), # size=0x1608
'data/sprites/comp_825DFB4.lz77':
	(0x825DFB4, 0x825F2C8), # size=0x1314
'data/sprites/byte_825F2C8.spr':
	(0x825F2C8, 0x8260F88), # size=0x1CC0
'data/sprites/byte_8260F88.spr':
	(0x8260F88, 0x8262CEC), # size=0x1D64
'data/sprites/comp_8262CEC.lz77':
	(0x8262CEC, 0x8263484), # size=0x798
'data/sprites/comp_8263484.lz77':
	(0x8263484, 0x82647E4), # size=0x1360
'data/sprites/comp_82647E4.lz77':
	(0x82647E4, 0x8264FA0), # size=0x7BC
'data/sprites/battleSpriteFlameMan.spr':
	(0x8264FA0, 0x826FAF0), # size=0xAB50
'data/sprites/battleSpriteElecMan.spr':
	(0x826FAF0, 0x8278EBC), # size=0x93CC
'data/sprites/battleSpriteSlashMan.spr':
	(0x8278EBC, 0x828324C), # size=0xA390
'data/sprites/byte_828324C.spr':
	(0x828324C, 0x828F18C), # size=0xBF40
'data/sprites/byte_828F18C.spr':
	(0x828F18C, 0x8296F40), # size=0x7DB4
'data/sprites/battleSpriteSpoutMan.spr':
	(0x8296F40, 0x829D818), # size=0x68D8
'data/sprites/byte_829D818.spr':
	(0x829D818, 0x82A5AF0), # size=0x82D8
'data/sprites/byte_82A5AF0.spr':
	(0x82A5AF0, 0x82B0690), # size=0xABA0
'data/sprites/byte_82B0690.spr':
	(0x82B0690, 0x82BA7BC), # size=0xA12C
'data/sprites/byte_82BA7BC.spr':
	(0x82BA7BC, 0x82C7550), # size=0xCD94
'data/sprites/battleSpriteProtoMan.spr':
	(0x82C7550, 0x82CED74), # size=0x7824
'data/sprites/comp_82CED74.lz77':
	(0x82CED74, 0x82D2AC8), # size=0x3D54
'data/sprites/comp_82D2AC8.lz77':
	(0x82D2AC8, 0x82D6FE4), # size=0x451C
'data/sprites/comp_82D6FE4.lz77':
	(0x82D6FE4, 0x82DABC8), # size=0x3BE4
'data/sprites/comp_82DABC8.lz77':
	(0x82DABC8, 0x82DD9A8), # size=0x2DE0
'data/sprites/comp_82DD9A8.lz77':
	(0x82DD9A8, 0x82E0114), # size=0x276C
'data/sprites/compBattleSprite_Colonel.lz77':
	(0x82E0114, 0x82E4050), # size=0x3F3C
'data/compressed/comp_82E4050.lz77':
	(0x82E4050, 0x82E8470), # size=0x4420
'data/compressed/comp_82E8470.lz77':
	(0x82E8470, 0x82EFE48), # size=0x79D8
'data/sprites/byte_82EFE48.spr':
	(0x82EFE48, 0x82F39C0), # size=0x3B78
'data/sprites/byte_82F39C0.spr':
	(0x82F39C0, 0x82F569C), # size=0x1CDC
'data/sprites/byte_82F569C.spr':
	(0x82F569C, 0x82F6ECC), # size=0x1830
'data/sprites/byte_82F6ECC.spr':
	(0x82F6ECC, 0x82F9CCC), # size=0x2E00
'data/sprites/byte_82F9CCC.spr':
	(0x82F9CCC, 0x82FCA14), # size=0x2D48
'data/compressed/comp_82FCA14.lz77':
	(0x82FCA14, 0x82FE378), # size=0x1964
'data/sprites/byte_82FE378.spr':
	(0x82FE378, 0x82FE704), # size=0x38C
'data/sprites/byte_82FE704.spr':
	(0x82FE704, 0x82FF95C), # size=0x1258
'data/sprites/byte_82FF95C.spr':
	(0x82FF95C, 0x8300CFC), # size=0x13A0
'data/sprites/byte_8300CFC.spr':
	(0x8300CFC, 0x8300F70), # size=0x274
'data/sprites/byte_8300F70.spr':
	(0x8300F70, 0x8303A34), # size=0x2AC4
'data/sprites/byte_8303A34.spr':
	(0x8303A34, 0x830451C), # size=0xAE8
'data/sprites/byte_830451C.spr':
	(0x830451C, 0x8304700), # size=0x1E4
'data/sprites/byte_8304700.spr':
	(0x8304700, 0x8308700), # size=0x4000
'data/sprites/byte_8308700.spr':
	(0x8308700, 0x830902C), # size=0x92C
'data/sprites/byte_830902C.spr':
	(0x830902C, 0x830A308), # size=0x12DC
'data/sprites/byte_830A308.spr':
	(0x830A308, 0x830D494), # size=0x318C
'data/sprites/byte_830D494.spr':
	(0x830D494, 0x830E44C), # size=0xFB8
'data/sprites/byte_830E44C.spr':
	(0x830E44C, 0x830F144), # size=0xCF8
'data/sprites/byte_830F144.spr':
	(0x830F144, 0x8311288), # size=0x2144
'data/sprites/byte_8311288.spr':
	(0x8311288, 0x83124E8), # size=0x1260
'data/sprites/byte_83124E8.spr':
	(0x83124E8, 0x8312FB4), # size=0xACC
'data/sprites/byte_8312FB4.spr':
	(0x8312FB4, 0x83138C4), # size=0x910
'data/sprites/byte_83138C4.spr':
	(0x83138C4, 0x831530C), # size=0x1A48
'data/sprites/byte_831530C.spr':
	(0x831530C, 0x831661C), # size=0x1310
'data/sprites/byte_831661C.spr':
	(0x831661C, 0x8317340), # size=0xD24
'data/sprites/byte_8317340.spr':
	(0x8317340, 0x8318920), # size=0x15E0
'data/sprites/byte_8318920.spr':
	(0x8318920, 0x83195F0), # size=0xCD0
'data/sprites/byte_83195F0.spr':
	(0x83195F0, 0x8319B5C), # size=0x56C
'data/sprites/byte_8319B5C.spr':
	(0x8319B5C, 0x831C8A4), # size=0x2D48
'data/sprites/byte_831C8A4.spr':
	(0x831C8A4, 0x831CAF8), # size=0x254
'data/sprites/byte_831CAF8.spr':
	(0x831CAF8, 0x831E67C), # size=0x1B84
'data/sprites/byte_831E67C.spr':
	(0x831E67C, 0x831E8C0), # size=0x244
'data/sprites/byte_831E8C0.spr':
	(0x831E8C0, 0x831EA40), # size=0x180
'data/sprites/byte_831EA40.spr':
	(0x831EA40, 0x831FA84), # size=0x1044
'data/sprites/byte_831FA84.spr':
	(0x831FA84, 0x831FCF0), # size=0x26C
'data/sprites/byte_831FCF0.spr':
	(0x831FCF0, 0x832154C), # size=0x185C
'data/sprites/byte_832154C.spr':
	(0x832154C, 0x8322920), # size=0x13D4
'data/sprites/byte_8322920.spr':
	(0x8322920, 0x83234D4), # size=0xBB4
'data/sprites/byte_83234D4.spr':
	(0x83234D4, 0x8323728), # size=0x254
'data/sprites/byte_8323728.spr':
	(0x8323728, 0x83241F4), # size=0xACC
'data/sprites/byte_83241F4.spr':
	(0x83241F4, 0x83245E8), # size=0x3F4
'data/sprites/byte_83245E8.spr':
	(0x83245E8, 0x83249B0), # size=0x3C8
'data/sprites/byte_83249B0.spr':
	(0x83249B0, 0x8324E14), # size=0x464
'data/sprites/byte_8324E14.spr':
	(0x8324E14, 0x8325038), # size=0x224
'data/sprites/byte_8325038.spr':
	(0x8325038, 0x83255C0), # size=0x588
'data/sprites/byte_83255C0.spr':
	(0x83255C0, 0x8325C94), # size=0x6D4
'data/sprites/byte_8325C94.spr':
	(0x8325C94, 0x8325EF4), # size=0x260
'data/sprites/byte_8325EF4.spr':
	(0x8325EF4, 0x83262C0), # size=0x3CC
'data/sprites/byte_83262C0.spr':
	(0x83262C0, 0x8326724), # size=0x464
'data/sprites/byte_8326724.spr':
	(0x8326724, 0x83279C0), # size=0x129C
'data/sprites/byte_83279C0.spr':
	(0x83279C0, 0x8329D28), # size=0x2368
'data/sprites/byte_8329D28.spr':
	(0x8329D28, 0x832C418), # size=0x26F0
'data/sprites/byte_832C418.spr':
	(0x832C418, 0x832E9C8), # size=0x25B0
'data/sprites/byte_832E9C8.spr':
	(0x832E9C8, 0x832F0C8), # size=0x700
'data/sprites/byte_832F0C8.spr':
	(0x832F0C8, 0x832F8C8), # size=0x800
'data/sprites/byte_832F8C8.spr':
	(0x832F8C8, 0x8330A30), # size=0x1168
'data/sprites/byte_8330A30.spr':
	(0x8330A30, 0x8330FA8), # size=0x578
'data/sprites/byte_8330FA8.spr':
	(0x8330FA8, 0x83317F0), # size=0x848
'data/sprites/byte_83317F0.spr':
	(0x83317F0, 0x83322B8), # size=0xAC8
'data/sprites/byte_83322B8.spr':
	(0x83322B8, 0x8332484), # size=0x1CC
'data/sprites/byte_8332484.spr':
	(0x8332484, 0x8333350), # size=0xECC
'data/sprites/byte_8333350.spr':
	(0x8333350, 0x8333CC8), # size=0x978
'data/compressed/comp_8333CC8.lz77':
	(0x8333CC8, 0x8334B0C), # size=0xE44
'data/compressed/comp_8334B0C.lz77':
	(0x8334B0C, 0x83353F4), # size=0x8E8
'data/compressed/comp_83353F4.lz77':
	(0x83353F4, 0x8336320), # size=0xF2C
'data/dat38_30.s':
	(0x8336320, 0x8338170), # size=0x1E50
'data/compressed/comp_8338170.lz77':
	(0x8338170, 0x8338F18), # size=0xDA8
'data/dat38_31.s':
	(0x8338F18, 0x834FC40), # size=0x16D28
'data/compressed/comp_834FC40.lz77':
	(0x834FC40, 0x8350628), # size=0x9E8
'data/dat38_32.s':
	(0x8350628, 0x838B160), # size=0x3AB38
'data/compressed/comp_838B160.lz77':
	(0x838B160, 0x838B438), # size=0x2D8
'data/compressed/comp_838B438.lz77':
	(0x838B438, 0x838B930), # size=0x4F8
'data/dat38_33.s':
	(0x838B930, 0x83FDF7C), # size=0x7264C
'data/compressed/comp_83FDF7C.lz77':
	(0x83FDF7C, 0x83FEC68), # size=0xCEC
'data/dat38_34.s':
	(0x83FEC68, 0x840A4BC), # size=0xB854
'data/compressed/comp_840A4BC.lz77':
	(0x840A4BC, 0x840AC00), # size=0x744
'data/sprites/compNpcSpriteMrFamous.lz77':
	(0x840AC00, 0x840B3A4), # size=0x7A4
'data/dat38_35.s':
	(0x840B3A4, 0x840F4F4), # size=0x4150
'data/compressed/comp_840F4F4.lz77':
	(0x840F4F4, 0x84105EC), # size=0x10F8
'data/compressed/comp_84105EC.lz77':
	(0x84105EC, 0x8410A18), # size=0x42C
'data/compressed/comp_8410A18.lz77':
	(0x8410A18, 0x84114E8), # size=0xAD0
'data/compressed/comp_84114E8.lz77':
	(0x84114E8, 0x84119D0), # size=0x4E8
'data/compressed/comp_84119D0.lz77':
	(0x84119D0, 0x8411E90), # size=0x4C0
'data/dat38_36.s':
	(0x8411E90, 0x843A5AC), # size=0x2871C
'data/sprites/compNpcSpriteRoll.lz77':
	(0x843A5AC, 0x843AE88), # size=0x8DC
'data/sprites/compNpcSpriteGutsMan.lz77':
	(0x843AE88, 0x843B99C), # size=0xB14
'data/sprites/compNpcSpriteGlyde.lz77':
	(0x843B99C, 0x843C234), # size=0x898
'data/dat38_37.s':
	(0x843C234, 0x8495434), # size=0x59200
'data/compressed/comp_8495434.lz77':
	(0x8495434, 0x8495B88), # size=0x754
'data/dat38_38.s':
	(0x8495B88, 0x8499CF0), # size=0x4168
'data/compressed/comp_8499CF0.lz77':
	(0x8499CF0, 0x849AAD0), # size=0xDE0
'data/compressed/comp_849AAD0.lz77':
	(0x849AAD0, 0x849B424), # size=0x954
'data/dat38_39.s':
	(0x849B424, 0x84A03B8), # size=0x4F94
'data/compressed/comp_84A03B8.lz77':
	(0x84A03B8, 0x84A0920), # size=0x568
'data/compressed/comp_84A0920.lz77':
	(0x84A0920, 0x84A0DCC), # size=0x4AC
'data/compressed/comp_84A0DCC.lz77':
	(0x84A0DCC, 0x84A1458), # size=0x68C
'data/compressed/comp_84A1458.lz77':
	(0x84A1458, 0x84A1B14), # size=0x6BC
'data/compressed/comp_84A1B14.lz77':
	(0x84A1B14, 0x84A1E30), # size=0x31C
'data/compressed/comp_84A1E30.lz77':
	(0x84A1E30, 0x84A225C), # size=0x42C
'data/compressed/comp_84A225C.lz77':
	(0x84A225C, 0x84A24CC), # size=0x270
'data/compressed/comp_84A24CC.lz77':
	(0x84A24CC, 0x84A3048), # size=0xB7C
'data/dat38_40.s':
	(0x84A3048, 0x84A3708), # size=0x6C0
'data/compressed/comp_84A3708.lz77':
	(0x84A3708, 0x84A3B44), # size=0x43C
'data/compressed/comp_84A3B44.lz77':
	(0x84A3B44, 0x84A3E08), # size=0x2C4
'data/compressed/comp_84A3E08.lz77':
	(0x84A3E08, 0x84A40E0), # size=0x2D8
'data/compressed/comp_84A40E0.lz77':
	(0x84A40E0, 0x84A47F0), # size=0x710
'data/compressed/comp_84A47F0.lz77':
	(0x84A47F0, 0x84A4F0C), # size=0x71C
'data/compressed/comp_84A4F0C.lz77':
	(0x84A4F0C, 0x84A502C), # size=0x120
'data/compressed/comp_84A502C.lz77':
	(0x84A502C, 0x84A53C4), # size=0x398
'data/dat38_41.s':
	(0x84A53C4, 0x84A642C), # size=0x1068
'data/compressed/comp_84A642C.lz77':
	(0x84A642C, 0x84A6D14), # size=0x8E8
'data/compressed/comp_84A6D14.lz77':
	(0x84A6D14, 0x84A71A0), # size=0x48C
'data/compressed/comp_84A71A0.lz77':
	(0x84A71A0, 0x84A74A4), # size=0x304
'data/compressed/comp_84A74A4.lz77':
	(0x84A74A4, 0x84A77A4), # size=0x300
'data/compressed/comp_84A77A4.lz77':
	(0x84A77A4, 0x84A7A14), # size=0x270
'data/compressed/comp_84A7A14.lz77':
	(0x84A7A14, 0x84A7FA4), # size=0x590
'data/compressed/comp_84A7FA4.lz77':
	(0x84A7FA4, 0x84A8524), # size=0x580
'data/compressed/comp_84A8524.lz77':
	(0x84A8524, 0x84A8AC0), # size=0x59C
'data/dat38_42.s':
	(0x84A8AC0, 0x84A8F68), # size=0x4A8
'data/compressed/comp_84A8F68.lz77':
	(0x84A8F68, 0x84A914C), # size=0x1E4
'data/compressed/comp_84A914C.lz77':
	(0x84A914C, 0x84A96B8), # size=0x56C
'data/compressed/comp_84A96B8.lz77':
	(0x84A96B8, 0x84A97A8), # size=0xF0
'data/dat38_43.s':
	(0x84A97A8, 0x84AA028), # size=0x880
'data/compressed/comp_84AA028.lz77':
	(0x84AA028, 0x84AA640), # size=0x618
'data/compressed/comp_84AA640.lz77':
	(0x84AA640, 0x84AAC80), # size=0x640
'data/compressed/comp_84AAC80.lz77':
	(0x84AAC80, 0x84AAE70), # size=0x1F0
'data/compressed/comp_84AAE70.lz77':
	(0x84AAE70, 0x84AAF18), # size=0xA8
'data/compressed/comp_84AAF18.lz77':
	(0x84AAF18, 0x84AB2D0), # size=0x3B8
'data/dat38_44.s':
	(0x84AB2D0, 0x84AE340), # size=0x3070
'data/compressed/comp_84AE340.lz77':
	(0x84AE340, 0x84AF710), # size=0x13D0
'data/dat38_45.s':
	(0x84AF710, 0x84B42EC), # size=0x4BDC
'data/compressed/comp_84B42EC.lz77':
	(0x84B42EC, 0x84B4838), # size=0x54C
'data/dat38_46.s':
	(0x84B4838, 0x84B5734), # size=0xEFC
'data/compressed/comp_84B5734.lz77':
	(0x84B5734, 0x84B5C18), # size=0x4E4
'data/dat38_47.s':
	(0x84B5C18, 0x84B6744), # size=0xB2C
'data/compressed/comp_84B6744.lz77':
	(0x84B6744, 0x84B7414), # size=0xCD0
'data/dat38_48.s':
	(0x84B7414, 0x84BADF8), # size=0x39E4
'data/compressed/comp_84BADF8.lz77':
	(0x84BADF8, 0x84BB07C), # size=0x284
'data/compressed/comp_84BB07C.lz77':
	(0x84BB07C, 0x84BB704), # size=0x688
'data/compressed/comp_84BB704.lz77':
	(0x84BB704, 0x84BBA74), # size=0x370
'data/compressed/comp_84BBA74.lz77':
	(0x84BBA74, 0x84BC0C8), # size=0x654
'data/dat38_49.s':
	(0x84BC0C8, 0x84BC4D0), # size=0x408
'data/compressed/comp_84BC4D0.lz77':
	(0x84BC4D0, 0x84BC854), # size=0x384
'data/dat38_50.s':
	(0x84BC854, 0x84BD3FC), # size=0xBA8
'data/compressed/comp_84BD3FC.lz77':
	(0x84BD3FC, 0x84BD83C), # size=0x440
'data/compressed/comp_84BD83C.lz77':
	(0x84BD83C, 0x84BDDD4), # size=0x598
'data/dat38_51.s':
	(0x84BDDD4, 0x84BE924), # size=0xB50
'data/compressed/comp_84BE924.lz77':
	(0x84BE924, 0x84BECDC), # size=0x3B8
'data/compressed/comp_84BECDC.lz77':
	(0x84BECDC, 0x84BEF4C), # size=0x270
'data/compressed/comp_84BEF4C.lz77':
	(0x84BEF4C, 0x84BF174), # size=0x228
'data/compressed/comp_84BF174.lz77':
	(0x84BF174, 0x84BF6F8), # size=0x584
'data/dat38_52.s':
	(0x84BF6F8, 0x84C0150), # size=0xA58
'data/compressed/comp_84C0150.lz77':
	(0x84C0150, 0x84C0298), # size=0x148
'data/dat38_53.s':
	(0x84C0298, 0x84C3C90), # size=0x39F8
'data/compressed/comp_84C3C90.lz77':
	(0x84C3C90, 0x84C3F54), # size=0x2C4
'data/compressed/comp_84C3F54.lz77':
	(0x84C3F54, 0x84C43AC), # size=0x458
'data/compressed/comp_84C43AC.lz77':
	(0x84C43AC, 0x84C5194), # size=0xDE8
'data/dat38_54.s':
	(0x84C5194, 0x84C8DEC), # size=0x3C58
'data/compressed/comp_84C8DEC.lz77':
	(0x84C8DEC, 0x84C90B4), # size=0x2C8
'data/dat38_55.s':
	(0x84C90B4, 0x84CA1BC), # size=0x1108
'data/compressed/comp_84CA1BC.lz77':
	(0x84CA1BC, 0x84CA74C), # size=0x590
'data/compressed/comp_84CA74C.lz77':
	(0x84CA74C, 0x84CA9E8), # size=0x29C
'data/compressed/comp_84CA9E8.lz77':
	(0x84CA9E8, 0x84CAD70), # size=0x388
'data/compressed/comp_84CAD70.lz77':
	(0x84CAD70, 0x84CB0F4), # size=0x384
'data/compressed/comp_84CB0F4.lz77':
	(0x84CB0F4, 0x84CB3A8), # size=0x2B4
'data/compressed/comp_84CB3A8.lz77':
	(0x84CB3A8, 0x84CB638), # size=0x290
'data/compressed/comp_84CB638.lz77':
	(0x84CB638, 0x84CB930), # size=0x2F8
'data/compressed/comp_84CB930.lz77':
	(0x84CB930, 0x84CBC1C), # size=0x2EC
'data/compressed/comp_84CBC1C.lz77':
	(0x84CBC1C, 0x84CBDE8), # size=0x1CC
'data/compressed/comp_84CBDE8.lz77':
	(0x84CBDE8, 0x84CC308), # size=0x520
'data/compressed/comp_84CC308.lz77':
	(0x84CC308, 0x84CC8AC), # size=0x5A4
'data/compressed/comp_84CC8AC.lz77':
	(0x84CC8AC, 0x84CD83C), # size=0xF90
'data/compressed/comp_84CD83C.lz77':
	(0x84CD83C, 0x84CDCE8), # size=0x4AC
'data/compressed/comp_84CDCE8.lz77':
	(0x84CDCE8, 0x84CDE24), # size=0x13C
'data/compressed/comp_84CDE24.lz77':
	(0x84CDE24, 0x84CDF74), # size=0x150
'data/dat38_56.s':
	(0x84CDF74, 0x84CF9D8), # size=0x1A64
'data/compressed/comp_84CF9D8.lz77':
	(0x84CF9D8, 0x84CFC7C), # size=0x2A4
'data/compressed/comp_84CFC7C.lz77':
	(0x84CFC7C, 0x84D014C), # size=0x4D0
'data/compressed/comp_84D014C.lz77':
	(0x84D014C, 0x84D230C), # size=0x21C0
'data/compressed/comp_84D230C.lz77':
	(0x84D230C, 0x84D26BC), # size=0x3B0
'data/compressed/comp_84D26BC.lz77':
	(0x84D26BC, 0x84D2820), # size=0x164
'data/compressed/comp_84D2820.lz77':
	(0x84D2820, 0x84D2A54), # size=0x234
'data/compressed/comp_84D2A54.lz77':
	(0x84D2A54, 0x84D3998), # size=0xF44
'data/compressed/comp_84D3998.lz77':
	(0x84D3998, 0x84D3DBC), # size=0x424
'data/dat38_57.s':
	(0x84D3DBC, 0x84D4AC4), # size=0xD08
'data/compressed/comp_84D4AC4.lz77':
	(0x84D4AC4, 0x84D4CC8), # size=0x204
'data/compressed/comp_84D4CC8.lz77':
	(0x84D4CC8, 0x84D4FF0), # size=0x328
'data/compressed/comp_84D4FF0.lz77':
	(0x84D4FF0, 0x84D5764), # size=0x774
'data/compressed/comp_84D5764.lz77':
	(0x84D5764, 0x84D5C94), # size=0x530
'data/compressed/comp_84D5C94.lz77':
	(0x84D5C94, 0x84D5DF0), # size=0x15C
'data/compressed/comp_84D5DF0.lz77':
	(0x84D5DF0, 0x84D6370), # size=0x580
'data/compressed/comp_84D6370.lz77':
	(0x84D6370, 0x84D66B8), # size=0x348
'data/compressed/comp_84D66B8.lz77':
	(0x84D66B8, 0x84D6908), # size=0x250
'data/compressed/comp_84D6908.lz77':
	(0x84D6908, 0x84D6BF0), # size=0x2E8
'data/compressed/comp_84D6BF0.lz77':
	(0x84D6BF0, 0x84D6E50), # size=0x260
'data/compressed/comp_84D6E50.lz77':
	(0x84D6E50, 0x84D701C), # size=0x1CC
'data/compressed/comp_84D701C.lz77':
	(0x84D701C, 0x84D77D8), # size=0x7BC
'data/compressed/comp_84D77D8.lz77':
	(0x84D77D8, 0x84D84E4), # size=0xD0C
'data/compressed/comp_84D84E4.lz77':
	(0x84D84E4, 0x84D9344), # size=0xE60
'data/compressed/comp_84D9344.lz77':
	(0x84D9344, 0x84D9954), # size=0x610
'data/compressed/comp_84D9954.lz77':
	(0x84D9954, 0x84DA604), # size=0xCB0
'data/compressed/comp_84DA604.lz77':
	(0x84DA604, 0x84DAD14), # size=0x710
'data/compressed/comp_84DAD14.lz77':
	(0x84DAD14, 0x84DB04C), # size=0x338
'data/compressed/comp_84DB04C.lz77':
	(0x84DB04C, 0x84DB1CC), # size=0x180
'data/compressed/comp_84DB1CC.lz77':
	(0x84DB1CC, 0x84DB8F8), # size=0x72C
'data/compressed/comp_84DB8F8.lz77':
	(0x84DB8F8, 0x84DBD30), # size=0x438
'data/compressed/comp_84DBD30.lz77':
	(0x84DBD30, 0x84DC2B0), # size=0x580
'data/compressed/comp_84DC2B0.lz77':
	(0x84DC2B0, 0x84DCBD8), # size=0x928
'data/compressed/comp_84DCBD8.lz77':
	(0x84DCBD8, 0x84DD20C), # size=0x634
'data/compressed/comp_84DD20C.lz77':
	(0x84DD20C, 0x84DD40C), # size=0x200
'data/compressed/comp_84DD40C.lz77':
	(0x84DD40C, 0x84DDDB8), # size=0x9AC
'data/compressed/comp_84DDDB8.lz77':
	(0x84DDDB8, 0x84DDF94), # size=0x1DC
'data/compressed/comp_84DDF94.lz77':
	(0x84DDF94, 0x84DE328), # size=0x394
'data/compressed/comp_84DE328.lz77':
	(0x84DE328, 0x84DE598), # size=0x270
'data/compressed/comp_84DE598.lz77':
	(0x84DE598, 0x84DE728), # size=0x190
'data/compressed/comp_84DE728.lz77':
	(0x84DE728, 0x84DEFD8), # size=0x8B0
'data/compressed/comp_84DEFD8.lz77':
	(0x84DEFD8, 0x84DF674), # size=0x69C
'data/compressed/comp_84DF674.lz77':
	(0x84DF674, 0x84DF96C), # size=0x2F8
'data/dat38_58.s':
	(0x84DF96C, 0x84E00A0), # size=0x734
'data/compressed/comp_84E00A0.lz77':
	(0x84E00A0, 0x84E0554), # size=0x4B4
'data/sprites/spriteWhiteDot.spr':
	(0x84E0554, 0x84E0C4C), # size=0x6F8
'data/sprites/compSpriteWhiteDot_84E0C4C.lz77':
	(0x84E0C4C, 0x84E0E68), # size=0x21C
'data/dat38_59.s':
	(0x84E0E68, 0x857CCC8), # size=0x9BE60
'data/compressed/comp_857CCC8.lz77':
	(0x857CCC8, 0x857D43C), # size=0x774
'data/compressed/comp_857D43C.lz77':
	(0x857D43C, 0x857D63C), # size=0x200
'data/compressed/comp_857D63C.lz77':
	(0x857D63C, 0x857D86C), # size=0x230
'data/dat38_60.s':
	(0x857D86C, 0x86C23A0), # size=0x144B34
'data/compressed/compFile_86C23A0.lz77':
	(0x86C23A0, 0x86C2E2C), # size=0xA8C
'data/compressed/comp_86C2E2C.lz77':
	(0x86C2E2C, 0x86C33B4), # size=0x588
'data/compressed/comp_86C33B4.lz77':
	(0x86C33B4, 0x86C3528), # size=0x174
'data/compressed/comp_86C3528.lz77':
	(0x86C3528, 0x86C3C94), # size=0x76C
'data/dat38_61.s':
	(0x86C3C94, 0x86C3E94), # size=0x200
'data/compressed/comp_86C3E94.lz77':
	(0x86C3E94, 0x86C3FD4), # size=0x140
'data/dat38_62.s':
	(0x86C3FD4, 0x86C41D0), # size=0x1FC
'data/compressed/comp_86C41D0.lz77':
	(0x86C41D0, 0x86C4490), # size=0x2C0
'data/compressed/comp_86C4490.lz77':
	(0x86C4490, 0x86C45A8), # size=0x118
'data/compressed/comp_86C45A8.lz77':
	(0x86C45A8, 0x86C4660), # size=0xB8
'data/dat38_63.s':
	(0x86C4660, 0x86C4B58), # size=0x4F8
'data/scripts/compScripts_credits_86C4B58.lz77':
	(0x86C4B58, 0x86C4FB0), # size=0x458
'data/dat38_64.s':
	(0x86C4FB0, 0x86C5190), # size=0x1E0
'data/compressed/comp_86C5190.lz77':
	(0x86C5190, 0x86C526C), # size=0xDC
'data/compressed/comp_86C526C.lz77':
	(0x86C526C, 0x86C52B4), # size=0x48
'data/dat38_65.s':
	(0x86C52B4, 0x86C580C), # size=0x558
'data/scripts/scripts_86C580C.bin':
	(0x86C580C, 0x86C67E4), # size=0xFD8
'data/dat38_66.s':
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
'data/dat38_67.s':
	(0x86C9108, 0x86C9148), # size=0x40
'data/compressed/comp_86C9148.lz77':
	(0x86C9148, 0x86C9240), # size=0xF8
'data/compressed/comp_86C9240.lz77':
	(0x86C9240, 0x86C9274), # size=0x34
'data/compressed/comp_86C9274.lz77':
	(0x86C9274, 0x86C9668), # size=0x3F4
'data/compressed/comp_86C9668.lz77':
	(0x86C9668, 0x86C9694), # size=0x2C
'data/dat38_68.s':
	(0x86C9694, 0x86C96C0), # size=0x2C
'data/compressed/comp_86C96C0.lz77':
	(0x86C96C0, 0x86C980C), # size=0x14C
'data/compressed/comp_86C980C.lz77':
	(0x86C980C, 0x86C9AA4), # size=0x298
'data/compressed/comp_86C9AA4.lz77':
	(0x86C9AA4, 0x86C9AF4), # size=0x50
'data/dat38_69.s':
	(0x86C9AF4, 0x86C9BD4), # size=0xE0
'data/compressed/comp_86C9BD4.lz77':
	(0x86C9BD4, 0x86C9C80), # size=0xAC
'data/compressed/comp_86C9C80.lz77':
	(0x86C9C80, 0x86C9CE4), # size=0x64
'data/compressed/comp_86C9CE4.lz77':
	(0x86C9CE4, 0x86C9D38), # size=0x54
'data/compressed/comp_86C9D38.lz77':
	(0x86C9D38, 0x86C9D6C), # size=0x34
'data/dat38_70.s':
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
'data/dat38_71.s':
	(0x86CEE84, 0x86CF82C), # size=0x9A8
'data/compressed/comp_86CF82C.lz77':
	(0x86CF82C, 0x86CF994), # size=0x168
'data/dat38_72.s':
	(0x86CF994, 0x86CFC64), # size=0x2D0
'data/compressed/comp_86CFC64.lz77':
	(0x86CFC64, 0x86CFCFC), # size=0x98
'data/compressed/comp_86CFCFC.lz77':
	(0x86CFCFC, 0x86CFD1C), # size=0x20
'data/compressed/comp_86CFD1C.lz77':
	(0x86CFD1C, 0x86CFFA8), # size=0x28C
'data/dat38_73.s':
	(0x86CFFA8, 0x86D471C), # size=0x4774
'data/compressed/comp_86D471C.lz77':
	(0x86D471C, 0x86D497C), # size=0x260
'data/compressed/comp_86D497C.lz77':
	(0x86D497C, 0x86D4FC4), # size=0x648
'data/compressed/comp_86D4FC4.lz77':
	(0x86D4FC4, 0x86D5070), # size=0xAC
'data/compressed/comp_86D5070.lz77':
	(0x86D5070, 0x86D5224), # size=0x1B4
'data/compressed/comp_86D5224.lz77':
	(0x86D5224, 0x86D54F4), # size=0x2D0
'data/compressed/comp_86D54F4.lz77':
	(0x86D54F4, 0x86D55C8), # size=0xD4
'data/dat38_74.s':
	(0x86D55C8, 0x86D6974), # size=0x13AC
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
'data/dat38_75.s':
	(0x86D7578, 0x86D8C80), # size=0x1708
'data/compressed/comp_86D8C80.lz77':
	(0x86D8C80, 0x86D8E94), # size=0x214
'data/dat38_76.s':
	(0x86D8E94, 0x86D91FC), # size=0x368
'data/compressed/comp_86D91FC.lz77':
	(0x86D91FC, 0x86D93E0), # size=0x1E4
'data/compressed/comp_86D93E0.lz77':
	(0x86D93E0, 0x86D9A00), # size=0x620
'data/dat38_77.s':
	(0x86D9A00, 0x86D9C40), # size=0x240
'data/compressed/comp_86D9C40.lz77':
	(0x86D9C40, 0x86D9D10), # size=0xD0
'data/compressed/comp_86D9D10.lz77':
	(0x86D9D10, 0x86DA1B8), # size=0x4A8
'data/compressed/comp_86DA1B8.lz77':
	(0x86DA1B8, 0x86DA944), # size=0x78C
'data/compressed/comp_86DA944.lz77':
	(0x86DA944, 0x86DAC40), # size=0x2FC
'data/dat38_78.s':
	(0x86DAC40, 0x86DB208), # size=0x5C8
'data/compressed/comp_86DB208.lz77':
	(0x86DB208, 0x86DB9C4), # size=0x7BC
'data/compressed/comp_86DB9C4.lz77':
	(0x86DB9C4, 0x86DBB0C), # size=0x148
'data/compressed/comp_86DBB0C.lz77':
	(0x86DBB0C, 0x86DBD64), # size=0x258
'data/dat38_79.s':
	(0x86DBD64, 0x86DBD94), # size=0x30
'data/compressed/comp_86DBD94.lz77':
	(0x86DBD94, 0x86DC3F8), # size=0x664
'data/dat38_80.s':
	(0x86DC3F8, 0x86DC518), # size=0x120
'data/compressed/comp_86DC518.lz77':
	(0x86DC518, 0x86DC688), # size=0x170
'data/compressed/comp_86DC688.lz77':
	(0x86DC688, 0x86DCA9C), # size=0x414
'data/dat38_81.s':
	(0x86DCA9C, 0x86DCCF0), # size=0x254
'data/compressed/comp_86DCCF0.lz77':
	(0x86DCCF0, 0x86DD0AC), # size=0x3BC
'data/dat38_82.s':
	(0x86DD0AC, 0x86DD328), # size=0x27C
'data/compressed/comp_86DD328.lz77':
	(0x86DD328, 0x86DD488), # size=0x160
'data/dat38_83.s':
	(0x86DD488, 0x86DD9B4), # size=0x52C
'data/compressed/comp_86DD9B4.lz77':
	(0x86DD9B4, 0x86DDAD0), # size=0x11C
'data/compressed/comp_86DDAD0.lz77':
	(0x86DDAD0, 0x86DDB24), # size=0x54
'data/dat38_84.s':
	(0x86DDB24, 0x86DDB44), # size=0x20
'data/compressed/comp_86DDB44.lz77':
	(0x86DDB44, 0x86DDB7C), # size=0x38
'data/compressed/comp_86DDB7C.lz77':
	(0x86DDB7C, 0x86DDBA0), # size=0x24
'data/dat38_85.s':
	(0x86DDBA0, 0x86F3F5C), # size=0x163BC
'data/scripts/scripts_fullSynchro_86F3F5C.bin':
	(0x86F3F5C, 0x86F4498), # size=0x53C
'data/scripts/scripts_dad_cybeastTut_86F4498.bin':
	(0x86F4498, 0x86F53CC), # size=0xF34
'data/scripts/scripts_shuko_crossTut_86F53CC.bin':
	(0x86F53CC, 0x86F5834), # size=0x468
'data/dat38_86.s':
	(0x86F5834, 0x87370C0), # size=0x4188C
'data/scripts/scripts_commErr_87370C0.bin':
	(0x87370C0, 0x873811C), # size=0x105C
'data/dat38_87.s':
	(0x873811C, 0x87E4500), # size=0xAC3E4
'data/compressed/comp_87E4500.lz77':
	(0x87E4500, 0x87E4FE0), # size=0xAE0
'data/dat38_88.s':
	(0x87E4FE0, 0x87E5020), # size=0x40
'data/compressed/comp_87E5020.lz77':
	(0x87E5020, 0x87E50D4), # size=0xB4
'data/compressed/comp_87E50D4.lz77':
	(0x87E50D4, 0x87E54B0), # size=0x3DC
'data/dat38_89.s':
	(0x87E54B0, 0x87E5550), # size=0xA0
'data/compressed/comp_87E5550.lz77':
	(0x87E5550, 0x87E56A0), # size=0x150
'data/compressed/comp_87E56A0.lz77':
	(0x87E56A0, 0x87E57BC), # size=0x11C
'data/compressed/comp_87E57BC.lz77':
	(0x87E57BC, 0x87E660C), # size=0xE50
'data/dat38_90.s':
	(0x87E660C, 0x87E674C), # size=0x140
'data/compressed/comp_87E674C.lz77':
	(0x87E674C, 0x87E6840), # size=0xF4
'data/compressed/comp_87E6840.lz77':
	(0x87E6840, 0x87E6924), # size=0xE4
'data/compressed/comp_87E6924.lz77':
	(0x87E6924, 0x87E6980), # size=0x5C
'data/compressed/comp_87E6980.lz77':
	(0x87E6980, 0x87E6BDC), # size=0x25C
'data/dat38_91.s':
	(0x87E6BDC, 0x87E6BFC), # size=0x20
'data/compressed/comp_87E6BFC.lz77':
	(0x87E6BFC, 0x87E6DD0), # size=0x1D4
'data/dat38_92.s':
	(0x87E6DD0, 0x87F006C), # size=0x929C
'data/compressed/comp_87F006C.lz77':
	(0x87F006C, 0x87F0218), # size=0x1AC
'data/compressed/comp_87F0218.lz77':
	(0x87F0218, 0x87F0340), # size=0x128
'data/dat38_93.s':
	(0x87F0340, 0x87F0360), # size=0x20
'data/compressed/comp_87F0360.lz77':
	(0x87F0360, 0x87F04D4), # size=0x174
'data/compressed/comp_87F04D4.lz77':
	(0x87F04D4, 0x87F0534), # size=0x60
'data/compressed/comp_87F0534.lz77':
	(0x87F0534, 0x87F056C), # size=0x38
'data/compressed/comp_87F056C.lz77':
	(0x87F056C, 0x87F05A4), # size=0x38
'data/dat38_94.s':
	(0x87F05A4, 0x87F0664), # size=0xC0
'data/compressed/comp_87F0664.lz77':
	(0x87F0664, 0x87F0834), # size=0x1D0
'data/compressed/comp_87F0834.lz77':
	(0x87F0834, 0x87F0C00), # size=0x3CC
'data/compressed/comp_87F0C00.lz77':
	(0x87F0C00, 0x87F0DA0), # size=0x1A0
'data/dat38_95.s':
	(0x87F0DA0, 0x87F24FC), # size=0x175C
'data/compressed/comp_87F24FC.lz77':
	(0x87F24FC, 0x87F25B4), # size=0xB8
'data/dat38_96.s':
	(0x87F25B4, 0x87F3370), # size=0xDBC
'data/compressed/comp_87F3370.lz77':
	(0x87F3370, 0x87F3620), # size=0x2B0
'data/dat38_97.s':
	(0x87F3620, 0x87F36A0), # size=0x80
'data/compressed/comp_87F36A0.lz77':
	(0x87F36A0, 0x87F40F4), # size=0xA54
'data/dat38_98.s':
	(0x87F40F4, 0x87F4394), # size=0x2A0
'data/compressed/comp_87F4394.lz77':
	(0x87F4394, 0x87F8EB0), # size=0x4B1C
'data/dat38_99.s':
	(0x87F8EB0, 0x87FE36C), # size=0x54b8
})

print("Environment set!")
