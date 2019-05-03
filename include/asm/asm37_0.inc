	.ifndef INC_ASM_ASM37_0
	.equ INC_ASM_ASM37_0, 0

/* Public Symbols */
	.global sub_813B768
	.global sub_813B780
	.global sub_813B7A0
	.global sub_813B84C
	.global sub_813B920
	.global sub_813B928
	.global zeroFill_813B934
	.global sub_813B950
	.global sub_813B9B4
	.global sub_813B9C4
	.global sub_813B9E0
	.global sub_813B9FC
	.global sub_813BA08
	.global sub_813BA48
	.global sub_813BA64
	.global sub_813BA80
	.global sub_813BAA8
	.global sub_813BAC4
	.global sub_813BAEC
	.global sub_813BB68
	.global sub_813BBD4
	.global sub_813BF1C
	.global sub_813BF60
	.global sub_813BFB8
	.global sub_813C030 // () -> void
	.global sub_813C06C
	.global sub_813C1C0
	.global sub_813C324
	.global sub_813C334
	.global sub_813C3AC
	.global sub_813D41C
	.global sub_813D48C
	.global sub_813D5C8
	.global sub_813D5D0
	.global sub_813D5DC
	.global sub_813D60C
	.global sub_813D638
	.global sub_813D648
	.global sub_813D66C
	.global sub_813D750
	.global sub_813D760
	.global sub_813D78C
	.global sub_813D7B8
	.global sub_813D8C4
	.global sub_813D8D0
	.global sub_813D90C
	.global sub_813D91C
	.global sub_813D924
	.global sub_813D934
	.global sub_813D94C
	.global sub_813D960
	.global sub_813D978
	.global sub_813D98C
	.global sub_813D9A0
	.global sub_813DA84
	.global sub_813DA94
	.global sub_813DB24
	.global byte_813DBC0
	.global byte_813DBDC
	.global tileIds_813DBE4
	.global byte_813DEC4
	.global tileIds_813DF44
	.global off_813DF74
	.global off_813E04C


/* External Symbols */
	.include "asm/start.inc"
// .global start_800027C

	.include "asm/asm00_0.inc"
// .global PlaySoundEffect
// .global ZeroFillByByte // (void *mem, int size) -> void
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void
// .global ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
// .global getPETNaviSelect // () -> u8
// .global setPETNaviSelect
// .global GetRNG2 // () -> int

	.include "asm/asm00_2.inc"
// .global navicust_801379E // (int a1, int a2, int a3) -> void
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global SetField16ToSelectedS20047CCStruct
// .global GetField16FromSelectedS20047CCStruct

	.include "asm/asm02.inc"
// .global getChip8021DA8 // (int chip_idx) -> ChipData*
// .global split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)

	.include "asm/asm03_0.inc"
// .global sub_802D064
// .global sub_802D158
// .global sub_802D15E
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global SetEventFlag
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global SetEventFlagRange // (u16 entryFlagBitfield) -> void
// .global ClearEventFlagRange // (u16 entryFlagBitfield) -> void

	.include "asm/asm03_1.inc"
// .global sub_803CB00
// .global sub_803CE28
// .global sub_803CE44
// .global sub_803CED4
// .global sub_803D108
// .global sub_803DD30

	.include "asm/asm32.inc"
// .global sub_8121154

	.include "asm/asm36.inc"
// .global sub_8136C24

	.include "data/dat36.inc"
// .global StructArr_813944C
// .global byte_813B1EC
// .global byte_813B2CD
// .global byte_813B3AE
// .global byte_813B3AE
// .global byte_813B3AE
// .global byte_813B3AE
// .global byte_813B522

	.include "asm/libs.inc"
// .global sub_81465BC
// .global sub_814692C
// .global sub_8146B70
// .global sub_8147B3C
// .global sub_8148884
// .global sub_8148FC0
// .global sub_8149718

	.include "data/dat38_92.inc"
// .global byte_87E78A8
// .global byte_87E7B30
// .global byte_87E9320
// .global byte_87E9578
// .global byte_87EA788
// .global byte_87EA9F4
// .global byte_87EBAB8
// .global byte_87EBDDC
// .global byte_87ECF34
// .global byte_87ED240


/* Undeclared Symbols */
// .equ unk_2000090, 0x2000090
// .equ byte_2006C50, 0x2006C50
// .equ unk_2006C88, 0x2006C88
// .equ unk_2006CC0, 0x2006CC0
// .equ unk_2006CF8, 0x2006CF8
// .equ byte_2006D30, 0x2006D30
// .equ byte_2006D68, 0x2006D68
// .equ byte_2006DA0, 0x2006DA0
// .equ byte_2006DD8, 0x2006DD8
// .equ byte_2009470, 0x2009470
// .equ unk_2009480, 0x2009480
// .equ byte_20096D8, 0x20096D8
// .equ eCamera, 0x2009980
// .equ eCamera, 0x2009980
// .equ eCamera, 0x2009980
// .equ eCamera, 0x2009980
// .equ dword_2009A28, 0x2009A28
// .equ unk_2009F00, 0x2009F00
// .equ byte_200AF80, 0x200AF80
// .equ byte_200AF81, 0x200AF81
// .equ byte_200AF82, 0x200AF82
// .equ byte_200AF83, 0x200AF83
// .equ byte_200AF85, 0x200AF85
// .equ dword_200B1B0, 0x200B1B0
// .equ eStruct200BC30, 0x200BC30
// .equ byte_200BC3E, 0x200BC3E
// .equ byte_200BC50, 0x200BC50
// .equ byte_200BC51, 0x200BC51
// .equ byte_200BC52, 0x200BC52
// .equ byte_200BC53, 0x200BC53
// .equ byte_200BC54, 0x200BC54
// .equ byte_200BC55, 0x200BC55
// .equ byte_200BC56, 0x200BC56
// .equ byte_200BC57, 0x200BC57
// .equ word_200BC58, 0x200BC58
// .equ word_200BC5A, 0x200BC5A
// .equ byte_200DD10, 0x200DD10
// .equ byte_200DD11, 0x200DD11
// .equ byte_200DD14, 0x200DD14
// .equ eStruct200F360, 0x200F360
// .equ unk_200FFF0, 0x200FFF0
// .equ unk_2010150, 0x2010150
// .equ byte_20101B4, 0x20101B4
// .equ byte_2010290, 0x2010290
// .equ eTextScript201BA00, 0x201BA00
// .equ byte_201BA40, 0x201BA40
// .equ byte_201BC40, 0x201BC40
// .equ byte_201BC80, 0x201BC80
// .equ reqBBS_requestNames_textualData, 0x2025A04
// .equ reqBBS_requestInfo_textOffsets, 0x2029A04
// .equ eStruct2036780, 0x2036780
// .equ dword_2036788, 0x2036788
// .equ unk_20399F0, 0x20399F0
// .equ unk_2039A00, 0x2039A00
// .equ byte_203F7D8, 0x203F7D8
// .equ byte_203F7D8, 0x203F7D8
// .equ unk_30019E0, 0x30019E0

	.endif // INC_ASM_ASM37_0
