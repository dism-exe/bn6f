	.ifndef INC_DATA_DAT26
	.equ INC_DATA_DAT26, 0

/* Public Symbols */
	.global byte_8092A98
	.global byte_8092DE8
	.global byte_809326C
	.global byte_8093358
	.global byte_80933B8
	.global byte_8093A64
	.global byte_8093B60


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global sound_play
// .global calcAngle_800117C

	.include "asm/asm00_1.inc"
// .global SpawnOverworldMapObject

	.include "asm/asm03_0.inc"
// .global SetEventFlag
// .global sub_80302A8

	.include "asm/chatbox.inc"
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void

	.include "asm/asm03_2.inc"
// .global sub_80468C6
// .global sub_80468EC

	.include "asm/asm28_0.inc"
// .global sub_809E13C
// .global loc_809E1A4
// .global sub_809E1AE
// .global sub_809E1BC
// .global sub_809E248
// .global sub_809E254
// .global sub_809E2AE
// .global sub_809E2B8

	.include "asm/asm37_1.inc"
// .global sub_8143B5E
// .global sub_8143BB0
// .global sub_8143DBC
// .global sub_8143DEA
// .global sub_8143E68
// .global sub_8143EA4
// .global sub_8143EB0
// .global sub_8143EDC
// .global sub_8143F68
// .global sub_8143F72
// .global sub_8143FAA
// .global sub_8143FC4
// .global sub_8144010


/* Undeclared Symbols */
	.equ LCDControl, 0x4000000
	.equ Channel3WavePatternRAM_2banks___, 0x4000090
	.equ unk_4000190, 0x4000190

	.endif // INC_DATA_DAT26
