.ifndef INC_ASM22
.equ INC_ASM22, 0

/* Public Symbols */


/* External Symbols */
.include "asm00_0.inc"
// .global sub_800060A

.include "asm00_1.inc"
// .global sub_80047E0

.include "asm03_0.inc"
// .global setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
// .global isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
// .global init_s_02011C50_8036E90

.include "reqBBS.inc"
// .global reqBBS_81409F4


/* Undeclared Symbols */
.equ byte_2011A9A, 0x2011A9A
.equ byte_2011A9B, 0x2011A9B
.equ dword_8086260, 0x8086260
.equ dword_8086260, 0x8086260
.equ dword_8086260, 0x8086260
.equ dword_8086260, 0x8086260
.equ dword_8086A54, 0x8086A54
.equ dword_8086A54, 0x8086A54
.equ dword_8086A54, 0x8086A54
.equ dword_8086D5C, 0x8086D5C
.equ unk_8086D74, 0x8086D74
// .global dword_80871D8

.endif // INC_ASM22
