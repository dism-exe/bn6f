.ifndef INC_ASM27
.equ INC_ASM27, 0

/* Public Symbols */


/* External Symbols */
.include "asm00_0.inc"
// .global CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
// .global CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global decompAndCopyData_8000B30 // (u32 *initRefs) -> void

.include "asm03_0.inc"
// .global sub_80307D8


/* Undeclared Symbols */
.equ byte_200BE70, 0x200BE70
.equ dword_200BE7C, 0x200BE7C
.equ unk_2025400, 0x2025400
.equ unk_2025404, 0x2025404
.equ unk_2026400, 0x2026400
.equ unk_2026404, 0x2026404
.equ unk_3001B00, 0x3001B00
.equ dword_857CC88, 0x857CC88

.endif // INC_ASM27
