.ifndef INC_ASM_ASM10
.equ INC_ASM_ASM10, 0

/* Public Symbols */
.global off_80665A4
.global off_80665AC
.global off_80665B4
.global off_80665BC
.global byte_80665E4
.global off_8067754
.global off_8067914
.global off_8067944
.global off_80679A4
.global off_80679D4
.global off_8067A14
.global off_8067A44
.global off_8067A6C
.global off_8067A9C
.global off_8067ACC
.global off_8067DC8
.global off_8067DD4
.global off_8067DE0
.global pt_8067DEC


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global sub_80019FE
// .global sub_8001A6A
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

.include "data/dat09.inc"
// .global off_8066020
// .global off_8066048
// .global byte_80662B8
// .global byte_80662E8
// .global byte_8066328
// .global byte_8066368

.include "data/dat10.inc"
// .global dword_8067DF8
// .global dword_8067E08
// .global byte_8067E18
// .global byte_8067E2C
// .global byte_8067E8D
// .global dword_8067F24
// .global unk_8067F4F
// .global dword_8067F74
// .global unk_8067FDF
// .global off_8068044
// .global off_8068400
// .global off_8068734

.include "asm/asm28_1.inc"
// .global byte_809F6CC

.include "data/dat38_33.inc"
// .global byte_83C09C0
// .global byte_83F0016
// .global byte_83F2C16

.include "data/dat38_60.inc"
// .global dword_859E6D0
// .global off_8610B04
// .global byte_8610C18
// .global unk_8610D64
// .global off_86116C8
// .global byte_861184C
// .global unk_86119C4
// .global dword_8611B68


/* Undeclared Symbols */
.equ unk_2037800, 0x2037800
.equ word_3001960, 0x3001960
.equ unk_3001980, 0x3001980
.equ unk_3001A20, 0x3001A20
.equ unk_3001A60, 0x3001A60
.equ unk_3001A80, 0x3001A80
.equ unk_3001AA0, 0x3001AA0
.equ unk_3001AC0, 0x3001AC0
.equ unk_3001AE0, 0x3001AE0
.equ unk_3005CD9, 0x3005CD9

.endif // INC_ASM_ASM10
