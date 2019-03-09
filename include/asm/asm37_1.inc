	.ifndef INC_ASM_ASM37_1
	.equ INC_ASM_ASM37_1, 0

/* Public Symbols */
	.global sub_814187C
	.global sub_81418E4
	.global sub_81418F0
	.global sub_81419A0
	.global sub_8142050
	.global sub_8142068
	.global sub_8142080
	.global sub_81420B0
	.global sub_81420C8
	.global sub_81420F0
	.global sub_8142134
	.global sub_814216E
	.global sub_8142184
	.global sub_8142190
	.global sub_814219C
	.global sub_81421B2
	.global sub_81421C8
	.global sub_81421D0
	.global sub_81421D8
	.global sub_81421E0
	.global sub_8142204
	.global sub_8142224
	.global sub_814223E
	.global sub_8142248
	.global sub_814227A
	.global sub_81422B4
	.global sub_81426CE
	.global sub_81427A4
	.global sub_81427CE
	.global sub_8142816
	.global sub_8142868
	.global sub_8142896
	.global sub_81428C2
	.global sub_81428D4
	.global sub_8142990
	.global sub_81429CA
	.global sub_8142A84
	.global sub_8142ADA
	.global sub_8142B04
	.global sub_8142B58
	.global sub_8142BB6
	.global sub_8142BF4
	.global sub_8142BFA
	.global sub_8142C20
	.global sub_8142C46
	.global sub_8142C94
	.global sub_8142CB0
	.global sub_8142CC8
	.global sub_8142D4C
	.global sub_8143088
	.global sub_81430B6
	.global sub_8143198
	.global sub_81431F8
	.global sub_8143204
	.global sub_8143220
	.global sub_8143294
	.global sub_81433DA
	.global sub_81433E4
	.global sub_8143482
	.global byte_81434E4
	.global byte_814350C
	.global byte_814352C
	.global byte_8143564
	.global byte_814359C
	.global byte_81435BA
	.global byte_81435D2
	.global byte_81435FC
	.global byte_8143628
	.global byte_8143646
	.global byte_814365E
	.global byte_8143688
	.global byte_81436B4
	.global byte_81436C4
	.global byte_81436E4
	.global byte_8143704
	.global byte_8143724
	.global byte_814375C
	.global byte_8143794
	.global byte_81437CC
	.global sub_8143B5E
	.global sub_8143B88
	.global sub_8143BB0
	.global sub_8143D4C
	.global sub_8143DBC
	.global sub_8143DEA
	.global sub_8143E68
	.global sub_8143EA4
	.global sub_8143EB0
	.global sub_8143EDC
	.global sub_8143F68
	.global sub_8143F72
	.global sub_8143F90
	.global sub_8143FAA
	.global sub_8143FC4
	.global sub_8144010
	.global sub_8144048


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global sound_play
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
// .global sub_8000AC8
// .global sub_8000E3A
// .global getPETNaviSelect // () -> u8
// .global sub_80010D4
// .global sub_80010EC
// .global sub_8001172
// .global calcAngle_800117C
// .global sub_80014D4
// .global GetRNG2 // () -> int

	.include "asm/asm00_1.inc"
// .global SpawnObjectsFromList
// .global sub_8003A64
// .global SpawnOverworldMapObject
// .global sub_8004822
// .global IsPaletteFadeActive // () -> zf
// .global math_sinTable
// .global math_cosTable

	.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global SetEventFlag
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlag // (u16 entryFlagBitfield) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
// .global ClearEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
// .global ClearEventFlagRange // (u16 entryFlagBitfield) -> void
// .global sub_80302A8
// .global sub_80307D8
// .global sub_8030A60

	.include "asm/asm03_1.inc"
// .global sub_8034C36
// .global loc_80353EA
// .global sub_80357AE
// .global sub_8036E86
// .global init_s_02011C50_8036E90
// .global s_2011C50_ptr_1C_isNull // () -> zf

	.include "asm/chatbox.inc"
// .global chatbox_check_eFlags2009F38

	.include "asm/asm03_2.inc"
// .global sub_8046818
// .global sub_8046854
// .global sub_80468BA
// .global sub_80468C6
// .global sub_804691A

	.include "data/dat14.inc"
// .global off_8072C10
// .global off_8073650

	.include "asm/asm23.inc"
// .global dword_8089128
// .global byte_80893CC
// .global byte_8089448
// .global byte_8089554

	.include "data/dat23.inc"
// .global byte_8089DF4
// .global byte_808A128

	.include "asm/asm24.inc"
// .global byte_808C004
// .global byte_808C0F4
// .global byte_808C2F0

	.include "data/dat26.inc"
// .global byte_8092A98
// .global byte_8092DE8
// .global byte_809326C
// .global byte_8093358
// .global byte_80933B8

	.include "asm/asm28_0.inc"
// .global sub_809E1AE
// .global sub_809E2B8
// .global sub_809E3A2
// .global sub_809E462

	.include "asm/asm32.inc"
// .global sub_811E0BA
// .global sub_811E744
// .global sub_811EBE0

	.include "asm/reqBBS.inc"
// .global reqBBS_setFlag_e17b0f7_8140A00
// .global reqBBS_clearFlag_8140A0C

	.include "data/dat38_60.inc"
// .global dword_8619730
// .global dword_8619B50
// .global byte_8619B90


/* Undeclared Symbols */
// .equ byte_2000780, 0x2000780
// .equ byte_2000783, 0x2000783
// .equ byte_200078B, 0x200078B
// .equ byte_200078D, 0x200078D
// .equ byte_200078E, 0x200078E
// .equ dword_2000790, 0x2000790
// .equ dword_2000790, 0x2000790
// .equ dword_2000790, 0x2000790
// .equ dword_2000790, 0x2000790
// .equ byte_2000798, 0x2000798
// .equ byte_20007A8, 0x20007A8
// .equ unk_2000B40, 0x2000B40
// .equ byte_2000B48, 0x2000B48
// .equ byte_2000B49, 0x2000B49
// .equ unk_2000BE0, 0x2000BE0
// .equ byte_2000D20, 0x2000D20
// .equ byte_2000D21, 0x2000D21
// .equ word_2000D24, 0x2000D24
// .equ dword_2000D28, 0x2000D28
// .equ dword_2000D2C, 0x2000D2C
// .equ byte_2001010, 0x2001010
// .equ byte_2001013, 0x2001013
// .equ byte_2001018, 0x2001018
// .equ byte_2001019, 0x2001019
// .equ byte_200101A, 0x200101A
// .equ dword_200101C, 0x200101C
// .equ dword_200101C, 0x200101C
// .equ dword_200101C, 0x200101C
// .equ dword_2001020, 0x2001020
// .equ dword_2001024, 0x2001024
// .equ dword_2001024, 0x2001024
// .equ dword_2001024, 0x2001024
// .equ dword_2001028, 0x2001028
// .equ dword_2001028, 0x2001028
// .equ dword_2001028, 0x2001028
// .equ dword_2001028, 0x2001028
// .equ dword_200102C, 0x200102C
// .equ dword_2001030, 0x2001030
// .equ dword_2001034, 0x2001034
// .equ byte_2001038, 0x2001038
// .equ byte_2001039, 0x2001039
// .equ byte_200103A, 0x200103A
// .equ byte_200103B, 0x200103B
// .equ byte_2006670, 0x2006670
// .equ byte_2006670, 0x2006670
// .equ byte_2006670, 0x2006670
// .equ byte_2006674, 0x2006674
// .equ byte_2006676, 0x2006676
// .equ eStruct200BE70, 0x200BE70
// .equ dword_200BE7C, 0x200BE7C
// .equ unk_2011EA0, 0x2011EA0
// .equ eOverworldMapObjects, 0x2011EE0

	.endif // INC_ASM_ASM37_1
