	.ifndef INC_ASM_ASM03_2
	.equ INC_ASM_ASM03_2, 0

/* Public Symbols */
	.global renderTextGfx_8045F8C
	.global sub_8045FBC
	.global sub_8045FC6
	.global sub_8045FD0
	.global loc_8045FE4
	.global sub_804657C // () -> void
	.global sub_80465A0 // (void *a1) -> void
	.global sub_80465BC
	.global sub_80465F8 // () -> void
	.global sub_8046664 // () -> void
	.global sub_8046670
	.global sub_804668A
	.global sub_8046696
	.global getStructFrom2008450
	.global sub_80467D8
	.global sub_80467FC
	.global sub_8046818
	.global sub_8046854
	.global sub_80468BA
	.global sub_80468C6
	.global sub_80468E0
	.global sub_80468EC
	.global sub_804691A
	.global sub_8046CC8
	.global ShopControl
	.global sub_8047D84
	.global sub_8048C24
	.global sub_8048C68
	.global sub_8048C98
	.global sub_8048F88
	.global sub_8048F9C
	.global sub_8048FC4
	.global cb_8048FD4
	.global sub_8049BC0
	.global sub_8049CF8
	.global sub_8049D42
	.global sub_8049D7C
	.global sub_8049D82
	.global sub_8049D98
	.global sub_8049DA0
	.global sub_8049DC4
	.global sub_8049DDC
	.global cb_8049E04
	.global sub_804A17A
	.global sub_804A1D0
	.global sub_804A24C
	.global sub_804A2CC
	.global sub_804A2E8
	.global ChipTraderControl
	.global sub_804BD00
	.global sub_804C058
	.global sub_804C074
	.global sub_804CE90
	.global sub_804CF32
	.global sub_804CF84


/* External Symbols */
	.include "asm/asm38.inc"
// .global dword_3006B84
// .global sub_3006B94
// .global sub_3006C38
// .global sub_3006C8E
// .global sub_3006CA8
// .global sub_3006F20
// .global sub_3006F24
// .global sub_3006F42
// .global sub_3006F48
// .global sub_3006F5C
// .global sub_3006F70
// .global sub_3006F74

	.include "asm/asm00_0.inc"
// .global PlaySoundEffect
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global ZeroFillByEightWords // (int a1, int a2) -> void
// .global CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void
// .global CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
// .global HalfwordFill
// .global FillByEightWords
// .global QueueEightWordAlignedGFXTransfer
// .global decompAndCopyData // (u32 *initRefs) -> void
// .global sub_8000C00
// .global sub_8000C5C
// .global getPETNaviSelect // () -> u8
// .global GetRNG2 // () -> int
// .global GetPositiveSignedRNG2
// .global sub_80015FC
// .global map_8001708
// .global sRender_08_setRenderingState
// .global renderInfo_8001788
// .global renderInfo_80017A0
// .global zeroFillVRAM
// .global ZeroFill_byte_3001960
// .global zeroFill_e2009740
// .global ZeroFillGFX30025c0
// .global copyMemory_8001850
// .global CopyBackgroundTiles // (int j, int i, int cpyOff, u16 *tileIds) -> void
// .global call_sub_3005EBA
// .global sub_8001974
// .global sub_8001B1C
// .global sub_8001B6C
// .global sub_8002354
// .global sub_8002484
// .global loc_80024D8
// .global sub_8002694

	.include "asm/sprite.inc"
// .global sub_8002818
// .global sub_8002874
// .global sub_80028D4
// .global uncompSprite_8002906
// .global sprite_makeUnscalable

	.include "asm/asm00_1.inc"
// .global sprite_setCoordinates
// .global SpawnObjectsFromList
// .global sub_8003962
// .global sub_800399A
// .global zeroFill_8003AB2
// .global sub_8003AEA
// .global sub_8005F40
// .global sub_8005F84
// .global SetScreenFade // (int a1, int a2) -> void
// .global IsScreenFadeActive // () -> zf
// .global math_sinTable
// .global sub_8006920
// .global sub_8006990
// .global sub_8006A5C
// .global sub_8006F1E
// .global sub_800A7D0 // () -> (zf, int)

	.include "asm/asm02.inc"
// .global getChip8021DA8 // (int chip_idx) -> ChipData*
// .global dword_8021AEC
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*
// .global GetChipCountOfCode
// .global GetTotalChipCount

	.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global SetEventFlag
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
// .global camera_802FF4C
// .global sub_803037C
// .global sub_8030472
// .global sub_8030AA4

	.include "asm/asm03_1.inc"
// .global s_2011C50_8036F40 // () -> zf
// .global sub_8036F58
// .global sub_8039570
// .global sub_803A104
// .global sub_803A1B0
// .global sub_803A5F4
// .global sub_803A740
// .global sub_803A752
// .global sub_803A764
// .global sub_803A7B8
// .global sub_803A7EC
// .global sub_803A820
// .global sub_803A8B4
// .global sub_803AA24
// .global sub_803AA40
// .global sub_803AB6C
// .global sub_803AB94
// .global sub_803ABF4
// .global sub_803AD04
// .global sub_803AD20
// .global sub_803AE50
// .global sub_803AE78
// .global sub_803AED8
// .global sub_803AFC2
// .global sub_803B522
// .global sub_803B674
// .global sub_803B91C
// .global sub_803BA64
// .global sub_803BAE2
// .global sub_803BB2C
// .global sub_803BB7C
// .global sub_803BB80
// .global sub_803BB90
// .global sub_803BB94
// .global sub_803BC7C
// .global sub_803BE30
// .global sub_803BEC0
// .global sub_803C0BE
// .global sub_803C132
// .global sub_803C150
// .global sub_803C168
// .global sub_803C1A8
// .global sub_803C1BC
// .global sub_803C26A
// .global sub_803C28A
// .global sub_803C2A0
// .global sub_803C2AA
// .global sub_803C316
// .global sub_803C320
// .global sub_803C330
// .global sub_803C34E
// .global sub_803C440
// .global sub_803C558
// .global sub_803C59C
// .global sub_803C620
// .global sub_803CAF8
// .global sub_803CB00
// .global sub_803CB0C
// .global sub_803CB18
// .global sub_803CB78
// .global sub_803CB8C
// .global sub_803CCC0
// .global sub_803CD98
// .global sub_803D02C
// .global sub_803D06C
// .global sub_803D0B4
// .global sub_803D0F4
// .global sub_803D108
// .global sub_803D138
// .global sub_803F798
// .global sub_803F79E

	.include "asm/chatbox.inc"
// .global chatbox_uncompBasedOnMap_803FD08 // () -> int
// .global chatbox_runScript_803FD78 // (void *textScript, u8 scriptIdx) -> void
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global chatbox_8040818
// .global byte_8043CA4
// .global byte_8043E84
// .global byte_8044064
// .global chatbox_8045EEC
// .global chatbox_8045EFC
// .global chatbox_set_eFlags2009F38
// .global chatbox_check_eFlags2009F38
// .global chatbox_8045F4C

	.include "data/dat03.inc"
// .global byte_804CFBC
// .global byte_804CFD4
// .global dword_804D08C
// .global dword_804D090
// .global dword_804D094
// .global dword_804D098
// .global dword_804D09C
// .global dword_804D0A0
// .global off_804D0E4

	.include "data/dat20.inc"
// .global byte_808060A

	.include "asm/asm28_0.inc"
// .global sub_809E122
// .global sub_809E1AE

	.include "asm/asm32.inc"
// .global sub_8116894
// .global sub_8116924
// .global sub_8116ADC
// .global sub_8116CE0
// .global sub_8116E10
// .global sub_8116FDC
// .global sub_8117084
// .global sub_8117110
// .global sub_8117218
// .global sub_81172B0
// .global sub_8117404
// .global sub_81175D0
// .global sub_8117690
// .global sub_8117780
// .global sub_81178D8
// .global sub_81179AE
// .global sub_8117BC8
// .global sub_8117D2C
// .global sub_8117EC8
// .global sub_8118344
// .global sub_81187E8
// .global sub_8118BA4
// .global sub_8118D60
// .global sub_8118E84
// .global sub_8118F24
// .global sub_8119364
// .global sub_811980C
// .global sub_8119854
// .global sub_811997C
// .global sub_8119ACC
// .global sub_8119D54
// .global sub_8119E40
// .global sub_811A338
// .global sub_811A414
// .global sub_811A78C
// .global sub_811A858
// .global sub_811A978
// .global sub_811AB5C
// .global sub_811AD38
// .global sub_811B1EC
// .global sub_811B338
// .global sub_811B3F4
// .global sub_811B4AC
// .global byte_811B9B5
// .global sub_811BC44
// .global sub_811BD64
// .global sub_811C08C
// .global sub_811C11C
// .global sub_811C1AC
// .global sub_811C25C
// .global sub_811C4E8
// .global sub_811C9FC
// .global sub_811CC74
// .global sub_811DC34
// .global sub_811DF1C
// .global sub_811E024
// .global sub_811E168
// .global sub_811E248
// .global sub_811E360
// .global sub_811E418
// .global sub_811E57C
// .global sub_811E61C
// .global sub_811E6C0
// .global sub_811E7D4
// .global sub_811E858
// .global sub_811E914
// .global sub_811E9A0
// .global sub_811EBE0
// .global sub_811F728
// .global sub_811F758
// .global IsButtonPressed
// .global sub_811F7F8
// .global sub_811FA22
// .global sub_811FA98
// .global sub_811FAF4
// .global sub_811FB84
// .global sub_811FE7C
// .global sub_8120018
// .global sub_81200EC
// .global sub_81202FC
// .global sub_8120390
// .global sub_81203E4
// .global sub_8120458
// .global sub_81204C4
// .global sub_8120618
// .global sub_8120A88
// .global sub_8120AB8
// .global sub_8120CC8

	.include "asm/asm33.inc"
// .global sub_8123408
// .global sub_81291D8

	.include "asm/asm36.inc"
// .global sub_8132648
// .global sub_8132664
// .global sub_8132A50

	.include "asm/asm37_0.inc"
// .global sub_813D5C8
// .global sub_813D60C
// .global sub_813D638
// .global sub_813D648
// .global sub_813D750
// .global sub_813D978

	.include "asm/libs.inc"
// .global sub_814656C
// .global sub_8146588
// .global sub_81465BC
// .global sub_8146738
// .global sub_814695C
// .global sub_81469BC
// .global sub_8147F98
// .global sub_8148224
// .global sub_8148D24
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void

	.include "data/dat38_60.inc"
// .global byte_869D74C
// .global byte_869D76C
// .global byte_869D82C
// .global byte_869E02C
// .global byte_869E82C
// .global byte_869F02C
// .global byte_86A10B0
// .global byte_86A10D0
// .global byte_86A13F0
// .global byte_86A1480
// .global byte_86A1940
// .global byte_86A1A60
// .global byte_86A1A80
// .global byte_86A1B20
// .global byte_86A2340
// .global byte_86A23E0
// .global byte_86A2BE0
// .global byte_86A2C00
// .global byte_86A2C80
// .global byte_86A3480
// .global byte_86A34C0
// .global byte_86A34E0
// .global byte_86A3990
// .global byte_86A39B0
// .global byte_86A39D0
// .global byte_86A3E80
// .global byte_86A3EA0
// .global byte_86A3F40
// .global byte_86A48C0
// .global dword_86A4A40
// .global byte_86A4CC0
// .global byte_86A4D40
// .global byte_86A5180
// .global dword_86A5500
// .global dword_86A5D60
// .global dword_86B7AE0
// .global byte_86C0B20
// .global byte_86C0B60
// .global byte_86C0BA0
// .global byte_86C0BE0
// .global byte_86C0C20
// .global byte_86C0C60
// .global byte_86C14A0
// .global byte_86C18E0
// .global byte_86C1920
// .global byte_86C1960
// .global byte_86C19A0
// .global byte_86C19E0
// .global byte_86C1A60
// .global byte_86C1B20

	.include "data/dat38_67.inc"
// .global dword_86C9108

	.include "data/dat38_69.inc"
// .global dword_86C9B54

	.include "data/dat38_70.inc"
// .global byte_86C9D6C

	.include "data/dat38_71.inc"
// .global TextScriptFolderNames

	.include "data/dat38_80.inc"
// .global off_86DC3F8

	.include "data/dat38_85.inc"
// .global TextScriptChipNames0
// .global TextScriptChipNames1
// .global byte_86EF71C

	.include "data/dat38_86.inc"
// .global byte_872CF94

	.include "data/dat38_87.inc"
// .global byte_873D9FC
// .global comp_873DE4C
// .global byte_873EA50
// .global comp_873ECC8

	.include "data/dat38_93.inc"
// .global byte_87F0340

	.include "data/dat38_94.inc"
// .global byte_87F05A4

	.include "data/dat38_95.inc"
// .global dword_87F0DA0
// .global dword_87F0FF4
// .global dword_87F1278
// .global dword_87F14CC
// .global dword_87F1714
// .global dword_87F195C
// .global dword_87F1BA8
// .global byte_87F1E10
// .global byte_87F2094

	.include "data/dat38_96.inc"
// .global dword_87F25B4
// .global dword_87F28DC


/* Undeclared Symbols */
// .equ unk_2000AC0, 0x2000AC0
// .equ byte_2000ACF, 0x2000ACF
// .equ byte_2000AD1, 0x2000AD1
// .equ byte_2000AD3, 0x2000AD3
// .equ byte_2000AD5, 0x2000AD5
// .equ byte_2000AD6, 0x2000AD6
// .equ byte_2000AD7, 0x2000AD7
// .equ byte_2000AD8, 0x2000AD8
// .equ byte_2000AD9, 0x2000AD9
// .equ word_2000ADA, 0x2000ADA
// .equ word_2000ADC, 0x2000ADC
// .equ word_2001800, 0x2001800
// .equ byte_2001802, 0x2001802
// .equ unk_2001808, 0x2001808
// .equ byte_2001818, 0x2001818
// .equ unk_2001828, 0x2001828
// .equ byte_200183C, 0x200183C
// .equ unk_2001850, 0x2001850
// .equ byte_2001860, 0x2001860
// .equ byte_2001880, 0x2001880
// .equ byte_20018A0, 0x20018A0
// .equ eStructArr2008450, 0x2008450
// .equ byte_2008451, 0x2008451
// .equ byte_2008452, 0x2008452
// .equ eStructArr2008453, 0x2008453
// .equ unk_20096E0, 0x20096E0
// .equ sSubmenu, 0x2009A30
// .equ byte_200A220, 0x200A220
// .equ byte_200A221, 0x200A221
// .equ byte_200A222, 0x200A222
// .equ byte_200A223, 0x200A223
// .equ byte_200A224, 0x200A224
// .equ dword_200A238, 0x200A238
// .equ dword_200A23C, 0x200A23C
// .equ dword_200A240, 0x200A240
// .equ dword_200A244, 0x200A244
// .equ dword_200A258, 0x200A258
// .equ dword_200A25C, 0x200A25C
// .equ byte_200A290, 0x200A290
// .equ byte_200A291, 0x200A291
// .equ word_200A2B2, 0x200A2B2
// .equ word_200A2B4, 0x200A2B4
// .equ word_200A2B6, 0x200A2B6
// .equ eS200AC80, 0x200AC80
// .equ word_200AC84, 0x200AC84
// .equ word_200AC86, 0x200AC86
// .equ dword_200ACB0, 0x200ACB0
// .equ dword_200ACCC, 0x200ACCC
// .equ dword_200ACD0, 0x200ACD0
// .equ byte_2011860, 0x2011860
// .equ byte_2011861, 0x2011861
// .equ byte_2011862, 0x2011862
// .equ byte_2011863, 0x2011863
// .equ byte_2011C10, 0x2011C10
// .equ byte_2011C14, 0x2011C14
// .equ word_2011C22, 0x2011C22
// .equ word_2011C24, 0x2011C24
// .equ word_2011C28, 0x2011C28
// .equ dword_2011C2C, 0x2011C2C
// .equ dword_2011C34, 0x2011C34
// .equ unk_2013960, 0x2013960
// .equ byte_2013965, 0x2013965
// .equ word_2013974, 0x2013974
// .equ eDecompBuffer2013A00, 0x2013A00
// .equ unk_2013C00, 0x2013C00
// .equ unk_2013C40, 0x2013C40
// .equ unk_2015A00, 0x2015A00
// .equ unk_2015E00, 0x2015E00
// .equ byte_2016A00, 0x2016A00
// .equ byte_2017200, 0x2017200
// .equ byte_2017204, 0x2017204
// .equ unk_2018200, 0x2018200
// .equ unk_2018A00, 0x2018A00
// .equ eTileIds2018A04, 0x2018A04
// .equ unk_2019200, 0x2019200
// .equ unk_2019204, 0x2019204
// .equ unk_2019400, 0x2019400
// .equ unk_2019404, 0x2019404
// .equ byte_2019A00, 0x2019A00
// .equ byte_2019A01, 0x2019A01
// .equ word_2019A02, 0x2019A02
// .equ byte_2019A04, 0x2019A04
// .equ byte_201AE00, 0x201AE00
// .equ byte_201AE01, 0x201AE01
// .equ word_201AE02, 0x201AE02
// .equ byte_201AE04, 0x201AE04
// .equ byte_201AE05, 0x201AE05
// .equ byte_201AE06, 0x201AE06
// .equ unk_201CA20, 0x201CA20
// .equ unk_2020A20, 0x2020A20
// .equ unk_2027A00, 0x2027A00
// .equ unk_2028200, 0x2028200
// .equ unk_2028A00, 0x2028A00
// .equ unk_2029200, 0x2029200
// .equ unk_2029A00, 0x2029A00
// .equ reqBBS_requestInfo_textOffsets, 0x2029A04
// .equ unk_2029E00, 0x2029E00
// .equ word_202A020, 0x202A020
// .equ dword_202A034, 0x202A034
// .equ dword_202A03C, 0x202A03C
// .equ unk_202A200, 0x202A200
// .equ unk_202A3E0, 0x202A3E0
// .equ byte_202A3F4, 0x202A3F4
// .equ byte_202A3FC, 0x202A3FC
// .equ unk_202A600, 0x202A600
// .equ byte_202AB00, 0x202AB00
// .equ byte_202AF00, 0x202AF00
// .equ eDecomp202BA00, 0x202BA00
// .equ eTextScript202BA04, 0x202BA04
// .equ byte_202DA00, 0x202DA00
// .equ eTextScript202DA04, 0x202DA04
// .equ byte_202F800, 0x202F800
// .equ byte_202FA00, 0x202FA00
// .equ byte_2030200, 0x2030200
// .equ unk_2031200, 0x2031200
// .equ unk_20343E0, 0x20343E0
// .equ unk_2034458, 0x2034458
// .equ unk_20345A8, 0x20345A8
// .equ eTileIds20345FC, 0x20345FC
// .equ eTileIds20346DC, 0x20346DC
// .equ eTileIds2034714, 0x2034714
// .equ eTileIds203474C, 0x203474C
// .equ eTileIds2034768, 0xeTileIds2034768
// .equ eTileIds20347A0, 0x20347A0
// .equ dword_2034800, 0x2034800
// .equ unk_2034814, 0x2034814
// .equ unk_203486C, 0x203486C
// .equ dword_2035800, 0x2035800
// .equ dword_2035800, 0x2035800
// .equ dword_2035800, 0x2035800
// .equ unk_2035A00, 0x2035A00
// .equ unk_2035C6C, 0x2035C6C
// .equ unk_2035C8C, 0x2035C8C
// .equ unk_2037800, 0x2037800
// .equ unk_2037A00, 0x2037A00
// .equ unk_3000000, 0x3000000
// .equ byte_3001550, 0x3001550
// .equ byte_3001570, 0x3001570
// .equ byte_30015D0, 0x30015D0
// .equ byte_3001650, 0x3001650
// .equ byte_30016B0, 0x30016B0
// .equ byte_30016D0, 0x30016D0
// .equ byte_3001730, 0x3001730
// .equ iPallete3001750, 0x3001750
// .equ byte_3001960, 0x3001960
// .equ unk_3001980, 0x3001980
// .equ unk_30019C0, 0x30019C0
// .equ unk_3001A80, 0x3001A80
// .equ unk_3001AC0, 0x3001AC0
// .equ unk_3001AE0, 0x3001AE0
// .equ byte_3001B00, 0x3001B00
// .equ iPallete3001B60, 0x3001B60
	.equ IWRAMRoutinesROMLocation, 0x81D6000
// .global spriteWhiteDot
// .global compSpriteWhiteDot_84E0C4C
// .global comp_86C5190
// .global comp_86C526C
// .global TextScriptChipTrader86C580C
// .global comp_86C73D8
// .global comp_86C7764
// .global comp_86C7980
// .global comp_86C8054
// .global comp_86C9274
// .global comp_86C9668
// .global comp_86C96C0
// .global comp_86C980C
// .global comp_86C9AA4
// .global comp_86C9BD4
// .global comp_86C9CE4
// .global comp_86C9D38
// .global comp_86CE8AC
// .global comp_86CE9E8
// .global comp_86DA1B8
// .global comp_86DBD94
// .global comp_87E50D4
// .global comp_87E5550
// .global comp_87E56A0
// .global comp_87E57BC
// .global comp_87E674C
// .global comp_87E6840
// .global comp_87E6924
// .global comp_87F006C
// .global comp_87F0218
// .global comp_87F0360
// .global comp_87F04D4
// .global comp_87F0534
// .global comp_87F056C
// .global comp_87F0664
// .global comp_87F0834
// .global comp_87F0C00
// .global comp_87F24FC

	.endif // INC_ASM_ASM03_2
