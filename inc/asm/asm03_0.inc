.ifndef INC_ASM_ASM03_0
.equ INC_ASM_ASM03_0, 0

/* Public Symbols */
.global ho_8026554
.global sub_8026840
.global loc_8026A28
.global sub_8027D10
.global sub_802A866
.global loc_802A87C
.global sub_802B2A0
.global sub_802B358
.global sub_802B438
.global sub_802B4D4
.global sub_802B51C
.global sub_802B6EC
.global loc_802B734
.global loc_802BD60
.global sub_802C34E
.global sub_802C8FA
.global sub_802C9B8
.global sub_802C9EA
.global sub_802CA82
.global sub_802CB38
.global loc_802CB78
.global off_802CCB4
.global off_802CD5C
.global sub_802CDD0
.global sub_802CDE6
.global sub_802CDFE
.global sub_802CE10
.global sub_802CE30
.global sub_802CE54
.global sub_802CE60
.global sub_802CE78
.global sub_802CE8A
.global sub_802CEA6
.global sub_802CEC8
.global sub_802CEF4
.global sub_802CFF8
.global sub_802D064
.global sub_802D08C
.global sub_802D158
.global sub_802D15E
.global sub_802D1B4
.global sub_802D1BE
.global sub_802D234
.global get_802D246 // () -> int
.global sub_802D254 // () -> int
.global sub_802D266
.global sub_802D26A
.global getBattleSettings_200AF60 // () -> BattleSettings*
.global copyBattleSettingsTo_200AF60 // (BattleSettings *src) -> void
.global battleSettings_setFlags_unkSettings // (int mask) -> void
.global battleSettings_setBackground // (u8 background) -> void
.global battleSettings_802D2B2 // () -> BattleSettings*
.global sub_802D310
.global sub_802D322
.global loc_802D4C6
.global sub_802D638
.global sub_802D644
.global sub_802D652
.global sub_802D65E
.global sub_802D6A0
.global sub_802D6C4
.global loc_802D714
.global loc_802D926
.global sub_802DCDE
.global sub_802DCEC
.global sub_802DD2A
.global sub_802DE5C
.global sub_802DFC8
.global sub_802DFFC
.global sub_802E014
.global sub_802E032
.global sub_802E04E
.global sub_802E066
.global sub_802E070
.global sub_802E09A
.global sub_802E112
.global sub_802E156
.global sub_802E1D8
.global sub_802E240
.global sub_802E440
.global sub_802E44A
.global sub_802E454
.global sub_802E45E
.global sub_802E4B8
.global sub_802E4E4
.global sub_802E830
.global sub_802EF5C
.global sub_802F068
.global dword_802F0A8
.global sub_802F0C4
.global sub_802F0D8
.global sub_802F0F4
.global setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
.global setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
.global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
.global clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
.global toggleFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
.global toggleFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
.global isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
.global isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
.global setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
.global setFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
.global clearFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
.global clearFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
.global sub_802F1FC // (int a3, int a2) ->
.global loc_802F200
.global sub_802F238
.global sub_802F2C8
.global off_802FD70
.global dword_802FD74
.global sub_802FDB0
.global loc_802FDB4
.global objRender_802FE0C
.global sub_802FE28
.global sub_802FE48
.global sub_802FE6A
.global sub_802FE7A
.global sub_802FF2C
.global sub_802FF4C
.global loc_802FFF4
.global sub_80301B2
.global sub_80301DC
.global sub_80302A8
.global sub_80302B6
.global sub_80302C0
.global loc_8030308
.global sub_803037C
.global sub_80303E8
.global sub_80303F2
.global loc_8030472
.global sub_80304E8
.global sub_8030540
.global sub_8030580
.global sub_80307D8
.global sub_8030808
.global loc_8030A00
.global sub_8030A30
.global sub_8030A60
.global sub_8030AA4
.global sub_8030B6A
.global sub_8031612
.global sub_8031A7A
.global dword_8031CC4
.global off_803385C
.global dword_8033878
.global sub_8033948
.global sub_8033978
.global loc_80339CC
.global sub_8033FC0
.global sub_80341AA
.global off_8034938
.global sub_8034B4C
.global sub_8034BB8
.global sub_8034C36
.global sub_8034FB8
.global sub_803522E
.global sub_803532C
.global sub_803537C
.global sub_8035408
.global sub_8035424
.global sub_80355A8
.global sub_80355EC
.global sub_8035694
.global sub_80356EC
.global sub_8035738
.global sub_803578C
.global sub_8036E44
.global sub_8036E78
.global init_s_02011C50_8036E90
.global sub_8036ED4
.global sub_8036EFE
.global sub_8036F24
.global s_2011C50_ptr_1C_isNull // () -> zf
.global s_2011C50_8036F40 // () -> zf
.global sub_8036F58
.global sub_8036F70
.global sub_8036F98
.global sub_8036FAA
.global sub_8037AEC
.global sub_80385F0
.global sub_8038A9C
.global sub_803A104
.global sub_803A1B0
.global sub_803A5F4
.global sub_803A740
.global sub_803A752
.global sub_803A764
.global sub_803A7B8
.global sub_803A7EC
.global sub_803A820
.global sub_803A8B4
.global sub_803AFC2
.global sub_803B522
.global sub_803B674
.global sub_803B91C
.global sub_803BA64
.global sub_803BAE2
.global sub_803BB2C
.global sub_803BB7C
.global sub_803BB80
.global sub_803BB90
.global sub_803BB94
.global sub_803BC7C
.global sub_803BE30
.global sub_803BEC0
.global sub_803C0BE
.global sub_803C132
.global sub_803C150
.global sub_803C168
.global sub_803C1A8
.global sub_803C1BC
.global sub_803C26A
.global sub_803C28A
.global sub_803C2A0
.global sub_803C2AA
.global sub_803C316
.global sub_803C320
.global sub_803C330
.global sub_803C3E0
.global sub_803C440
.global sub_803C514
.global sub_803C558
.global sub_803C59C
.global sub_803C604
.global sub_803C612
.global sub_803C620
.global sub_803C754
.global sub_803CAF8
.global sub_803CB00
.global sub_803CB0C
.global sub_803CB18
.global sub_803CB78
.global sub_803CB8C
.global sub_803CCC0
.global sub_803CD74
.global sub_803CD98
.global sub_803CDF8
.global sub_803CE08
.global sub_803CE28
.global sub_803CE44
.global sub_803CEB8
.global sub_803CED4
.global sub_803CFF8
.global sub_803D02C
.global sub_803D040
.global sub_803D06C
.global sub_803D080
.global sub_803D0B4
.global sub_803D0C8
.global sub_803D0F4
.global sub_803D108
.global sub_803D118
.global sub_803D128
.global sub_803D138
.global sub_803D148
.global sub_803D1A8
.global loc_803D1AC
.global sub_803DCD8
.global sub_803DCE8
.global sub_803DD30
.global sub_803DD60
.global sub_803DDA4
.global sub_803DE24
.global sub_803DE5C
.global sub_803DE88
.global sub_803DEAC
.global sub_803DEB4
.global sub_803E8F8
.global sub_803E900
.global sub_803EA2C
.global sub_803EA50
.global sub_803EA58
.global sub_803EA60
.global sub_803EA68
.global sub_803EA70
.global loc_803EA78
.global sub_803EAE4
.global sub_803EBAC
.global sub_803EBB8
.global sub_803EBC8
.global sub_803EBF4
.global sub_803ECFC
.global loc_803ED90
.global sub_803EF60
.global sub_803EF74
.global sub_803EF7C
.global sub_803F030
.global sub_803F05C
.global sub_803F334
.global sub_803F4C8
.global sub_803F4EC
.global sub_803F500
.global sub_803F524
.global sub_803F530
.global sub_803F618
.global sub_803F674
.global sub_803F6B0
.global sub_803F740
.global sub_803F798
.global sub_803F79E
.global sub_803F838
.global sub_803F9E4
.global sub_803FB28
.global dword_803FCE4
.global sub_803FCF0


/* External Symbols */
.include "asm/start.inc"
// .global start_
// .global start_8000288

.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sound_bgmusic_play // (int a1) -> void
// .global sub_80005F2
// .global sub_8000642
// .global sub_800068A
// .global sub_80006A2
// .global musicGameState_8000784 // () -> void
// .global sub_80008B4
// .global sub_80008C0
// .global CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
// .global CpuFastSet_8000900 // (int a1, int a2) -> void
// .global copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
// .global CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
// .global initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
// .global sub_800096C
// .global sub_800098C
// .global loc_8000AC4
// .global loc_8000AC8
// .global decompAndCopyData_8000B30 // (u32 *initRefs) -> void
// .global decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
// .global sub_8000C00
// .global sub_8000C5C
// .global sub_8000C72
// .global sub_8000CDA
// .global sub_8000D12
// .global sub_8000D84
// .global sub_8000EB6
// .global sub_8000EE4
// .global sub_8001040
// .global getPETNaviSelect // () -> u8
// .global sub_80010BE
// .global sub_80010C6
// .global sub_80010D4
// .global sub_8001158 // () -> void
// .global sub_8001172
// .global sub_8001514
// .global change_20013F0_800151C // () -> int
// .global sub_8001532
// .global rng_800154C // () -> void
// .global sub_80015FC
// .global sub_8001778
// .global sub_8001788
// .global sub_80017A0
// .global sub_80017AA
// .global sub_80017E0
// .global sub_800183C
// .global sub_8001850
// .global sub_800187C
// .global sub_8001890
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_80018D0
// .global sub_80018E0
// .global sub_8001930
// .global sub_8001974
// .global sub_8001AFC
// .global sub_8001B1C
// .global sub_8001B6C
// .global sub_8002354
// .global sub_80023A8
// .global sub_8002468
// .global sub_8002484
// .global sub_80024C0
// .global sub_800260C

.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_load // (int a1, int a2, int a3) ->
// .global sub_80027C4
// .global sub_8002A64
// .global sub_8002ADE
// .global sprite_setPallete // (int pallete) -> void
// .global sprite_setAnimation // (u8 a1) -> void
// .global sprite_forceWhitePallete

.include "asm/asm00_1.inc"
// .global sub_8002E3C
// .global sub_8002F5C
// .global sub_8003570
// .global sub_80035A2
// .global sub_8003914
// .global sub_8003940
// .global sub_80039CC
// .global sub_8003A64
// .global loc_8003A90
// .global sub_8003B1C
// .global sub_80045C0
// .global sub_80047E0
// .global sub_80048B2
// .global sub_8004D48
// .global sub_8004DF0
// .global gameState_8005BC8 // (BattleSettings *bt, bool a2) -> void
// .global sub_8005C04
// .global sub_8005F00
// .global sub_8005F14
// .global sub_8005F32
// .global sub_8005F40
// .global sub_8005F6C
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global loc_8006274
// .global sub_80062EC
// .global engine_isScreeneffectAnimating // () -> zf
// .global loc_80062FC
// .global dword_80065D0
// .global dword_8006660
// .global sub_80068EC
// .global sub_8006910
// .global sub_8006C22
// .global sub_8006C6C
// .global sub_8006DF6
// .global save_memSetFlags_8006E0E // (u8 *mem, int size) -> void
// .global save_8006E26
// .global load_8006E3C
// .global sub_8006E50
// .global modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
// .global sub_8006F54
// .global sub_8006F78
// .global sub_8006FAC
// .global sub_8006FD0
// .global sub_80070BC
// .global sub_80071D4
// .global sub_80076A0
// .global loc_8007800
// .global sub_8009FF8
// .global battle_isPaused
// .global battle_isTimeStop
// .global sub_800A0A4
// .global battle_isBattleOver
// .global battle_setFlags
// .global battle_clearFlags
// .global battle_getFlags
// .global sub_800A704
// .global sub_800A70C
// .global getBattleSettingsFromList0 // (int battleSettingsIdx) -> BattleSettings*
// .global getBattleSettingsFromList1 // (int battleSettingsIdx) -> BattleSettings*
// .global sub_800A7D0 // () -> (zf, int)
// .global sub_800A7E2
// .global sub_800A832
// .global sub_800A856
// .global sub_800A8F8
// .global sub_800A908
// .global sub_800A97A
// .global sub_800A9D6
// .global sub_800A9E2
// .global battle_networkInvert
// .global sub_800AABC
// .global sub_800AB2E
// .global sub_800AB3A
// .global sub_800AB46
// .global sub_800AFBA
// .global sub_800B022 // (int a1) ->
// .global sub_800B3A2
// .global sub_800B3D8
// .global sub_800B460
// .global sub_800B46C
// .global sub_800B6B0
// .global sub_800B6CE
// .global sub_800B6D4
// .global sub_800B6DA
// .global sub_800B6E0
// .global sub_800B734

.include "asm/object.inc"
// .global object_getPanelParameters
// .global sub_800C90A
// .global object_isValidPanel
// .global object_checkPanelParameters
// .global sub_800D012
// .global sub_800D086
// .global sub_800E29C // () -> void
// .global sub_800E2C0
// .global sub_800E2C2
// .global object_getFlipDirection_800E2CA // () -> int
// .global object_addHP
// .global sub_800E456 // () -> int
// .global sub_800E680
// .global sub_800EA0E
// .global object_setInvulnerableTime
// .global sub_800EB08
// .global object_getEnemyByNameRange
// .global sub_800EC3C

.include "asm/asm00_2.inc"
// .global sub_800F214
// .global sub_800F2B6
// .global sub_800F2C6
// .global sub_800F378
// .global sub_800F46C
// .global sub_800FB54
// .global sub_800FC9E
// .global sub_800FFE4
// .global sub_800FFEE
// .global sub_800FFFE
// .global sub_8010004
// .global sub_8010018
// .global sub_801002C
// .global sub_8010312
// .global sub_801031C
// .global sub_801032C
// .global sub_80103BC
// .global sub_80103EC
// .global sub_801086C
// .global sub_80108FC
// .global sub_80109A4
// .global sub_8010DD0
// .global sub_8011020
// .global loc_8011268
// .global loc_8011384
// .global sub_8011680
// .global loc_8011694
// .global sub_80116AE
// .global sub_8011714
// .global sub_8012EA8
// .global sub_8013682 // (int idx) -> void*
// .global sub_80136CC
// .global sub_80136D8
// .global sub_80136E4
// .global sub_80136F0
// .global sub_8013704
// .global sub_8013754
// .global sub_8013764
// .global sub_8013774
// .global sub_8013790
// .global navicust_801379E // (int a1, int a2, int a3) -> void
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global sub_80137E6
// .global sub_80137FE
// .global sub_8013816
// .global sub_801382E
// .global sub_801393A
// .global init_8013B64 // (int idx, int a2) -> void
// .global sub_8013D5E
// .global sub_8013FD0
// .global sub_80141AC
// .global loc_8014216
// .global sub_80143A6
// .global loc_80143B4
// .global sub_80144C0
// .global sub_8015940
// .global sub_8015952
// .global sub_8015B54
// .global sub_8015B5C
// .global sub_8015BEC
// .global sub_8015C32
// .global sub_8015CC0
// .global sub_80182B4
// .global sub_801A04C
// .global sub_801A074 // () -> void
// .global sub_801A07C
// .global object_clearFlag // (int bitfield) -> void
// .global object_getFlag // () -> int
// .global sub_801A16C
// .global sub_801A176
// .global sub_801A264
// .global sub_801A66C
// .global sub_801BB1C
// .global sub_801BB46
// .global sub_801BCD0
// .global sub_801BEB8
// .global sub_801BEC2
// .global sub_801BECC
// .global sub_801BED6
// .global sub_801DA48
// .global sub_801DACC
// .global sub_801DBD4
// .global sub_801DC7C
// .global sub_801DED0
// .global sub_801DEEE
// .global sub_801DF0C
// .global sub_801DF92
// .global sub_801DFA2
// .global sub_801E0A0
// .global sub_801E0D0
// .global sub_801E2BA
// .global sub_801E408
// .global sub_801E474
// .global sub_801E574
// .global sub_801E660
// .global sub_801E71C
// .global sub_801E754
// .global sub_801E780
// .global loc_801E792
// .global sub_801E914
// .global sub_801EC44

.include "data/dat01.inc"
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550
// .global dword_8021550

.include "asm/asm02.inc"
// .global getChip_8021DA8 // (int chip_idx) -> ChipData*
// .global sub_8021AEE
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*
// .global sub_8021BC0
// .global sub_8021BD8
// .global sub_8021D14

.include "asm/chatbox.inc"
// .global chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
// .global chatbox_runScript_803FE74 // (u16 *scriptList, u8 scriptOffIdx) -> void
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global chatbox_8040818
// .global chatbox_8045ED0
// .global chatbox_8045F1C
// .global chatbox_8045F2C // (int a1) ->
// .global chatbox_8045F3C
// .global chatbox_8045F4C

.include "asm/asm03_1.inc"
// .global render_graphicalText_8045F8C
// .global sub_8045FC6
// .global loc_8045FD0
// .global loc_8045FE4
// .global sub_80465A0 // (void *a1) -> void
// .global sub_80465BC
// .global sub_80465F8 // () -> void
// .global sub_8046664 // () -> void
// .global sub_8046670
// .global sub_80467FC
// .global sub_8046818
// .global sub_8046854
// .global sub_80468BA
// .global sub_8049BC0
// .global sub_8049D7C
// .global sub_804CE90
// .global sub_804CF32
// .global sub_804CF84

.include "data/dat03.inc"
// .global off_804D0A4
// .global off_804D0AC
// .global off_804D0B4
// .global off_804D0BC

.include "asm/asm04.inc"
// .global sub_804E62C
// .global sub_804E6D0
// .global sub_804E720

.include "data/dat04.inc"
// .global off_804E92C
// .global dword_804E940
// .global off_804E954
// .global off_804E968
// .global dword_80525C0
// .global dword_80525DC

.include "asm/asm05.inc"
// .global sub_8052688
// .global sub_8052764
// .global sub_80527F0

.include "data/dat05.inc"
// .global off_8052D88
// .global dword_8052DB4
// .global off_8052DE0
// .global off_8052E0C

.include "asm/asm06.inc"
// .global sub_80595B8
// .global sub_8059664
// .global sub_80596C8

.include "data/dat06.inc"
// .global off_8059D48
// .global dword_8059D5C
// .global off_8059D70
// .global off_8059D84

.include "asm/asm07.inc"
// .global sub_805DF08
// .global sub_805DFA2
// .global sub_805DFF0

.include "data/dat07.inc"
// .global off_805E15C
// .global off_805E170
// .global off_805E184
// .global off_805E198

.include "asm/asm08.inc"
// .global sub_806036C
// .global sub_8060406
// .global sub_806044C

.include "data/dat08.inc"
// .global off_806063C
// .global off_806064C
// .global off_806065C
// .global off_806066C

.include "asm/asm09.inc"
// .global sub_8062AB0
// .global sub_8062B64
// .global sub_8062BCC

.include "data/dat09.inc"
// .global off_8062F48
// .global off_8062F60
// .global off_8062F78
// .global off_8062F90

.include "asm/asm10.inc"
// .global sub_80663D0
// .global sub_8066450
// .global sub_806649C
// .global loc_806651C
// .global sub_8066540
// .global off_80665A4
// .global dword_80665AC
// .global off_80665B4
// .global off_80665BC
// .global sub_8067B5C
// .global sub_8067BE4
// .global sub_8067C88
// .global loc_8067D1C
// .global sub_8067D46
// .global off_8067DC8
// .global dword_8067DD4
// .global off_8067DE0
// .global pt_8067DEC

.include "asm/asm11.inc"
// .global sub_8069038
// .global sub_80690C2
// .global sub_8069140
// .global loc_80691D4
// .global sub_80691FE
// .global off_80692F8
// .global dword_8069304
// .global off_8069310
// .global off_806931C
// .global sub_8069FE8
// .global sub_806A070
// .global sub_806A120
// .global loc_806A1B4
// .global sub_806A1DE
// .global off_806A260
// .global dword_806A26C
// .global off_806A278
// .global off_806A284
// .global sub_806AA00
// .global sub_806AAAA
// .global sub_806AB94
// .global loc_806ACC0
// .global sub_806AD00
// .global off_806AE08
// .global off_806AE1C
// .global off_806AE30
// .global off_806AE44
// .global sub_806C23C
// .global sub_806C2E2
// .global sub_806C35C
// .global loc_806C4B0
// .global sub_806C59C

.include "data/dat11.inc"
// .global off_806C7B0
// .global dword_806C7CC
// .global off_806C7E8
// .global off_806C804

.include "asm/asm12.inc"
// .global sub_806D8F8
// .global sub_806D9FC
// .global sub_806DA58
// .global loc_806DC0C
// .global sub_806DCD4

.include "data/dat12.inc"
// .global off_806DFB0
// .global dword_806DFF0
// .global off_806E030
// .global off_806E070

.include "asm/asm13.inc"
// .global sub_806FC08
// .global sub_806FCF8
// .global sub_806FD54
// .global sub_806FF08
// .global sub_806FFDA

.include "data/dat13.inc"
// .global off_807022C
// .global dword_807026C
// .global off_80702AC
// .global off_80702EC

.include "asm/asm14.inc"
// .global sub_8071B50
// .global sub_8071BE4
// .global sub_8071C30
// .global loc_8071CC4
// .global sub_8071CEE
// .global off_8071EB0
// .global dword_8071EBC
// .global off_8071EC8
// .global off_8071ED4

.include "asm/asm15.inc"
// .global sub_807544C
// .global sub_80754E2
// .global sub_8075530
// .global loc_80755C4
// .global sub_80755EE

.include "data/dat15.inc"
// .global off_80758A0
// .global off_80758AC
// .global off_80758B8
// .global off_80758C4

.include "asm/asm16.inc"
// .global sub_8077D00
// .global sub_8077D8A
// .global sub_8077DE0
// .global loc_8077E60
// .global sub_8077E84

.include "data/dat16.inc"
// .global off_8078104
// .global dword_807810C
// .global off_8078114
// .global off_807811C

.include "asm/asm17.inc"
// .global sub_807931C
// .global sub_807939A
// .global sub_80793E8
// .global loc_8079468
// .global sub_807948C

.include "data/dat17.inc"
// .global off_807952C
// .global off_8079534
// .global off_807953C
// .global off_8079544

.include "asm/asm18.inc"
// .global sub_807A8E0
// .global sub_807A974
// .global sub_807A9CC
// .global loc_807AAAC
// .global sub_807AAD6

.include "data/dat18.inc"
// .global off_807ADEC
// .global dword_807ADF8
// .global off_807AE04
// .global off_807AE10

.include "asm/asm19.inc"
// .global sub_807CDEC
// .global sub_807CE90
// .global sub_807CF24
// .global loc_807CFCC
// .global sub_807CFFC

.include "data/dat19.inc"
// .global off_807D2F0
// .global off_807D300
// .global off_807D310
// .global off_807D320

.include "asm/asm20.inc"
// .global sub_807ECD0
// .global sub_807ED6C
// .global sub_807EDD4
// .global loc_807EE68
// .global sub_807EE92

.include "data/dat20.inc"
// .global dword_807F1F8
// .global dword_807F204
// .global dword_807F210
// .global off_807F21C

.include "data/dat27.inc"
// .global dword_80982A8
// .global dword_80982A8
// .global dword_80984C8
// .global dword_8098824
// .global dword_80988E4
// .global dword_809895C
// .global dword_8098B40

.include "asm/asm28_0.inc"
// .global dword_8098DD0
// .global dword_80991F4
// .global dword_8099DC0
// .global dword_8099E04
// .global dword_8099EA0
// .global dword_809A898
// .global dword_809AA24
// .global dword_809AE50
// .global sub_809C968
// .global sub_809CA40
// .global unk_809CAD8
// .global sub_809CF2C
// .global sub_809E064
// .global updateFlags_809E0B0 // () -> void
// .global loc_809E0FC
// .global loc_809E114
// .global sub_809E122
// .global sub_809E13C
// .global loc_809E1A4
// .global sub_809E1AE
// .global sub_809E1FA
// .global sub_809E218
// .global sub_809E228
// .global sub_809E230
// .global sub_809E23C
// .global sub_809E248
// .global sub_809E254
// .global loc_809E260
// .global loc_809E26A
// .global sub_809E276
// .global sub_809E284
// .global sub_809E292
// .global sub_809E2A0
// .global sub_809E2AE
// .global sub_809E2B8
// .global sub_809E2C2
// .global loc_809E2C8
// .global sub_809E2DC
// .global sub_809E2F4
// .global loc_809E2F6
// .global sub_809E312
// .global sub_809E434
// .global sub_809E442
// .global sub_809E452
// .global sub_809E462
// .global sub_809E496
// .global sub_809E4A0
// .global sub_809E4AE
// .global sub_809E4BC

.include "asm/asm28_1.inc"
// .global sub_809F9DC

.include "asm/asm29.inc"
// .global sub_80AA5E4
// .global sub_80AA8E0
// .global sub_80AABA4
// .global sub_80AAC8C

.include "asm/asm31.inc"
// .global sub_80B84EC
// .global sub_80B9014
// .global sub_80B921A
// .global sub_80B9432
// .global sub_80B9750
// .global sub_80B999A
// .global sub_80B9B6E
// .global sub_80B9F0E
// .global sub_80BA1B0
// .global sub_80BA660
// .global sub_80BA920
// .global sub_80BAE16
// .global sub_80BB7F6
// .global sub_80BBAC6
// .global sub_80BBDE8
// .global sub_80BC0DA
// .global sub_80BD9A2
// .global sub_80BE3E8
// .global sub_80BF160
// .global sub_80BF6AE
// .global sub_80BFCD0
// .global sub_80C0DD8
// .global loc_80C1008
// .global sub_80C2A4C
// .global sub_80C2F96
// .global sub_80C3B30
// .global sub_80C3E98
// .global sub_80E05F6
// .global sub_80E07E0
// .global sub_80E164A
// .global sub_80E24B8
// .global sub_80E2566
// .global sub_80E2B5A
// .global sub_80E2D76
// .global sub_80E2F24
// .global sub_80E3128
// .global sub_80E3242
// .global sub_80E349E
// .global sub_80E353E
// .global sub_80E3B50
// .global sub_80E4164
// .global sub_80E4288
// .global sub_80E46B6
// .global sub_80E49A2
// .global sub_80E59C6
// .global sub_80E5EA8
// .global sub_80E5F78
// .global sub_80E64E8
// .global sub_80E67E6
// .global sub_80E7008
// .global sub_80E70A6
// .global sub_80E723E
// .global sub_80E7464
// .global sub_80E7486
// .global sub_80E7546
// .global sub_80E7600
// .global sub_80E76D4
// .global sub_80E7CA8
// .global sub_80E7F16
// .global sub_80E7FBA
// .global sub_80E8058
// .global sub_80E81B4
// .global sub_80E8ADC
// .global sub_80E8BC0
// .global sub_80E91B8
// .global sub_80E92EE
// .global sub_80E943E
// .global sub_80E979C
// .global sub_80EA11C
// .global loc_80F0804
// .global sub_81096FA
// .global sub_810971A

.include "asm/asm32.inc"
// .global sub_811D634
// .global sub_811D66C
// .global sub_811D69C
// .global sub_811DBF0
// .global sub_811EBE0
// .global sub_811F290
// .global sub_811F7F8
// .global sub_811FA98
// .global sub_811FAF4
// .global sub_8120B54
// .global sub_8120CC8
// .global sub_8120DF0

.include "asm/asm33.inc"
// .global sub_8123360
// .global dword_8129180

.include "asm/asm37_0.inc"
// .global sub_813B780
// .global sub_813C3AC
// .global sub_813D5C8
// .global sub_813D60C
// .global sub_813D638
// .global sub_813D648
// .global sub_813D750
// .global sub_813D90C
// .global sub_813D91C
// .global sub_813D934
// .global sub_813D960
// .global sub_813D978
// .global sub_813D9A0
// .global sub_813DA84
// .global sub_813DA94
// .global sub_813DB24
// .global byte_813DBC0

.include "asm/reqBBS.inc"
// .global reqBBS_813E5DC
// .global reqBBS_813F9A0
// .global reqBBS_getTotalPointsIndex // () -> u8

.include "asm/asm37_1.inc"
// .global sub_81421E0
// .global sub_8142868
// .global sub_81440D8
// .global sub_8144240
// .global sub_8144250
// .global sub_81445F8
// .global sub_8144CE0
// .global sub_8144D04
// .global sub_8144D18
// .global sub_8144D24
// .global sub_814656C
// .global sub_8146588
// .global sub_81465BC
// .global sub_814665C
// .global sub_81466E4
// .global sub_8146714
// .global sub_8146728
// .global sub_814673C
// .global sub_81467A0
// .global sub_8146808
// .global sub_8146888
// .global sub_81468F4
// .global sub_814690C
// .global sub_8146918
// .global sub_8146938
// .global sub_814695C
// .global sub_81469BC
// .global sub_8146BB8
// .global sub_8146BF4
// .global sub_8146C20
// .global sub_8146CFC
// .global sub_8146D20
// .global sub_8146D40
// .global sub_8146D98
// .global sub_8146E5C
// .global sub_8146E78
// .global sub_8147B24
// .global sub_8147B3C
// .global sub_8147F98
// .global sub_8148214
// .global sub_8148884
// .global sub_8148FC0
// .global sub_8149644
// .global sub_814A828
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
// .global sub_814D8F0
// .global sub_814D954
// .global sub_814D9C4

.include "data/dat38_0.inc"
// .global dword_82E8388
// .global unk_84E0554

.include "data/dat38_2.inc"
// .global dword_858F110
// .global off_8592304
// .global dword_85924A8
// .global dword_8594D80
// .global dword_8598328
// .global dword_85AEFA8
// .global dword_85B22DC
// .global off_85B5D28
// .global dword_85B5ECC
// .global dword_85B86C8
// .global dword_85BB3D0
// .global dword_85C7AA0
// .global dword_85CB0A8
// .global off_85CD6B4
// .global dword_85CD858
// .global off_85D0894
// .global off_85D183C
// .global dword_85D19E0
// .global off_85D2850
// .global off_85D29F4
// .global off_85D2B98
// .global off_85D2D3C
// .global off_85D2EE0
// .global off_85D35B8
// .global dword_85D375C
// .global off_85D430C
// .global dword_85D44B0
// .global dword_85D4E48
// .global off_85D895C
// .global dword_85D8B00
// .global dword_85DB160
// .global off_85DDB74
// .global dword_85DDD18
// .global off_85E0670
// .global dword_85E0814
// .global dword_85E2F90
// .global dword_85E519C
// .global off_85E79D0
// .global dword_85E7B74
// .global off_85EAD2C
// .global dword_85EAED0
// .global off_85EE2A4
// .global dword_85EE448
// .global dword_85F1B20
// .global off_85F4D84
// .global dword_85F4F28
// .global dword_85F7C58
// .global off_85FB848
// .global dword_85FB9EC
// .global dword_85FEF08
// .global off_8602590
// .global dword_8602734
// .global dword_8606438
// .global dword_8609770
// .global off_860D678
// .global dword_8619B90
// .global dword_861ABD4
// .global comp_861AD94
// .global dword_861B320
// .global dword_861C344
// .global comp_861C780
// .global comp_861C780
// .global comp_861C780
// .global comp_861C780
// .global dword_861D87C
// .global dword_861F710
// .global dword_8620350
// .global dword_8620A9C
// .global dword_8620E58
// .global dword_862B6E0
// .global dword_862C160
// .global dword_862C978
// .global dword_862D0A0
// .global dword_862E15C
// .global dword_863168C
// .global dword_8632288
// .global dword_8633084
// .global dword_8634E64
// .global dword_8635EB4
// .global dword_8636A7C
// .global dword_86376B4
// .global dword_8638E70
// .global dword_863951C
// .global dword_863B234
// .global dword_863D1A4
// .global dword_863F830
// .global dword_8642B34
// .global dword_86460FC
// .global dword_86475CC
// .global dword_8648BA8
// .global dword_864A484
// .global dword_864D860
// .global dword_8651B2C
// .global dword_8656C0C
// .global dword_865A08C
// .global dword_865B77C
// .global dword_8660604
// .global dword_8664988
// .global dword_8664F04
// .global dword_8665548
// .global dword_8667820
// .global dword_866B038
// .global unk_86A48C0
// .global dword_86A4A40
// .global unk_86A4D40
// .global unk_86A5180
// .global dword_86A5300
// .global dword_86A5500
// .global dword_86A5D60
// .global dword_86ACD24
// .global dword_86B7AE0
// .global dword_86BEAE0
// .global dword_86C0D20
// .global unk_86C1AA0
// .global unk_86C1F20
// .global unk_86C1F80
// .global unk_86C22C0
// .global unk_86C22E0

.include "data/dat38_3.inc"
// .global byte_86C3C94

.include "data/dat38_4.inc"
// .global unk_86C3FD4
// .global byte_86C4194
// .global dword_86C41B4

.include "data/dat38_5.inc"
// .global unk_86C4660

.include "data/dat38_13.inc"
// .global unk_86C9D6C
// .global unk_86CB360

.include "data/dat38_23.inc"
// .global comp_86DD59C

.include "data/dat38_24.inc"
// .global unk_86DDB24

.include "data/dat38_25.inc"
// .global dword_86E1238
// .global dword_86E2E98
// .global dword_86E3598
// .global dword_86E3B18
// .global dword_86E411C
// .global dword_86E441C
// .global dword_86E4D9C
// .global dword_86E55BC
// .global dword_86E56FC
// .global dword_86E587C
// .global dword_86E591C
// .global dword_86E601C
// .global unk_86E625C
// .global unk_86E64B4
// .global unk_86E670C
// .global unk_86E6964
// .global unk_86E6BBC
// .global unk_86E6E14
// .global unk_86E706C
// .global unk_86E72C4
// .global unk_86E751C
// .global unk_86E7774
// .global dword_86E7DCC
// .global dword_86E944C
// .global dword_86EA94C
// .global dword_86EB354
// .global dword_86EB354
// .global dword_86EDB54
// .global dword_86EF4D4
// .global a8Bdfhjlnprtvxz
// .global notAdded_scripts_86EF78C
// .global byte_86F0300
// .global dword_86F047C
// .global dword_86F2E60
// .global dword_86F3868

.include "data/dat38_26.inc"
// .global unk_86F5834
// .global dword_87225B4
// .global dword_8722AF4
// .global unk_8723034
// .global dword_87257D4
// .global dword_87257F4
// .global dword_8725814
// .global dword_8725854
// .global dword_8725874
// .global unk_8725894
// .global unk_872CF94
// .global dword_872F3F4
// .global dword_8731DF4
// .global dword_8732154
// .global dword_87324B4
// .global dword_8732814
// .global dword_8732874
// .global dword_8732E54
// .global dword_8733394
// .global dword_87333B4
// .global dword_87338F4
// .global dword_8733914
// .global dword_8733E54
// .global dword_8733E74
// .global dword_87343B4
// .global dword_87343D4
// .global dword_87343F4
// .global dword_8734934
// .global aTuDhr

.include "data/dat38_27.inc"
// .global aF_0
// .global dword_873B9E0
// .global dword_87E36F8

.include "data/dat38_28.inc"
// .global dword_87E4FE0
// .global unk_87E5000

.include "data/dat38_29.inc"
// .global unk_87E54B0

.include "data/dat38_30.inc"
// .global dword_87E660C
// .global byte_87E672C
// .global word_87E672E

.include "data/dat38_31.inc"
// .global unk_87E6BDC

.include "data/dat38_36.inc"
// .global aLlllllllllllll
// .global aZz
// .global aV

.include "data/dat38_37.inc"
// .global unk_87F3620

.include "data/dat38_38.inc"
// .global unk_87F40F4
// .global unk_87F4194

.include "data/dat38_39.inc"
// .global dword_87F8EB0


/* Undeclared Symbols */
.equ timer_2000000, 0x2000000
.equ unk_2000070, 0x2000070
.equ unk_20000A0, 0x20000A0
.equ unk_2000260, 0x2000260
.equ unk_2000370, 0x2000370
.equ dword_2000DC0, 0x2000DC0
.equ dword_2000DC4, 0x2000DC4
.equ dword_2000DC4, 0x2000DC4
.equ byte_20010F0, 0x20010F0
.equ dword_2001140, 0x2001140
.equ unk_20018C0, 0x20018C0
.equ sReqBBS_GUI, 0x2005780
.equ byte_2006530, 0x2006530
.equ unk_2006710, 0x2006710
.equ dword_2006714, 0x2006714
.equ unk_2006720, 0x2006720
.equ dword_2006740, 0x2006740
.equ dword_2006744, 0x2006744
.equ unk_2006750, 0x2006750
.equ word_2006770, 0x2006770
.equ byte_2006772, 0x2006772
.equ word_2006774, 0x2006774
.equ word_2006776, 0x2006776
.equ unk_2006778, 0x2006778
.equ byte_2006788, 0x2006788
.equ unk_2006798, 0x2006798
.equ byte_20067AE, 0x20067AE
.equ dword_20067C0, 0x20067C0
.equ unk_2008170, 0x2008170
.equ byte_2008978, 0x2008978
.equ dword_200897C, 0x200897C
.equ unk_2009450, 0x2009450
.equ unk_2009460, 0x2009460
.equ unk_2009480, 0x2009480
.equ byte_2009790, 0x2009790
.equ unk_2009940, 0x2009940
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ dword_2009A10, 0x2009A10
.equ dword_2009A18, 0x2009A18
.equ dword_2009A24, 0x2009A24
.equ dword_2009A28, 0x2009A28
.equ dword_2009A2C, 0x2009A2C
.equ sSubmenu, 0x2009A30
.equ unk_2009AC0, 0x2009AC0
.equ unk_200A010, 0x200A010
.equ sJoystick, 0x200A270
.equ byte_200A290, 0x200A290
.equ byte_200A2A4, 0x200A2A4
.equ byte_200A2A6, 0x200A2A6
.equ byte_200A2A7, 0x200A2A7
.equ word_200A2B0, 0x200A2B0
.equ word_200A2B4, 0x200A2B4
.equ word_200A2B6, 0x200A2B6
.equ unk_200A3A0, 0x200A3A0
.equ unk_200A3B0, 0x200A3B0
.equ unk_200A3C0, 0x200A3C0
.equ unk_200A3E0, 0x200A3E0
.equ unk_200A400, 0x200A400
.equ unk_200A420, 0x200A420
.equ word_200A6F0, 0x200A6F0
.equ byte_200AC20, 0x200AC20
.equ byte_200AC21, 0x200AC21
.equ byte_200AC22, 0x200AC22
.equ byte_200AC23, 0x200AC23
.equ byte_200AC27, 0x200AC27
.equ unk_200AC30, 0x200AC30
.equ byte_200AC33, 0x200AC33
.equ byte_200AC34, 0x200AC34
.equ byte_200AC35, 0x200AC35
.equ unk_200AC80, 0x200AC80
.equ word_200AC84, 0x200AC84
.equ byte_200AD04, 0x200AD04
.equ byte_200AD05, 0x200AD05
.equ word_200AD06, 0x200AD06
.equ sStartScr, 0x200AD10
.equ BattleSettings_200AF60, 0x200AF60
.equ BattleSettings_200AF60, 0x200AF60
.equ BattleSettings_200AF60, 0x200AF60
.equ byte_200AF80, 0x200AF80
.equ byte_200AF81, 0x200AF81
.equ byte_200AF82, 0x200AF82
.equ byte_200AF84, 0x200AF84
.equ byte_200AF85, 0x200AF85
.equ dword_200AF88, 0x200AF88
.equ dword_200AF8C, 0x200AF8C
.equ byte_200AF90, 0x200AF90
.equ dword_200AF94, 0x200AF94
.equ byte_200B1A0, 0x200B1A0
.equ byte_200B1A1, 0x200B1A1
.equ byte_200B1A2, 0x200B1A2
.equ byte_200B1A3, 0x200B1A3
.equ dword_200B1B0, 0x200B1B0
.equ byte_200BC30, 0x200BC30
.equ byte_200BC31, 0x200BC31
.equ byte_200BC32, 0x200BC32
.equ byte_200BC35, 0x200BC35
.equ byte_200BC3D, 0x200BC3D
.equ byte_200BC50, 0x200BC50
.equ dword_200BC5C, 0x200BC5C
.equ byte_200BC60, 0x200BC60
.equ byte_200BC61, 0x200BC61
.equ unk_200BC70, 0x200BC70
.equ byte_200BE70, 0x200BE70
.equ byte_200BE71, 0x200BE71
.equ word_200BE74, 0x200BE74
.equ word_200BE76, 0x200BE76
.equ dword_200BE78, 0x200BE78
.equ dword_200BE7C, 0x200BE7C
.equ dword_200BE80, 0x200BE80
.equ dword_200BE84, 0x200BE84
.equ dword_200BE88, 0x200BE88
.equ dword_200BE8C, 0x200BE8C
.equ dword_200BE90, 0x200BE90
.equ byte_200DD10, 0x200DD10
.equ byte_200F348, 0x200F348
.equ byte_200F360, 0x200F360
.equ byte_200F361, 0x200F361
.equ byte_200F362, 0x200F362
.equ dword_200F368, 0x200F368
.equ unk_200F380, 0x200F380
.equ unk_200F3C4, 0x200F3C4
.equ dword_200F3D0, 0x200F3D0
.equ dword_200F3E0, 0x200F3E0
.equ dword_200F3E4, 0x200F3E4
.equ dword_200F3EC, 0x200F3EC
.equ dword_200F3F0, 0x200F3F0
.equ dword_200F3F8, 0x200F3F8
.equ dword_200F3FC, 0x200F3FC
.equ dword_200F444, 0x200F444
.equ byte_200F460, 0x200F460
.equ unk_200FE70, 0x200FE70
.equ unk_2010100, 0x2010100
.equ byte_2010144, 0x2010144
.equ byte_2010280, 0x2010280
.equ byte_2010288, 0x2010288
.equ word_2010420, 0x2010420
.equ byte_2011800, 0x2011800
.equ byte_2011805, 0x2011805
.equ dword_2011A20, 0x2011A20
.equ word_2011A24, 0x2011A24
.equ byte_2011A26, 0x2011A26
.equ byte_2011A27, 0x2011A27
.equ dword_2011A34, 0x2011A34
.equ byte_2011A40, 0x2011A40
.equ dword_2011BD0, 0x2011BD0
.equ dword_2011BD4, 0x2011BD4
.equ dword_2011D10, 0x2011D10
.equ word_2011D14, 0x2011D14
.equ word_2011D16, 0x2011D16
.equ byte_2011D18, 0x2011D18
.equ byte_2011D19, 0x2011D19
.equ byte_2011D1A, 0x2011D1A
.equ byte_2011D1B, 0x2011D1B
.equ byte_2011D1C, 0x2011D1C
.equ dword_2011D20, 0x2011D20
.equ dword_2011D24, 0x2011D24
.equ word_2011D28, 0x2011D28
.equ unk_2011E30, 0x2011E30
.equ byte_2011E34, 0x2011E34
.equ byte_2011E37, 0x2011E37
.equ word_2011E38, 0x2011E38
.equ byte_2011E40, 0x2011E40
.equ unk_2011E60, 0x2011E60
.equ dword_2011E68, 0x2011E68
.equ dword_2011E6C, 0x2011E6C
.equ dword_2011E70, 0x2011E70
.equ unk_2011EA0, 0x2011EA0
.equ dword_2013920, 0x2013920
.equ word_2013924, 0x2013924
.equ byte_2013926, 0x2013926
.equ byte_2013927, 0x2013927
.equ dword_2013934, 0x2013934
.equ dword_2013940, 0x2013940
.equ word_2013944, 0x2013944
.equ byte_2013946, 0x2013946
.equ byte_2013947, 0x2013947
.equ dword_2013954, 0x2013954
.equ decomp_2013A00, 0x2013A00
.equ unk_2014A00, 0x2014A00
.equ unk_2017A00, 0x2017A00
.equ unk_2017A04, 0x2017A04
.equ unk_2018A00, 0x2018A00
.equ unk_2018A04, 0x2018A04
.equ unk_201AA00, 0x201AA00
.equ unk_201BA00, 0x201BA00
.equ unk_201BA10, 0x201BA10
.equ unk_201F320, 0x201F320
.equ unk_201F5A0, 0x201F5A0
.equ unk_2024A00, 0x2024A00
.equ unk_2024E00, 0x2024E00
.equ unk_2025200, 0x2025200
.equ unk_2025600, 0x2025600
.equ unk_2025A00, 0x2025A00
.equ unk_2025E00, 0x2025E00
.equ unk_2026200, 0x2026200
.equ unk_2026600, 0x2026600
.equ unk_2026A00, 0x2026A00
.equ byte_2027200, 0x2027200
.equ unk_2027400, 0x2027400
.equ unk_2027A00, 0x2027A00
.equ unk_2028200, 0x2028200
.equ unk_2028204, 0x2028204
.equ unk_2028A00, 0x2028A00
.equ unk_2029200, 0x2029200
.equ unk_2029A00, 0x2029A00
.equ reqBBS_requestInfo_textOffsets, 0x2029A04
.equ unk_2029E00, 0x2029E00
.equ unk_2029E04, 0x2029E04
.equ unk_202A200, 0x202A200
.equ unk_202A204, 0x202A204
.equ unk_202A600, 0x202A600
.equ unk_202A604, 0x202A604
.equ unk_202AB00, 0x202AB00
.equ unk_202AF00, 0x202AF00
.equ unk_202DA04, 0x202DA04
.equ comp_2030860, 0x2030860
.equ unk_2030A00, 0x2030A00
.equ unk_2030E60, 0x2030E60
.equ unk_2031000, 0x2031000
.equ decomp_2032000, 0x2032000
.equ unk_2032A00, 0x2032A00
.equ dword_2033000, 0x2033000
.equ dword_2033000, 0x2033000
.equ word_2033004, 0x2033004
.equ word_2033006, 0x2033006
.equ dword_203300C, 0x203300C
.equ dword_203300C, 0x203300C
.equ word_2033010, 0x2033010
.equ word_2033012, 0x2033012
.equ word_2033018, 0x2033018
.equ word_203301A, 0x203301A
.equ word_2033024, 0x2033024
.equ word_2033026, 0x2033026
.equ word_2033028, 0x2033028
.equ word_203302A, 0x203302A
.equ word_2033030, 0x2033030
.equ word_203303C, 0x203303C
.equ word_203303E, 0x203303E
.equ word_2033040, 0x2033040
.equ word_2033042, 0x2033042
.equ unk_2033400, 0x2033400
.equ dword_20349A0, 0x20349A0
.equ byte_20349A4, 0x20349A4
.equ byte_20349A5, 0x20349A5
.equ dword_20349A8, 0x20349A8
.equ word_20349AC, 0x20349AC
.equ word_20349AE, 0x20349AE
.equ byte_20349B0, 0x20349B0
.equ byte_20349B1, 0x20349B1
.equ byte_20349C0, 0x20349C0
.equ unk_2034A00, 0x2034A00
.equ unk_2034A60, 0x2034A60
.equ unk_2034B30, 0x2034B30
.equ unk_2035000, 0x2035000
.equ unk_203505A, 0x203505A
.equ unk_2035186, 0x2035186
.equ unk_2035188, 0x2035188
.equ unk_203518C, 0x203518C
.equ unk_2035190, 0x2035190
.equ unk_2035194, 0x2035194
.equ unk_2035198, 0x2035198
.equ unk_2035260, 0x2035260
.equ byte_2035261, 0x2035261
.equ dword_2035268, 0x2035268
.equ unk_203526C, 0x203526C
.equ byte_203526D, 0x203526D
.equ dword_2035274, 0x2035274
.equ byte_2035280, 0x2035280
.equ byte_2035296, 0x2035296
.equ byte_2035297, 0x2035297
.equ dword_20352C8, 0x20352C8
.equ byte_20352CC, 0x20352CC
.equ unk_2035320, 0x2035320
.equ unk_20354E0, 0x20354E0
.equ unk_2035520, 0x2035520
.equ unk_2036120, 0x2036120
.equ unk_20362F0, 0x20362F0
.equ dword_2036334, 0x2036334
.equ dword_20364C0, 0x20364C0
.equ dword_20364C0, 0x20364C0
.equ dword_20364C4, 0x20364C4
.equ dword_20364C4, 0x20364C4
.equ dword_20364C4, 0x20364C4
.equ dword_20364C4, 0x20364C4
.equ byte_20364C8, 0x20364C8
.equ byte_20364C9, 0x20364C9
.equ byte_20364CC, 0x20364CC
.equ byte_20364CD, 0x20364CD
.equ byte_20364D0, 0x20364D0
.equ byte_20364D1, 0x20364D1
.equ unk_20364D4, 0x20364D4
.equ byte_20364D5, 0x20364D5
.equ word_20364D6, 0x20364D6
.equ dword_20364D8, 0x20364D8
.equ dword_20364DC, 0x20364DC
.equ word_20364E0, 0x20364E0
.equ word_20364F8, 0x20364F8
.equ word_20364FA, 0x20364FA
.equ unk_20365C0, 0x20365C0
.equ word_2036660, 0x2036660
.equ word_2036660, 0x2036660
.equ word_2036664, 0x2036664
.equ byte_2036666, 0x2036666
.equ byte_2036667, 0x2036667
.equ byte_2036668, 0x2036668
.equ dword_203666C, 0x203666C
.equ word_2036674, 0x2036674
.equ byte_20366C0, 0x20366C0
.equ word_20366C2, 0x20366C2
.equ word_20366CE, 0x20366CE
.equ word_20366DA, 0x20366DA
.equ word_20366E6, 0x20366E6
.equ word_20366F2, 0x20366F2
.equ byte_20366FE, 0x20366FE
.equ byte_2036704, 0x2036704
.equ unk_2036720, 0x2036720
.equ dword_2036728, 0x2036728
.equ dword_2036738, 0x2036738
.equ word_2036780, 0x2036780
.equ dword_20367E0, 0x20367E0
.equ dword_2036820, 0x2036820
.equ dword_2036824, 0x2036824
.equ dword_203682C, 0x203682C
.equ unk_20399F0, 0x20399F0
.equ unk_2039A00, 0x2039A00
.equ unk_203A0A0, 0x203A0A0
.equ unk_203A980, 0x203A980
.equ sBtlPlayer, 0x203A9B0
.equ unk_203C4A0, 0x203C4A0
.equ unk_203C4E0, 0x203C4E0
.equ unk_203C6E0, 0x203C6E0
.equ dword_203C970, 0x203C970
.equ dword_203C970, 0x203C970
.equ byte_203C974, 0x203C974
.equ dword_203C978, 0x203C978
.equ dword_203C97C, 0x203C97C
.equ dword_203CA48, 0x203CA48
.equ dword_203CA50, 0x203CA50
.equ unk_203CA80, 0x203CA80
.equ word_203CDB0, 0x203CDB0
.equ byte_203CED0, 0x203CED0
.equ byte_203CED4, 0x203CED4
.equ dword_203CFB0, 0x203CFB0
.equ dword_203CFB0, 0x203CFB0
.equ dword_203CFB4, 0x203CFB4
.equ dword_203CFB8, 0x203CFB8
.equ dword_203CFBC, 0x203CFBC
.equ dword_203CFBC, 0x203CFBC
.equ dword_203CFC0, 0x203CFC0
.equ dword_203CFC4, 0x203CFC4
.equ dword_203EAD0, 0x203EAD0
.equ byte_203EAD4, 0x203EAD4
.equ byte_203EAD7, 0x203EAD7
.equ word_203EAD8, 0x203EAD8
.equ word_203EADA, 0x203EADA
.equ word_203EADC, 0x203EADC
.equ word_203EADE, 0x203EADE
.equ unk_3001150, 0x3001150
.equ unk_3001550, 0x3001550
.equ unk_3001570, 0x3001570
.equ unk_3001590, 0x3001590
.equ unk_30015D0, 0x30015D0
.equ unk_3001610, 0x3001610
.equ unk_30016B0, 0x30016B0
.equ unk_30016D0, 0x30016D0
.equ unk_30016F0, 0x30016F0
.equ dword_3001950, 0x3001950
.equ word_3001960, 0x3001960
.equ unk_3001980, 0x3001980
.equ unk_30019A0, 0x30019A0
.equ unk_30019C0, 0x30019C0
.equ unk_30019E0, 0x30019E0
.equ unk_3001A40, 0x3001A40
.equ unk_3001A80, 0x3001A80
.equ unk_3001AA0, 0x3001AA0
.equ unk_3001AD4, 0x3001AD4
.equ unk_3001AE0, 0x3001AE0
.equ unk_3001B20, 0x3001B20
.equ dword_3001D70, 0x3001D70
.equ unk_3002580, 0x3002580
.equ dword_3002590, 0x3002590
.equ unk_30025B0, 0x30025B0
.equ sub_30068E8, 0x30068E8
.equ sub_3006920, 0x3006920
.equ LCDControl, 0x4000000
.equ BG1X_Offset, 0x4000014
// .global comp_84E0C4C
// .global compFile_86C23A0
// .global comp_86C2E2C
// .global comp_86C33B4
// .global comp_86C3528
// .global comp_86C3E94
// .global comp_86C41D0
// .global comp_86C4490
// .global comp_86C45A8
// .global comp_86C9BD4
// .global comp_86C9D38
// .global comp_86D6974
// .global comp_86DD9B4
// .global comp_86DDAD0
// .global comp_86DDB44
// .global comp_86DDB7C
// .global scripts_fullSynchro_86F3F5C
// .global scripts_dad_cybeastTut_86F4498
// .global scripts_shuko_crossTut_86F53CC
// .global comp_87E4500
// .global comp_87E5020
// .global comp_87E50D4
// .global comp_87E5550
// .global comp_87E56A0
// .global comp_87E57BC
// .global comp_87E674C
// .global comp_87E6840
// .global comp_87E6924
// .global comp_87E6980
// .global comp_87E6BFC
// .global comp_87F3370
// .global comp_87F36A0
// .global comp_87F4394

.endif // INC_ASM_ASM03_0
