	.ifndef INC_DATA_DAT34
	.equ INC_DATA_DAT34, 0

/* Public Symbols */
	.global byte_812DA94
	.global byte_812DABC
	.global byte_812DAC4
	.global byte_812DACC
	.global byte_812DAD4
	.global byte_812DADC
	.global sub_812DAE4


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global sound_play
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global ZeroFillByEightWords // (int a1, int a2) -> void
// .global decompAndCopyData // (u32 *initRefs) -> void
// .global sub_80015FC
// .global zeroFillVRAM
// .global ZeroFill_byte_3001960
// .global ZeroFillGFX30025c0

	.include "asm/asm00_1.inc"
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global IsPaletteFadeActive // () -> zf

	.include "asm/asm03_1.inc"
// .global sub_803C59C
// .global sub_803D108
// .global sub_803D128
// .global sub_803DD60
// .global sub_803E8E4
// .global sub_803E8F8
// .global sub_803EA50
// .global sub_803EA58
// .global eStruct200BC30_getJumpOffset00
// .global eStruct200BC30_setJumpOffset00
// .global sub_803EAE4
// .global sub_803EBAC
// .global eStruct200BC30_getRef
// .global sub_803EF74
// .global sub_803F798

	.include "asm/chatbox.inc"
// .global chatbox_8040818
// .global chatbox_check_eFlags2009F38

	.include "asm/asm03_2.inc"
// .global sub_80465A0 // (void *a1) -> void
// .global sub_80465BC
// .global sub_80465F8 // () -> void
// .global sub_8046664 // () -> void
// .global sub_8046696

	.include "asm/asm32.inc"
// .global sub_811A914
// .global sub_811A940
// .global sub_811A968
// .global sub_811BC24
// .global isJoystickIRQActive
// .global sub_811FA0C
// .global sub_811FA22
// .global sub_8120CC8

	.include "asm/asm33.inc"
// .global byte_8129150
// .global dword_8129180
// .global sub_8129248
// .global sub_812AC14
// .global sub_812AF3C
// .global sub_812AF78
// .global sub_812AF98
// .global sub_812AFC8
// .global sub_812B530

	.include "asm/asm35.inc"
// .global sub_812EAAC
// .global sub_812EAC4
// .global sub_812EB78
// .global sub_812EB88
// .global sub_812EC04
// .global sub_812EC2C
// .global sub_812ECAC
// .global sub_812ED2C
// .global sub_812ED34
// .global sub_812ED58
// .global sub_812ED94
// .global sub_812EDE4
// .global loc_812EDEA
// .global sub_812EDFC
// .global loc_812EE38
// .global sub_812EE78
// .global sub_812EF20
// .global sub_812EFD4

	.include "data/dat35.inc"
// .global sub_812EFE4
// .global sub_812F000
// .global sub_812F014

	.include "asm/asm36.inc"
// .global chatbox_runScript_803FD9C_on_eTextScript201BA20
// .global sub_81323B0
// .global sub_8132430
// .global sub_81324A8
// .global sub_81325C0
// .global sub_81325CC
// .global sub_8132614

	.include "asm/asm37_0.inc"
// .global sub_813B780

	.include "asm/libs.inc"
// .global sub_8149568
// .global sub_8149644

	.include "data/dat38_70.inc"
// .global byte_86C9D6C


/* Undeclared Symbols */
// .equ eDecompBuffer2013A00, 0x2013A00
// .equ eGuiSprite2022AA0, 0x2022AA0
// .equ eGuiSprite2022FA0, 0x2022FA0
// .equ unk_2024290, 0x2024290
// .equ unk_2025070, 0x2025070
// .equ unk_20251A0, 0x20251A0
// .equ unk_2025AE8, 0x2025AE8
// .equ byte_30016D0, 0x30016D0

	.endif // INC_DATA_DAT34
