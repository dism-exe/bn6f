.ifndef INC_ASM_ASM27
.equ INC_ASM_ASM27, 0

/* Public Symbols */


/* External Symbols */
.include "asm/asm00_0.inc"
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global decompAndCopyData // (u32 *initRefs) -> void

.include "asm/asm03_0.inc"
// .global sub_80307D8

.include "data/dat38_59.inc"
// .global byte_857CC88


/* Undeclared Symbols */
// .equ byte_200BE70, 0x200BE70
// .equ dword_200BE7C, 0x200BE7C
// .equ unk_2024400, 0x2024400
// .equ unk_2025400, 0x2025400
// .equ unk_2025404, 0x2025404
// .equ unk_2026400, 0x2026400
// .equ unk_2026404, 0x2026404
// .equ byte_3001B00, 0x3001B00
// .global comp_857CCC8
// .global comp_857D43C
// .global comp_857D63C

.endif // INC_ASM_ASM27
