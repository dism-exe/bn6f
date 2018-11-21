.ifndef INC_ASM_ASM11
.equ INC_ASM_ASM11, 0

/* Public Symbols */
.global sub_8069038
.global sub_80690C2
.global sub_8069140
.global sub_80691D4
.global sub_80691FE
.global off_80692F8
.global off_8069304
.global off_8069310
.global off_806931C
.global byte_8069358
.global dword_8069AF0
.global off_8069C80
.global sub_8069FE8
.global sub_806A070
.global sub_806A120
.global sub_806A1B4
.global sub_806A1DE
.global off_806A260
.global off_806A26C
.global off_806A278
.global off_806A284
.global byte_806A2C0
.global off_806A810
.global sub_806AA00
.global sub_806AAAA
.global sub_806AB94
.global sub_806ACC0
.global sub_806AD00
.global off_806AE08
.global off_806AE1C
.global off_806AE30
.global off_806AE44
.global byte_806AEA8
.global off_806C20C
.global sub_806C23C
.global sub_806C2E2
.global sub_806C35C
.global sub_806C4B0
.global sub_806C59C


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global sub_80019D0
// .global sub_80019FE
// .global sub_8001A22
// .global sub_8001A6A
// .global nullsub_39
// .global sub_8001B1C
// .global sub_8002354

.include "asm/sprite.inc"
// .global sub_80028D4
// .global sub_8002906

.include "asm/asm00_1.inc"
// .global sub_8003570

.include "asm/asm00_2.inc"
// .global loc_801083E
// .global off_8010F08
// .global loc_8011508

.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global sub_802FF4C
// .global locret_8030102
// .global loc_8030202
// .global sub_803037C
// .global sub_8030472
// .global sub_80304E8
// .global loc_803083E
// .global sub_8030AA4

.include "asm/asm03_1.inc"
// .global sub_8034FB8

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat04.inc"
// .global byte_8050202

.include "data/dat09.inc"
// .global off_8066048
// .global byte_80662B8
// .global byte_80662E8
// .global byte_8066328
// .global byte_8066368
// .global byte_80663A8

.include "asm/asm10.inc"
// .global off_8067754
// .global off_8067914
// .global off_8067944
// .global off_80679A4
// .global off_80679D4
// .global off_8067A14
// .global off_8067A44
// .global off_8067A6C
// .global off_8067A9C
// .global off_8067ACC

.include "data/dat10.inc"
// .global off_8068CCC
// .global off_8068D18
// .global dword_8068E48
// .global off_8068E88
// .global off_8068ED0
// .global off_8068EF0
// .global off_8068F30
// .global dword_8068FA0
// .global off_8069010

.include "data/dat11.inc"
// .global dword_806C5D0
// .global dword_806C638
// .global dword_806C68C
// .global dword_806C6E0
// .global dword_806C748

.include "data/dat20.inc"
// .global byte_80806B3

.include "data/dat21.inc"
// .global byte_8083C05
// .global byte_8083C09
// .global byte_8083F07

.include "data/dat23.inc"
// .global byte_808BB8C

.include "asm/asm24.inc"
// .global sub_808CB0C

.include "asm/asm25.inc"
// .global sub_808FE34
// .global sub_808FE74

.include "data/dat25.inc"
// .global byte_809083F

.include "data/dat27.inc"
// .global byte_8095434
// .global byte_8095CD8
// .global byte_8097A48

.include "asm/asm28_0.inc"
// .global byte_8098CA2
// .global byte_8099CEC

.include "asm/asm28_1.inc"
// .global byte_809F6CC

.include "asm/reqBBS.inc"
// .global byte_8140BAC

.include "data/dat38_33.inc"
// .global byte_83C0716
// .global byte_83C0806
// .global byte_83C0A10
// .global byte_83C1916
// .global byte_83D0426
// .global byte_83D0801
// .global byte_83DC525
// .global byte_83DF125
// .global byte_83F0000
// .global byte_83F000F
// .global byte_83F0016
// .global byte_83F010F
// .global byte_83F0116
// .global byte_83F020F
// .global byte_83F0308
// .global byte_83F0408
// .global byte_83F0416
// .global byte_83F0508
// .global byte_83F0516
// .global byte_83F0708
// .global byte_83F0716
// .global byte_83F0908
// .global byte_83F1408
// .global byte_83F1B16
// .global byte_83F1D16
// .global byte_83F2916
// .global byte_83F2C16
// .global byte_83F3F16
// .global byte_83F8108

.include "data/dat38_60.inc"
// .global byte_85B8244
// .global byte_85B8264
// .global byte_85B8284
// .global byte_85B82A4
// .global byte_85B82C8
// .global byte_85B82E8
// .global byte_85B8308
// .global byte_85B832C
// .global byte_85B834C
// .global byte_85B836C
// .global byte_85B838C
// .global byte_85B83B0
// .global byte_85B83D0
// .global byte_85B83F0
// .global byte_85B8410
// .global byte_85B8434
// .global byte_85B8454
// .global byte_85B8474
// .global byte_85B8494
// .global byte_85B84B8
// .global byte_85B84D8
// .global byte_85B84F8
// .global byte_85B8518
// .global byte_85B853C
// .global byte_85B855C
// .global byte_85B857C
// .global byte_85B859C
// .global byte_85B85C0
// .global byte_85B85E0
// .global byte_85B8600
// .global byte_85B8620
// .global byte_85B8644
// .global byte_85B8664
// .global byte_85B8688
// .global byte_85B86A8
// .global byte_85D053C
// .global byte_85D055C
// .global byte_85D057C
// .global byte_85D059C
// .global byte_85D05C0
// .global byte_85D05E0
// .global byte_85D0600
// .global byte_85D0624
// .global byte_85D0644
// .global byte_85D0664
// .global byte_85D0688
// .global byte_85D06A8
// .global byte_85D06C8
// .global byte_85D06E8
// .global byte_85D070C
// .global byte_85D072C
// .global byte_85D074C
// .global byte_85D076C
// .global byte_85D0790
// .global byte_85D07B0
// .global byte_85D07D0
// .global byte_85D07F0
// .global byte_85D0814
// .global byte_85D0834
// .global byte_85D0854
// .global byte_85D0874
// .global byte_85D270C
// .global byte_85D272C
// .global byte_85D274C
// .global byte_85D276C
// .global byte_85D278C
// .global byte_85D27B0
// .global byte_85D27D0
// .global byte_85D27F0
// .global byte_85D2810
// .global off_8610B04
// .global byte_8610C18
// .global byte_8610D64
// .global off_86116C8
// .global byte_861184C
// .global byte_86119C4
// .global off_8612A28
// .global dword_8612CF0
// .global dword_8612E84
// .global off_8613608
// .global dword_8613AAC
// .global dword_8613DDC
// .global byte_8614140
// .global byte_8614160
// .global byte_8614180
// .global byte_86141A0
// .global byte_86141C0
// .global byte_86141E0
// .global byte_8614200
// .global byte_8614220
// .global byte_8614240
// .global byte_8614260
// .global byte_8614280
// .global byte_86142A0
// .global byte_86142C4
// .global byte_86142E4
// .global byte_8614304
// .global byte_8614324
// .global byte_8614344
// .global byte_8614364
// .global byte_8614384
// .global byte_86143A4
// .global byte_86143C4
// .global byte_86143E4
// .global byte_8614404
// .global byte_8614424
// .global off_8614444
// .global dword_8614A0C
// .global byte_8614BB8
// .global byte_8614D60
// .global byte_8614D80
// .global byte_8614DA0
// .global byte_8614DC0
// .global off_8614DE0
// .global dword_8615028
// .global dword_86151BC
// .global off_8615360
// .global dword_86154A8
// .global dword_86155E8
// .global off_861578C
// .global dword_861595C
// .global byte_8615B04
// .global byte_8615B24
// .global byte_8615B44
// .global byte_8615B64
// .global off_8615BA4
// .global byte_8615D14
// .global byte_8615E88
// .global off_861602C
// .global dword_8616264
// .global byte_86163F4

.include "data/dat38_85.inc"
// .global byte_86DF925
// .global byte_86EA925


/* Undeclared Symbols */
// .equ unk_2037800, 0x2037800
// .equ byte_3001960, 0x3001960
// .equ unk_3001980, 0x3001980
// .equ unk_30019A0, 0x30019A0
// .equ unk_30019E0, 0x30019E0
// .equ unk_3001A00, 0x3001A00
// .equ unk_3001A20, 0x3001A20
// .equ unk_3001A40, 0x3001A40
// .equ unk_3001A60, 0x3001A60
// .equ unk_3001A80, 0x3001A80
// .equ unk_3001AA0, 0x3001AA0
// .equ unk_3001AC0, 0x3001AC0
// .equ unk_3001AE0, 0x3001AE0
.equ LCDControl, 0x4000000
.equ byte_8CA6925, 0x8CA6925
.equ byte_8CB0D25, 0x8CB0D25
.equ debug_8FE3525, 0x8FE3525

.endif // INC_ASM_ASM11
