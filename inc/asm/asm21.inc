.ifndef INC_ASM_ASM21
.equ INC_ASM_ASM21, 0

/* Public Symbols */
.global sub_8080D90
.global sub_8080DA0


/* External Symbols */
.include "asm/asm00_0.inc"
// .global clearBackwards_80008B4 // (void *mem, int size) -> void
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global nullsub_35
// .global sub_80019B4
// .global sub_80019EC
// .global sub_8001A10
// .global sub_8001A34
// .global sub_8001A58
// .global locret_8001AB4
// .global sub_8002354

.include "asm/asm03_0.inc"
// .global sub_802D234
// .global isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
// .global sub_80304E8

.include "asm/asm03_1.inc"
// .global sub_803537C
// .global sub_8035424

.include "asm/asm11.inc"
// .global dword_8069AF0
// .global off_8069C80
// .global off_806A810
// .global off_806C20C

.include "data/dat19.inc"
// .global off_807EB18

.include "data/dat20.inc"
// .global dword_807F604
// .global dword_807F868
// .global off_807FAC0
// .global dword_807FAC4
// .global dword_807FAC4
// .global dword_807FAC4
// .global dword_807FAC4
// .global byte_8080598
// .global byte_80805C0
// .global byte_80808B0
// .global byte_80808D8
// .global byte_8080AA0

.include "data/dat21.inc"
// .global dword_80813F8
// .global dword_80813FC
// .global dword_8081400
// .global dword_8081404
// .global dword_8081408
// .global dword_8081410
// .global dword_8081418
// .global dword_8081428
// .global dword_8081438
// .global dword_808143C
// .global dword_8081440
// .global dword_8081444
// .global dword_8081448
// .global dword_808144C
// .global dword_8081450

.include "data/dat38_60.inc"
// .global off_8610B04
// .global off_86116C8
// .global dword_8612CF0
// .global dword_8613AAC
// .global dword_8614A0C
// .global off_8614DE0
// .global dword_86154A8
// .global off_861578C
// .global off_8615BA4
// .global dword_8616264
// .global off_8616598
// .global dword_8617190
// .global dword_8618DFC
// .global off_8619174
// .global dword_8619474


/* Undeclared Symbols */
.equ dword_2009690, 0x2009690

.endif // INC_ASM_ASM21
