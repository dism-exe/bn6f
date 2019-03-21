	.ifndef INC_ASM_ASM33
	.equ INC_ASM_ASM33, 0

/* Public Symbols */
	.global sub_8123208
	.global sub_8123300
	.global sub_8123360
	.global sub_8123408
	.global HandleChipFolderMenu8123434
	.global HandleSubChipMenu8123F5C
	.global byte_8124B1C
	.global HandleLibraryMenu8124B3C
	.global HandleMegaManStatusMenu8126B4C
	.global sub_8127990
	.global sub_81279A8
	.global HandleEmailMenu81279F8
	.global sub_81284A4
	.global HandleKeyItemMenu8128730
	.global sub_8128CBC
	.global byte_8129150
	.global byte_8129178
	.global dword_8129180
	.global sub_81291D8
	.global HandleCommMenu81291E8
	.global sub_8129248
	.global sub_812AC14
	.global sub_812AF3C
	.global sub_812AF78
	.global sub_812AF84
	.global sub_812AF98
	.global sub_812AFA4
	.global sub_812AFC8
	.global sub_812B530


/* External Symbols */
	.include "asm/start.inc"
// .global start_800027C
// .global start_8000288

	.include "asm/asm00_0.inc"
// .global PlaySoundEffect
// .global musicGameState_8000784 // () -> void
// .global ZeroFillByByte // (void *mem, int size) -> void
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global ZeroFillByEightWords // (int a1, int a2) -> void
// .global CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void
// .global CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
// .global HalfwordFill
// .global sub_8000AC8
// .global decompAndCopyData // (u32 *initRefs) -> void
// .global sub_8000C00
// .global getPETNaviSelect // () -> u8
// .global sub_80010BE
// .global sub_80015FC
// .global zeroFillVRAM
// .global ZeroFill_byte_3001960
// .global ZeroFillGFX30025c0
// .global CopyBackgroundTiles // (int j, int i, int cpyOff, u16 *tileIds) -> void
// .global call_sub_3005EBA
// .global zeroFill_80024A2

	.include "asm/asm00_1.inc"
// .global sub_80035A2
// .global sub_8003962
// .global zeroFill_8003AB2
// .global sub_8004702
// .global sub_8005F40
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global IsPaletteFadeActive // () -> zf
// .global RandomizeExtraToolkitPointers
// .global sub_8006DEC
// .global sub_80070BC
// .global sub_80070E6
// .global sub_800710A
// .global sub_80071D4
// .global sub_8007800
// .global getBattleSettingsFromList1 // (int battleSettingsIdx) -> BattleSettings*

	.include "asm/asm00_2.inc"
// .global navicust_801379E // (int a1, int a2, int a3) -> void
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global sub_80137E6
// .global sub_80137FE

	.include "asm/asm02.inc"
// .global getChip8021DA8 // (int chip_idx) -> ChipData*

	.include "asm/asm03_0.inc"
// .global sub_802B2A0
// .global sub_802B358
// .global sub_802B438
// .global sub_802B4D4
// .global sub_802B51C
// .global getBattleSettings_200AF60 // () -> BattleSettings*
// .global copyBattleSettingsTo_200AF60 // (BattleSettings *src) -> void
// .global battleSettings_setFlags_unkSettings // (int mask) -> void
// .global battleSettings_setBackground // (u8 background) -> void
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global SetEventFlag
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlag // (u16 entryFlagBitfield) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void

	.include "asm/asm03_1.inc"
// .global sub_8036E78
// .global sub_803C28A
// .global sub_803C59C
// .global sub_803C604
// .global sub_803C612
// .global sub_803C620
// .global sub_803C754
// .global sub_803CB00
// .global sub_803CB0C
// .global sub_803CB18
// .global sub_803CE08
// .global sub_803CE28
// .global sub_803DCD8
// .global sub_803DCE8
// .global sub_803DD60
// .global sub_803DDA4
// .global sub_803DE24
// .global sub_803DE88
// .global sub_803DEAC
// .global sub_803E8F8
// .global sub_803EA50
// .global eStruct200BC30_getJumpOffset00
// .global eStruct200BC30_setJumpOffset00
// .global sub_803EA78
// .global sub_803EAE4
// .global sub_803EBAC
// .global eStruct200BC30_getRef
// .global sub_803EF60
// .global sub_803EF74
// .global sub_803EF7C
// .global sub_803F4EC
// .global notZero_eByte200AD04
// .global sub_803F674
// .global sub_803F798

	.include "asm/chatbox.inc"
// .global chatbox_runScript_803FD78 // (void *textScript, u8 scriptIdx) -> void
// .global chatbox_runScript_803FD9C // (void *textScript, u8 scriptIdx) -> void
// .global chatbox_runScript_803FDA4
// .global chatbox_runScript_803FE08 // (void *textScript, u8 scriptIdx) -> void
// .global chatbox_runScript_803FE10
// .global chatbox_8040818
// .global chatbox_set_eFlags2009F38
// .global chatbox_clear_eFlags2009F38 // (int a1) ->
// .global chatbox_check_eFlags2009F38
// .global chatbox_8045F4C

	.include "asm/asm03_2.inc"
// .global renderTextGfx_8045F8C
// .global sub_80465A0 // (void *a1) -> void
// .global sub_80465BC
// .global sub_80465F8 // () -> void
// .global sub_8046664 // () -> void
// .global sub_8046670
// .global sub_8046696
// .global getStructFrom2008450
// .global sub_8048F9C
// .global sub_8048FC4
// .global cb_8048FD4
// .global sub_8049D42
// .global sub_8049D7C
// .global sub_8049D98
// .global sub_8049DA0
// .global sub_8049DC4
// .global sub_8049DDC

	.include "asm/asm28_1.inc"
// .global sub_809F9BE

	.include "asm/asm32.inc"
// .global sub_8116FDC
// .global sub_8117084
// .global sub_81171F4
// .global sub_81190F8
// .global sub_8119118
// .global sub_811980C
// .global sub_811983C
// .global sub_8119854
// .global sub_8119BE8
// .global sub_8119C74
// .global sub_8119C94
// .global sub_811A1F4
// .global sub_811A220
// .global sub_811A610
// .global sub_811A768
// .global sub_811B010
// .global sub_811B314
// .global sub_811B46C
// .global sub_811B48C
// .global sub_811BDFC
// .global sub_811BED4
// .global sub_811C23C
// .global sub_811C2A8
// .global sub_811C4D8
// .global sub_811DC88
// .global sub_811DF0C
// .global sub_811EBF4
// .global sub_811F6C0
// .global sub_811F708
// .global sub_811F728
// .global JoypadKeyPressed
// .global sub_811F7F8
// .global sub_811F91C
// .global sub_811FA0C
// .global sub_811FA22
// .global sub_811FA98
// .global sub_811FAF4
// .global sub_811FB64
// .global sub_811FB84
// .global sub_811FCB8
// .global sub_8120018
// .global sub_81200EC
// .global sub_8120348
// .global sub_8120390
// .global sub_81203E4
// .global sub_8120458
// .global sub_81204C4
// .global sub_812053C
// .global sub_81207F8
// .global sub_8120900
// .global sub_81209DC
// .global sub_8120A38
// .global sub_8120C94
// .global sub_8120CC8
// .global sub_8120D10
// .global sub_8121198
// .global byte_81211B4
// .global pt_8121200

	.include "data/dat33.inc"
// .global sub_812C2C0

	.include "data/dat34.inc"
// .global sub_812DAE4

	.include "data/dat35.inc"
// .global sub_812F094

	.include "asm/asm36.inc"
// .global byte_8130905
// .global chatbox_runScript_803FD9C_on_eTextScript201BA20
// .global sub_8132290
// .global sub_81322E8
// .global sub_8132398
// .global sub_81323B0
// .global sub_8132430
// .global sub_8132538
// .global sub_81325C0
// .global sub_81325CC
// .global sub_81325E4
// .global sub_81325F4
// .global sub_8132614
// .global sub_8132664
// .global sub_8132670
// .global sub_81326D4
// .global sub_8132764
// .global sub_81348DC
// .global sub_8134930
// .global sub_81352A0
// .global sub_8135314
// .global byte_813565C
// .global sub_8137884
// .global sub_81378B4

	.include "asm/asm37_0.inc"
// .global sub_813B9FC
// .global sub_813C3AC
// .global sub_813D5D0
// .global sub_813D60C
// .global sub_813D638
// .global sub_813D648
// .global sub_813D90C
// .global sub_813D960
// .global sub_813D978

	.include "asm/libs.inc"
// .global sub_81440D8 // static () -> void
// .global sub_8144240
// .global sub_8146588
// .global sub_81465BC
// .global sub_8146724
// .global sub_8146738
// .global sub_81468BC
// .global sub_81468C8
// .global sub_81468E0
// .global sub_814695C
// .global sub_81469A0
// .global sub_81469BC
// .global sub_81469E8
// .global sub_8146E5C
// .global sub_8146E60
// .global sub_8147350
// .global sub_81475D4
// .global sub_8147B24
// .global sub_8147F98
// .global sub_8148224
// .global sub_8148540
// .global sub_8148D24
// .global sub_8149568
// .global sub_8149644
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void

	.include "data/dat37.inc"
// .global dword_814FE94

	.include "data/dat38_60.inc"
// .global byte_86A5D40
// .global dword_86A5D60
// .global dword_86B7AE0
// .global byte_86C1F20
// .global byte_86C1F80

	.include "data/dat38_67.inc"
// .global dword_86C9108
// .global dword_86C9128

	.include "data/dat38_69.inc"
// .global dword_86C9AF4
// .global dword_86C9B14
// .global dword_86C9B34
// .global dword_86C9B54
// .global dword_86C9B94
// .global dword_86C9BB4

	.include "data/dat38_70.inc"
// .global byte_86C9D6C
// .global dword_86CDBE4

	.include "data/dat38_72.inc"
// .global dword_86CF994
// .global dword_86CFAF8

	.include "data/dat38_74.inc"
// .global comp_86D6618
// .global dword_86D6754
// .global dword_86D6954

	.include "data/dat38_75.inc"
// .global byte_86D7578
// .global byte_86D78C0
// .global byte_86D7C24
// .global byte_86D7F74
// .global TextScriptNaviCustAndFolders86D82C4
// .global byte_86D860C
// .global byte_86D894C

	.include "data/dat38_77.inc"
// .global dword_86D9A00
// .global dword_86D9AC4
// .global dword_86D9B84

	.include "data/dat38_83.inc"
// .global comp_86DD59C

	.include "data/dat38_84.inc"
// .global byte_86DDB24

	.include "data/dat38_85.inc"
// .global TextScriptChipNames0
// .global TextScriptChipNames1

	.include "data/dat38_86.inc"
// .global byte_872CF94

	.include "data/dat38_87.inc"
// .global byte_873D9FC
// .global byte_873EA50


/* Undeclared Symbols */
// .equ byte_2000FE0, 0x2000FE0
// .equ byte_2000FE1, 0x2000FE1
// .equ dword_2001140, 0x2001140
// .equ unk_20018C0, 0x20018C0
// .equ unk_20018EC, 0x20018EC
// .equ byte_2006530, 0x2006530
// .equ unk_20096E0, 0x20096E0
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ byte_200A290, 0x200A290
// .equ byte_200AF80, 0x200AF80
// .equ eStruct200BC30, 0x200BC30
// .equ byte_200BC3C, 0x200BC3C
// .equ byte_200BC50, 0x200BC50
// .equ word_200DCF0, 0x200DCF0
// .equ word_200DCF2, 0x200DCF2
// .equ word_200DCF4, 0x200DCF4
// .equ word_200DCF6, 0x200DCF6
// .equ word_200DCF8, 0x200DCF8
// .equ word_200DCFA, 0x200DCFA
// .equ word_200DCFC, 0x200DCFC
// .equ word_200DCFE, 0x200DCFE
// .equ word_200DD00, 0x200DD00
// .equ word_200DD02, 0x200DD02
// .equ word_200DD04, 0x200DD04
// .equ eDecompBuffer2013A00, 0x2013A00
// .equ byte_2017A00, 0x2017A00
// .equ byte_2017A20, 0x2017A20
// .equ unk_2017C80, 0x2017C80
// .equ unk_2017D20, 0x2017D20
// .equ unk_2017F60, 0x2017F60
// .equ unk_2018A00, 0x2018A00
// .equ unk_2018E00, 0x2018E00
// .equ unk_2019200, 0x2019200
// .equ unk_2019600, 0x2019600
// .equ byte_2019A00, 0x2019A00
// .equ unk_201A600, 0x201A600
// .equ unk_201AA00, 0x201AA00
// .equ byte_201B200, 0x201B200
// .equ eTextScript201BA00, 0x201BA00
// .equ eTextScript201BA20, 0x201BA20
// .equ byte_201BB60, 0x201BB60
// .equ byte_201BDB8, 0x201BDB8
// .equ byte_201BDF8, 0x201BDF8
// .equ eTextScript201BF00, 0x201BF00
// .equ eTextScript201BF20, 0x201BF20
// .equ unk_201C040, 0x201C040
// .equ eTextScript201C100, 0x201C100
// .equ unk_201C1B0, 0x201C1B0
// .equ unk_201C200, 0x201C200
// .equ eTextScript201C220, 0x201C220
// .equ unk_201C2F8, 0x201C2F8
// .equ unk_201C400, 0x201C400
// .equ unk_201C4B0, 0x201C4B0
// .equ unk_201C4DC, 0x201C4DC
// .equ eTextScript201C700, 0x201C700
// .equ unk_201CB5C, 0x201CB5C
// .equ unk_201CC20, 0x201CC20
// .equ unk_201CF20, 0x201CF20
// .equ unk_201D020, 0x201D020
// .equ unk_201D120, 0x201D120
// .equ unk_201D1DC, 0x201D1DC
// .equ unk_201D220, 0x201D220
// .equ unk_201D320, 0x201D320
// .equ unk_201D520, 0x201D520
// .equ unk_201D6E0, 0x201D6E0
// .equ unk_201D720, 0x201D720
// .equ byte_201D74C, 0x201D74C
// .equ unk_201D774, 0x201D774
// .equ unk_201D7C0, 0x201D7C0
// .equ unk_201D7F8, 0x201D7F8
// .equ unk_201D830, 0x201D830
// .equ unk_201D84C, 0x201D84C
// .equ unk_201D85C, 0x201D85C
// .equ unk_201D884, 0x201D884
// .equ unk_201DC20, 0x201DC20
// .equ unk_201DEDC, 0x201DEDC
// .equ unk_201E198, 0x201E198
// .equ unk_201E284, 0x201E284
// .equ dword_201E420, 0x201E420
// .equ unk_201E55C, 0x201E55C
// .equ unk_201E998, 0x201E998
// .equ unk_201EBDC, 0x201EBDC
// .equ dword_201EC20, 0x201EC20
// .equ unk_201EC2C, 0x201EC2C
// .equ unk_201EC8C, 0x201EC8C
// .equ unk_201ECAC, 0x201ECAC
// .equ unk_201ECCC, 0x201ECCC
// .equ unk_201F198, 0x201F198
// .equ unk_201F294, 0x201F294
// .equ dword_201F420, 0x201F420
// .equ unk_201F998, 0x201F998
// .equ dword_201FC20, 0x201FC20
// .equ unk_201FD20, 0x201FD20
// .equ unk_201FD40, 0x201FD40
// .equ unk_201FD60, 0x201FD60
// .equ unk_201FD80, 0x201FD80
// .equ unk_201FDA0, 0x201FDA0
// .equ unk_2020198, 0x2020198
// .equ unk_2020484, 0x2020484
// .equ unk_2020500, 0x2020500
// .equ unk_2020C00, 0x2020C00
// .equ unk_20222A0, 0x20222A0
// .equ eGuiSprite2022AA0, 0x2022AA0
// .equ byte_2022B94, 0x2022B94
// .equ byte_2022C00, 0x2022C00
// .equ byte_20231A0, 0x20231A0
// .equ word_2023BB0, 0x2023BB0
// .equ byte_2023BC0, 0x2023BC0
// .equ byte_2023BC8, 0x2023BC8
// .equ unk_2024394, 0x2024394
// .equ unk_2024C00, 0x2024C00
// .equ unk_20251A0, 0x20251A0
// .equ unk_20251B0, 0x20251B0
// .equ unk_2025700, 0x2025700
// .equ unk_2026700, 0x2026700
// .equ unk_2026870, 0x2026870
// .equ unk_2026C00, 0x2026C00
// .equ unk_2027570, 0x2027570
// .equ dword_2027590, 0x2027590
// .equ byte_2027594, 0x2027594
// .equ dword_2027598, 0x2027598
// .equ dword_202759C, 0x202759C
// .equ byte_20275A0, 0x20275A0
// .equ byte_20275A4, 0x20275A4
// .equ dword_20275A8, 0x20275A8
// .equ dword_20275AC, 0x20275AC
// .equ unk_2028000, 0x2028000
// .equ unk_2028590, 0x2028590
// .equ unk_2028690, 0x2028690
// .equ unk_2029000, 0x2029000
// .equ unk_2033C00, 0x2033C00
// .equ dword_2033C2C, 0x2033C2C
// .equ dword_2033C30, 0x2033C30
// .equ unk_20343E0, 0x20343E0
// .equ unk_2034400, 0x2034400
// .equ unk_20347D8, 0x20347D8
// .equ unk_2037780, 0x2037780
// .equ byte_203F7D8, 0x203F7D8
// .equ byte_203F7D8, 0x203F7D8
// .equ byte_3001670, 0x3001670
// .equ byte_3001690, 0x3001690
// .equ byte_30016B0, 0x30016B0
// .equ byte_30016D0, 0x30016D0
// .equ byte_3001960, 0x3001960
// .equ unk_30019A0, 0x30019A0
// .equ unk_30019E0, 0x30019E0
// .equ unk_3001A00, 0x3001A00
// .equ unk_3001A20, 0x3001A20
// .equ unk_3001A40, 0x3001A40
// .equ unk_3001A60, 0x3001A60
// .equ unk_3001A80, 0x3001A80
// .equ unk_3001AA0, 0x3001AA0
// .equ unk_3001AC0, 0x3001AC0
// .equ unk_3001AE0, 0x3001AE0
// .global comp_86C6B30
// .global comp_86C6FD0
// .global comp_86C73D8
// .global comp_86C7764
// .global comp_86C7980
// .global comp_86C7DCC
// .global comp_86C7E74
// .global comp_86C7F70
// .global comp_86C7F98
// .global comp_86C8034
// .global comp_86C8054
// .global comp_86C9148
// .global comp_86C9240
// .global comp_86C96C0
// .global comp_86C980C
// .global comp_86C9AA4
// .global comp_86C9BD4
// .global comp_86C9C80
// .global comp_86C9D38
// .global comp_86CDCE4
// .global comp_86CDE2C
// .global comp_86CDEA8
// .global comp_86CE51C
// .global comp_86CE63C
// .global comp_86CE724
// .global comp_86CE77C
// .global comp_86CEC3C
// .global comp_86CF82C
// .global comp_86CFC64
// .global comp_86CFCFC
// .global comp_86D6C70
// .global comp_86D6D50
// .global comp_86D6EE4
// .global comp_86D6F30
// .global comp_86D737C
// .global comp_86D73D4
// .global comp_86D7424
// .global comp_86D747C
// .global comp_86D74B0
// .global comp_86D8C80
// .global comp_86D9D10
// .global comp_86DA1B8
// .global comp_86DD9B4
// .global comp_86DDAD0

	.endif // INC_ASM_ASM33
