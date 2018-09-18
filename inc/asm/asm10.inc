.ifndef INC_ASM_ASM10
.equ INC_ASM_ASM10, 0

/* Public Symbols */
.global off_80665A4
.global dword_80665AC
.global off_80665B4
.global off_80665BC
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
.global dword_8067DD4
.global off_8067DE0
.global pt_8067DEC


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global loc_80019FE
// .global loc_8001A6A
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

.include "data/dat09.inc"
// .global off_8066020
// .global off_8066048
// .global dword_8066220
// .global dword_8066220
// .global dword_8066220
// .global dword_8066220

.include "data/dat10.inc"
// .global dword_8067DF8
// .global dword_8067E08
// .global dword_8067E18
// .global dword_8067E2C
// .global dword_8067F24
// .global dword_8067F74
// .global off_8068044
// .global off_8068400
// .global off_8068734


/* Undeclared Symbols */
.equ unk_2037800, 0x2037800
.equ unk_3001980, 0x3001980
.equ unk_3001A20, 0x3001A20
.equ unk_3001A60, 0x3001A60
.equ unk_3001A80, 0x3001A80
.equ unk_3001AA0, 0x3001AA0
.equ unk_3001AC0, 0x3001AC0
.equ unk_3001AE0, 0x3001AE0
.equ dword_859E6D0, 0x859E6D0
.equ off_8610B04, 0x8610B04
.equ off_86116C8, 0x86116C8
.equ dword_8611B68, 0x8611B68

.endif // INC_ASM_ASM10
