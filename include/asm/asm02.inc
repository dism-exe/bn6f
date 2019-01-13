	.ifndef INC_ASM_ASM02
	.equ INC_ASM_ASM02, 0

/* Public Symbols */
	.global getChip_8021DA8 // (int chip_idx) -> ChipData*
	.global sub_8021AB4
	.global split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	.global sub_8021B2A
	.global sub_8021B78 // (int idx, int searchItem, int off) -> void*
	.global sub_8021B92 // (int idx, int searchItem, int off) -> void*
	.global GetChipCountOfCode
	.global GetTotalChipCount
	.global sub_8021C02
	.global sub_8021C68
	.global chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	.global sub_8021CA8
	.global sub_8021D08
	.global sub_8021D14
	.global sub_8021D36


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global ZeroFillByHalfword
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void

	.include "asm/asm00_1.inc"
// .global modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
// .global sub_8006E84
// .global sub_8006EA4

	.include "data/ChipDataArr.inc"
// .global ChipDataArr_8021DA8

	.include "asm/asm03_0.inc"
// .global SetEventFlag

	.include "asm/asm36.inc"
// .global sub_81376B8


/* Undeclared Symbols */
// .equ byte_20007D6, 0x20007D6
// .equ byte_200083A, 0x200083A
// .equ unk_2000AF0, 0x2000AF0
// .equ unk_2001184, 0x2001184
// .equ unk_200119C, 0x200119C
// .equ unk_20018EC, 0x20018EC
// .equ unk_203A0A0, 0x203A0A0

	.endif // INC_ASM_ASM02
