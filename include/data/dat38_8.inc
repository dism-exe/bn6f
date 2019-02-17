	.ifndef INC_DATA_DAT38_8
	.equ INC_DATA_DAT38_8, 0

/* Public Symbols */
	.global byte_8264FA0
	.global byte_826FAF0
	.global byte_8278EBC
	.global byte_828324C
	.global dword_828F18C
	.global byte_8296F40
	.global byte_829D818
	.global byte_82A5AF0
	.global byte_82B0690
	.global byte_82BA7BC
	.global byte_82C7550


/* External Symbols */
	.include "asm/start.inc"
// .global GameEntryPoint

	.include "data/dat20.inc"
// .global byte_8080808

	.include "data/dat38_17.inc"
// .global byte_8420000


/* Undeclared Symbols */
// .equ timer_2000000, 0x2000000
// .equ unk_3000000, 0x3000000
	.equ LCDControl, 0x4000000
	.equ unk_8880000, 0x8880000
	.equ dword_8888000, 0x8888000
	.equ dword_8888880, 0x8888880
	.equ dword_8888888, 0x8888888
	.equ dword_89AA800, 0x89AA800
	.equ dword_89AAA80, 0x89AAA80

	.endif // INC_DATA_DAT38_8
