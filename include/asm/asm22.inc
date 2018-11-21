.ifndef INC_ASM_ASM22
.equ INC_ASM_ASM22, 0

/* Public Symbols */
.global sub_8086F18
.global sub_8086F5C
.global sub_8086FA4
.global sub_8087150


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_800060A

.include "asm/asm00_1.inc"
// .global sub_80047E0

.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf

.include "asm/asm03_1.inc"
// .global init_s_02011C50_8036E90

.include "data/dat21.inc"
// .global byte_8086340
// .global byte_8086340
// .global byte_8086340
// .global byte_8086460
// .global byte_8086678
// .global byte_80868C8
// .global off_8086D18
// .global off_8086D1C
// .global byte_8086D2C
// .global byte_8086D5C
// .global byte_8086D74

.include "data/dat22.inc"
// .global unk_80871D8

.include "asm/asm28_0.inc"
// .global sub_809E1AE

.include "asm/reqBBS.inc"
// .global reqBBS_81409F4


/* Undeclared Symbols */
// .equ unk_2011A90, 0x2011A90
// .equ byte_2011A9A, 0x2011A9A
// .equ byte_2011A9B, 0x2011A9B

.endif // INC_ASM_ASM22
