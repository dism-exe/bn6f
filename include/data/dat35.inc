	.ifndef INC_DATA_DAT35
	.equ INC_DATA_DAT35, 0

/* Public Symbols */
	.global sub_812EFE4
	.global sub_812F000
	.global sub_812F014
	.global byte_812F044
	.global byte_812F04C
	.global byte_812F054
	.global byte_812F05C
	.global byte_812F064
	.global byte_812F06C
	.global sub_812F094


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global PlaySoundEffect
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void

	.include "asm/asm00_1.inc"
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global sub_80062C8
// .global IsPaletteFadeActive // () -> zf

	.include "asm/asm02.inc"
// .global split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
// .global dword_8021AEC
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*

	.include "asm/asm03_1.inc"
// .global sub_803C59C
// .global sub_803C754
// .global sub_803DD60
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
// .global getStructFrom2008450
// .global sub_804A24C

	.include "asm/asm32.inc"
// .global sub_811A914
// .global sub_811A940
// .global sub_811A968
// .global sub_811AD18
// .global JoypadKeyPressed
// .global sub_811FA0C
// .global sub_811FA22
// .global sub_8120DAC

	.include "asm/asm33.inc"
// .global byte_8129150
// .global byte_8129178
// .global sub_8129248
// .global sub_812AC14
// .global sub_812AFC8
// .global sub_812B530

	.include "asm/asm35.inc"
// .global sub_812EFD4

	.include "asm/asm36.inc"
// .global sub_813005C
// .global sub_8130084
// .global sub_813017C
// .global sub_81301DC
// .global sub_8130208
// .global sub_8130250
// .global sub_81302F4
// .global sub_8130370
// .global sub_813040C
// .global sub_8130424
// .global sub_8130464
// .global sub_81304A4
// .global sub_81304BC
// .global sub_81304EC
// .global sub_813064C
// .global sub_813068C
// .global sub_81306F0
// .global sub_8130728
// .global sub_8130780
// .global sub_81307BC
// .global sub_81307F4
// .global sub_8130810
// .global sub_8130850
// .global sub_8130864
// .global chatbox_runScript_803FD9C_on_eTextScript201BA20
// .global sub_81323B0
// .global sub_8132430
// .global sub_81324A8
// .global sub_81325C0
// .global sub_81325CC
// .global sub_8132614
// .global sub_81377EC

	.include "asm/libs.inc"
// .global sub_81440D8 // static () -> void
// .global sub_8149568
// .global sub_8149644


/* Undeclared Symbols */
// .equ unk_20018EC, 0x20018EC
// .equ unk_20251A0, 0x20251A0
// .equ unk_20270EC, 0x20270EC
// .equ unk_202714C, 0x202714C

	.endif // INC_DATA_DAT35
