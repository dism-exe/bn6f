.ifndef INC_ASM02
.equ INC_ASM02, 0

/* Public Symbols */
.global refIndex_8021DA8 // (int idx) -> void*
.global sub_8021AB4
.global sub_8021AE0
.global sub_8021B2A
.global sub_8021B78 // (int idx, int searchItem, int off) -> void*
.global sub_8021B92 // (int idx, int searchItem, int off) -> void*
.global sub_8021BC0
.global sub_8021BD8
.global sub_8021C02
.global sub_8021C68
.global computeItemRef_Toolkit_unk4C // (int idx, int searchItem, int off) -> void*
.global sub_8021CA8
.global sub_8021D08
.global sub_8021D14
.global sub_8021D36


/* External Symbols */
.include "asm03_0.inc"
// .global sub_802F114 // (int a1) -> void

.include "asm36.inc"
// .global sub_81376B8

.include "asm00.inc"
// .global sub_80008C0
// .global CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
// .global CpuSet_800093C // (void *src, void *dest, int mode) -> void
// .global modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
// .global sub_8006E84
// .global sub_8006EA4


/* Undeclared Symbols */
.equ unk_20007D6, 0x20007D6
.equ unk_200083A, 0x200083A
.equ unk_2000AF0, 0x2000AF0
.equ unk_2001184, 0x2001184
.equ unk_200119C, 0x200119C
.equ unk_20018EC, 0x20018EC
.equ unk_203A0A0, 0x203A0A0
.equ dword_8021DA8, 0x8021DA8

.endif // INC_ASM02
