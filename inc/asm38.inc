.ifndef INC_ASM38
.equ INC_ASM38, 0

/* Public Symbols */
.global loc_81D6746


/* External Symbols */
.include "asm00_0.inc"
// .global sub_80005AC
// .global sub_80005C4
// .global sub_80008B4
// .global copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global sub_800098C
// .global loc_8000AC8
// .global sub_8000C00
// .global sub_8000C5C

.include "asm00_1.inc"
// .global dword_80065D0
// .global dword_8006660
// .global sub_80068E0
// .global battle_isPaused
// .global battle_isTimeStop

.include "object.inc"
// .global object_isValidPanel
// .global object_checkPanelParameters
// .global sub_800E2C2
// .global object_getFlipDirection // (int a1, int a2) -> int

.include "asm00_2.inc"
// .global off_8019B78
// .global dword_8019C34
// .global sub_801A29A

.include "asm03_0.inc"
// .global off_802FD70
// .global dword_802FD74
// .global sub_8031612
// .global sub_803DE72
// .global sub_803EA68

.include "chatbox.inc"
// .global chatbox_8040D5C
// .global off_8043C8C

.include "asm37_0.inc"
// .global sub_813D5DC

.include "asm37_1.inc"
// .global sub_814469C
// .global sub_81446AC
// .global sub_814DA9C


/* Undeclared Symbols */
.equ byte_20081B0, 0x20081B0
.equ byte_20081B1, 0x20081B1
.equ word_20081B2, 0x20081B2
.equ dword_20081B4, 0x20081B4
.equ dword_20081B8, 0x20081B8
.equ dword_20081BC, 0x20081BC
.equ dword_20081C0, 0x20081C0
.equ dword_20093A8, 0x20093A8
.equ dword_20096D0, 0x20096D0
.equ byte_20098A8, 0x20098A8
.equ byte_20098A9, 0x20098A9
.equ word_20098AA, 0x20098AA
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ dword_2009CC0, 0x2009CC0
.equ word_200A6F0, 0x200A6F0
.equ word_200A6F2, 0x200A6F2
.equ word_200A6F4, 0x200A6F4
.equ word_200A6F6, 0x200A6F6
.equ dword_200A870, 0x200A870
.equ dword_200A890, 0x200A890
.equ dword_200A894, 0x200A894
.equ dword_200B1A8, 0x200B1A8
.equ dword_200F340, 0x200F340
.equ dword_200F350, 0x200F350
.equ unk_2034F60, 0x2034F60
.equ byte_2039AE0, 0x2039AE0
.equ dword_3000E70, 0x3000E70
.equ unk_3001150, 0x3001150
.equ unk_3001550, 0x3001550
.equ unk_3001750, 0x3001750
.equ dword_3001950, 0x3001950
.equ dword_3001D60, 0x3001D60
.equ dword_3001D70, 0x3001D70
.equ word_3001D74, 0x3001D74
.equ word_3001D76, 0x3001D76
.equ word_3001D7E, 0x3001D7E
.equ word_3001D86, 0x3001D86
.equ word_3001D8E, 0x3001D8E
.equ unk_3002170, 0x3002170
.equ unk_3002400, 0x3002400
.equ dword_3002590, 0x3002590
.equ dword_3002594, 0x3002594
.equ unk_30025B0, 0x30025B0
.equ unk_3005CA0, 0x3005CA0
.equ loc_3006314, 0x3006314
.equ loc_300631C, 0x300631C
.equ loc_300638C, 0x300638C
.equ DMA0SourceAddress, 0x40000B0
.equ DMA0DestinationAddress, 0x40000B4
.equ DMA0WordCount, 0x40000B8
.equ InterruptEnableRegister, 0x4000200
.equ InterruptMasterEnableRegister, 0x4000208

.endif // INC_ASM38
