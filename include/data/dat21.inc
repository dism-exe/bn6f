.ifndef INC_DATA_DAT21
.equ INC_DATA_DAT21, 0

/* Public Symbols */
.global dword_80813F8
.global dword_80813FC
.global dword_8081400
.global dword_8081404
.global dword_8081408
.global dword_8081410
.global dword_8081418
.global dword_8081428
.global dword_8081438
.global dword_808143C
.global dword_8081440
.global dword_8081444
.global dword_8081448
.global dword_808144C
.global dword_8081450
.global byte_8081C84
.global byte_8083C01
.global byte_8083C03
.global byte_8083C05
.global byte_8083C07
.global byte_8083C09
.global byte_8083F01
.global byte_8083F03
.global byte_8083F04
.global byte_8083F07
.global byte_8084554
.global byte_8084A28
.global byte_8084F10
.global byte_80855AC
.global byte_808580C
.global byte_80858C4
.global byte_80865AC
.global off_8086D18
.global off_8086D1C
.global byte_8086D5C
.global byte_8086D74


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sub_800060A
// .global ZeroFillByWord // (void *memBlock, int size) -> void

.include "asm/asm00_1.inc"
// .global sub_80047E0

.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf

.include "asm/asm03_2.inc"
// .global sub_804C058
// .global sub_804C074

.include "data/dat05.inc"
// .global off_8058578

.include "data/dat06.inc"
// .global unk_805D1DC

.include "asm/asm10.inc"
// .global off_8067230
// .global off_8067524

.include "data/dat10.inc"
// .global off_80684F8

.include "asm/asm22.inc"
// .global sub_8086F18
// .global sub_8086F5C
// .global sub_8086FA4
// .global sub_8087150

.include "data/dat22.inc"
// .global sub_80871F4
// .global sub_8087238

.include "data/dat25.inc"
// .global byte_8090508

.include "asm/reqBBS.inc"
// .global reqBBS_clearFlag_8140A0C
// .global byte_8140A74
// .global byte_8140A8C
// .global byte_8140AA4
// .global byte_8140ABC
// .global byte_8140AD4
// .global byte_8140AEC
// .global byte_8140B1C
// .global byte_8140B34
// .global byte_8140B4C
// .global byte_8140B64
// .global byte_8140B7C
// .global byte_8140B94
// .global byte_8140BAC
// .global byte_8140BF0

.include "data/dat37.inc"
// .global byte_819DD01
// .global byte_819ED15
// .global byte_81AA901
// .global byte_81AB915
// .global byte_81B8101
// .global off_81B9114
// .global byte_81C7000
// .global byte_81D4314

.include "data/dat38_60.inc"
// .global byte_864F420
// .global byte_867E715
// .global byte_8689000
// .global byte_868B000
// .global byte_868D000
// .global byte_86A3715
// .global byte_86ACF02
// .global byte_86AF60A
// .global unk_86AFE15
// .global unk_86B4901
// .global unk_86B5115
// .global byte_86B7D4B

.include "data/dat38_87.inc"
// .global dword_87DAC90


/* Undeclared Symbols */
// .equ unk_2010800, 0x2010800
// .equ unk_2011A90, 0x2011A90
// .equ byte_2011A93, 0x2011A93
// .equ byte_2011A94, 0x2011A94
// .equ byte_2011A95, 0x2011A95
// .equ byte_2011A97, 0x2011A97
// .equ byte_2011A9D, 0x2011A9D
// .equ unk_2013960, 0x2013960
// .equ byte_2013966, 0x2013966
// .equ byte_201396F, 0x201396F
// .equ byte_3001750, 0x3001750
// .equ unk_3001B60, 0x3001B60

.endif // INC_DATA_DAT21
