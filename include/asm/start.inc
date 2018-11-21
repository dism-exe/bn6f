.ifndef INC_ASM_START
.equ INC_ASM_START, 0

/* Public Symbols */
.global start_
.global start_800023C // () -> void
.global start_800024C
.global start_800027C
.global start_8000288


/* External Symbols */
.include "asm/asm38.inc"
// .global sub_3005B00
// .global sub_3005DA0
// .global sub_3005DD4
// .global sub_3005DEC
// .global sub_3005E02
// .global sub_3005E2C
// .global sub_3005E60
// .global sub_3005E6A

.include "asm/main.inc"
// .global main_

.include "asm/asm00_1.inc"
// .global CpuSet_toolKit // () -> void
// .global sub_8006C22


/* Undeclared Symbols */
// .equ timer_2000000, 0x2000000
// .equ byte_20081B0, 0x20081B0
// .equ dword_2009930, 0x2009930
// .equ dword_200A870, 0x200A870
// .equ unk_3000000, 0x3000000
// .equ iStack, 0x3007E00
// .equ byte_3007F60, 0x3007F60
// .equ byte_3007FE0, 0x3007FE0
// .equ unk_3007FFC, 0x3007FFC
.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
.equ KeyInterruptControl, 0x4000132
.equ GamePakWaitstateControl, 0x4000204
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000

.endif // INC_ASM_START
