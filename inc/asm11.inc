.ifndef INC_ASM11
.equ INC_ASM11, 0

/* Public Symbols */
.global off_80692F8
.global dword_8069304
.global off_8069310
.global off_806931C
.global off_806A260
.global dword_806A26C
.global off_806A278
.global off_806A284
.global off_806A810
.global off_806AE08
.global off_806AE1C
.global off_806AE30
.global off_806AE44


/* External Symbols */
.include "asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global loc_80019D0
// .global loc_80019FE
// .global loc_8001A6A
// .global locret_8001AB4
// .global sub_8001B1C
// .global sub_8002354

.include "sprite.inc"
// .global sub_80028D4
// .global sub_8002906

.include "asm00_1.inc"
// .global sub_8003570

.include "asm03_0.inc"
// .global setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global sub_802FF4C
// .global sub_803037C
// .global loc_8030472
// .global sub_80304E8
// .global sub_8030AA4
// .global sub_8034FB8

.include "chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "asm10.inc"
// .global off_8067754
// .global off_8067914
// .global off_8067944
// .global off_80679A4
// .global off_80679D4
// .global off_8067A14
// .global off_8067A44
// .global off_8067A6C
// .global off_8067A9C
// .global off_8067ACC


/* Undeclared Symbols */
.equ unk_2037800, 0x2037800
.equ word_3001960, 0x3001960
.equ unk_3001AC0, 0x3001AC0
.equ unk_3001AE0, 0x3001AE0
.equ LCDControl, 0x4000000
.equ off_8066048, 0x8066048
.equ dword_8066220, 0x8066220
.equ dword_8066220, 0x8066220
.equ dword_8066220, 0x8066220
.equ dword_8066220, 0x8066220
.equ dword_8066220, 0x8066220
.equ off_8068CCC, 0x8068CCC
.equ off_8068D18, 0x8068D18
.equ dword_8068D1C, 0x8068D1C
.equ dword_8068D1C, 0x8068D1C
.equ dword_8068D1C, 0x8068D1C
.equ dword_8068D1C, 0x8068D1C
.equ dword_8068D1C, 0x8068D1C
.equ dword_8068D1C, 0x8068D1C
.equ dword_8068D1C, 0x8068D1C
// .global dword_806C5D0
.equ dword_806C638, 0x806C638
.equ dword_806C68C, 0x806C68C
.equ dword_806C6E0, 0x806C6E0
.equ dword_806C748, 0x806C748
.equ off_8610B04, 0x8610B04
.equ off_86116C8, 0x86116C8
.equ off_8612A28, 0x8612A28
.equ off_8613608, 0x8613608
.equ dword_8613DDC, 0x8613DDC
.equ off_8614444, 0x8614444
.equ off_8614DE0, 0x8614DE0
.equ off_8615360, 0x8615360
.equ off_861578C, 0x861578C
.equ off_8615BA4, 0x8615BA4
.equ off_861602C, 0x861602C

.endif // INC_ASM11
