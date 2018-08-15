.ifndef INC_START
.equ INC_START, 0

/* Public Symbols */
.global start_
.global dword_80001F4
.global start_800023C // () -> void
.global start_800024C
.global start_800027C
.global start_8000288


/* External Symbols */
.include "main.inc"
// .global main_

.include "asm00_1.inc"
// .global CpuSet_toolKit
// .global sub_8006C22


/* Undeclared Symbols */
.equ timer_2000000, 0x2000000
.equ byte_20081B0, 0x20081B0
.equ dword_2009930, 0x2009930
.equ dword_200A870, 0x200A870
.equ word_3000000, 0x3000000
.equ loc_3005B00, 0x3005B00
.equ sub_3005DA0, 0x3005DA0
.equ sub_3005DD4, 0x3005DD4
.equ sub_3005DEC, 0x3005DEC
.equ sub_3005E02, 0x3005E02
.equ sub_3005E18, 0x3005E18
.equ sub_3005E2C, 0x3005E2C
.equ loc_3005E60, 0x3005E60
.equ loc_3005E6A, 0x3005E6A
.equ loc_3007FFC, 0x3007FFC
.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
.equ KeyInterruptControl, 0x4000132
.equ GamePakWaitstateControl, 0x4000204
.equ loc_81D6000, 0x81D6000

.endif // INC_START
