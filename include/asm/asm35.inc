	.ifndef INC_ASM_ASM35
	.equ INC_ASM_ASM35, 0

/* Public Symbols */
	.global sub_812EAAC
	.global sub_812EAC4
	.global sub_812EB78
	.global sub_812EB88
	.global sub_812EC04
	.global sub_812EC2C
	.global sub_812ECAC
	.global sub_812ED2C
	.global sub_812ED34
	.global sub_812ED58
	.global sub_812ED94
	.global sub_812EDE4
	.global loc_812EDEA
	.global sub_812EDFC
	.global loc_812EE38
	.global sub_812EE78
	.global sub_812EF20
	.global sub_812EFD4


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global ZeroFillByEightWords // (int a1, int a2) -> void
// .global sub_800183C
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_80018D0

	.include "asm/asm00_1.inc"
// .global sub_800307C
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global sub_80062C8

	.include "asm/asm03_1.inc"
// .global sub_803CE28
// .global sub_803EBF4

	.include "asm/asm03_2.inc"
// .global render_graphicalText_8045F8C
// .global sub_80465A0 // (void *a1) -> void
// .global sub_8046664 // () -> void
// .global sub_80466C4

	.include "asm/asm32.inc"
// .global sub_811BC00
// .global sub_811F7EC
// .global sub_811F7F8
// .global sub_811FAF4
// .global sub_8120280
// .global sub_8120CC8

	.include "asm/asm33.inc"
// .global byte_8129178
// .global dword_8129180

	.include "data/dat34.inc"
// .global byte_812DA94
// .global byte_812DABC
// .global byte_812DAC4
// .global byte_812DACC
// .global byte_812DAD4
// .global byte_812DADC

	.include "asm/asm36.inc"
// .global sub_8132280

	.include "asm/asm37_0.inc"
// .global sub_813B780
// .global sub_813B9FC

	.include "data/dat38_60.inc"
// .global dword_86A5D60


/* Undeclared Symbols */
// .equ byte_201B200, 0x201B200
// .equ unk_201E920, 0x201E920
// .equ unk_201EE20, 0x201EE20
// .equ word_2023FA0, 0x2023FA0
// .equ word_2023FA2, 0x2023FA2
// .equ word_2023FA4, 0x2023FA4
// .equ unk_2024F90, 0x2024F90
// .equ unk_2024FB0, 0x2024FB0
// .equ unk_2025070, 0x2025070
// .equ unk_2025A70, 0x2025A70
// .equ byte_2030000, 0x2030000
// .equ unk_2037780, 0x2037780

	.endif // INC_ASM_ASM35
