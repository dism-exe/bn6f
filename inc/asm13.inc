.ifndef INC_ASM13
.equ INC_ASM13, 0

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


/* Undeclared Symbols */
.equ unk_2037800, 0x2037800
.equ unk_806D820, 0x806D820
.equ off_806FA98, 0x806FA98
// .global dword_8070034
.equ dword_8070074, 0x8070074
.equ dword_80700B4, 0x80700B4
.equ dword_80700CC, 0x80700CC
.equ dword_80700E4, 0x80700E4
.equ dword_80700FC, 0x80700FC
.equ dword_8070114, 0x8070114
.equ dword_807012C, 0x807012C
.equ dword_8070144, 0x8070144
.equ dword_8070184, 0x8070184
.equ dword_807019C, 0x807019C
.equ dword_80701B4, 0x80701B4
.equ dword_80701CC, 0x80701CC
.equ dword_80701E4, 0x80701E4
.equ dword_80701FC, 0x80701FC
.equ dword_8070214, 0x8070214
.equ off_8616598, 0x8616598

.endif // INC_ASM13
