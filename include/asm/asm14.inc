.ifndef INC_ASM_ASM14
.equ INC_ASM_ASM14, 0

/* Public Symbols */
.global sub_8071B50
.global sub_8071BE4
.global sub_8071C30
.global sub_8071CC4
.global sub_8071CEE
.global off_8071EB0
.global dword_8071EBC
.global off_8071EC8
.global off_8071ED4
.global byte_8071F10
.global byte_8071F13


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global change_20013F0_800151C // () -> int
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global sub_80019D0
// .global nullsub_39
// .global sub_8002354

.include "asm/sprite.inc"
// .global sub_80028D4
// .global sub_8002906

.include "asm/asm00_1.inc"
// .global sub_8003570

.include "asm/asm03_0.inc"
// .global sub_802FF4C
// .global sub_80302C0
// .global sub_803037C
// .global sub_8030472
// .global sub_80304E8
// .global sub_8030AA4

.include "asm/asm03_1.inc"
// .global sub_8034C36
// .global sub_8034FB8

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat13.inc"
// .global off_8071584
// .global dword_8071670
// .global dword_8071670
// .global dword_8071670
// .global dword_8071670
// .global dword_8071670
// .global dword_8071670

.include "data/dat14.inc"
// .global dword_8072C3C
// .global off_807360C
// .global off_8073F1C

.include "data/dat38_60.inc"
// .global off_8617068


/* Undeclared Symbols */
// .equ unk_2037800, 0x2037800

.endif // INC_ASM_ASM14
