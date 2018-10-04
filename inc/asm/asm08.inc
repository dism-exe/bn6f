.ifndef INC_ASM_ASM08
.equ INC_ASM_ASM08, 0

/* Public Symbols */


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8002354

.include "asm/sprite.inc"
// .global sub_80028D4
// .global sub_8002906

.include "asm/asm00_1.inc"
// .global sub_8003570

.include "asm/asm03_0.inc"
// .global sub_802FF4C
// .global sub_803037C
// .global loc_8030472
// .global sub_8030AA4

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat07.inc"
// .global off_8060184
// .global off_8060284
// .global byte_80602A4
// .global byte_80602CC
// .global byte_80602FC
// .global byte_806032C

.include "data/dat08.inc"
// .global dword_8060474
// .global dword_80604A0
// .global dword_80605E4
// .global dword_80605E8
// .global off_80606BC


/* Undeclared Symbols */
.equ unk_2037800, 0x2037800

.endif // INC_ASM_ASM08
