.ifndef INC_ASM_ASM22
.equ INC_ASM_ASM22, 0

/* Public Symbols */


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_800060A

.include "asm/asm00_1.inc"
// .global sub_80047E0

.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf

.include "asm/asm03_1.inc"
// .global init_s_02011C50_8036E90

.include "data/dat21.inc"
// .global dword_8086260
// .global dword_8086260
// .global dword_8086260
// .global dword_8086260
// .global dword_8086A54
// .global dword_8086A54
// .global dword_8086A54
// .global dword_8086D5C
// .global byte_8086D74

.include "data/dat22.inc"
// .global byte_80871D8

.include "asm/reqBBS.inc"
// .global reqBBS_81409F4


/* Undeclared Symbols */
// .equ byte_2011A9A, 0x2011A9A
// .equ byte_2011A9B, 0x2011A9B

.endif // INC_ASM_ASM22
