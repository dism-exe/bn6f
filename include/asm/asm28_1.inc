.ifndef INC_ASM_ASM28_1
.equ INC_ASM_ASM28_1, 0

/* Public Symbols */
.global sub_809F526
.global sub_809F5B0
.global sub_809F5FC
.global sub_809F612
.global sub_809F638
.global getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
.global sub_809F656 // (void* a1) -> int
.global sub_809F68C
.global off_809F6AC
.global dword_809F6B0
.global dword_809F6B8
.global byte_809F6CC
.global byte_809F6EC
.global byte_809F71C
.global byte_809F7E4
.global byte_809F880
.global byte_809F889
.global byte_809F8A5
.global byte_809F8B3
.global byte_809F8CA
.global sub_809F90C
.global sub_809F922
.global sub_809F942
.global sub_809F9BE
.global sub_809F9C8
.global sub_809F9DC
.global sub_809FAF4
.global sub_809FC1C
.global sub_809FC96
.global sub_809FE5E
.global off_809FEA0


/* External Symbols */
.include "asm/asm00_0.inc"
// .global CpuFastSet_8000900 // (int a1, int a2) -> void
// .global initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
// .global sub_8000E3A
// .global getPETNaviSelect // () -> u8

.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_setAnimation // (u8 a1) -> void

.include "asm/asm00_1.inc"
// .global sub_80037AC

.include "asm/asm00_2.inc"
// .global sub_8013704

.include "asm/asm03_0.inc"
// .global ClearEventFlag // (u16 entryFlagBitfield) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global sub_8031612

.include "asm/chatbox.inc"
// .global chatbox_8045EFC

.include "data/dat28.inc"
// .global dword_809FEE4
// .global dword_809FFE8
// .global dword_80A3360
// .global off_80A336C
// .global off_80A3370
// .global off_80A3428
// .global dword_80A3430


/* Undeclared Symbols */
// .equ byte_2000210, 0x2000210
// .equ byte_2000212, 0x2000212
// .equ byte_2000213, 0x2000213
// .equ word_2000214, 0x2000214
// .equ word_2000214, 0x2000214
// .equ word_2000216, 0x2000216
// .equ dword_2000218, 0x2000218
// .equ dword_2000220, 0x2000220
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0

.endif // INC_ASM_ASM28_1
