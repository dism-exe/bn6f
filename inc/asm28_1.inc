.ifndef INC_ASM28_1
.equ INC_ASM28_1, 0

/* Public Symbols */
.global sub_809F526
.global sub_809F5B0
.global sub_809F5FC
.global sub_809F612
.global sub_809F638
.global sub_809F64C
.global sub_809F656
.global sub_809F68C
.global off_809F6AC
.global dword_809F6B0
.global dword_809F6CC
.global sub_809F90C
.global sub_809F922
.global sub_809F942
.global sub_809F9BE
.global sub_809F9C8
.global sub_809F9DC
.global sub_809FAF4
.global sub_809FC1C
.global sub_809FC96
.global off_809FEA0


/* External Symbols */
.include "asm00_0.inc"
// .global CpuFastSet_8000900 // (int a1, int a2) -> void
// .global initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
// .global sub_8000E3A
// .global getPETNaviSelect // () -> u8

.include "sprite.inc"
// .global sprite_loadAnimationData
// .global sprite_setAnimation

.include "asm00_1.inc"
// .global sub_80037AC

.include "asm00_2.inc"
// .global sub_8013704

.include "asm03_0.inc"
// .global loc_802F130
// .global sub_802F164 // (int a1, int a2) -> zf
// .global zf_802F168
// .global sub_8031612

.include "chatbox.inc"
// .global chatbox_8045EFC


/* Undeclared Symbols */
.equ byte_2000210, 0x2000210
.equ byte_2000212, 0x2000212
.equ byte_2000213, 0x2000213
.equ word_2000214, 0x2000214
.equ word_2000214, 0x2000214
.equ word_2000216, 0x2000216
.equ dword_2000218, 0x2000218
.equ dword_2000220, 0x2000220
.equ sReqBBS_GUI, 0x2005780
.equ sReqBBS_GUI, 0x2005780
.equ dword_2005800, 0x2005800
.equ dword_809FEE4, 0x809FEE4
.equ dword_809FFE8, 0x809FFE8
.equ dword_80A3360, 0x80A3360
.equ off_80A336C, 0x80A336C
.equ off_80A3370, 0x80A3370
.equ off_80A3428, 0x80A3428
.equ dword_80A3430, 0x80A3430

.endif // INC_ASM28_1
