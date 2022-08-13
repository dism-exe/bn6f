
SpritePointersList:: .word battleSpritePtrs
	.word virusBattleSpritePtrs
	.word naviBattleSpritePtrs
	.word off_8031E00
	.word off_8031FA4
	.word off_8032114
	.word npcSpritePtrs
	.word objSpritePtrs
	.word mugshotSpritePtrs
	.word guiSpritePtrs
battleSpritePtrs:: .word battleSpriteMegaMan
	.word battleSpriteFlameCross
	.word battleSpriteElecCross
	.word battleSpriteSlashCross
	.word battleSprite_81FA9E8
	.word battleSprite_8204108
	.word battleSprite_820CD4C
	.word battleSprite_8214808
	.word battleSprite_821C354
	.word battleSprite_8223C48
	.word battleSprite_822CC50
	.word battleSprite_8233728
	.word battleSprite_823B768
	.word spriteWhiteDot
virusBattleSpritePtrs:: .word spriteWhiteDot
	.word compVirusBattleSpriteMetteur + COMPRESSED_PTR_FLAG
	.word compVirusBattleSprite_8242E94 + COMPRESSED_PTR_FLAG
	.word virusBattleSprite_8244164
	.word compVirusBattleSprite_82455B0 + COMPRESSED_PTR_FLAG
	.word virusBattleSprite_8246A24
	.word compVirusBattleSprite_82489C8 + COMPRESSED_PTR_FLAG
	.word compVirusBattleSprite_82492FC + COMPRESSED_PTR_FLAG
	.word compVirusBattleSprite_8249C7C + COMPRESSED_PTR_FLAG
	.word virusBattleSprite_824AC94
	.word virusBattleSprite_824B254
	.word compVirusBattleSprite_824D23C + COMPRESSED_PTR_FLAG
	.word compVirusBattleSprite_824DC7C + COMPRESSED_PTR_FLAG
	.word virusBattleSprite_824EAF4
	.word compVirusBattleSprite_8252558 + COMPRESSED_PTR_FLAG
	.word sprite_82533F4
	.word sprite_8253F88
	.word comp_8257994 + COMPRESSED_PTR_FLAG
	.word comp_825859C + COMPRESSED_PTR_FLAG
	.word comp_8258FF8 + COMPRESSED_PTR_FLAG
	.word comp_825A0D8 + COMPRESSED_PTR_FLAG
	.word comp_825AD90 + COMPRESSED_PTR_FLAG
	.word comp_825B860 + COMPRESSED_PTR_FLAG
	.word comp_825BFC4 + COMPRESSED_PTR_FLAG
	.word sprite_825C9AC
	.word comp_825DFB4 + COMPRESSED_PTR_FLAG
	.word sprite_825F2C8
	.word sprite_8260F88
	.word comp_8262CEC + COMPRESSED_PTR_FLAG
	.word comp_8263484 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word comp_82647E4 + COMPRESSED_PTR_FLAG
naviBattleSpritePtrs:: .word spriteWhiteDot
	.word battleSpriteFlameMan
	.word battleSpriteElecMan
	.word battleSpriteSlashMan
	.word sprite_828324C
	.word sprite_828F18C
	.word battleSpriteSpoutMan
	.word sprite_829D818
	.word sprite_82A5AF0
	.word sprite_82B0690
	.word sprite_82BA7BC
	.word battleSpriteProtoMan
	.word comp_82CED74 + COMPRESSED_PTR_FLAG
	.word comp_82D2AC8 + COMPRESSED_PTR_FLAG
	.word comp_82D6FE4 + COMPRESSED_PTR_FLAG
	.word compSprite_82DABC8 + COMPRESSED_PTR_FLAG
	.word comp_82DD9A8 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word compBattleSprite_Colonel + COMPRESSED_PTR_FLAG
	.word comp_82E4050 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_82E8470 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
off_8031E00:: .word sprite_82EFE48
	.word sprite_82F39C0
	.word sprite_82F569C
	.word sprite_82F6ECC
	.word sprite_82F9CCC
	.word comp_82FCA14 + COMPRESSED_PTR_FLAG
	.word sprite_82FE378
	.word sprite_82FE704
	.word sprite_82FF95C
	.word sprite_8300CFC
	.word sprite_8300F70
	.word sprite_8303A34
	.word sprite_830451C
	.word sprite_8304700
	.word sprite_8308700
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word sprite_830902C
	.word sprite_830A308
	.word sprite_830D494
	.word sprite_830E44C
	.word sprite_830F144
	.word sprite_8311288
	.word sprite_83124E8
	.word sprite_8312FB4
	.word sprite_83138C4
	.word sprite_831530C
	.word sprite_831661C
	.word sprite_8317340
	.word sprite_8318920
	.word sprite_83195F0
	.word sprite_8319B5C
	.word sprite_831C8A4
	.word sprite_831CAF8
	.word sprite_831E67C
	.word sprite_831E8C0
	.word sprite_831EA40
	.word sprite_831FA84
	.word sprite_831FCF0
	.word spriteWhiteDot
	.word sprite_832154C
	.word sprite_8322920
	.word sprite_83234D4
	.word sprite_8323728
	.word sprite_83241F4
	.word sprite_83245E8
	.word sprite_83249B0
	.word sprite_8324E14
	.word sprite_8325038
	.word sprite_83255C0
	.word sprite_8325C94
	.word spriteWhiteDot
	.word sprite_8325EF4
	.word sprite_83262C0
	.word sprite_8326724
	.word sprite_83279C0
	.word sprite_8329D28
	.word sprite_832C418
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_832E9C8
	.word sprite_832F0C8
	.word sprite_832F8C8
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_8330A30
	.word sprite_8330FA8
	.word spriteWhiteDot
	.word sprite_83317F0
	.word sprite_83322B8
	.word sprite_8332484
	.word spriteWhiteDot
	.word sprite_8333350
	.word comp_8333CC8 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word comp_8334B0C + COMPRESSED_PTR_FLAG
	.word comp_83353F4 + COMPRESSED_PTR_FLAG
	.word sprite_8336320
	.word spriteWhiteDot
	.word sprite_8336D54
	.word comp_8338170 + COMPRESSED_PTR_FLAG
	.word sprite_8338F18
	.word sprite_833BE68
	.word sprite_833F3A0
	.word sprite_8342AC4
	.word sprite_8345C50
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_8348E80
	.word sprite_83497CC
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_834A108
	.word sprite_834A580
	.word sprite_834AE94
	.word sprite_834B2D0
	.word sprite_834B6A4
	.word sprite_834BBF0
	.word sprite_834BEB8
	.word sprite_834C6F0
	.word comp_834FC40 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word sprite_8350628
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
off_8031FA4:: .word sprite_8350888
	.word sprite_8351FA8
	.word sprite_8352360
	.word sprite_83536BC
	.word spriteWhiteDot
	.word sprite_83547A4
	.word sprite_8354D0C
	.word sprite_8354EF0
	.word sprite_8355D50
	.word sprite_835613C
	.word sprite_83566F4
	.word sprite_8357308
	.word sprite_8357B10
	.word sprite_8359644
	.word sprite_835AD9C
	.word sprite_835B938
	.word sprite_835C4B0
	.word sprite_835C794
	.word sprite_835CA2C
	.word sprite_835E264
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_835F424
	.word sprite_83607D0
	.word spriteWhiteDot
	.word sprite_83611FC
	.word sprite_8367848
	.word sprite_8368F54
	.word sprite_836B6A8
	.word sprite_836B818
	.word spriteWhiteDot
	.word sprite_836C668
	.word sprite_836E034
	.word sprite_836EA90
	.word sprite_836EDB8
	.word sprite_8370D6C
	.word sprite_8371274
	.word sprite_8371C50
	.word sprite_8372410
	.word sprite_8372F34
	.word sprite_83732AC
	.word sprite_8373AFC
	.word sprite_8373D70
	.word sprite_8376364
	.word sprite_8376A24
	.word sprite_8377834
	.word sprite_8377AF4
	.word sprite_8379D44
	.word sprite_837D8E0
	.word sprite_837EB4C
	.word sprite_837F2E0
	.word spriteWhiteDot
	.word sprite_837FD98
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_83805D4
	.word sprite_8381340
	.word sprite_83822F0
	.word spriteWhiteDot
	.word sprite_8382928
	.word sprite_8383698
	.word sprite_8385354
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_8385648
	.word sprite_83864F4
	.word sprite_8387244
	.word sprite_8387E4C
	.word sprite_838849C
	.word sprite_838A9A8
	.word comp_838B160 + COMPRESSED_PTR_FLAG
	.word comp_838B438 + COMPRESSED_PTR_FLAG
	.word sprite_838B930
	.word spriteWhiteDot
	.word sprite_838C3C8
	.word sprite_838C864
	.word sprite_838E194
	.word sprite_838E74C
	.word sprite_838EC00
	.word sprite_83908A4
	.word sprite_8390F44
	.word sprite_8390FC4
	.word sprite_8391E40
	.word sprite_839247C
	.word sprite_83930E0
	.word sprite_8395034
	.word sprite_8395660
	.word sprite_8396650
	.word spriteWhiteDot
off_8032108:: .word byte_83971C0
	.word byte_8398048
	.word spriteWhiteDot
off_8032114:: .word sprite_8399578
	.word sprite_839AAB8
	.word sprite_839B9C0
	.word sprite_839CCDC
	.word sprite_83A000C
	.word sprite_83A0DA8
	.word sprite_83A5E30
	.word sprite_83A67AC
	.word sprite_83A9190
	.word sprite_83AC1A8
	.word sprite_83AC430
	.word sprite_83ACF48
	.word sprite_83AD870
	.word sprite_83AE2B4
	.word sprite_83AF658
	.word sprite_83B00F8
	.word spriteWhiteDot
	.word sprite_83B0A90
	.word sprite_83B2494
	.word sprite_83B3BF4
	.word sprite_83B440C
	.word sprite_83B4AE4
	.word sprite_83B5F44
	.word spriteWhiteDot
	.word sprite_83B92B4
	.word spriteWhiteDot
	.word sprite_83BA940
	.word sprite_83BB440
	.word sprite_83BC3B0
	.word sprite_83BCC70
	.word sprite_83BD228
	.word sprite_83BE6B0
npcSpritePtrs:: .word npcSpriteLan
	.word npcSpriteMayl
	.word npcSpriteDex
	.word npcSpriteYai
	.word npcSpriteChaud
	.word npcSpriteDad
	.word npcSpriteMom
	.word spriteWhiteDot
	.word sprite_83E0108
	.word sprite_83E1EEC
	.word sprite_83E1EEC
	.word sprite_83E2B48
	.word sprite_83E55F8
	.word sprite_83E7F4C
	.word sprite_83EB980
	.word sprite_83EEF14
	.word sprite_83F37C4
	.word sprite_83F6824
	.word sprite_83FA130
	.word comp_83FDF7C + COMPRESSED_PTR_FLAG
	.word sprite_83FEC68
	.word npcSpriteDad
	.word sprite_8402FA0
	.word sprite_8406044
	.word sprite_84069EC
	.word sprite_8408360
	.word sprite_8408DB4
	.word comp_840A4BC + COMPRESSED_PTR_FLAG
	.word compNpcSpriteMrFamous + COMPRESSED_PTR_FLAG
	.word sprite_840B3A4
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_840F4F4 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_84105EC + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_8410A18 + COMPRESSED_PTR_FLAG
	.word comp_84114E8 + COMPRESSED_PTR_FLAG
	.word comp_84119D0 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_8411E90
	.word sprite_8415A90
	.word sprite_8419440
	.word sprite_841C9C4
	.word sprite_84201AC
	.word sprite_8424C78
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_842A630
	.word sprite_842DAC0
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word npcSpriteMegaMan
	.word compNpcSpriteRoll + COMPRESSED_PTR_FLAG
	.word compNpcSpriteGutsMan + COMPRESSED_PTR_FLAG
	.word compNpcSpriteGlyde + COMPRESSED_PTR_FLAG
	.word npcSpriteProtoMan
	.word npcSpriteProgman
	.word npcSpriteProgman
	.word npcSpriteGreenNavi
	.word npcSpriteGreenNavi
	.word npcSpriteGreenNavi
	.word npcSpriteGreenNavi
	.word npcSpriteGreenNavi
	.word npcSpriteEvilNavi
	.word npcSpriteEvilNavi
	.word npcSpriteGirlNavi
	.word npcSpriteGirlNavi
	.word spriteWhiteDot
	.word npcSpriteSpoutMan
	.word spriteWhiteDot
	.word npcSpriteHawkMan
	.word spriteWhiteDot
	.word sprite_8468940
	.word npcSpriteDrillMan
	.word sprite_8477574
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_8481548
	.word sprite_848334C
	.word npcSpriteColonel
	.word sprite_848FCEC
	.word comp_8495434 + COMPRESSED_PTR_FLAG
	.word sprite_8495B88
	.word npcSpriteGreenNavi
	.word spriteWhiteDot
	.word sprite_8497CF8
	.word comp_8499CF0 + COMPRESSED_PTR_FLAG
	.word comp_849AAD0 + COMPRESSED_PTR_FLAG
	.word npcSpriteProgman
	.word npcSpriteProgman
	.word npcSpriteProgman
	.word npcSpriteProgman
objSpritePtrs:: .word sprite_849B424
	.word sprite_849BA28
	.word sprite_849D164
	.word objSpriteSkullBarrier
	.word sprite_849FBC0
	.word spriteWhiteDot
	.word comp_84A03B8 + COMPRESSED_PTR_FLAG
	.word comp_84A0920 + COMPRESSED_PTR_FLAG
	.word comp_84A0DCC + COMPRESSED_PTR_FLAG
	.word comp_84A1458 + COMPRESSED_PTR_FLAG
	.word comp_84A1B14 + COMPRESSED_PTR_FLAG
	.word comp_84A1E30 + COMPRESSED_PTR_FLAG
	.word comp_84A225C + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word comp_84A24CC + COMPRESSED_PTR_FLAG
	.word sprite_84A3048
	.word comp_84A3708 + COMPRESSED_PTR_FLAG
	.word comp_84A3B44 + COMPRESSED_PTR_FLAG
	.word comp_84A3E08 + COMPRESSED_PTR_FLAG
	.word comp_84A40E0 + COMPRESSED_PTR_FLAG
	.word comp_84A47F0 + COMPRESSED_PTR_FLAG
	.word comp_84A4F0C + COMPRESSED_PTR_FLAG
	.word comp_84A502C + COMPRESSED_PTR_FLAG
	.word sprite_84A53C4
	.word sprite_84A599C
	.word comp_84A642C + COMPRESSED_PTR_FLAG
	.word comp_84A6D14 + COMPRESSED_PTR_FLAG
	.word comp_84A71A0 + COMPRESSED_PTR_FLAG
	.word comp_84A74A4 + COMPRESSED_PTR_FLAG
	.word comp_84A77A4 + COMPRESSED_PTR_FLAG
	.word comp_84A7A14 + COMPRESSED_PTR_FLAG
	.word comp_84A7FA4 + COMPRESSED_PTR_FLAG
	.word comp_84A8524 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word sprite_84A8AC0
	.word comp_84A8F68 + COMPRESSED_PTR_FLAG
	.word comp_84A914C + COMPRESSED_PTR_FLAG
	.word comp_84A96B8 + COMPRESSED_PTR_FLAG
	.word sprite_84A97A8
	.word comp_84AA028 + COMPRESSED_PTR_FLAG
	.word comp_84AA640 + COMPRESSED_PTR_FLAG
	.word comp_84AAC80 + COMPRESSED_PTR_FLAG
	.word comp_84AAE70 + COMPRESSED_PTR_FLAG
	.word comp_84AAF18 + COMPRESSED_PTR_FLAG
	.word sprite_84AB2D0
	.word sprite_84AB680
	.word sprite_84ADD6C
	.word comp_84AE340 + COMPRESSED_PTR_FLAG
	.word sprite_84AF710
	.word sprite_84B1BA0
	.word comp_84B42EC + COMPRESSED_PTR_FLAG
	.word sprite_84B4838
	.word sprite_84B5238
	.word comp_84B5734 + COMPRESSED_PTR_FLAG
	.word sprite_84B5C18
	.word sprite_84B62AC
	.word comp_84B6744 + COMPRESSED_PTR_FLAG
	.word sprite_84B7414
	.word sprite_84B8BB4
	.word sprite_84BA414
	.word sprite_84BA7A8
	.word comp_84BADF8 + COMPRESSED_PTR_FLAG
	.word comp_84BB07C + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word comp_84BB704 + COMPRESSED_PTR_FLAG
	.word comp_84BBA74 + COMPRESSED_PTR_FLAG
	.word sprite_84BC0C8
	.word comp_84BC4D0 + COMPRESSED_PTR_FLAG
	.word sprite_84BC854
	.word comp_84BD3FC + COMPRESSED_PTR_FLAG
	.word comp_84BD83C + COMPRESSED_PTR_FLAG
	.word sprite_84BDDD4
	.word comp_84BE924 + COMPRESSED_PTR_FLAG
	.word comp_84BECDC + COMPRESSED_PTR_FLAG
	.word comp_84BEF4C + COMPRESSED_PTR_FLAG
	.word comp_84BF174 + COMPRESSED_PTR_FLAG
	.word sprite_84BF6F8
	.word comp_84C0150 + COMPRESSED_PTR_FLAG
	.word sprite_84C0298
	.word sprite_84C2D34
	.word spriteWhiteDot
	.word comp_84C3C90 + COMPRESSED_PTR_FLAG
	.word comp_84C3F54 + COMPRESSED_PTR_FLAG
	.word comp_84C43AC + COMPRESSED_PTR_FLAG
	.word sprite_84C5194
	.word sprite_84C832C
	.word comp_84C8DEC + COMPRESSED_PTR_FLAG
	.word sprite_84C90B4
	.word comp_84CA1BC + COMPRESSED_PTR_FLAG
	.word comp_84CA74C + COMPRESSED_PTR_FLAG
	.word comp_84CA9E8 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_84CAD70 + COMPRESSED_PTR_FLAG
	.word comp_84CB0F4 + COMPRESSED_PTR_FLAG
	.word comp_84CB3A8 + COMPRESSED_PTR_FLAG
	.word comp_84CB638 + COMPRESSED_PTR_FLAG
	.word comp_84CB930 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_84CBC1C + COMPRESSED_PTR_FLAG
	.word comp_84CBDE8 + COMPRESSED_PTR_FLAG
	.word comp_84CC308 + COMPRESSED_PTR_FLAG
	.word comp_84CC8AC + COMPRESSED_PTR_FLAG
	.word comp_84CD83C + COMPRESSED_PTR_FLAG
	.word comp_84CDCE8 + COMPRESSED_PTR_FLAG
	.word comp_84CDE24 + COMPRESSED_PTR_FLAG
	.word sprite_84CDF74
	.word comp_84CF9D8 + COMPRESSED_PTR_FLAG
	.word comp_84CFC7C + COMPRESSED_PTR_FLAG
	.word comp_84D014C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_84D230C + COMPRESSED_PTR_FLAG
	.word comp_84D26BC + COMPRESSED_PTR_FLAG
	.word comp_84D2820 + COMPRESSED_PTR_FLAG
	.word comp_84D2A54 + COMPRESSED_PTR_FLAG
	.word comp_84D3998 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word sprite_84D3DBC
	.word comp_84D4AC4 + COMPRESSED_PTR_FLAG
	.word comp_84D4CC8 + COMPRESSED_PTR_FLAG
	.word comp_84D4FF0 + COMPRESSED_PTR_FLAG
	.word comp_84D5764 + COMPRESSED_PTR_FLAG
	.word comp_84D5C94 + COMPRESSED_PTR_FLAG
	.word comp_84D5DF0 + COMPRESSED_PTR_FLAG
	.word comp_84D6370 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word comp_84D66B8 + COMPRESSED_PTR_FLAG
	.word comp_84D6908 + COMPRESSED_PTR_FLAG
	.word comp_84D6BF0 + COMPRESSED_PTR_FLAG
	.word comp_84D6E50 + COMPRESSED_PTR_FLAG
	.word comp_84D701C + COMPRESSED_PTR_FLAG
	.word comp_84D77D8 + COMPRESSED_PTR_FLAG
	.word comp_84D84E4 + COMPRESSED_PTR_FLAG
	.word comp_84D9344 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word comp_84D9954 + COMPRESSED_PTR_FLAG
	.word comp_84DA604 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word comp_84DAD14 + COMPRESSED_PTR_FLAG
	.word comp_84DB04C + COMPRESSED_PTR_FLAG
	.word comp_84DB1CC + COMPRESSED_PTR_FLAG
	.word comp_84DB8F8 + COMPRESSED_PTR_FLAG
	.word comp_84DBD30 + COMPRESSED_PTR_FLAG
	.word comp_84DC2B0 + COMPRESSED_PTR_FLAG
	.word comp_84DCBD8 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word comp_84DD20C + COMPRESSED_PTR_FLAG
	.word comp_84DD40C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_84DDDB8 + COMPRESSED_PTR_FLAG
	.word comp_84DDF94 + COMPRESSED_PTR_FLAG
	.word comp_84DE328 + COMPRESSED_PTR_FLAG
	.word comp_84DE598 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_84DE728 + COMPRESSED_PTR_FLAG
	.word comp_84DEFD8 + COMPRESSED_PTR_FLAG
	.word comp_84DF674 + COMPRESSED_PTR_FLAG
	.word sprite_84DF96C
	.word comp_84E00A0 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
mugshotSpritePtrs:: .word mugshotLan
	.word mugshotMayl
	.word mugshotDex
	.word mugshotYai
	.word mugshotChaud
	.word mugshotDad
	.word mugshotMom
	.word mugshotBlack
	.word sprite_84E3E80
	.word sprite_84E44CC
	.word sprite_84E4AAC
	.word sprite_84E4FC8
	.word sprite_84E55C8
	.word sprite_84E5C4C
	.word sprite_84E6244
	.word sprite_84E6804
	.word sprite_84E6EA4
	.word sprite_84E74E0
	.word sprite_84E7B00
	.word sprite_84E8120
	.word sprite_84E8800
	.word sprite_84E8E60
	.word sprite_84E9460
	.word sprite_84E9A18
	.word sprite_84EA01C
	.word sprite_84EA61C
	.word sprite_84EACDC
	.word sprite_84EB328
	.word mugshotMrFamous
	.word mugshotDrWily
	.word mugshotBlack
	.word mugshotShuko
	.word mugshotBlack
	.word sprite_84ECD24
	.word mugshotBlack
	.word sprite_84ED4B4
	.word sprite_84EDA70
	.word sprite_84EE048
	.word mugshotBlack
	.word mugshotBlack
	.word mugshotBlack
	.word mugshotBlack
	.word sprite_84EE7FC
	.word sprite_84EEFDC
	.word sprite_84EF69C
	.word sprite_84EFB78
	.word sprite_84F0094
	.word sprite_84F070C
	.word mugshotBlack
	.word mugshotBlack
	.word sprite_84F0CC4
	.word sprite_84F13D0
	.word mugshotBlack
	.word mugshotBlack
	.word mugshotBlack
	.word mugshotMegaMan
	.word sprite_84F223C
	.word sprite_84F2908
	.word sprite_84F3100
	.word sprite_84F362C
	.word sprite_84F3B08
	.word sprite_84F3B08
	.word sprite_84F4324
	.word sprite_84F4324
	.word sprite_84F4324
	.word sprite_84F4868
	.word sprite_84F4DD4
	.word sprite_84F5340
	.word sprite_84F5340
	.word sprite_84F57A4
	.word sprite_84F57A4
	.word mugshotBlack
	.word sprite_84F5CE0
	.word mugshotBlack
	.word sprite_84F6354
	.word mugshotBlack
	.word sprite_84F68C0
	.word sprite_84F6F84
	.word sprite_84F75A8
	.word mugshotBlack
	.word mugshotBlack
	.word sprite_84F7C44
	.word sprite_84F81B0
	.word sprite_84F8754
	.word sprite_84F8E10
	.word sprite_84F9534
	.word sprite_84F9978
	.word sprite_84F4324
	.word mugshotBlack
	.word sprite_84F9E48
	.word sprite_84FA28C
	.word sprite_84FA744
	.word sprite_84F3B08
	.word sprite_84F3B08
	.word sprite_84F3B08
	.word sprite_84F3B08
	.word mugshotBlack
guiSpritePtrs:: .word sprite_86CBB7C
	.word sprite_86CC13C
	.word sprite_86CD410
	.word comp_86C6B30 + COMPRESSED_PTR_FLAG
	.word comp_86C6FD0 + COMPRESSED_PTR_FLAG
	.word comp_86C73D8 + COMPRESSED_PTR_FLAG
	.word comp_86C7764 + COMPRESSED_PTR_FLAG
	.word comp_86C7980 + COMPRESSED_PTR_FLAG
	.word comp_86CDEA8 + COMPRESSED_PTR_FLAG
	.word comp_86CE51C + COMPRESSED_PTR_FLAG
	.word comp_86CEAA8 + COMPRESSED_PTR_FLAG
	.word comp_86CEC3C + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_86CFD1C + COMPRESSED_PTR_FLAG
	.word comp_87F0664 + COMPRESSED_PTR_FLAG
	.word comp_87F0834 + COMPRESSED_PTR_FLAG
	.word comp_86D471C + COMPRESSED_PTR_FLAG
	.word comp_86D497C + COMPRESSED_PTR_FLAG
	.word comp_86D4FC4 + COMPRESSED_PTR_FLAG
	.word comp_86D5070 + COMPRESSED_PTR_FLAG
	.word comp_86D5224 + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_86D54F4 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word sprite_849B424
	.word battleSpriteMegaMan
	.word battleSpriteMegaMan
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word sprite_82F6ECC
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_86D91FC + COMPRESSED_PTR_FLAG
	.word comp_86D93E0 + COMPRESSED_PTR_FLAG
	.word comp_86DCCF0 + COMPRESSED_PTR_FLAG
	.word comp_86DD328 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word comp_86D9C40 + COMPRESSED_PTR_FLAG
	.word comp_86D9D10 + COMPRESSED_PTR_FLAG
	.word comp_86DC518 + COMPRESSED_PTR_FLAG
	.word comp_86DC688 + COMPRESSED_PTR_FLAG
	.word sprite_83B5F44
	.word comp_86D8C80 + COMPRESSED_PTR_FLAG
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word battleSpriteFlameMan
	.word sprite_87DC190
	.word sprite_87DC5F0
	.word byte_87DD248
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word sprite_87DDB7C
	.word spriteWhiteDot
	.word spriteWhiteDot
off_8032800:: .word sprite_87E069C
	.word sprite_87E0854
	.word sprite_87E0E44
	.word spriteWhiteDot
	.word sprite_8379D44
	.word sprite_87E6E20
	.word battleSpriteFlameMan
	.word battleSpriteElecMan
	.word battleSpriteSlashMan
	.word sprite_828324C
	.word sprite_828F18C
	.word battleSpriteSpoutMan
	.word sprite_829D818
	.word sprite_82A5AF0
	.word sprite_82B0690
	.word sprite_82BA7BC
	.word sprite_83611FC
	.word sprite_836EA90
	.word sprite_838EC00
	.word sprite_82F9CCC
	.word sprite_8338F18
	.word sprite_833BE68
	.word sprite_8342AC4
	.word sprite_8319B5C
	.word sprite_833F3A0
	.word sprite_834C6F0
	.word sprite_8300F70
	.word battleSpriteFlameCross
	.word battleSpriteElecCross
	.word battleSpriteSlashCross
	.word battleSprite_81FA9E8
	.word battleSprite_8204108
	.word battleSprite_820CD4C
	.word battleSprite_8214808
	.word battleSprite_821C354
	.word battleSprite_8223C48
	.word battleSprite_822CC50
	.word battleSprite_8233728
	.word battleSprite_823B768
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word comp_86DB208 + COMPRESSED_PTR_FLAG
	.word battleSpriteProtoMan
	.word sprite_87E1D84
	.word sprite_87E24F4
	.word sprite_87E1894
	.word sprite_87E1AD4
	.word sprite_87E2860
	.word comp_86DBB0C + COMPRESSED_PTR_FLAG
	.word comp_86DB9C4 + COMPRESSED_PTR_FLAG
	.word compVirusBattleSpriteMetteur + COMPRESSED_PTR_FLAG
	.word compVirusBattleSprite_8242E94 + COMPRESSED_PTR_FLAG
	.word virusBattleSprite_8244164
	.word compVirusBattleSprite_82455B0 + COMPRESSED_PTR_FLAG
	.word virusBattleSprite_8246A24
	.word compVirusBattleSprite_82489C8 + COMPRESSED_PTR_FLAG
	.word compVirusBattleSprite_82492FC + COMPRESSED_PTR_FLAG
	.word compVirusBattleSprite_8249C7C + COMPRESSED_PTR_FLAG
	.word virusBattleSprite_824AC94
	.word virusBattleSprite_824B254
	.word compVirusBattleSprite_824D23C + COMPRESSED_PTR_FLAG
	.word compVirusBattleSprite_824DC7C + COMPRESSED_PTR_FLAG
	.word virusBattleSprite_824EAF4
	.word compVirusBattleSprite_8252558 + COMPRESSED_PTR_FLAG
	.word sprite_82533F4
	.word sprite_8253F88
	.word comp_8257994 + COMPRESSED_PTR_FLAG
	.word comp_825859C + COMPRESSED_PTR_FLAG
	.word comp_8258FF8 + COMPRESSED_PTR_FLAG
	.word comp_825A0D8 + COMPRESSED_PTR_FLAG
	.word comp_825AD90 + COMPRESSED_PTR_FLAG
	.word comp_825B860 + COMPRESSED_PTR_FLAG
	.word comp_825BFC4 + COMPRESSED_PTR_FLAG
	.word sprite_825C9AC
	.word comp_825DFB4 + COMPRESSED_PTR_FLAG
	.word sprite_825F2C8
	.word sprite_8260F88
	.word comp_8262CEC + COMPRESSED_PTR_FLAG
	.word comp_8263484 + COMPRESSED_PTR_FLAG
	.word npcSpriteLan
	.word npcSpriteMegaMan
	.word comp_86C33B4 + COMPRESSED_PTR_FLAG
	.word battleSpriteMegaMan
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word compSpriteWhiteDot_84E0C4C + COMPRESSED_PTR_FLAG
	.word sprite_839CCDC
	.word comp_82FCA14 + COMPRESSED_PTR_FLAG
	.word sprite_8345C50
	.word sprite_8304700
	.word sprite_830A308
	.word comp_82E8470 + COMPRESSED_PTR_FLAG
	.word sprite_828F18C
	.word sprite_8355D50
	.word sprite_838849C
	.word sprite_8318920
	.word sprite_839B9C0
	.word sprite_8351FA8
	.word compVirusBattleSpriteMetteur + COMPRESSED_PTR_FLAG
	.word sprite_8399578
	.word sprite_83AE2B4
	.word compVirusBattleSprite_824D23C + COMPRESSED_PTR_FLAG
	.word sprite_8253F88
	.word comp_825DFB4 + COMPRESSED_PTR_FLAG
	.word sprite_837D8E0
	.word sprite_838E194
	.word sprite_83A9190
off_80329A8:: .word off_8032A20
	.word off_8032A38
	.word off_8032A74
	.word off_8032AF8
	.word off_8032B34
	.word off_8032B70
	.word off_8032BA0
off_80329C4:: .word off_8032BE8
	.word off_8032C00
	.word off_8032C24
	.word off_8032C48
	.word 0x0
	.word off_8032C6C
	.word 0x0
	.word 0x0
	.word off_8032CA8
	.word 0x0
	.word 0x0
	.word 0x0
	.word off_8032CFC
	.word off_8032DBC
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_8032E7C
	.word off_8032EA0
	.word off_8032EC4
	.word off_8032EDC
	.word off_8032EF4
	.word off_8032F18
	.word off_8032F48
off_8032A20::
	map_bg_descriptor_struct [
		tileset_ptr: ACDCTown_Map0_Tileset,
		palette_ptr: ACDCTown_Map0_Palette,
		tilemap_ptr: ACDCTown_Map0_Tilemap,
	]
	map_bg_descriptor_struct [
		tileset_ptr: dword_8500F1C,
		palette_ptr: byte_8503098,
		tilemap_ptr: byte_850323C,
	]
off_8032A38:: .word byte_8503C90
	.word byte_85077F8
	.word byte_850799C
	.word byte_8509354
	.word byte_850C2C0
	.word byte_850C464
	.word byte_850E134
	.word byte_85105CC
	.word byte_8510770
	.word byte_8510D54
	.word byte_8511C40
	.word byte_8511DE4
	.word byte_85120AC
	.word byte_8515394
	.word byte_8515538
off_8032A74:: .word byte_85162E0
	.word byte_8519D64
	.word byte_851A0AC
	.word byte_85162E0
	.word byte_851ADB0
	.word byte_851A0AC
	.word byte_85162E0
	.word byte_8519D64
	.word byte_851AFB8
	.word byte_85162E0
	.word byte_851ADB0
	.word byte_851AFB8
	.word byte_851BC60
	.word byte_851D8D4
	.word byte_851DA78
	.word byte_851BC60
	.word byte_851EC08
	.word byte_851DA78
	.word byte_851EDAC
	.word byte_852213C
	.word byte_85222E0
	.word byte_852360C
	.word byte_8526938
	.word byte_8526ADC
	.word byte_8527B88
	.word byte_852B5DC
	.word byte_852B924
	.word byte_852C560
	.word byte_852E5DC
	.word byte_852E780
	.word byte_852C560
	.word byte_852EFA0
	.word byte_852E780
off_8032AF8:: .word byte_852F144
	.word byte_85330DC
	.word byte_8533280
	.word byte_8535488
	.word byte_85387FC
	.word byte_85389A0
	.word byte_853A5F8
	.word byte_853DEC4
	.word byte_853E068
	.word byte_853FFD4
	.word byte_8542FC8
	.word byte_854316C
	.word byte_8545468
	.word byte_8547C24
	.word byte_8547DC8
off_8032B34:: .word byte_85495B4
	.word byte_854D26C
	.word byte_854D410
	.word byte_8550B90
	.word byte_8552F78
	.word byte_855311C
	.word byte_8554160
	.word byte_8557210
	.word byte_85573B4
	.word byte_8558498
	.word byte_8559ECC
	.word byte_855A070
	.word byte_855B17C
	.word byte_855DBC0
	.word byte_855DD64
off_8032B70:: .word byte_855EE14
	.word byte_85621EC
	.word byte_8562390
	.word byte_8564358
	.word byte_8566F74
	.word byte_8567118
	.word byte_8569DFC
	.word byte_856D0FC
	.word byte_856D2A0
	.word byte_856E4F8
	.word byte_8570BBC
	.word byte_8570D60
off_8032BA0:: .word byte_8572DEC
	.word byte_8576500
	.word byte_85766A4
	.word byte_8579340
	.word byte_857B5E4
	.word byte_857B788
	.word byte_857D8D0
	.word byte_8580D64
	.word dword_8580F08
	.word byte_8582308
	.word byte_8585ED0
	.word byte_8586074
	.word byte_85878F4
	.word byte_858AAE0
	.word byte_858AC84
	.word byte_858CDA4
	.word byte_858E380
	.word byte_858E524
off_8032BE8:: .word dword_858F110
	.word off_8592304
	.word dword_85924A8
	.word dword_858F110
	.word off_8592304
	.word dword_8594D80
off_8032C00:: .word dword_8598328
	.word byte_859B428
	.word byte_859B5CC
	.word dword_8598328
	.word byte_859B428
	.word dword_859E9D0
	.word dword_8598328
	.word byte_859B428
	.word byte_85A2198
off_8032C24:: .word byte_85A5590
	.word byte_85A8B04
	.word byte_85A8CA8
	.word byte_85A5590
	.word byte_85A8B04
	.word byte_85ABE34
	.word byte_85A5590
	.word byte_85A8B04
	.word dword_85AEFA8
off_8032C48:: .word dword_85B22DC
	.word off_85B5D28
	.word dword_85B5ECC
	.word dword_85B22DC
	.word off_85B5D28
	.word dword_85B86C8
	.word dword_85B22DC
	.word off_85B5D28
	.word dword_85BB3D0
off_8032C6C:: .word dword_8598328
	.word byte_859B428
	.word byte_85BE350
	.word byte_85A5590
	.word byte_85A8B04
	.word dword_85C18E0
	.word dword_85B22DC
	.word off_85B5D28
	.word byte_85C4750
	.word dword_858F110
	.word off_8592304
	.word dword_85C7AA0
	.word dword_85CB0A8
	.word off_85CD6B4
	.word dword_85CD858
off_8032CA8:: .word off_85D0894
	.word off_85D183C
	.word dword_85D19E0
	.word off_85D2EE0
	.word off_85D2850
	.word dword_85D44B0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_85D2EE0
	.word off_85D29F4
	.word dword_85D44B0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_85D2EE0
	.word off_85D2B98
	.word dword_85D44B0
	.word off_85D2EE0
	.word off_85D2D3C
	.word dword_85D44B0
off_8032CFC:: .word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D430C
	.word dword_85D44B0
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D430C
	.word dword_85D44B0
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D430C
	.word dword_85D44B0
off_8032DBC:: .word off_85D2EE0
	.word off_85D430C
	.word dword_85D44B0
	.word off_85D2EE0
	.word off_85D430C
	.word dword_85D44B0
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D430C
	.word dword_85D44B0
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
	.word off_85D2EE0
	.word off_85D35B8
	.word dword_85D375C
off_8032E7C:: .word dword_85D4E48
	.word off_85D895C
	.word dword_85D8B00
	.word dword_85D4E48
	.word off_85D895C
	.word dword_85DB160
	.word dword_85D4E48
	.word off_85DDB74
	.word dword_85DDD18
off_8032EA0:: .word dword_85D4E48
	.word off_85E0670
	.word dword_85E0814
	.word dword_85D4E48
	.word off_85E0670
	.word dword_85E2F90
	.word dword_85D4E48
	.word off_85E0670
	.word dword_85E519C
off_8032EC4:: .word dword_85D4E48
	.word off_85E79D0
	.word dword_85E7B74
	.word dword_85D4E48
	.word off_85EAD2C
	.word dword_85EAED0
off_8032EDC:: .word dword_85FEF08
	.word off_85EE2A4
	.word dword_85EE448
	.word dword_85FEF08
	.word off_85EE2A4
	.word dword_85F1B20
off_8032EF4:: .word dword_85D4E48
	.word off_85F4D84
	.word dword_85F4F28
	.word dword_85D4E48
	.word off_85F4D84
	.word dword_85F7C58
	.word dword_85D4E48
	.word off_85FB848
	.word dword_85FB9EC
off_8032F18:: .word dword_85FEF08
	.word off_8602590
	.word dword_8602734
	.word dword_85FEF08
	.word off_8602590
	.word dword_8606438
	.word dword_85FEF08
	.word off_8602590
	.word dword_8609770
	.word dword_85FEF08
	.word off_8602590
	.word spriteWhiteDot
off_8032F48:: .word dword_85FEF08
	.word off_860D678
	.word spriteWhiteDot
	.word dword_85FEF08
	.word off_860D678
	.word dword_860DDD0
	.word dword_85FEF08
	.word off_860D678
	.word spriteWhiteDot
off_8032F6C:: .word off_8032FE4
	.word off_8032FFC
	.word off_8033038
	.word off_80330BC
	.word off_80330F8
	.word off_8033134
	.word off_8033164
off_8032F88:: .word off_80331AC
	.word off_80331C4
	.word off_80331E8
	.word off_803320C
	.word 0x0
	.word off_8033230
	.word 0x0
	.word 0x0
	.word off_803326C
	.word 0x0
	.word 0x0
	.word 0x0
	.word jt_big_80332C0
	.word off_8033380
	.word 0x0
	.word 0x0
	.word off_8033440
	.word off_8033464
	.word off_8033488
	.word off_80334A0
	.word off_80334B8
	.word off_80334DC
	.word off_803350C
off_8032FE4:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8032FFC:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8033038:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
pt_8033090:: .word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_80330BC:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_80330F8:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8033134:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8033164:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_80331AC:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_80331C4:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_80331E8:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_803320C:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8033230:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_803326C:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
jt_big_80332C0:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
off_8033318:: .word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8033380:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8033440:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8033464:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_8033488:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_80334A0:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_80334B8:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_80334DC:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
off_803350C:: .word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
	.word sub_8030628+1
	.word sub_8030808+1
	.word sub_803086C+1
pt_8033530:: .word ACDCTownMapsTriggers
	.word CentralTownMapsTriggers
	.word off_80335C8
	.word off_80335F4
	.word off_8033608
	.word off_803361C
	.word off_803362C
pt_803354C:: .word off_8033644
	.word off_803364C
	.word off_8033658
	.word off_8033664
	.word 0x0
	.word off_8033670
	.word 0x0
	.word 0x0
	.word off_8033684
	.word 0x0
	.word 0x0
	.word 0x0
	.word off_80336A0
	.word off_80336E0
	.word 0x0
	.word 0x0
	.word off_8033720
	.word off_803372C
	.word off_8033738
	.word off_8033740
	.word off_8033748
	.word off_8033754
	.word off_8033764
ACDCTownMapsTriggers:: .word ACDCTownMapTriggers
	.word byte_861AD84
	.word byte_861B31C
CentralTownMapsTriggers:: .word CentralTownMapTriggers
	.word byte_861C770
	.word byte_861CC50
	.word byte_861CEE8
	.word byte_861D05C
off_80335C8:: .word byte_861D4D8
	.word byte_861D4D8
	.word byte_861D4D8
	.word byte_861D4D8
	.word dword_861E06C
	.word dword_861E06C
	.word dword_861E6D4
	.word dword_861F710
	.word dword_8620350
	.word dword_8620A9C
	.word dword_8620A9C
off_80335F4:: .word dword_8620E58
	.word byte_8622CFC
	.word byte_86246F0
	.word byte_8625B10
	.word byte_8627DF8
off_8033608:: .word byte_8628968
	.word byte_862AB08
	.word dword_862B6E0
	.word dword_862C160
	.word dword_862C978
off_803361C:: .word dword_862D0A0
	.word dword_862E15C
	.word dword_863168C
	.word dword_8632288
off_803362C:: .word dword_8633084
	.word dword_8634E64
	.word dword_8635EB4
	.word dword_8636A7C
	.word dword_86376B4
	.word dword_8638E70
off_8033644:: .word dword_863951C
	.word dword_863B234
off_803364C:: .word dword_863D1A4
	.word dword_863F830
	.word dword_8642B34
off_8033658:: .word dword_86460FC
	.word dword_86475CC
	.word dword_8648BA8
off_8033664:: .word dword_864A484
	.word dword_864D860
	.word dword_8651B2C
off_8033670:: .word dword_8656C0C
	.word dword_865A08C
	.word dword_865B77C
	.word dword_8660604
	.word byte_866296C
off_8033684:: .word byte_866446C
	.word dword_8664F04
	.word 0x0
	.word dword_8664F04
	.word 0x0
	.word dword_8664F04
	.word dword_8664F04
off_80336A0:: .word dword_8664988
	.word dword_8664F04
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664F04
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664F04
off_80336E0:: .word dword_8664F04
	.word dword_8664F04
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664F04
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
	.word dword_8664988
off_8033720:: .word dword_8665548
	.word dword_8667820
	.word dword_866B038
off_803372C:: .word byte_866D090
	.word byte_8671A74
	.word byte_8673418
off_8033738:: .word byte_8675094
	.word byte_8678F4C
off_8033740:: .word byte_867D85C
	.word byte_8680690
off_8033748:: .word byte_868316C
	.word byte_8687DCC
	.word byte_868CB78
off_8033754:: .word byte_868EBA0
	.word byte_8691154
	.word byte_8694FB4
	.word spriteWhiteDot
/*For debugging purposes, connect comment at any range!*/
