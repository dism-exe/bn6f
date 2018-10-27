.ifndef INC_ASM_ASM13
.equ INC_ASM_ASM13, 0

/* Public Symbols */
.global sub_806FC08
.global sub_806FCF8
.global sub_806FD54
.global sub_806FF08
.global sub_806FFDA


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global sub_80019D0
// .global locret_8001AB4
// .global sub_8002354

.include "asm/sprite.inc"
// .global sub_80028D4
// .global sub_8002906

.include "asm/asm00_1.inc"
// .global sub_8003570

.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global sub_802FF4C
// .global sub_803037C
// .global loc_8030472
// .global sub_80304E8
// .global sub_8030AA4

.include "asm/asm03_1.inc"
// .global sub_8034FB8

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat11.inc"
// .global byte_806D820

.include "data/dat12.inc"
// .global off_806FA98

.include "data/dat13.inc"
// .global byte_8070034
// .global dword_8070074
// .global dword_80700B4
// .global dword_80700CC
// .global dword_80700E4
// .global byte_80700FC
// .global dword_8070114
// .global dword_807012C
// .global dword_8070144
// .global dword_8070184
// .global dword_807019C
// .global dword_80701B4
// .global dword_80701CC
// .global dword_80701E4
// .global byte_80701FC
// .global dword_8070214

.include "data/dat38_60.inc"
// .global off_8616598


/* Undeclared Symbols */
// .equ unk_2037800, 0x2037800

.endif // INC_ASM_ASM13
