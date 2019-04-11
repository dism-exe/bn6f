	.ifndef INC_ASM_ASM25
	.equ INC_ASM_ASM25, 0

/* Public Symbols */
	.global sub_808FE34
	.global sub_808FE74
	.global sub_808FEA4
	.global off_8090000


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global sub_8001172
// .global sub_800118A

	.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_update
// .global sprite_load // (int a1, int a2, int a3) ->
// .global sprite_setAnimation // (u8 a1) -> void

	.include "asm/asm00_1.inc"
// .global sprite_noShadow // () -> void
// .global sub_8003914
// .global sub_8003940
// .global sub_80039D4
// .global SpawnOverworldMapObject
// .global IsScreenFadeActive // () -> zf

	.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global SetEventFlag
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global ClearEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
// .global sub_80301B2
// .global sub_80301DC

	.include "asm/asm03_1.inc"
// .global init_s_02011C50_8036E90

	.include "asm/asm03_2.inc"
// .global sub_8046818
// .global sub_8046854
// .global sub_80468BA
// .global sub_80468C6

	.include "data/dat24.inc"
// .global off_808F5D4
// .global byte_808F668
// .global byte_808F67C
// .global byte_808F690
// .global byte_808F6EC
// .global byte_808F728
// .global byte_808F748
// .global byte_808F788

	.include "asm/asm28_0.inc"
// .global sub_809E13C
// .global sub_809E188
// .global sub_809E1AE
// .global sub_809E230
// .global sub_809E23C
// .global sub_809E248
// .global sub_809E254
// .global sub_809E2AE
// .global sub_809E2B8
// .global sub_809E2FC
// .global loc_809E2FE
// .global sub_809E304
// .global loc_809E306
// .global sub_809E312
// .global loc_809E314
// .global sub_809E3B2
// .global sub_809E3C4

	.include "asm/asm32.inc"
// .global sub_811EBE0

	.include "asm/reqBBS.inc"
// .global reqBBS_81409E4
// .global reqBBS_setFlag_e17b0f7_8140A00
// .global reqBBS_clearFlag_8140A0C

	.include "asm/asm37_1.inc"
// .global byte_81434E4
// .global byte_814350C
// .global byte_814352C
// .global byte_8143564
// .global byte_814359C
// .global byte_81435BA
// .global byte_81435D2
// .global byte_81435FC
// .global byte_8143628
// .global byte_8143646
// .global byte_814365E
// .global byte_8143688


/* Undeclared Symbols */
// .equ unk_2000310, 0x2000310
// .equ byte_2000312, 0x2000312
// .equ byte_2000314, 0x2000314
// .equ byte_2000315, 0x2000315
// .equ byte_2000318, 0x2000318
// .equ byte_200031C, 0x200031C
// .equ byte_200031E, 0x200031E
// .equ byte_200031F, 0x200031F
// .equ byte_2000320, 0x2000320
// .equ byte_2000321, 0x2000321
// .equ word_2000322, 0x2000322
// .equ dword_2000324, 0x2000324
// .equ dword_2000324, 0x2000324
// .equ dword_2000324, 0x2000324
// .equ byte_2000328, 0x2000328
// .equ byte_200032C, 0x200032C
// .equ dword_2000330, 0x2000330

	.endif // INC_ASM_ASM25
