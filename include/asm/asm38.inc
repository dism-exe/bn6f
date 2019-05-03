	.ifndef INC_ASM_ASM38
	.equ INC_ASM_ASM38, 0

/* Public Symbols */
	.global dword_3005B00
	.global nullsub_38
	.global sub_3005CDA
	.global sub_3005D78
	.global sub_3005DA0
	.global sub_3005DD4
	.global sub_3005DEC
	.global sub_3005E02
	.global sub_3005E18
	.global sub_3005E2C
	.global sub_3005E60
	.global sub_3005E6A
	.global iCopyBackgroundTiles
	.global sub_3005EBA
	.global sub_3005EF0
	.global sub_3006028
	.global sub_30061E8
	.global loc_3006392
	.global sub_3006440
	.global sub_3006730
	.global sub_3006792
	.global loc_3006794
	.global sub_3006814
	.global sub_30068E8
	.global sub_3006920
	.global byte_30069A0
	.global dword_3006B84
	.global sub_3006B94
	.global sub_3006C38
	.global sub_3006C8E
	.global sub_3006CA8
	.global sub_3006F20
	.global sub_3006F24
	.global sub_3006F42
	.global sub_3006F48
	.global sub_3006F5C
	.global sub_3006F70
	.global sub_3006F74
	.global sub_3006F8C
	.global sub_3007038
	.global sub_30070B4
	.global sub_3007550
	.global sub_300777C
	.global sub_30078C8
	.global sub_30078E0
	.global sub_3007958
	.global sub_30079A4


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global call_m4aSoundMain
// .global call_m4a_2_814F00C
// .global ZeroFillByByte // (void *mem, int size) -> void
// .global CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global WordFill
// .global sub_8000AC8
// .global sub_8000C00
// .global sub_8000C5C

	.include "asm/asm00_1.inc"
// .global math_sinTable
// .global math_cosTable
// .global sub_80068E0
// .global battle_isPaused
// .global battle_isTimeStop

	.include "asm/object.inc"
// .global object_isValidPanel
// .global object_checkPanelParameters
// .global object_getAllianceDirection
// .global object_getFlipDirection // (int a1, int a2) -> int

	.include "asm/asm00_2.inc"
// .global PanelOffsetListsPointerTable
// .global byte_8019C34
// .global sub_801A29A

	.include "asm/asm03_0.inc"
// .global off_802FD70
// .global dword_802FD74
// .global sub_8031612

	.include "asm/asm03_1.inc"
// .global sub_803DE72
// .global eStruct200BC30_getJumpOffset00_pushpop

	.include "asm/chatbox.inc"
// .global chatbox_maskFlags_3e // (int mask) -> void
// 
// .global chatbox_8040D5C
// .global byte_8043B54
// .global off_8043C8C
// .global byte_8043CA4
// .global off_8044314
// .global off_8044378
// .global off_804440C

	.include "asm/asm37_0.inc"
// .global sub_813D5DC

	.include "asm/libs.inc"
// .global sub_814469C
// .global sub_81446AC
// .global sub_814DA9C

	.include "data/dat38_60.inc"
// .global byte_86ACD60


/* Undeclared Symbols */
// .equ byte_20007D6, 0x20007D6
// .equ byte_200083A, 0x200083A
// .equ unk_2001186, 0x2001186
// .equ unk_200119E, 0x200119E
// .equ byte_20018F4, 0x20018F4
// .equ byte_2001950, 0x2001950
// .equ byte_20019AC, 0x20019AC
// .equ byte_2001A08, 0x2001A08
// .equ byte_2001A64, 0x2001A64
// .equ byte_2001AC0, 0x2001AC0
// .equ byte_20081B0, 0x20081B0
// .equ byte_20081B1, 0x20081B1
// .equ word_20081B2, 0x20081B2
// .equ dword_20081B4, 0x20081B4
// .equ dword_20081B8, 0x20081B8
// .equ dword_20081BC, 0x20081BC
// .equ dword_20081C0, 0x20081C0
// .equ dword_20093A8, 0x20093A8
// .equ dword_20096D0, 0x20096D0
// .equ byte_20098A8, 0x20098A8
// .equ byte_20098A9, 0x20098A9
// .equ word_20098AA, 0x20098AA
// .equ eCamera, 0x2009980
// .equ eCamera, 0x2009980
// .equ dword_2009CC0, 0x2009CC0
// .equ byte_200A220, 0x200A220
// .equ dword_200A250, 0x200A250
// .equ dword_200A254, 0x200A254
// .equ word_200A6F0, 0x200A6F0
// .equ word_200A6F2, 0x200A6F2
// .equ word_200A6F4, 0x200A6F4
// .equ word_200A6F6, 0x200A6F6
// .equ dword_200A870, 0x200A870
// .equ dword_200A890, 0x200A890
// .equ dword_200A894, 0x200A894
// .equ byte_200AFA0, 0x200AFA0
// .equ dword_200B1A8, 0x200B1A8
// .equ unk_200BEA0, 0x200BEA0
// .equ dword_200CDA0, 0x200CDA0
// .equ dword_200CDA4, 0x200CDA4
// .equ dword_200CDA8, 0x200CDA8
// .equ dword_200CDAC, 0x200CDAC
// .equ dword_200CDB0, 0x200CDB0
// .equ dword_200CDB4, 0x200CDB4
// .equ dword_200CDB8, 0x200CDB8
// .equ byte_200CDBC, 0x200CDBC
// .equ dword_200CE20, 0x200CE20
// .equ dword_200CE24, 0x200CE24
// .equ dword_200CE28, 0x200CE28
// .equ dword_200CE2C, 0x200CE2C
// .equ dword_200CE30, 0x200CE30
// .equ dword_200CE34, 0x200CE34
// .equ dword_200CE38, 0x200CE38
// .equ byte_200CE3C, 0x200CE3C
// .equ dword_200D420, 0x200D420
// .equ dword_200D424, 0x200D424
// .equ dword_200D428, 0x200D428
// .equ dword_200D42C, 0x200D42C
// .equ dword_200D430, 0x200D430
// .equ dword_200D434, 0x200D434
// .equ dword_200D438, 0x200D438
// .equ byte_200D43C, 0x200D43C
// .equ byte_200DD20, 0x200DD20
// .equ dword_200F340, 0x200F340
// .equ dword_200F350, 0x200F350
// .equ unk_2034F60, 0x2034F60
// .equ ePanelData, 0x2039AE0
// .equ off_3000E70, 0x3000E70
// .equ byte_3001150, 0x3001150
// .equ byte_3001550, 0x3001550
// .equ iPallete3001750, 0x3001750
// .equ byte_3001950, 0x3001950
// .equ dword_3001D60, 0x3001D60
// .equ iObjectAttr3001D70, 0x3001D70
// .equ word_3001D74, 0x3001D74
// .equ word_3001D76, 0x3001D76
// .equ word_3001D7E, 0x3001D7E
// .equ word_3001D86, 0x3001D86
// .equ word_3001D8E, 0x3001D8E
// .equ unk_3002170, 0x3002170
// .equ unk_3002400, 0x3002400
// .equ dword_3002590, 0x3002590
// .equ dword_3002594, 0x3002594
// .equ unk_30025B0, 0x30025B0
	.equ DMA0SourceAddress, 0x40000B0
	.equ DMA0DestinationAddress, 0x40000B4
	.equ DMA0WordCount, 0x40000B8
	.equ InterruptEnableRegister, 0x4000200
	.equ InterruptMasterEnableRegister, 0x4000208

	.endif // INC_ASM_ASM38
