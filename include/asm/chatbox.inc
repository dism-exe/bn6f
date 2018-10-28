.ifndef INC_ASM_CHATBOX
.equ INC_ASM_CHATBOX, 0

/* Public Symbols */
.global chatbox_uncomp_803FD08 // () -> int
.global chatbox_dead_uncomp_803FD3C
.global chatbox_runScript_202da04 // (u8 scriptID) -> void
.global chatbox_803FD78 // (u16 *scriptArr, u8 scriptID) -> void
.global chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
.global loc_803FDA4
.global chatbox_runScript_803FE08 // (u16 *scriptArr, u8 scriptID) -> void
.global chatbox_803FE10
.global chatbox_runScript_803FE74 // (u16 *scriptList, u8 scriptOffIdx) -> void
.global chatbox_onUpdate_803FEB4
.global byte_804033B
.global off_804033C
.global chatbox_runTrainScript // (u8 scriptOffIdx) -> void
.global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
.global chatbox_reqBBS_80404C0
.global chatbox_8040818
.global chatbox_maskFlags_3e // (int mask) -> void
// 
.global unk_8040A04
.global chatbox_8040D5C
.global off_8043C8C
.global byte_8043CA4
.global byte_8043E84
.global byte_8044064
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
.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sound_bgmusic_play // (int a1) -> void
// .global sub_800068A
// .global sub_80006A2
// .global musicGameState_8000784 // () -> void
// .global CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
// .global CpuFastSet_ZeroFillWord // (int a1, int a2) -> void
// .global copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
// .global CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
// .global loc_8000AC8
// .global sub_8000C00
// .global sub_8000C5C
// .global getPETNaviSelect // () -> u8
// .global sub_80010D4
// .global sub_80010EC
// .global sub_8001154
// .global change_20013F0_800151C // () -> int
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_8002694

.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_80026B6
// .global sprite_update
// .global sprite_chatbox_80026D6
// .global sprite_load // (int a1, int a2, int a3) ->
// .global spriteLoadMugshot_800275A // (int a1) -> void
// .global sub_8002818
// .global sub_8002874
// .global sprite_setAnimation // (u8 a1) -> void

.include "asm/asm00_1.inc"
// .global sub_8002DEA
// .global sub_8002F90 // () -> void
// .global sub_8003914
// .global sub_8003A64
// .global gameState_8005BC8 // (BattleSettings *bt, bool a2) -> void
// .global subsystem_launchBBS
// .global subsystem_launchReqBBS
// .global subsystem_launchShop
// .global subsystem_launchChipTrader
// .global sub_8005EA2
// .global subsystem_launchMail
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global getBattleSettingsFromList0 // (int battleSettingsIdx) -> BattleSettings*
// .global sub_800B6B0

.include "asm/asm00_2.inc"
// .global sub_8013704
// .global sub_80137FE

.include "asm/asm02.inc"
// .global sub_8021AEE
// .global sub_8021B78 // (int idx, int searchItem, int off) -> void*
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*
// .global sub_8021BC0
// .global sub_8021BD8
// .global sub_8021C02

.include "asm/asm03_0.inc"
// .global sub_802D158
// .global sub_802D15E
// .global SetEventFlag // (u16 entryFlagBitfield) -> void
// .global ClearEventFlag // (u16 entryFlagBitfield) -> void
// .global ToggleEventFlag // (u16 entryFlagBitfield) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global SetEventFlagRange // (u16 entryFlagBitfield) -> void
// .global ClearEventFlagRange // (u16 entryFlagBitfield) -> void
// .global TestEventFlagRange
// .global sub_802F238
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void

.include "asm/asm03_1.inc"
// .global sub_8033FC0
// .global npc_getMapSpriteScriptOffsets
// .global sub_80351B4
// .global sub_803522E
// .global sub_8036E44
// .global sub_8036E78
// .global sub_803CD98
// .global sub_803CDF8
// .global sub_803CE08
// .global sub_803CE28
// .global sub_803CEB8
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

.include "asm/asm03_2.inc"
// .global sub_8048C24
// .global sub_8048F88

.include "data/dat13.inc"
// .global byte_8070605

.include "asm/asm28_0.inc"
// .global sub_809CA84
// .global updateFlags_809E0B0 // () -> void
// .global sub_809E122
// .global sub_809E13C
// .global sub_809E14C
// .global sub_809E228
// .global sub_809E2B8
// .global loc_809E314

.include "asm/asm28_1.inc"
// .global sub_809FE5E

.include "asm/asm29.inc"
// .global sub_80AA5F4
// .global sub_80AA86E

.include "asm/asm32.inc"
// .global sub_811FFC0 // () -> void
// .global sub_81207F8
// .global sub_8120DF0

.include "asm/asm36.inc"
// .global sub_8137718

.include "asm/asm37_0.inc"
// .global sub_813C030 // () -> void
// .global sub_813C3AC

.include "asm/reqBBS.inc"
// .global reqBBS_813E5DC
// .global reqBBS_813E660
// .global dword_813F380
// .global reqBBS_813F9A0
// .global sub_813FA24
// .global reqBBS_getTotalPointsIndex // () -> u8
// .global reqBBS_81408B4

.include "asm/asm37_1.inc"
// .global sub_814187C
// .global sub_8142134
// .global sub_814227A
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void

.include "data/dat38_59.inc"
// .global byte_8521A12

.include "data/dat38_60.inc"
// .global dword_86A4740
// .global unk_86A48C0
// .global dword_86A4A40
// .global dword_86B7AA0
// .global dword_86B7AC0
// .global dword_86BEB20
// .global byte_86BEC80
// .global byte_86BECA0
// .global byte_86BEE80
// .global byte_86BF060
// .global byte_86BF240
// .global byte_86BF420
// .global byte_86BF600
// .global byte_86BF7E0
// .global byte_86BF9C0
// .global unk_86BFBA0
// .global byte_86BFE20
// .global byte_86BFE40
// .global byte_86BFE60
// .global byte_86C0040
// .global byte_86C0220
// .global byte_86C0400
// .global unk_86C05E0
// .global byte_86C0900
// .global byte_86C0920
// .global byte_86C0940

.include "data/dat38_71.inc"
// .global byte_86CF4AC

.include "data/dat38_85.inc"
// .global byte_86EA94C
// .global byte_86EB354
// .global byte_86EF71C
// .global byte_86F2960
// .global byte_86F2980
// .global byte_86F2A00
// .global byte_86F2A80
// .global byte_86F2B00
// .global byte_86F2B80
// .global byte_86F2C00
// .global byte_86F2C80

.include "data/dat38_87.inc"
// .global byte_873D9FC
// .global byte_873EA50
// .global dword_873F008
// .global dword_873F028
// .global dword_873F048
// .global dword_873F430
// .global dword_873F908
// .global dword_873FD64
// .global dword_874041C
// .global dword_8740974
// .global dword_8740E90
// .global dword_87414AC
// .global dword_8741D04
// .global dword_8742318
// .global dword_87428D4
// .global dword_8742D64
// .global dword_87433BC
// .global dword_87439D8
// .global byte_8743F6C
// .global byte_87444C8
// .global byte_8744B38
// .global dword_8745100
// .global dword_874584C
// .global dword_8745DEC
// .global dword_87461A0
// .global unk_87462D0
// .global dword_87463F4
// .global dword_87464AC
// .global dword_87466F8
// .global dword_87469C4
// .global dword_8746A34
// .global dword_8746AE8
// .global dword_8746D34
// .global dword_8746E38
// .global dword_8746EF0
// .global dword_874713C
// .global dword_8747228
// .global dword_8747474
// .global unk_87477F4
// .global dword_8747D30
// .global dword_8748650
// .global dword_8748F44
// .global dword_8749514
// .global dword_8749C38
// .global dword_874A638
// .global dword_874B154
// .global dword_874B878
// .global dword_874BC34
// .global dword_874C5D0
// .global dword_874D038
// .global dword_874D74C
// .global dword_874DCF0
// .global dword_874E6E0
// .global dword_874EFE0
// .global dword_874F5C4
// .global unk_874F980
// .global dword_87502B4
// .global dword_8750B80
// .global dword_8751150
// .global dword_87517E8
// .global dword_8752174
// .global dword_8752818
// .global dword_8752FBC
// .global dword_875358C
// .global dword_8753F78
// .global dword_8754620
// .global dword_8754674
// .global dword_87550BC
// .global dword_87557A8
// .global dword_8755834
// .global dword_87558D8
// .global off_8755C0C
// .global dword_8755C18
// .global dword_8756124
// .global unk_87565E8
// .global dword_8756AA4
// .global dword_8756C9C
// .global dword_875752C
// .global dword_8757B7C
// .global dword_8758018
// .global dword_8758410
// .global dword_8758834
// .global dword_8758AF0
// .global dword_8758D98
// .global dword_875906C
// .global dword_8759480
// .global dword_8759870
// .global dword_8759C10
// .global dword_8759EF8
// .global dword_875A2C4
// .global dword_875A918
// .global dword_875B064
// .global byte_875B30C
// .global byte_875B4B0
// .global byte_875B934
// .global byte_875BCB4
// .global byte_875BE5C
// .global byte_875BF80
// .global dword_875BFD8
// .global unk_875C22C
// .global dword_875C4B8
// .global dword_875C83C
// .global dword_875CB68
// .global dword_875CE10
// .global dword_875CFC4
// .global dword_875D1FC
// .global dword_875D5E0
// .global off_875D774
// .global dword_875D780
// .global dword_875D800
// .global dword_875D974
// .global dword_875D9C0
// .global dword_875DA0C
// .global dword_875DA58
// .global dword_875DAB8
// .global dword_875DB18
// .global dword_875DBD8
// .global dword_875DC10
// .global dword_875DC48
// .global dword_875DC80
// .global dword_875DD4C
// .global dword_875DDF8
// .global dword_875DE80
// .global off_875DF20
// .global dword_875DF2C
// .global dword_875DF38
// .global dword_875DF44
// .global dword_875DF50
// .global dword_875DF78
// .global dword_875DFA4
// .global dword_875DFB0
// .global dword_875DFBC
// .global dword_875DFC8
// .global dword_875DFD4
// .global dword_875DFE0
// .global dword_875DFEC
// .global dword_875DFF8
// .global dword_875E0F4
// .global dword_875E100
// .global off_875E36C
// .global dword_875E378
// .global dword_875E414
// .global dword_875E4AC
// .global dword_875E52C
// .global dword_875E5C4
// .global dword_875E5D0
// .global dword_875E5DC
// .global dword_875E5E8
// .global dword_875E5F4
// .global dword_875E600
// .global dword_875E60C
// .global dword_875E618
// .global dword_875E624
// .global dword_875E630
// .global dword_875E63C
// .global dword_875E648
// .global dword_875E654
// .global dword_875E660
// .global dword_875E66C
// .global dword_875E678
// .global dword_875E684
// .global dword_875E690
// .global dword_875E8DC
// .global dword_875EA10
// .global dword_875F038
// .global dword_875F424
// .global dword_875F838
// .global dword_875FAB8
// .global dword_875FF70
// .global dword_87601FC
// .global dword_87605E0
// .global dword_8760910
// .global dword_8760D38
// .global dword_8761234
// .global dword_8761698
// .global dword_87618C0
// .global dword_876210C
// .global dword_8762434
// .global dword_8762F98
// .global dword_8762FE4
// .global dword_8762FF0
// .global dword_876381C
// .global dword_8763B24
// .global dword_87643A8
// .global dword_87643B4
// .global dword_87643C0
// .global off_87643CC
// .global off_87643D8
// .global dword_87643E4
// .global dword_8764FAC
// .global unk_87658F0
// .global dword_87666B4
// .global dword_8766BFC
// .global dword_87680AC
// .global dword_8768558
// .global dword_8768D28
// .global dword_8768EEC
// .global dword_8769148
// .global dword_87691D8
// .global dword_87691E4
// .global dword_8769264
// .global dword_8769270
// .global dword_876927C
// .global dword_87692AC
// .global off_87693BC
// .global off_87693C8
// .global off_87693D4
// .global dword_87693E0
// .global off_87694B4
// .global dword_87694C0
// .global dword_87698B0
// .global dword_8769BA8
// .global dword_8769DE8
// .global dword_876A5B4
// .global dword_876B0DC
// .global dword_876B29C
// .global dword_876B5A4
// .global dword_876B7C4
// .global dword_876B978
// .global dword_876BD54
// .global dword_876BF64
// .global dword_876C0DC
// .global dword_876C2A8
// .global dword_876C880
// .global dword_876CA38
// .global dword_876CBE8
// .global dword_876CD18
// .global dword_876CE60
// .global dword_876D154
// .global dword_876D378
// .global dword_876D48C
// .global dword_876D580
// .global dword_876D618
// .global dword_876D7E0
// .global dword_876DB88
// .global dword_876DE70
// .global dword_876E078
// .global dword_876E144
// .global dword_876E538
// .global dword_876E698
// .global dword_876E73C
// .global dword_876E874
// .global dword_876E900
// .global dword_876EE64
// .global dword_876F2EC
// .global dword_876F7E4
// .global dword_876FD30
// .global dword_876FE2C
// .global dword_8770084
// .global dword_87707EC
// .global dword_87709CC
// .global dword_8770D20
// .global dword_8770EC0
// .global dword_877125C
// .global dword_8771268
// .global dword_877129C
// .global off_87712BC
// .global dword_87712C8
// .global dword_8771844
// .global dword_8771850
// .global dword_877185C
// .global dword_8771FAC
// .global dword_8771FB8
// .global dword_8771FC4
// .global dword_8771FD0
// .global byte_8772974
// .global byte_8773068
// .global byte_8773730
// .global byte_877416C
// .global byte_8774530
// .global byte_8774F48
// .global byte_8775208
// .global byte_877567C
// .global byte_8775B60
// .global byte_8775E00
// .global byte_8776A20
// .global byte_8776C50
// .global byte_8777078
// .global byte_8777428
// .global byte_877767C
// .global byte_8778400
// .global dword_87786EC
// .global dword_8778810
// .global dword_87789F4
// .global dword_8778B40
// .global off_87792A8
// .global off_87792B4
// .global off_87792C0
// .global dword_87792CC
// .global dword_87792DC
// .global dword_8779B1C
// .global dword_8779F28
// .global dword_877A4A8
// .global dword_877A7FC
// .global dword_877C0FC
// .global dword_877C534
// .global dword_877C7A4
// .global dword_877C94C
// .global dword_877CD94
// .global dword_877D7D4
// .global unk_877D8CC
// .global dword_877DAB4
// .global dword_877DF6C
// .global dword_877E03C
// .global dword_877E278
// .global dword_877E3DC
// .global off_877E554
// .global off_877E560
// .global dword_877E56C
// .global dword_877E620
// .global byte_877EDD8
// .global byte_877F460
// .global dword_877F594
// .global dword_8780104
// .global dword_8780724
// .global dword_87808D0
// .global dword_8781048
// .global dword_87813CC
// .global dword_8781564
// .global dword_8781784
// .global dword_8781B18
// .global dword_8781CB4
// .global dword_8781ED4
// .global dword_8781FE4
// .global dword_8782048
// .global dword_878205C
// .global dword_87821B4
// .global off_87822E8
// .global dword_87822F4
// .global off_8782414
// .global dword_8782420
// .global dword_8782564
// .global dword_87825B4
// .global off_87825C0
// .global dword_87825CC
// .global dword_8782FEC
// .global dword_8783ED0
// .global dword_878460C
// .global dword_8784908
// .global dword_87859C0
// .global dword_8785FF4
// .global dword_8786694
// .global dword_8786C04
// .global dword_8786EA0
// .global dword_87876E4
// .global dword_8787C6C
// .global dword_8788390
// .global dword_8788F78
// .global dword_87892BC
// .global dword_8789780
// .global dword_8789A10
// .global dword_878A004
// .global dword_878A4E0
// .global dword_878A898
// .global byte_878B46C
// .global byte_878B690
// .global byte_878BC64
// .global byte_878C214
// .global byte_878C5C8
// .global dword_878CE18
// .global dword_878D038
// .global dword_878D544
// .global dword_878DAD4
// .global dword_878DE08
// .global dword_878E728
// .global dword_878EA40
// .global dword_878F110
// .global dword_878F364
// .global dword_878FA4C
// .global dword_878FFC8
// .global dword_8790508
// .global dword_879073C
// .global dword_87913C8
// .global dword_8791604
// .global dword_87917D4
// .global dword_8791878
// .global dword_8791A0C
// .global dword_8791A28
// .global dword_8791AA8
// .global dword_87921F4
// .global dword_8792478
// .global dword_8793DCC
// .global dword_8794604
// .global dword_87948B8
// .global dword_8794EC0
// .global dword_8795234
// .global dword_87956C4
// .global dword_8795A38
// .global dword_8795A44
// .global dword_8795D58
// .global unk_8795E14
// .global dword_8796494
// .global dword_87964A0
// .global dword_87964AC
// .global dword_87964C8
// .global dword_8796940
// .global dword_879694C
// .global dword_87969DC
// .global dword_8796AE4
// .global dword_8797208
// .global dword_8797214
// .global dword_8797220
// .global dword_8797310
// .global dword_879748C
// .global dword_8797498
// .global dword_87974A4
// .global dword_87974B0
// .global dword_87979CC
// .global dword_87979F0
// .global dword_87979FC
// .global dword_8797A08
// .global off_8797A14
// .global dword_8797A20
// .global off_8797E70
// .global dword_8797E7C
// .global dword_8797E88
// .global dword_8797E94
// .global dword_87982AC
// .global off_87982B8
// .global dword_87982C4
// .global dword_87982D0
// .global dword_87982DC
// .global off_8798474
// .global off_8798480
// .global dword_879848C
// .global dword_8798498
// .global dword_87984A4
// .global dword_8798660
// .global dword_879896C
// .global dword_8798978
// .global dword_8798984
// .global dword_8798990
// .global dword_879899C
// .global dword_87989A8
// .global dword_87989B4
// .global dword_87989C0
// .global dword_87989CC
// .global dword_87989D8
// .global dword_87989E4
// .global dword_8798B28
// .global dword_8798ED8
// .global dword_8798EE4
// .global off_87994A4
// .global dword_87994B0
// .global dword_87994BC
// .global off_879951C
// .global dword_8799528
// .global dword_8799534
// .global dword_8799708
// .global dword_8799AD4
// .global dword_8799AE0
// .global dword_8799E5C
// .global dword_8799E68
// .global dword_879A228
// .global dword_879A28C
// .global dword_879A63C
// .global dword_879A648
// .global dword_879A654
// .global dword_879A660
// .global dword_879A66C
// .global dword_879A6DC
// .global dword_879A6E8
// .global dword_879A704
// .global dword_879A764
// .global dword_879A770
// .global dword_879A77C
// .global dword_879AAB0
// .global dword_879AACC
// .global dword_879AF5C
// .global dword_879AF68
// .global dword_879B28C
// .global dword_879B298
// .global dword_879B2B4
// .global dword_879BF6C
// .global dword_879C700
// .global dword_879C70C
// .global dword_879C728
// .global dword_879D130
// .global dword_879D13C
// .global dword_879D158
// .global dword_879DA44
// .global dword_879DA50
// .global dword_879DA5C
// .global dword_879DA68
// .global dword_879DA74
// .global dword_879E3D0
// .global dword_879E3DC
// .global dword_879E3E8
// .global dword_879E3F4
// .global dword_879E4C4
// .global dword_879E574
// .global dword_879E580
// .global dword_879E58C
// .global dword_879E598
// .global off_879E62C
// .global dword_879E638
// .global dword_879E644
// .global dword_879E650
// .global dword_879E65C
// .global off_879EB78
// .global off_879EB84
// .global dword_879EB90
// .global dword_879EB9C
// .global dword_879EBA8
// .global off_879F194
// .global dword_879F1A0
// .global dword_879F1AC
// .global dword_879F1B8
// .global off_879F5CC
// .global off_879F5D8
// .global dword_879F5E4
// .global dword_879F5F0
// .global dword_879F5FC
// .global dword_879F6A0
// .global dword_879F734
// .global dword_879F740
// .global dword_879FB18
// .global dword_879FB24
// .global dword_879FD9C
// .global dword_879FDA8
// .global dword_879FDB4
// .global dword_87A00D8
// .global dword_87A0434
// .global dword_87A0440
// .global dword_87A044C
// .global dword_87A04C0
// .global dword_87A04CC
// .global dword_87A04D8
// .global dword_87A04E4
// .global dword_87A05E0
// .global dword_87A0698
// .global dword_87A06A4
// .global dword_87A0700
// .global dword_87A07D0
// .global dword_87A07DC
// .global dword_87A0AA8
// .global dword_87A0B14
// .global dword_87A0B20
// .global dword_87A0B88
// .global dword_87A0C18
// .global dword_87A0C24
// .global dword_87A0EF4
// .global dword_87A0F00
// .global dword_87A0F0C
// .global dword_87A0FB8
// .global dword_87A0FC4
// .global dword_87A0FD0
// .global dword_87A1078
// .global dword_87A1084
// .global dword_87A1090
// .global dword_87A1120
// .global dword_87A112C
// .global dword_87A1138
// .global dword_87A1144
// .global dword_87A1570
// .global dword_87A157C
// .global dword_87A1588
// .global dword_87A1594
// .global dword_87A15A0
// .global dword_87A1CC0
// .global dword_87A1CCC
// .global dword_87A1CD8
// .global dword_87A1CE4
// .global dword_87A1EF4
// .global dword_87A1F00
// .global dword_87A1F0C
// .global dword_87A1F18
// .global dword_87A243C
// .global dword_87A2448
// .global dword_87A2454
// .global dword_87A2460
// .global dword_87A29B4
// .global dword_87A29C0
// .global dword_87A29CC
// .global dword_87A29D8
// .global dword_87A2B20
// .global dword_87A2B2C
// .global dword_87A2B38
// .global dword_87A2B44
// .global dword_87A2B50
// .global dword_87A2BEC
// .global dword_87A2BF8
// .global dword_87A2C04
// .global off_87A3168
// .global off_87A3174
// .global dword_87A3180
// .global dword_87A3624
// .global dword_87A3630
// .global dword_87A363C
// .global dword_87A36E8
// .global dword_87A36F4
// .global dword_87A377C
// .global dword_87A3788
// .global dword_87A3794
// .global dword_87A37A0
// .global dword_87A37AC
// .global dword_87A39FC
// .global dword_87A3A08
// .global dword_87A3A14
// .global dword_87A3AFC
// .global dword_87A3B08
// .global dword_87A3B84

.include "data/dat38_96.inc"
// .global byte_87F2E38
// .global dword_87F2ED0


/* Undeclared Symbols */
// .equ unk_20018F0, 0x20018F0
// .equ unk_200194C, 0x200194C
// .equ unk_20019A8, 0x20019A8
// .equ unk_2001A04, 0x2001A04
// .equ unk_2001A60, 0x2001A60
// .equ unk_2001ABC, 0x2001ABC
// .equ dynaicArr, 0x2005780
// .equ sSubmenu, 0x2009A30
// .equ unk_2009A80, 0x2009A80
// .equ unk_2009A82, 0x2009A82
// .equ unk_2009A84, 0x2009A84
// .equ unk_2009A86, 0x2009A86
// .equ unk_2009A88, 0x2009A88
// .equ unk_2009A8A, 0x2009A8A
// .equ dword_2009F38, 0x2009F38
// .equ eOWPlayerObject, 0x2009F40
// .equ unk_200A293, 0x200A293
// .equ i_joGameSubsysSel, 0x200A480
// .equ unk_200AFA0, 0x200AFA0
// .equ unk_200B2B0, 0x200B2B0
// .equ unk_200BEA0, 0x200BEA0
// .equ unk_200C1A0, 0x200C1A0
// .equ unk_200C1B0, 0x200C1B0
// .equ unk_200C4B0, 0x200C4B0
// .equ unk_200C4D0, 0x200C4D0
// .equ unk_200C4F0, 0x200C4F0
// .equ unk_200C7A0, 0x200C7A0
// .equ unk_200C7C0, 0x200C7C0
// .equ unk_200C7E0, 0x200C7E0
// .equ unk_200C7F0, 0x200C7F0
// .equ dword_200CDA0, 0x200CDA0
// .equ unk_2011A9D, 0x2011A9D
// .equ unk_2011C54, 0x2011C54
// .equ unk_2011C55, 0x2011C55
// .equ unk_2011C56, 0x2011C56
// .equ unk_2011C57, 0x2011C57
// .equ byte_201F070, 0x201F070
// .equ reqBBS_requestNames_textualData, 0x2025A04
// .equ unk_202DA00, 0x202DA00
// .equ unk_202DA04, 0x202DA04
// .equ byte_202FA00, 0x202FA00
// .equ unk_2033400, 0x2033400
// .equ unk_2034A00, 0x2034A00
// .equ unk_2034A04, 0x2034A04
// .equ byte_3001650, 0x3001650
// .equ byte_3001710, 0x3001710
// .equ unk_3001B40, 0x3001B40
// .equ sub_3006F8C, 0x3006F8C
// .equ sub_3007038, 0x3007038
// .equ sub_30070B4, 0x30070B4
// .global spriteWhiteDot

.endif // INC_ASM_CHATBOX
