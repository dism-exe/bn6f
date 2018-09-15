.ifndef INC_ASM12
.equ INC_ASM12, 0

/* Public Symbols */


/* External Symbols */
.include "asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global loc_80019D0
// .global locret_8001AB4
// .global sub_8002354

.include "sprite.inc"
// .global sub_80028D4
// .global sub_8002906

.include "asm00_1.inc"
// .global loc_8003570

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


/* Undeclared Symbols */
.equ unk_2037800, 0x2037800
.equ off_806D6B0, 0x806D6B0
.equ unk_806D820, 0x806D820
// .global dword_806DD2C
.equ dword_806DD44, 0x806DD44
.equ dword_806DD84, 0x806DD84
.equ dword_806DD9C, 0x806DD9C
.equ dword_806DDB4, 0x806DDB4
.equ dword_806DDCC, 0x806DDCC
.equ dword_806DDE4, 0x806DDE4
.equ dword_806DDFC, 0x806DDFC
.equ dword_806DE3C, 0x806DE3C
.equ dword_806DE54, 0x806DE54
.equ dword_806DE80, 0x806DE80
.equ dword_806DEC0, 0x806DEC0
.equ dword_806DEEC, 0x806DEEC
.equ dword_806DF18, 0x806DF18
.equ dword_806DF44, 0x806DF44
.equ dword_806DF70, 0x806DF70
.equ off_8616598, 0x8616598

.endif // INC_ASM12
