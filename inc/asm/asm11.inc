.ifndef INC_ASM_ASM11
.equ INC_ASM_ASM11, 0

/* Public Symbols */
.global off_80692F8
.global off_8069304
.global off_8069310
.global off_806931C
.global byte_8069358
.global dword_8069AF0
.global off_8069C80
.global off_806A260
.global off_806A26C
.global off_806A278
.global off_806A284
.global byte_806A2C0
.global off_806A810
.global off_806AE08
.global off_806AE1C
.global off_806AE30
.global off_806AE44
.global byte_806AEA8
.global off_806C20C


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global sub_80019D0
// .global sub_80019FE
// .global sub_8001A22
// .global sub_8001A6A
// .global locret_8001AB4
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
// .global setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global sub_802FF4C
// .global locret_8030102
// .global loc_8030202
// .global sub_803037C
// .global loc_8030472
// .global sub_80304E8
// .global loc_803083E
// .global sub_8030AA4

.include "asm/asm03_1.inc"
// .global sub_8034FB8

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat04.inc"
// .global unk_8050202

.include "data/dat09.inc"
// .global off_8066048
// .global unk_80662B8
// .global unk_80662E8
// .global unk_8066328
// .global unk_8066368
// .global unk_80663A8

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
// .global unk_80806B3

.include "data/dat21.inc"
// .global unk_8083C05
// .global unk_8083C09
// .global unk_8083F07

.include "data/dat23.inc"
// .global unk_808BB8C

.include "asm/asm24.inc"
// .global sub_808CB0C

.include "asm/asm25.inc"
// .global sub_808FE34
// .global sub_808FE74

.include "data/dat25.inc"
// .global unk_809083F

.include "data/dat27.inc"
// .global unk_8095434
// .global unk_8095CD8
// .global unk_8097A48

.include "asm/asm28_0.inc"
// .global unk_8098CA2
// .global unk_8099CEC

.include "asm/asm28_1.inc"
// .global unk_809F6CC

.include "asm/reqBBS.inc"
// .global dword_8140BAC

.include "data/dat38_14.inc"
// .global unk_83C0116
// .global unk_83C0510
// .global unk_83C0716
// .global unk_83C0806
// .global unk_83C0A10
// .global unk_83C1916
// .global unk_83CC02A
// .global unk_83D0426
// .global unk_83D0801
// .global unk_83DC525
// .global unk_83DF125
// .global unk_83F0000
// .global unk_83F000F
// .global unk_83F0016
// .global unk_83F010F
// .global unk_83F0116
// .global unk_83F020F
// .global unk_83F0308
// .global unk_83F0408
// .global unk_83F0416
// .global unk_83F0508
// .global unk_83F0516
// .global unk_83F0708
// .global unk_83F0716
// .global dword_83F0908
// .global unk_83F1408
// .global unk_83F1B16
// .global unk_83F1D16
// .global unk_83F2916
// .global unk_83F2C16
// .global unk_83F3F16
// .global unk_83F8108

.include "data/dat38_42.inc"
// .global unk_85B8244
// .global unk_85B8264
// .global unk_85B8284
// .global unk_85B82A4
// .global unk_85B82C8
// .global unk_85B82E8
// .global unk_85B8308
// .global unk_85B832C
// .global unk_85B834C
// .global unk_85B836C
// .global unk_85B838C
// .global unk_85B83B0
// .global unk_85B83D0
// .global unk_85B83F0
// .global unk_85B8410
// .global unk_85B8434
// .global unk_85B8454
// .global unk_85B8474
// .global unk_85B8494
// .global unk_85B84B8
// .global unk_85B84D8
// .global unk_85B84F8
// .global unk_85B8518
// .global unk_85B853C
// .global unk_85B855C
// .global unk_85B857C
// .global unk_85B859C
// .global unk_85B85C0
// .global unk_85B85E0
// .global unk_85B8600
// .global unk_85B8620
// .global unk_85B8644
// .global unk_85B8664
// .global unk_85B8688
// .global unk_85B86A8
// .global unk_85D053C
// .global unk_85D055C
// .global unk_85D057C
// .global unk_85D059C
// .global unk_85D05C0
// .global unk_85D05E0
// .global unk_85D0600
// .global unk_85D0624
// .global unk_85D0644
// .global unk_85D0664
// .global unk_85D0688
// .global unk_85D06A8
// .global unk_85D06C8
// .global unk_85D06E8
// .global unk_85D070C
// .global unk_85D072C
// .global unk_85D074C
// .global unk_85D076C
// .global unk_85D0790
// .global unk_85D07B0
// .global unk_85D07D0
// .global unk_85D07F0
// .global unk_85D0814
// .global unk_85D0834
// .global unk_85D0854
// .global unk_85D0874
// .global unk_85D270C
// .global unk_85D272C
// .global unk_85D274C
// .global unk_85D276C
// .global unk_85D278C
// .global unk_85D27B0
// .global unk_85D27D0
// .global unk_85D27F0
// .global unk_85D2810
// .global off_8610B04
// .global unk_8610C18
// .global unk_8610D64
// .global off_86116C8
// .global unk_861184C
// .global unk_86119C4
// .global off_8612A28
// .global dword_8612CF0
// .global dword_8612E84
// .global off_8613608
// .global dword_8613AAC
// .global unk_8613DDC
// .global unk_8614140
// .global unk_8614160
// .global unk_8614180
// .global unk_86141A0
// .global unk_86141C0
// .global unk_86141E0
// .global unk_8614200
// .global unk_8614220
// .global unk_8614240
// .global unk_8614260
// .global unk_8614280
// .global unk_86142A0
// .global unk_86142C4
// .global unk_86142E4
// .global unk_8614304
// .global unk_8614324
// .global unk_8614344
// .global unk_8614364
// .global unk_8614384
// .global unk_86143A4
// .global unk_86143C4
// .global unk_86143E4
// .global unk_8614404
// .global unk_8614424
// .global off_8614444
// .global dword_8614A0C
// .global unk_8614BB8
// .global unk_8614D60
// .global unk_8614D80
// .global unk_8614DA0
// .global unk_8614DC0
// .global off_8614DE0
// .global dword_8615028
// .global dword_86151BC
// .global off_8615360
// .global dword_86154A8
// .global dword_86155E8
// .global off_861578C
// .global dword_861595C
// .global unk_8615B04
// .global unk_8615B24
// .global unk_8615B44
// .global unk_8615B64
// .global off_8615BA4
// .global unk_8615D14
// .global unk_8615E88
// .global off_861602C
// .global dword_8616264
// .global unk_86163F4

.include "data/dat38_68.inc"
// .global unk_86DF925
// .global unk_86EA925


/* Undeclared Symbols */
.equ unk_2037800, 0x2037800
.equ word_3001960, 0x3001960
.equ unk_3001980, 0x3001980
.equ unk_30019A0, 0x30019A0
.equ unk_30019E0, 0x30019E0
.equ unk_3001A00, 0x3001A00
.equ unk_3001A20, 0x3001A20
.equ unk_3001A40, 0x3001A40
.equ unk_3001A60, 0x3001A60
.equ unk_3001A80, 0x3001A80
.equ unk_3001AA0, 0x3001AA0
.equ unk_3001AC0, 0x3001AC0
.equ unk_3001AE0, 0x3001AE0
.equ unk_3005CD9, 0x3005CD9
.equ LCDControl, 0x4000000
.equ unk_8CA6925, 0x8CA6925
.equ unk_8CB0D25, 0x8CB0D25
.equ debug_8FE3525, 0x8FE3525

.endif // INC_ASM_ASM11
