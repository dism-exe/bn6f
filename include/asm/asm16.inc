.ifndef INC_ASM_ASM16
.equ INC_ASM_ASM16, 0

/* Public Symbols */
.global sub_8077D00
.global sub_8077D8A
.global sub_8077DE0
.global sub_8077E60
.global sub_8077E84


/* External Symbols */
.include "asm/asm38.inc"
// .global nullsub_38

.include "asm/asm00_0.inc"
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
// .global sub_803037C
// .global sub_8030472
// .global sub_80304E8
// .global sub_8030AA4

.include "asm/asm03_1.inc"
// .global sub_8034FB8

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat15.inc"
// .global off_8077618
// .global off_8077720
// .global byte_8077A10
// .global byte_8077A60
// .global byte_8077AB0
// .global byte_8077B00
// .global byte_8077B30
// .global byte_8077B70
// .global byte_8077BC0
// .global byte_8077BF0
// .global byte_8077C20
// .global byte_8077C70
// .global byte_8077CC0

.include "data/dat16.inc"
// .global byte_8077EA4
// .global byte_8077EF8

.include "data/dat38_60.inc"
// .global off_8617068
// .global dword_8617190
// .global dword_861876C


/* Undeclared Symbols */
// .equ unk_2037800, 0x2037800
// .equ byte_3001960, 0x3001960

.endif // INC_ASM_ASM16
