.ifndef INC_CHATBOX
.equ INC_CHATBOX, 0

/* Public Symbols */
.global chatbox_uncomp_803FD08 // () -> int
.global chatbox_runScript_202da04 // (u8 scriptID) -> void
.global chatbox_803FD78 // (u16 *scriptArr, u8 scriptID) -> void
.global chatbox_803FD9C
.global loc_803FDA4
.global chatbox_803FE08
.global chatbox_803FE10
.global chatbox_runScript_803FE74 // (u16 *scriptArr, u8 scriptID) -> void
.global chatbox_onUpdate_803FEB4
.global loc_8040000
.global chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
.global chatbox_reqBBS_80404C0
.global chatbox_8040818
.global chatbox_maskFlags_3e // (int mask) -> void
// 
.global chatbox_8040D5C
.global off_8043C8C
.global off_8044470
.global off_80444C4
.global chatbox_8045ED0
.global chatbox_8045EDC
.global chatbox_8045EEC
.global chatbox_8045EFC
.global chatbox_8045F1C
.global chatbox_8045F2C // (int a1) ->
.global chatbox_8045F3C
.global chatbox_8045F4C


/* External Symbols */
.include "asm00_0.inc"
// .global sound_play // () -> void
// .global sound_bgmusic_play // (int a1) -> void
// .global sub_800068A
// .global sub_80006A2
// .global sub_8000784
// .global CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
// .global CpuFastSet_8000900 // (int a1, int a2) -> void
// .global copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
// .global CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
// .global loc_8000AC8
// .global sub_8000C00
// .global sub_8000C5C
// .global getPETNaviSelect // () -> u8
// .global sub_80010D4
// .global sub_80010EC
// .global sub_800151C
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_8002694

.include "sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_80026B6
// .global sprite_update
// .global sprite_chatbox_80026D6
// .global sprite_load // (int a1, int a2, int a3) ->
// .global sprite_800275A
// .global sub_8002818
// .global sub_8002874
// .global sprite_setAnimation // (u8 a1) -> void

.include "asm00_1.inc"
// .global sub_8002DEA
// .global sub_8002F90 // () -> void
// .global sub_8003A64
// .global sub_8005BC8
// .global subsystem_launchBBS
// .global subsystem_launchReqBBS
// .global subsystem_launchShop
// .global subsystem_launchChipTrader
// .global sub_8005EA2
// .global subsystem_launchMail
// .global engine_setScreeneffect
// .global getBattleSettingsFromList0
// .global sub_800B6B0

.include "asm00_2.inc"
// .global sub_8013704
// .global sub_80137FE

.include "asm02.inc"
// .global dword_8021AEC
// .global sub_8021B78 // (int idx, int searchItem, int off) -> void*
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*
// .global sub_8021BC0
// .global sub_8021BD8
// .global sub_8021C02

.include "asm03_0.inc"
// .global sub_802F114 // (int a1) -> void
// .global loc_802F130
// .global sub_802F14C // (int a1) -> void
// .global sub_802F164 // (int a1, int a2) -> zf
// .global zf_802F168
// .global loc_802F182
// .global loc_802F1AC
// .global loc_802F200
// .global sub_802F238
// .global sub_802FE28
// .global sub_8033FC0
// .global sub_803522E
// .global sub_8036E44
// .global sub_8036E78
// .global sub_803CD98
// .global sub_803CDF8
// .global sub_803CE08
// .global sub_803CE28
// .global sub_803CFF8
// .global sub_803D02C
// .global sub_803D040
// .global sub_803D06C
// .global sub_803D080
// .global sub_803D0B4
// .global sub_803D0C8
// .global sub_803D0F4
// .global sub_803D108
// .global sub_803D118
// .global sub_803D128
// .global sub_803D138
// .global sub_803F524
// .global sub_803F798
// .global dword_803FCE4

.include "asm03_1.inc"
// .global sub_8048C24

.include "asm28_0.inc"
// .global sub_809CA84
// .global sub_809E0B0
// .global sub_809E122
// .global sub_809E13C
// .global sub_809E14C
// .global sub_809E228
// .global sub_809E2B8

.include "asm29.inc"
// .global sub_80AA5F4

.include "asm32.inc"
// .global sub_811FFC0 // () -> void
// .global sub_81207F8

.include "asm36.inc"
// .global sub_8137718

.include "asm37_0.inc"
// .global sub_813C030 // () -> void

.include "reqBBS.inc"
// .global reqBBS_813E5DC
// .global dword_813F380
// .global reqBBS_813F9A0
// .global reqBBS_getTotalPointsIndex
// .global reqBBS_81408B4

.include "asm37_1.inc"
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void


/* Undeclared Symbols */
.equ unk_20018F0, 0x20018F0
.equ unk_200194C, 0x200194C
.equ unk_20019A8, 0x20019A8
.equ unk_2001A04, 0x2001A04
.equ unk_2001A60, 0x2001A60
.equ unk_2001ABC, 0x2001ABC
.equ sReqBBS_GUI, 0x2005780
.equ sSubmenu, 0x2009A30
.equ unk_2009A80, 0x2009A80
.equ dword_2009F38, 0x2009F38
.equ byte_2009F40, 0x2009F40
.equ i_joGameSubsysSel, 0x200A480
.equ unk_200AFA0, 0x200AFA0
.equ unk_200B2B0, 0x200B2B0
.equ unk_200BEA0, 0x200BEA0
.equ unk_200C1A0, 0x200C1A0
.equ unk_200C1B0, 0x200C1B0
.equ unk_200C4B0, 0x200C4B0
.equ unk_200C4D0, 0x200C4D0
.equ unk_200C4F0, 0x200C4F0
.equ unk_200C7A0, 0x200C7A0
.equ unk_200C7C0, 0x200C7C0
.equ unk_200C7E0, 0x200C7E0
.equ unk_200C7F0, 0x200C7F0
.equ dword_200CDA0, 0x200CDA0
.equ unk_2011C54, 0x2011C54
.equ unk_202DA00, 0x202DA00
.equ unk_202DA04, 0x202DA04
.equ unk_202FA00, 0x202FA00
.equ unk_2033400, 0x2033400
.equ unk_2034A00, 0x2034A00
.equ unk_2034A04, 0x2034A04
.equ unk_3001710, 0x3001710
.equ unk_3001B40, 0x3001B40
.equ sub_3006F8C, 0x3006F8C
.equ loc_3007038, 0x3007038
.equ loc_30070B4, 0x30070B4
.equ dword_8070604, 0x8070604
.equ dword_84E0554, 0x84E0554
.equ dword_86A4740, 0x86A4740
.equ dword_86A48A0, 0x86A48A0
.equ dword_86A4A40, 0x86A4A40
.equ dword_86B7AA0, 0x86B7AA0
.equ dword_86B7AC0, 0x86B7AC0
.equ dword_86BEB20, 0x86BEB20
.equ dword_86BEC80, 0x86BEC80
.equ dword_86BF480, 0x86BF480
.equ dword_86BFE20, 0x86BFE20
.equ dword_86BFE20, 0x86BFE20
.equ dword_86BFE20, 0x86BFE20
.equ dword_86C0900, 0x86C0900
.equ dword_86C0900, 0x86C0900
.equ dword_873D9FC, 0x873D9FC
.equ dword_873F008, 0x873F008
.equ dword_873F028, 0x873F028
.equ dword_873F048, 0x873F048
.equ dword_873F430, 0x873F430
.equ dword_873F908, 0x873F908
.equ dword_873FD64, 0x873FD64
.equ dword_874041C, 0x874041C
.equ dword_8740974, 0x8740974
.equ dword_8740E90, 0x8740E90
.equ dword_87414AC, 0x87414AC
.equ dword_8741D04, 0x8741D04
.equ dword_8742318, 0x8742318
.equ dword_87428D4, 0x87428D4
.equ dword_8742D64, 0x8742D64
.equ dword_87433BC, 0x87433BC
.equ dword_87439D8, 0x87439D8
.equ dword_87439F8, 0x87439F8
.equ dword_8745100, 0x8745100
.equ dword_874584C, 0x874584C
.equ dword_8745DEC, 0x8745DEC
.equ dword_87461A0, 0x87461A0
.equ unk_87462D0, 0x87462D0
.equ dword_87463F4, 0x87463F4
.equ dword_87464AC, 0x87464AC
.equ dword_87466F8, 0x87466F8
.equ dword_87469C4, 0x87469C4
.equ dword_8746A34, 0x8746A34
.equ dword_8746AE8, 0x8746AE8
.equ dword_8746D34, 0x8746D34
.equ dword_8746E38, 0x8746E38
.equ dword_8746EF0, 0x8746EF0
.equ dword_874713C, 0x874713C
.equ dword_8747228, 0x8747228
.equ dword_8747474, 0x8747474
.equ unk_87477F4, 0x87477F4
.equ dword_8747D30, 0x8747D30
.equ dword_8748650, 0x8748650
.equ dword_8748F44, 0x8748F44
.equ dword_8749514, 0x8749514
.equ dword_8749C38, 0x8749C38
.equ dword_874A638, 0x874A638
.equ dword_874B154, 0x874B154
.equ dword_874B878, 0x874B878
.equ dword_874BC34, 0x874BC34
.equ dword_874C5D0, 0x874C5D0
.equ dword_874D038, 0x874D038
.equ dword_874D74C, 0x874D74C
.equ dword_874DCF0, 0x874DCF0
.equ dword_874E6E0, 0x874E6E0
.equ dword_874EFE0, 0x874EFE0
.equ dword_874F5C4, 0x874F5C4
.equ dword_874F980, 0x874F980
.equ dword_87502B4, 0x87502B4
.equ dword_8750B80, 0x8750B80
.equ dword_8751150, 0x8751150
.equ dword_87517E8, 0x87517E8
.equ dword_8752174, 0x8752174
.equ dword_8752818, 0x8752818
.equ dword_8752FBC, 0x8752FBC
.equ dword_875358C, 0x875358C
.equ dword_8753F78, 0x8753F78
.equ dword_8754620, 0x8754620
.equ dword_8754674, 0x8754674
.equ dword_87550BC, 0x87550BC
.equ dword_87557A8, 0x87557A8
.equ dword_8755834, 0x8755834
.equ dword_87558D8, 0x87558D8
.equ off_8755C0C, 0x8755C0C
.equ dword_8755C18, 0x8755C18
.equ dword_8756124, 0x8756124
.equ unk_87565E8, 0x87565E8
.equ dword_8756AA4, 0x8756AA4
.equ dword_8756C9C, 0x8756C9C
.equ dword_875752C, 0x875752C
.equ dword_8757B7C, 0x8757B7C
.equ dword_8758018, 0x8758018
.equ dword_8758410, 0x8758410
.equ dword_8758834, 0x8758834
.equ dword_8758AF0, 0x8758AF0
.equ dword_8758D98, 0x8758D98
.equ dword_875906C, 0x875906C
.equ dword_8759480, 0x8759480
.equ dword_8759870, 0x8759870
.equ dword_8759C10, 0x8759C10
.equ dword_8759EF8, 0x8759EF8
.equ dword_875A2C4, 0x875A2C4
.equ dword_875A918, 0x875A918
.equ dword_875B064, 0x875B064
.equ dword_875B30C, 0x875B30C
.equ dword_875B30C, 0x875B30C
.equ dword_875B30C, 0x875B30C
.equ dword_875BB0C, 0x875BB0C
.equ dword_875BB0C, 0x875BB0C
.equ dword_875BB0C, 0x875BB0C
.equ dword_875BFD8, 0x875BFD8
.equ unk_875C22C, 0x875C22C
.equ dword_875C4B8, 0x875C4B8
.equ dword_875C83C, 0x875C83C
.equ dword_875CB68, 0x875CB68
.equ dword_875CE10, 0x875CE10
.equ dword_875CFC4, 0x875CFC4
.equ dword_875D1FC, 0x875D1FC
.equ dword_875D5E0, 0x875D5E0
.equ off_875D774, 0x875D774
.equ dword_875D780, 0x875D780
.equ dword_875D800, 0x875D800
.equ dword_875D974, 0x875D974
.equ dword_875D9C0, 0x875D9C0
.equ dword_875DA0C, 0x875DA0C
.equ dword_875DA58, 0x875DA58
.equ dword_875DAB8, 0x875DAB8
.equ dword_875DB18, 0x875DB18
.equ dword_875DBD8, 0x875DBD8
.equ dword_875DC10, 0x875DC10
.equ dword_875DC48, 0x875DC48
.equ dword_875DC80, 0x875DC80
.equ dword_875DD4C, 0x875DD4C
.equ dword_875DDF8, 0x875DDF8
.equ dword_875DE80, 0x875DE80
.equ off_875DF20, 0x875DF20
.equ dword_875DF2C, 0x875DF2C
.equ dword_875DF38, 0x875DF38
.equ dword_875DF44, 0x875DF44
.equ dword_875DF50, 0x875DF50
.equ dword_875DF78, 0x875DF78
.equ dword_875DFA4, 0x875DFA4
.equ dword_875DFB0, 0x875DFB0
.equ dword_875DFBC, 0x875DFBC
.equ dword_875DFC8, 0x875DFC8
.equ dword_875DFD4, 0x875DFD4
.equ dword_875DFE0, 0x875DFE0
.equ dword_875DFEC, 0x875DFEC
.equ dword_875DFF8, 0x875DFF8
.equ dword_875E0F4, 0x875E0F4
.equ dword_875E100, 0x875E100
.equ off_875E36C, 0x875E36C
.equ dword_875E378, 0x875E378
.equ dword_875E414, 0x875E414
.equ dword_875E4AC, 0x875E4AC
.equ dword_875E52C, 0x875E52C
.equ dword_875E5C4, 0x875E5C4
.equ dword_875E5D0, 0x875E5D0
.equ dword_875E5DC, 0x875E5DC
.equ dword_875E5E8, 0x875E5E8
.equ dword_875E5F4, 0x875E5F4
.equ dword_875E600, 0x875E600
.equ dword_875E60C, 0x875E60C
.equ dword_875E618, 0x875E618
.equ dword_875E624, 0x875E624
.equ dword_875E630, 0x875E630
.equ dword_875E63C, 0x875E63C
.equ dword_875E648, 0x875E648
.equ dword_875E654, 0x875E654
.equ dword_875E660, 0x875E660
.equ dword_875E66C, 0x875E66C
.equ dword_875E678, 0x875E678
.equ dword_875E684, 0x875E684
.equ dword_875E690, 0x875E690
.equ dword_875E8DC, 0x875E8DC
.equ dword_875EA10, 0x875EA10
.equ dword_875F038, 0x875F038
.equ dword_875F424, 0x875F424
.equ dword_875F838, 0x875F838
.equ dword_875FAB8, 0x875FAB8
.equ dword_875FF70, 0x875FF70
.equ dword_87601FC, 0x87601FC
.equ dword_87605E0, 0x87605E0
.equ dword_8760910, 0x8760910
.equ dword_8760D38, 0x8760D38
.equ dword_8761234, 0x8761234
.equ dword_8761698, 0x8761698
.equ dword_87618C0, 0x87618C0
.equ dword_876210C, 0x876210C
.equ dword_8762434, 0x8762434
.equ dword_8762F98, 0x8762F98
.equ dword_8762FE4, 0x8762FE4
.equ dword_8762FF0, 0x8762FF0
.equ dword_876381C, 0x876381C
.equ dword_8763B24, 0x8763B24
.equ dword_87643A8, 0x87643A8
.equ dword_87643B4, 0x87643B4
.equ dword_87643C0, 0x87643C0
.equ off_87643CC, 0x87643CC
.equ off_87643D8, 0x87643D8
.equ dword_87643E4, 0x87643E4
.equ dword_8764FAC, 0x8764FAC
.equ unk_87658F0, 0x87658F0
.equ dword_87666B4, 0x87666B4
.equ dword_8766BFC, 0x8766BFC
.equ dword_87680AC, 0x87680AC
.equ dword_8768558, 0x8768558
.equ dword_8768D28, 0x8768D28
.equ dword_8768EEC, 0x8768EEC
.equ dword_8769148, 0x8769148
.equ dword_87691D8, 0x87691D8
.equ dword_87691E4, 0x87691E4
.equ dword_8769264, 0x8769264
.equ dword_8769270, 0x8769270
.equ dword_876927C, 0x876927C
.equ dword_87692AC, 0x87692AC
.equ off_87693BC, 0x87693BC
.equ off_87693C8, 0x87693C8
.equ off_87693D4, 0x87693D4
.equ dword_87693E0, 0x87693E0
.equ off_87694B4, 0x87694B4
.equ dword_87694C0, 0x87694C0
.equ dword_87698B0, 0x87698B0
.equ dword_8769BA8, 0x8769BA8
.equ dword_8769DE8, 0x8769DE8
.equ dword_876A5B4, 0x876A5B4
.equ dword_876B0DC, 0x876B0DC
.equ dword_876B29C, 0x876B29C
.equ dword_876B5A4, 0x876B5A4
.equ dword_876B7C4, 0x876B7C4
.equ dword_876B978, 0x876B978
.equ dword_876BD54, 0x876BD54
.equ dword_876BF64, 0x876BF64
.equ dword_876C0DC, 0x876C0DC
.equ dword_876C2A8, 0x876C2A8
.equ dword_876C880, 0x876C880
.equ dword_876CA38, 0x876CA38
.equ dword_876CBE8, 0x876CBE8
.equ dword_876CD18, 0x876CD18
.equ dword_876CE60, 0x876CE60
.equ dword_876D154, 0x876D154
.equ dword_876D378, 0x876D378
.equ dword_876D48C, 0x876D48C
.equ dword_876D580, 0x876D580
.equ dword_876D618, 0x876D618
.equ dword_876D7E0, 0x876D7E0
.equ dword_876DB88, 0x876DB88
.equ dword_876DE70, 0x876DE70
.equ dword_876E078, 0x876E078
.equ dword_876E144, 0x876E144
.equ dword_876E538, 0x876E538
.equ dword_876E698, 0x876E698
.equ dword_876E73C, 0x876E73C
.equ dword_876E874, 0x876E874
.equ dword_876E900, 0x876E900
.equ dword_876EE64, 0x876EE64
.equ dword_876F2EC, 0x876F2EC
.equ dword_876F7E4, 0x876F7E4
.equ dword_876FD30, 0x876FD30
.equ dword_876FE2C, 0x876FE2C
.equ dword_8770084, 0x8770084
.equ dword_87707EC, 0x87707EC
.equ dword_87709CC, 0x87709CC
.equ dword_8770D20, 0x8770D20
.equ dword_8770EC0, 0x8770EC0
.equ dword_877125C, 0x877125C
.equ dword_8771268, 0x8771268
.equ dword_877129C, 0x877129C
.equ off_87712BC, 0x87712BC
.equ dword_87712C8, 0x87712C8
.equ dword_8771844, 0x8771844
.equ dword_8771850, 0x8771850
.equ dword_877185C, 0x877185C
.equ dword_8771FAC, 0x8771FAC
.equ dword_8771FB8, 0x8771FB8
.equ dword_8771FC4, 0x8771FC4
.equ dword_8771FD0, 0x8771FD0
.equ dword_87786EC, 0x87786EC
.equ dword_8778810, 0x8778810
.equ dword_87789F4, 0x87789F4
.equ dword_8778B40, 0x8778B40
.equ off_87792A8, 0x87792A8
.equ off_87792B4, 0x87792B4
.equ off_87792C0, 0x87792C0
.equ dword_87792CC, 0x87792CC
.equ dword_87792DC, 0x87792DC
.equ dword_8779B1C, 0x8779B1C
.equ dword_8779F28, 0x8779F28
.equ dword_877A4A8, 0x877A4A8
.equ dword_877A7FC, 0x877A7FC
.equ dword_877C0FC, 0x877C0FC
.equ dword_877C534, 0x877C534
.equ dword_877C7A4, 0x877C7A4
.equ dword_877C94C, 0x877C94C
.equ dword_877CD94, 0x877CD94
.equ dword_877D7D4, 0x877D7D4
.equ unk_877D8CC, 0x877D8CC
.equ dword_877DAB4, 0x877DAB4
.equ dword_877DF6C, 0x877DF6C
.equ dword_877E03C, 0x877E03C
.equ dword_877E278, 0x877E278
.equ dword_877E3DC, 0x877E3DC
.equ off_877E554, 0x877E554
.equ off_877E560, 0x877E560
.equ dword_877E56C, 0x877E56C
.equ dword_877E620, 0x877E620
.equ dword_877E668, 0x877E668
.equ dword_877F594, 0x877F594
.equ dword_8780104, 0x8780104
.equ dword_8780724, 0x8780724
.equ dword_87808D0, 0x87808D0
.equ dword_8781048, 0x8781048
.equ dword_87813CC, 0x87813CC
.equ dword_8781564, 0x8781564
.equ dword_8781784, 0x8781784
.equ dword_8781B18, 0x8781B18
.equ dword_8781CB4, 0x8781CB4
.equ dword_8781ED4, 0x8781ED4
.equ dword_8781FE4, 0x8781FE4
.equ dword_8782048, 0x8782048
.equ dword_878205C, 0x878205C
.equ dword_87821B4, 0x87821B4
.equ off_87822E8, 0x87822E8
.equ dword_87822F4, 0x87822F4
.equ off_8782414, 0x8782414
.equ dword_8782420, 0x8782420
.equ dword_8782564, 0x8782564
.equ dword_87825B4, 0x87825B4
.equ off_87825C0, 0x87825C0
.equ dword_87825CC, 0x87825CC
.equ dword_8782FEC, 0x8782FEC
.equ dword_8783ED0, 0x8783ED0
.equ dword_878460C, 0x878460C
.equ dword_8784908, 0x8784908
.equ dword_87859C0, 0x87859C0
.equ dword_8785FF4, 0x8785FF4
.equ dword_8786694, 0x8786694
.equ dword_8786C04, 0x8786C04
.equ dword_8786EA0, 0x8786EA0
.equ dword_87876E4, 0x87876E4
.equ dword_8787C6C, 0x8787C6C
.equ dword_8788390, 0x8788390
.equ dword_8788F78, 0x8788F78
.equ dword_87892BC, 0x87892BC
.equ dword_8789780, 0x8789780
.equ dword_8789A10, 0x8789A10
.equ dword_878A004, 0x878A004
.equ dword_878A4E0, 0x878A4E0
.equ dword_878A898, 0x878A898
.equ dword_878CE18, 0x878CE18
.equ dword_878D038, 0x878D038
.equ dword_878D544, 0x878D544
.equ dword_878DAD4, 0x878DAD4
.equ dword_878DE08, 0x878DE08
.equ dword_878E728, 0x878E728
.equ dword_878EA40, 0x878EA40
.equ dword_878F110, 0x878F110
.equ dword_878F364, 0x878F364
.equ dword_878FA4C, 0x878FA4C
.equ dword_878FFC8, 0x878FFC8
.equ dword_8790508, 0x8790508
.equ dword_879073C, 0x879073C
.equ dword_87913C8, 0x87913C8
.equ dword_8791604, 0x8791604
.equ dword_87917D4, 0x87917D4
.equ dword_8791878, 0x8791878
.equ dword_8791A0C, 0x8791A0C
.equ dword_8791A28, 0x8791A28
.equ dword_8791AA8, 0x8791AA8
.equ dword_87921F4, 0x87921F4
.equ dword_8792478, 0x8792478
.equ dword_8793DCC, 0x8793DCC
.equ dword_8794604, 0x8794604
.equ dword_87948B8, 0x87948B8
.equ dword_8794EC0, 0x8794EC0
.equ dword_8795234, 0x8795234
.equ dword_87956C4, 0x87956C4
.equ dword_8795A38, 0x8795A38
.equ dword_8795A44, 0x8795A44
.equ dword_8795D58, 0x8795D58
.equ unk_8795E14, 0x8795E14
.equ dword_8796494, 0x8796494
.equ dword_87964A0, 0x87964A0
.equ dword_87964AC, 0x87964AC
.equ dword_87964C8, 0x87964C8
.equ dword_8796940, 0x8796940
.equ dword_879694C, 0x879694C
.equ dword_87969DC, 0x87969DC
.equ dword_8796AE4, 0x8796AE4
.equ dword_8797208, 0x8797208
.equ dword_8797214, 0x8797214
.equ dword_8797220, 0x8797220
.equ dword_8797310, 0x8797310
.equ dword_879748C, 0x879748C
.equ dword_8797498, 0x8797498
.equ dword_87974A4, 0x87974A4
.equ dword_87974B0, 0x87974B0
.equ dword_87979CC, 0x87979CC
.equ dword_87979F0, 0x87979F0
.equ dword_87979FC, 0x87979FC
.equ dword_8797A08, 0x8797A08
.equ off_8797A14, 0x8797A14
.equ dword_8797A20, 0x8797A20
.equ off_8797E70, 0x8797E70
.equ dword_8797E7C, 0x8797E7C
.equ dword_8797E88, 0x8797E88
.equ dword_8797E94, 0x8797E94
.equ dword_87982AC, 0x87982AC
.equ off_87982B8, 0x87982B8
.equ dword_87982C4, 0x87982C4
.equ dword_87982D0, 0x87982D0
.equ dword_87982DC, 0x87982DC
.equ off_8798474, 0x8798474
.equ off_8798480, 0x8798480
.equ dword_879848C, 0x879848C
.equ dword_8798498, 0x8798498
.equ dword_87984A4, 0x87984A4
.equ dword_8798660, 0x8798660
.equ dword_879896C, 0x879896C
.equ dword_8798978, 0x8798978
.equ dword_8798984, 0x8798984
.equ dword_8798990, 0x8798990
.equ dword_879899C, 0x879899C
.equ dword_87989A8, 0x87989A8
.equ dword_87989B4, 0x87989B4
.equ dword_87989C0, 0x87989C0
.equ dword_87989CC, 0x87989CC
.equ dword_87989D8, 0x87989D8
.equ dword_87989E4, 0x87989E4
.equ dword_8798B28, 0x8798B28
.equ dword_8798ED8, 0x8798ED8
.equ dword_8798EE4, 0x8798EE4
.equ off_87994A4, 0x87994A4
.equ dword_87994B0, 0x87994B0
.equ dword_87994BC, 0x87994BC
.equ off_879951C, 0x879951C
.equ dword_8799528, 0x8799528
.equ dword_8799534, 0x8799534
.equ dword_8799708, 0x8799708
.equ dword_8799AD4, 0x8799AD4
.equ dword_8799AE0, 0x8799AE0
.equ dword_8799E5C, 0x8799E5C
.equ dword_8799E68, 0x8799E68
.equ dword_879A228, 0x879A228
.equ dword_879A28C, 0x879A28C
.equ dword_879A63C, 0x879A63C
.equ dword_879A648, 0x879A648
.equ dword_879A654, 0x879A654
.equ dword_879A660, 0x879A660
.equ dword_879A66C, 0x879A66C
.equ dword_879A6DC, 0x879A6DC
.equ dword_879A6E8, 0x879A6E8
.equ dword_879A704, 0x879A704
.equ dword_879A764, 0x879A764
.equ dword_879A770, 0x879A770
.equ dword_879A77C, 0x879A77C
.equ dword_879AAB0, 0x879AAB0
.equ dword_879AACC, 0x879AACC
.equ dword_879AF5C, 0x879AF5C
.equ dword_879AF68, 0x879AF68
.equ dword_879B28C, 0x879B28C
.equ dword_879B298, 0x879B298
.equ dword_879B2B4, 0x879B2B4
.equ dword_879BF6C, 0x879BF6C
.equ dword_879C700, 0x879C700
.equ dword_879C70C, 0x879C70C
.equ dword_879C728, 0x879C728
.equ dword_879D130, 0x879D130
.equ dword_879D13C, 0x879D13C
.equ dword_879D158, 0x879D158
.equ dword_879DA44, 0x879DA44
.equ dword_879DA50, 0x879DA50
.equ dword_879DA5C, 0x879DA5C
.equ dword_879DA68, 0x879DA68
.equ dword_879DA74, 0x879DA74
.equ dword_879E3D0, 0x879E3D0
.equ dword_879E3DC, 0x879E3DC
.equ dword_879E3E8, 0x879E3E8
.equ dword_879E3F4, 0x879E3F4
.equ dword_879E4C4, 0x879E4C4
.equ dword_879E574, 0x879E574
.equ dword_879E580, 0x879E580
.equ dword_879E58C, 0x879E58C
.equ dword_879E598, 0x879E598
.equ off_879E62C, 0x879E62C
.equ dword_879E638, 0x879E638
.equ dword_879E644, 0x879E644
.equ dword_879E650, 0x879E650
.equ dword_879E65C, 0x879E65C
.equ off_879EB78, 0x879EB78
.equ off_879EB84, 0x879EB84
.equ dword_879EB90, 0x879EB90
.equ dword_879EB9C, 0x879EB9C
.equ dword_879EBA8, 0x879EBA8
.equ off_879F194, 0x879F194
.equ dword_879F1A0, 0x879F1A0
.equ dword_879F1AC, 0x879F1AC
.equ dword_879F1B8, 0x879F1B8
.equ off_879F5CC, 0x879F5CC
.equ off_879F5D8, 0x879F5D8
.equ dword_879F5E4, 0x879F5E4
.equ dword_879F5F0, 0x879F5F0
.equ dword_879F5FC, 0x879F5FC
.equ dword_879F6A0, 0x879F6A0
.equ dword_879F734, 0x879F734
.equ dword_879F740, 0x879F740
.equ dword_879FB18, 0x879FB18
.equ dword_879FB24, 0x879FB24
.equ dword_879FD9C, 0x879FD9C
.equ dword_879FDA8, 0x879FDA8
.equ dword_879FDB4, 0x879FDB4
.equ dword_87A00D8, 0x87A00D8
.equ dword_87A0434, 0x87A0434
.equ dword_87A0440, 0x87A0440
.equ dword_87A044C, 0x87A044C
.equ dword_87A04C0, 0x87A04C0
.equ dword_87A04CC, 0x87A04CC
.equ dword_87A04D8, 0x87A04D8
.equ dword_87A04E4, 0x87A04E4
.equ dword_87A05E0, 0x87A05E0
.equ dword_87A0698, 0x87A0698
.equ dword_87A06A4, 0x87A06A4
.equ dword_87A0700, 0x87A0700
.equ dword_87A07D0, 0x87A07D0
.equ dword_87A07DC, 0x87A07DC
.equ dword_87A0AA8, 0x87A0AA8
.equ dword_87A0B14, 0x87A0B14
.equ dword_87A0B20, 0x87A0B20
.equ dword_87A0B88, 0x87A0B88
.equ dword_87A0C18, 0x87A0C18
.equ dword_87A0C24, 0x87A0C24
.equ dword_87A0EF4, 0x87A0EF4
.equ dword_87A0F00, 0x87A0F00
.equ dword_87A0F0C, 0x87A0F0C
.equ dword_87A0FB8, 0x87A0FB8
.equ dword_87A0FC4, 0x87A0FC4
.equ dword_87A0FD0, 0x87A0FD0
.equ dword_87A1078, 0x87A1078
.equ dword_87A1084, 0x87A1084
.equ dword_87A1090, 0x87A1090
.equ dword_87A1120, 0x87A1120
.equ dword_87A112C, 0x87A112C
.equ dword_87A1138, 0x87A1138
.equ dword_87A1144, 0x87A1144
.equ dword_87A1570, 0x87A1570
.equ dword_87A157C, 0x87A157C
.equ dword_87A1588, 0x87A1588
.equ dword_87A1594, 0x87A1594
.equ dword_87A15A0, 0x87A15A0
.equ dword_87A1CC0, 0x87A1CC0
.equ dword_87A1CCC, 0x87A1CCC
.equ dword_87A1CD8, 0x87A1CD8
.equ dword_87A1CE4, 0x87A1CE4
.equ dword_87A1EF4, 0x87A1EF4
.equ dword_87A1F00, 0x87A1F00
.equ dword_87A1F0C, 0x87A1F0C
.equ dword_87A1F18, 0x87A1F18
.equ dword_87A243C, 0x87A243C
.equ dword_87A2448, 0x87A2448
.equ dword_87A2454, 0x87A2454
.equ dword_87A2460, 0x87A2460
.equ dword_87A29B4, 0x87A29B4
.equ dword_87A29C0, 0x87A29C0
.equ dword_87A29CC, 0x87A29CC
.equ dword_87A29D8, 0x87A29D8
.equ dword_87A2B20, 0x87A2B20
.equ dword_87A2B2C, 0x87A2B2C
.equ dword_87A2B38, 0x87A2B38
.equ dword_87A2B44, 0x87A2B44
.equ dword_87A2B50, 0x87A2B50
.equ dword_87A2BEC, 0x87A2BEC
.equ dword_87A2BF8, 0x87A2BF8
.equ dword_87A2C04, 0x87A2C04
.equ off_87A3168, 0x87A3168
.equ off_87A3174, 0x87A3174
.equ dword_87A3180, 0x87A3180
.equ dword_87A3624, 0x87A3624
.equ dword_87A3630, 0x87A3630
.equ dword_87A363C, 0x87A363C
.equ dword_87A36E8, 0x87A36E8
.equ dword_87A36F4, 0x87A36F4
.equ dword_87A377C, 0x87A377C
.equ dword_87A3788, 0x87A3788
.equ dword_87A3794, 0x87A3794
.equ dword_87A37A0, 0x87A37A0
.equ dword_87A37AC, 0x87A37AC
.equ dword_87A39FC, 0x87A39FC
.equ dword_87A3A08, 0x87A3A08
.equ dword_87A3A14, 0x87A3A14
.equ dword_87A3AFC, 0x87A3AFC
.equ dword_87A3B08, 0x87A3B08
.equ dword_87A3B84, 0x87A3B84
.equ dword_87F2E38, 0x87F2E38
.equ dword_87F2ED0, 0x87F2ED0

.endif // INC_CHATBOX
