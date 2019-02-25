	.ifndef INC_ASM_ASM21
	.equ INC_ASM_ASM21, 0

/* Public Symbols */
	.global sub_8080D90
	.global sub_8080DA0
	.global dword_8081010


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global ZeroFillByByte // (void *mem, int size) -> void
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global nullsub_35
// .global sub_80019B4
// .global sub_80019EC
// .global sub_8001A10
// .global sub_8001A34
// .global sub_8001A58
// .global nullsub_39
// .global sub_8002354

	.include "asm/asm03_0.inc"
// .global GetBattleMode
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global sub_80304E8

	.include "asm/asm03_1.inc"
// .global sub_803537C
// .global sub_8035424

	.include "asm/asm11.inc"
// .global byte_8069AF0
// .global off_8069C80
// .global off_806A810
// .global off_806C20C

	.include "data/dat19.inc"
// .global off_807EB18

	.include "data/dat20.inc"
// .global off_807F690
// .global off_807F900
// .global off_807FAC0
// .global off_807FB98
// .global off_807FE88
// .global off_8080178
// .global off_80802A8
// .global off_8080598
// .global off_80805C0
// .global off_80808B0
// .global off_80808D8
// .global off_8080AA0

	.include "data/dat21.inc"
// .global byte_80813F8
// .global dword_80813FC
// .global dword_8081400
// .global dword_8081404
// .global byte_8081408
// .global byte_8081410
// .global byte_8081418
// .global byte_8081428
// .global dword_8081438
// .global dword_808143C
// .global dword_8081440
// .global dword_8081444
// .global dword_8081448
// .global dword_808144C
// .global byte_8081450

	.include "data/dat38_60.inc"
// .global off_8610B04
// .global byte_8610C18
// .global byte_8610D64
// .global off_86116C8
// .global byte_861184C
// .global byte_86119C4
// .global off_8612A28
// .global dword_8612CF0
// .global dword_8612E84
// .global off_8613608
// .global dword_8613AAC
// .global off_8614444
// .global dword_8614A0C
// .global byte_8614BB8
// .global off_8614DE0
// .global dword_8615028
// .global dword_86151BC
// .global off_8615360
// .global dword_86154A8
// .global dword_86155E8
// .global off_861578C
// .global dword_861595C
// .global off_8615BA4
// .global byte_8615D14
// .global byte_8615E88
// .global off_861602C
// .global dword_8616264
// .global byte_86163F4
// .global off_8616598
// .global byte_8616634
// .global byte_8616760
// .global byte_8616EC4
// .global off_8617068
// .global dword_8617190
// .global byte_86172E4
// .global byte_86185C8
// .global dword_861876C
// .global dword_8618910
// .global dword_8618AB4
// .global dword_8618C58
// .global dword_8618DFC
// .global byte_8618E40
// .global byte_8618F50
// .global off_8619174
// .global dword_8619474


/* Undeclared Symbols */
// .equ dword_2009690, 0x2009690
// .equ byte_3001960, 0x3001960

	.endif // INC_ASM_ASM21
