.ifndef INC_ASM_ASM17
.equ INC_ASM_ASM17, 0

/* Public Symbols */


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global locret_80019B2
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
// .global sub_8034FB8

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat16.inc"
// .global off_80790A4
// .global off_80790EC
// .global dword_80790F0
// .global dword_80790F0
// .global dword_80790F0
// .global dword_80790F0
// .global dword_80790F0
// .global dword_80790F0
// .global dword_80790F0

.include "data/dat17.inc"
// .global dword_80794AC
// .global dword_80794EC

.include "data/dat18.inc"
// .global off_807C974


/* Undeclared Symbols */
.equ unk_2037800, 0x2037800
.equ dword_8618DFC, 0x8618DFC

.endif // INC_ASM_ASM17
