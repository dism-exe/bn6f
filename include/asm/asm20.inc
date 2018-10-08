.ifndef INC_ASM_ASM20
.equ INC_ASM_ASM20, 0

/* Public Symbols */


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global sub_8001A46
// .global locret_8001AB4
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
// .global sub_80304E8
// .global sub_8030AA4

.include "asm/asm03_1.inc"
// .global sub_8034FB8

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat19.inc"
// .global off_807EA6C
// .global off_807EB18
// .global dword_807EB68
// .global dword_807EBB8
// .global off_807EC58
// .global off_807ECA8

.include "data/dat20.inc"
// .global dword_807EEB8
// .global dword_807EFD4
// .global dword_807F1E0

.include "data/dat38_60.inc"
// .global off_8619174


/* Undeclared Symbols */
// .equ unk_2037800, 0x2037800

.endif // INC_ASM_ASM20
