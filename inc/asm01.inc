.ifndef INC_ASM01
.equ INC_ASM01, 0

/* Public Symbols */
.global sub_801FE00
.global sub_801FE24
.global sub_801FE5E
.global sub_801FE64
.global sub_801FE6C
.global sub_801FEE8
.global loc_801FEEE
.global sub_80200A4
.global sub_8020134
.global sub_8020140
.global sub_802015E
.global off_8020170
.global off_8020174
.global off_8020178
.global off_802017C
.global off_8020180
.global off_8020184
.global off_8020188
.global off_802018C
.global off_8020190
.global off_80201E4
.global pt_8020240
.global pt_802029C
.global off_80202F8


/* External Symbols */
.include "asm37_0.inc"
// .global sub_813D60C
// .global sub_813D66C

.include "asm03_0.inc"
// .global get_802D246 // () -> int
// .global sub_802F164 // (int a1, int a2) -> zf
// .global sub_803C620
// .global sub_803DCE8
// .global sub_803DE88
// .global sub_803DEB4
// .global sub_803EA2C
// .global sub_803EA60
// .global sub_803F524
// .global sub_803F740

.include "asm37_1.inc"
// .global sub_8144D04

.include "asm00.inc"
// .global CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
// .global sub_8000900 // (int a1, int a2) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
// .global sub_800A0D6


/* Undeclared Symbols */
.equ unk_2036120, 0x2036120
.equ word_203614C, 0x203614C
.equ unk_20362F0, 0x20362F0
.equ word_203631C, 0x203631C
.equ word_2036780, 0x2036780
.equ word_2036782, 0x2036782
.equ byte_2036784, 0x2036784
.equ byte_2036786, 0x2036786
.equ dword_2036788, 0x2036788
.equ word_203678C, 0x203678C
.equ unk_2038160, 0x2038160
.equ byte_2038161, 0x2038161
.equ unk_20399F0, 0x20399F0
.equ word_20399F2, 0x20399F2
.equ byte_20399F4, 0x20399F4
.equ byte_20399F6, 0x20399F6
.equ dword_20399F8, 0x20399F8
.equ word_20399FC, 0x20399FC
.equ unk_2039A00, 0x2039A00
.equ word_2039A02, 0x2039A02
.equ byte_2039A04, 0x2039A04
.equ byte_2039A06, 0x2039A06
.equ dword_2039A08, 0x2039A08
.equ word_2039A0C, 0x2039A0C
.equ dword_203CBE0, 0x203CBE0
.equ dword_203F4A0, 0x203F4A0
.equ dword_203F5A0, 0x203F5A0
.equ dword_203F7D8, 0x203F7D8
.equ dword_203F7D8, 0x203F7D8
.equ dword_203F7D8, 0x203F7D8
.equ dword_203F7D8, 0x203F7D8
.equ off_80B1B7C, 0x80B1B7C
.equ off_80B1ED8, 0x80B1ED8
.equ off_80B23C8, 0x80B23C8
.equ off_80B29CC, 0x80B29CC
.equ off_80B2EDC, 0x80B2EDC
.equ off_80B36BC, 0x80B36BC
.equ off_80B3970, 0x80B3970
.equ off_80B41E4, 0x80B41E4
.equ off_80B4AB8, 0x80B4AB8
.equ off_80B4AF8, 0x80B4AF8
.equ off_80B4B38, 0x80B4B38
.equ off_80B5A0C, 0x80B5A0C
.equ off_80B5A4C, 0x80B5A4C
.equ off_80B62F8, 0x80B62F8
.equ off_80B66A8, 0x80B66A8
.equ off_80B6C20, 0x80B6C20
.equ off_80B71D4, 0x80B71D4
.equ off_80B79C0, 0x80B79C0

.endif // INC_ASM01
