.ifndef INC_ASM_ASM05
.equ INC_ASM_ASM05, 0

/* Public Symbols */
.global sub_8052688
.global sub_8052764
.global sub_80527F0


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
// .global sub_8030472
// .global sub_8030AA4

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat04.inc"
// .global off_8052244
// .global off_8052480
// .global off_80524C0
// .global byte_80524E8
// .global byte_8052510
// .global byte_8052538

.include "data/dat05.inc"
// .global dword_8052834
// .global dword_80529B4
// .global dword_8052A6C
// .global dword_8052B24
// .global dword_8052BDC
// .global dword_8052BE0
// .global dword_8052BE4
// .global dword_8052C10
// .global dword_8052D54
// .global dword_8052D80
// .global dword_8052D84
// .global off_8052EE8

.include "data/dat37.inc"
// .global byte_81C241C


/* Undeclared Symbols */
// .equ unk_2037800, 0x2037800

.endif // INC_ASM_ASM05
