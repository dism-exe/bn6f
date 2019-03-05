	.ifndef INC_ASM_ASM23
	.equ INC_ASM_ASM23, 0

/* Public Symbols */
	.global dword_8089128
	.global byte_80893CC
	.global byte_8089448
	.global byte_8089554


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void
// .global decompAndCopyData // (u32 *initRefs) -> void
// .global getPETNaviSelect // () -> u8
// .global sub_80010D4
// .global sub_8001158 // () -> void
// .global off_8001800

	.include "asm/asm00_1.inc"
// .global sub_8004822
// .global FreeOverworldMapObject
// .global sub_8005D88
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global IsPaletteFadeActive // () -> zf

	.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlag // (u16 entryFlagBitfield) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
// .global sub_80301B2
// .global sub_80301BC
// .global sub_80301D0
// .global sub_80301DC
// .global sub_80303FC

	.include "asm/asm03_1.inc"
// .global sub_8033FC0
// .global sub_8035408
// .global sub_8036E44
// .global sub_8036E78
// .global sub_8036F98
// .global sub_8036FAA

	.include "asm/chatbox.inc"
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global chatbox_8045EDC
// .global chatbox_check_eFlags2009F38
// .global chatbox_8045F4C

	.include "asm/asm03_2.inc"
// .global sub_80468C6
// .global sub_80468EC

	.include "asm/asm28_0.inc"
// .global sub_809E13C
// .global sub_809E2AE
// .global sub_809E2B8

	.include "asm/reqBBS.inc"
// .global reqBBS_clearFlag_8140A0C

	.include "asm/asm37_1.inc"
// .global sub_814216E
// .global sub_8142190
// .global sub_814219C
// .global sub_81421B2
// .global sub_81421C8
// .global sub_81421D0
// .global sub_8142224
// .global sub_814223E
// .global sub_81422B4
// .global sub_81426CE
// .global sub_81427CE
// .global sub_8142896
// .global sub_81428D4
// .global sub_8142990
// .global sub_81429CA
// .global sub_8142A84
// .global sub_8142ADA
// .global sub_8142B58
// .global sub_8142BB6
// .global sub_8142BF4
// .global sub_8142BFA
// .global sub_8142C20
// .global sub_8142C46

	.include "data/dat38_87.inc"
// .global dword_87DE44C


/* Undeclared Symbols */
// .equ byte_30016F0, 0x30016F0
	.equ GeneralLCDStatus_STAT_LYC_, 0x4000004

	.endif // INC_ASM_ASM23
