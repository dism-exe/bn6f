	.ifndef INC_ASM_ASM01
	.equ INC_ASM_ASM01, 0

/* Public Symbols */
	.global sub_801FE00
	.global sub_801FE24
	.global sub_801FE5E
	.global sub_801FE64
	.global sub_801FE6C
	.global eStruct203F7D8_getUnk01
	.global sub_801FEEE
	.global sub_80200A4
	.global eStruct2038160_clearStruct
	.global sub_8020140
	.global eStruct2038160_getBattleTerminate01
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
	.include "asm/asm00_0.inc"
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global ZeroFillByEightWords // (int a1, int a2) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void

	.include "asm/asm00_1.inc"
// .global sub_800A0D6

	.include "asm/asm03_0.inc"
// .global sub_802D246 // () -> int
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf

	.include "asm/asm03_1.inc"
// .global sub_803C620
// .global sub_803DCE8
// .global sub_803DE88
// .global sub_803DEB4
// .global sub_803EA2C
// .global eStruct200BC30_getJumpOffset00
// .global notZero_eByte200AD04
// .global sub_803F740

	.include "data/dat30.inc"
// .global off_80B1B7C
// .global off_80B1ED8
// .global off_80B23C8
// .global off_80B29CC
// .global off_80B2EDC
// .global off_80B36BC
// .global off_80B3970
// .global off_80B41E4
// .global off_80B4AB8
// .global off_80B4AF8
// .global off_80B4B38
// .global off_80B5A0C
// .global off_80B5A4C
// .global off_80B62F8
// .global off_80B66A8
// .global off_80B6C20
// .global off_80B71D4
// .global off_80B79C0

	.include "asm/asm37_0.inc"
// .global sub_813D60C
// .global sub_813D66C

	.include "asm/libs.inc"
// .global sub_8144D04


/* Undeclared Symbols */
// .equ unk_2036120, 0x2036120
// .equ word_203614C, 0x203614C
// .equ unk_20362F0, 0x20362F0
// .equ word_203631C, 0x203631C
// .equ eStruct2036780, 0x2036780
// .equ eFlags2036782, 0x2036782
// .equ byte_2036784, 0x2036784
// .equ byte_2036786, 0x2036786
// .equ dword_2036788, 0x2036788
// .equ word_203678C, 0x203678C
// .equ eStruct2038160, 0x2038160
// .equ byte_2038161, 0x2038161
// .equ unk_20399F0, 0x20399F0
// .equ word_20399F2, 0x20399F2
// .equ byte_20399F4, 0x20399F4
// .equ byte_20399F6, 0x20399F6
// .equ dword_20399F8, 0x20399F8
// .equ word_20399FC, 0x20399FC
// .equ unk_2039A00, 0x2039A00
// .equ word_2039A02, 0x2039A02
// .equ byte_2039A04, 0x2039A04
// .equ byte_2039A06, 0x2039A06
// .equ dword_2039A08, 0x2039A08
// .equ word_2039A0C, 0x2039A0C
// .equ dword_203CBE0, 0x203CBE0
// .equ dword_203F4A0, 0x203F4A0
// .equ dword_203F5A0, 0x203F5A0
// .equ eStruct203F7D8, 0x203F7D8
// .equ eStruct203F7D8, 0x203F7D8
// .equ eStruct203F7D8, 0x203F7D8
// .equ eStruct203F7D8, 0x203F7D8

	.endif // INC_ASM_ASM01
