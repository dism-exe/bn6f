.ifndef INC_ASM_ASM32
.equ INC_ASM_ASM32, 0

/* Public Symbols */
.global dword_810DD10
.global dword_810DD3C
.global sub_810E2A6
.global sub_810E336
.global sub_810E340
.global dword_810E3E8
.global dword_810E414
.global sub_810E854
.global dword_810EC80
.global dword_810ECAC
.global sub_810F090
.global dword_810F200
.global dword_810F22C
.global dword_810F510
.global sub_810FA4C
.global sub_81100E2
.global dword_81102BC
.global sub_811060A
.global unk_8110654
.global dword_8111130
.global dword_811115C
.global sub_8111846
.global dword_811190C
.global dword_8111938
.global dword_8111FF8
.global dword_8112024
.global dword_81126DC
.global dword_8112708
.global sub_81129EE
.global dword_8112B94
.global dword_8112BC0
.global dword_8113268
.global dword_8113754
.global dword_8113780
.global dword_8113DC0
.global dword_81143F4
.global sub_8114F52
.global sub_8114F6A
.global sub_8115098
.global dword_81150AC
.global dword_81150D8
.global dword_8115704
.global dword_8115730
.global sub_81159DC
.global sub_8115BB0
.global dword_8115BEC
.global dword_8115C18
.global sub_81162AA
.global dword_81162F8
.global dword_81165BC
.global sub_8116878
.global sub_8116894
.global sub_8116924
.global loc_8116ADC
.global sub_8116CE0
.global sub_8116E10
.global sub_8116FDC
.global sub_8117084
.global sub_8117110
.global sub_81171D4
.global sub_81171F4
.global sub_8117218
.global sub_81172B0
.global sub_8117404
.global sub_81175D0
.global sub_8117690
.global sub_8117780
.global loc_81178D8
.global sub_81179AE
.global sub_8117BC8
.global sub_8117D10
.global sub_8117D2C
.global sub_8117EC8
.global loc_8118344
.global loc_81187E8
.global loc_8118BA4
.global loc_8118D60
.global loc_8118E84
.global sub_8118F24
.global sub_81190F8
.global sub_8119118
.global sub_8119364
.global sub_811980C
.global sub_811983C
.global sub_8119854
.global loc_811997C
.global sub_8119ACC
.global sub_8119BE8
.global sub_8119C74
.global sub_8119C94
.global sub_8119D54
.global sub_8119E40
.global sub_811A1F4
.global sub_811A220
.global sub_811A338
.global sub_811A414
.global sub_811A610
.global sub_811A768
.global sub_811A78C
.global sub_811A858
.global sub_811A914
.global sub_811A978
.global sub_811AB5C
.global sub_811AD04
.global sub_811AD38
.global sub_811AE5C
.global sub_811AE7C
.global sub_811B010
.global sub_811B1EC
.global sub_811B314
.global loc_811B338
.global sub_811B3F4
.global sub_811B46C
.global sub_811B48C
.global sub_811B4AC
.global unk_811B9B5
.global sub_811BC00
.global sub_811BC44
.global sub_811BD64
.global sub_811BDFC
.global sub_811BED4
.global sub_811C08C
.global sub_811C11C
.global sub_811C1AC
.global sub_811C23C
.global sub_811C25C
.global sub_811C2A8
.global sub_811C4D8
.global sub_811C4E8
.global sub_811C9FC
.global sub_811CC74
.global sub_811D634
.global sub_811D66C
.global sub_811D69C
.global sub_811DBF0
.global sub_811DC34
.global sub_811DC88
.global sub_811DF0C
.global loc_811DF1C
.global loc_811E024
.global sub_811E0BA
.global loc_811E168
.global loc_811E248
.global loc_811E360
.global loc_811E418
.global loc_811E57C
.global loc_811E61C
.global loc_811E6C0
.global sub_811E744
.global loc_811E7D4
.global loc_811E858
.global loc_811E914
.global loc_811E9A0
.global sub_811EBE0
.global sub_811EBF4
.global sub_811EC00
.global sub_811EC10
.global sub_811EC50
.global ho_811ED1C // () -> void
.global sub_811F290
.global sub_811F6C0
.global sub_811F6E0
.global sub_811F708
.global sub_811F728
.global sub_811F758
.global menuControl_cb_openSubmenu // () -> void
.global sub_811F7EC
.global sub_811F7F8
.global sub_811F91C
.global sub_811FA0C
.global sub_811FA22
.global sub_811FA98
.global sub_811FAF4
.global sub_811FB64
.global sub_811FB78
.global sub_811FB84
.global sub_811FCA4
.global sub_811FCB8
.global sub_811FDB8
.global sub_811FE34
.global sub_811FE7C
.global sub_811FF6C
.global sub_811FFC0 // () -> void
.global loc_8120018
.global sub_81200EC
.global sub_8120194
.global sub_8120228
.global sub_8120280
.global sub_81202B4
.global sub_81202FC
.global sub_8120348
.global sub_8120390
.global sub_81203E4
.global sub_8120458
.global sub_81204C4
.global sub_812053C
.global sub_8120618
.global sub_81206C4
.global sub_81206F8
.global sub_8120740
.global sub_81207C4
.global sub_81207F8
.global sub_8120900
.global sub_81209DC
.global sub_8120A38
.global sub_8120A88
.global sub_8120AB8
.global sub_8120B54
.global sub_8120BE4
.global sub_8120C94
.global sub_8120CC8
.global sub_8120D10
.global sub_8120DAC
.global sub_8120DF0
.global sub_8121144
.global loc_8121154
.global sub_8121198
.global dword_81211B4
.global pt_8121200


/* External Symbols */
.include "asm/start.inc"
// .global start_

.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global ZeroFillHalfword
// .global ZeroFillWord // (void *memBlock, int size) -> void
// .global CpuFastSet_ZeroFillWord // (int a1, int a2) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
// .global CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
// .global sub_800098C
// .global loc_8000AC4
// .global loc_8000AC8
// .global decompAndCopyData_8000B30 // (u32 *initRefs) -> void
// .global decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
// .global sub_8000C00
// .global sub_8000C5C
// .global getPETNaviSelect // () -> u8
// .global sub_800139A
// .global change_20013F0_800151C // () -> int
// .global sub_8001532
// .global rng_8001562
// .global sub_80015FC
// .global sub_8001850
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_8001B1C
// .global sub_8001B84
// .global loc_8002676

.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_update
// .global sub_8002770 // (int a1, int a2) -> void
// .global loc_8002774
// .global sprite_setScaleParameters
// .global sub_8002C52
// .global sub_8002C7A
// .global sprite_setMosaicScalingParameters
// .global sub_8002CCE
// .global sprite_getMosaicScalingParameters
// .global sprite_makeScalable
// .global sprite_makeUnscalable
// .global sprite_setPallete // (int pallete) -> void
// .global sprite_setAnimation // (u8 a1) -> void

.include "asm/asm00_1.inc"
// .global sub_8002DEA
// .global sub_8002E14
// .global sub_8002ED0
// .global sub_8002EE8
// .global loc_8002F02
// .global sub_8002F3E
// .global sub_8002F5C
// .global sub_8002F90 // () -> void
// .global sub_8002FA6
// .global sub_8002FB2
// .global sub_8002FEC
// .global sub_800304A
// .global sub_8003060
// .global sub_800306C
// .global sub_800307C
// .global sub_800308A
// .global sub_80030A8
// .global sub_8005524
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global engine_isScreeneffectAnimating // () -> zf
// .global byte_80065E0
// .global byte_8006660
// .global sub_80077B4
// .global battle_isPaused
// .global battle_isTimeStop
// .global sub_800A11C
// .global battle_isBattleOver
// .global sub_800A704

.include "asm/object.inc"
// .global object_getPanelParameters
// .global object_setPanelType
// .global object_isCurrentPanelValid
// .global object_isValidPanel
// .global object_checkPanelParameters
// .global object_isPanelSolid
// .global sub_800CEA0
// .global sub_800CFA6
// .global sub_800CFDC
// .global sub_800D086
// .global sub_800D3FE
// .global sub_800D45C
// .global sub_800D5F0
// .global sub_800E258
// .global sub_800E276 // (int a1, int a2) -> (int n1, int n2)
// .global sub_800E29C // () -> void
// .global sub_800E2AC
// .global sub_800E2C0
// .global sub_800E2C2
// .global object_getFlipDirection_800E2CA // () -> int
// .global object_canMove
// .global object_setCounterTime
// .global object_getEnemyByNameRange

.include "asm/asm00_2.inc"
// .global sub_800ED90
// .global sub_800F2C6
// .global sub_800F322
// .global sub_80101C4
// .global sub_80101F8
// .global sub_80103F8
// .global sub_8010C76
// .global sub_8010CE0
// .global sub_8011680
// .global sub_8011714
// .global loc_801171C
// .global sub_80126E4
// .global navicust_801379E // (int a1, int a2, int a3) -> void
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global sub_80137E6
// .global sub_80137FE
// .global init_8013B4E // (bool a1, int a2) -> void
// .global navicust_8014018 // (int idx_8014034) -> bool
// .global sub_8015C48
// .global sub_8015C94
// .global sub_8015D80
// .global sub_8015E46
// .global sub_8016380
// .global sub_80165B8
// .global sub_80165C2
// .global sub_80166AE
// .global sub_8016934
// .global sub_8016B02
// .global sub_8016B36
// .global sub_8016B72
// .global sub_8016CE8
// .global sub_8016EC4
// .global sub_8018810
// .global off_8019B78
// .global sub_801A04C
// .global sub_801A066
// .global sub_801A074 // () -> void
// .global sub_801A07C
// .global sub_801A082
// .global object_setFlag // (int a1) -> void
// .global object_clearFlag // (int bitfield) -> void
// .global object_getFlag // () -> int
// .global sub_801A176
// .global sub_801A284
// .global sub_801A29A
// .global sub_801A2B0
// .global sub_801A5E2
// .global sub_801A7F4
// .global sub_801BB1C
// .global sub_801BB46
// .global sub_801BD3C
// .global sub_801DC36
// .global sub_801DC7C
// .global sub_801DD34
// .global sub_801DFA2

.include "asm/asm02.inc"
// .global getChip_8021DA8 // (int chip_idx) -> ChipData*
// .global split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
// .global sub_8021AEE
// .global sub_8021B2A
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*
// .global sub_8021BC0
// .global sub_8021BD8
// .global chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*

.include "asm/asm03_0.inc"
// .global sub_802CDD0
// .global sub_802D234
// .global get_802D246 // () -> int
// .global sub_802EF5C
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void

.include "asm/asm03_1.inc"
// .global sub_8033978
// .global sub_8036F70
// .global sub_803C316
// .global sub_803CE28
// .global sub_803D06C
// .global sub_803D0F4
// .global sub_803D138
// .global sub_803D148
// .global sub_803DD60
// .global sub_803F524
// .global sub_803F674
// .global sub_803F740

.include "asm/chatbox.inc"
// .global chatbox_8040818
// .global chatbox_8045F2C // (int a1) ->
// .global chatbox_8045F3C

.include "asm/asm03_2.inc"
// .global render_graphicalText_8045F8C
// .global sub_80465A0 // (void *a1) -> void
// .global sub_80465BC
// .global sub_80465F8 // () -> void
// .global sub_8046664 // () -> void
// .global sub_8046670
// .global sub_804668A
// .global sub_80466C4
// .global sub_80468E0
// .global sub_8047D84
// .global sub_804A24C

.include "asm/asm23.inc"
// .global dword_8089128

.include "asm/asm28_1.inc"
// .global sub_809F68C

.include "asm/asm31.inc"
// .global sub_80B8A0A
// .global sub_80BC998
// .global sub_80BC9BE
// .global sub_80BCB12
// .global sub_80BE6D8
// .global sub_80C10E8
// .global sub_80C4038
// .global sub_80C4072
// .global sub_80C536A
// .global sub_80C579E
// .global sub_80C59F6
// .global sub_80D1EE8
// .global sub_80D464A
// .global sub_80D6B78
// .global sub_80D8400
// .global sub_80D842E
// .global sub_80DFAD6
// .global sub_80DFF84
// .global sub_80E05F6
// .global sub_80E8124
// .global sub_8109630
// .global sub_8109660
// .global sub_81096FA
// .global sub_8109708
// .global sub_810971A
// .global sub_81097B4
// .global sub_81097BA
// .global loc_81097D6
// .global sub_81097DC
// .global sub_8109804
// .global sub_8109952
// .global loc_8109974

.include "data/dat32.inc"
// .global dword_8121270
// .global dword_812127C
// .global dword_8121288
// .global dword_812129C
// .global dword_81212B0
// .global dword_81212CC
// .global dword_81212E8
// .global dword_812130C
// .global dword_8121330
// .global dword_8121354
// .global dword_8121388
// .global dword_81213BC
// .global dword_81213F0
// .global dword_8121424
// .global dword_8121458
// .global off_812148C
// .global off_8121748
// .global off_8121A2C
// .global off_8121C40
// .global off_8121EA4
// .global off_81220F8
// .global off_8122334
// .global off_8122618
// .global off_812291C
// .global off_8122BF8
// .global off_8122EBC

.include "asm/asm33.inc"
// .global sub_8123208
// .global sub_8123360
// .global sub_8123434
// .global ho_8123F5C
// .global dword_8124B1C
// .global sub_8124B3C
// .global sub_8126B4C
// .global menuControl_cb_email
// .global sub_8128730
// .global loc_8128CBC
// .global sub_81291E8
// .global sub_8129248

.include "asm/asm36.inc"
// .global sub_81312F4
// .global sub_81329C8
// .global sub_8132A14
// .global sub_8132A50
// .global dword_8132A9C
// .global sub_8132B88
// .global sub_8133200
// .global sub_81355D8
// .global sub_81356D4
// .global loc_8136DE0
// .global sub_81376CC
// .global sub_8137718
// .global sub_81377EC
// .global sub_8137884
// .global sub_8137890
// .global loc_81378B4

.include "asm/asm37_0.inc"
// .global sub_813B780
// .global loc_813B7A0
// .global sub_813B9B4
// .global sub_813B9FC

.include "asm/reqBBS.inc"
// .global reqBBS_813EE58
// .global reqBBS_81406FC

.include "asm/asm37_1.inc"
// .global sub_81418E4
// .global sub_8142190
// .global sub_81421D0
// .global sub_8143198
// .global sub_81433DA
// .global sub_8143D4C
// .global sub_8143F90
// .global sub_8144010
// .global sub_8144D30
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void

.include "data/dat38_33.inc"
// .global npcSpriteLan

.include "data/dat38_36.inc"
// .global npcSpriteMegaMan

.include "data/dat38_39.inc"
// .global sprite_849B424

.include "data/dat38_60.inc"
// .global dword_86A5D60
// .global dword_86B7AE0

.include "data/dat38_70.inc"
// .global PET_Gfx_tileRefs
// .global unk_86CB360
// .global sprite_86CBB7C
// .global sprite_86CC13C

.include "data/dat38_71.inc"
// .global byte_86CF4AC

.include "data/dat38_80.inc"
// .global off_86DC3F8

.include "data/dat38_85.inc"
// .global dword_86E2E98
// .global dword_86E3B9C
// .global dword_86E411C
// .global dword_86E43DC
// .global byte_86E587C
// .global unk_86EB8B8
// .global unk_86EE0CC

.include "data/dat38_87.inc"
// .global byte_873EA50


/* Undeclared Symbols */
// .equ timer_2000000, 0x2000000
// .equ unk_2000310, 0x2000310
// .equ byte_2000780, 0x2000780
// .equ byte_2001010, 0x2001010
// .equ dword_2001020, 0x2001020
// .equ dword_2001020, 0x2001020
// .equ reqBBS_bxo_2001150, 0x2001150
// .equ unk_20018EC, 0x20018EC
// .equ dynaicArr, 0x2005780
// .equ byte_20065C0, 0x20065C0
// .equ unk_20096E0, 0x20096E0
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ sSubmenu, 0x2009A30
// .equ unk_200BEA0, 0x200BEA0
// .equ unk_200C0E0, 0x200C0E0
// .equ unk_200C2A0, 0x200C2A0
// .equ unk_200C620, 0x200C620
// .equ unk_200C920, 0x200C920
// .equ unk_200CC20, 0x200CC20
// .equ unk_200CF20, 0x200CF20
// .equ unk_200D220, 0x200D220
// .equ word_200DCF0, 0x200DCF0
// .equ byte_200DF20, 0x200DF20
// .equ byte_200DF21, 0x200DF21
// .equ byte_200DF24, 0x200DF24
// .equ byte_200DF25, 0x200DF25
// .equ byte_200DF28, 0x200DF28
// .equ byte_200DF29, 0x200DF29
// .equ byte_200DF2A, 0x200DF2A
// .equ byte_200DF2B, 0x200DF2B
// .equ word_200DF30, 0x200DF30
// .equ byte_200F360, 0x200F360
// .equ unk_2010100, 0x2010100
// .equ byte_2011C10, 0x2011C10
// .equ byte_2011E40, 0x2011E40
// .equ byte_2011E42, 0x2011E42
// .equ byte_2011E46, 0x2011E46
// .equ unk_2016200, 0x2016200
// .equ unk_2016300, 0x2016300
// .equ unk_2016400, 0x2016400
// .equ byte_2016A04, 0x2016A04
// .equ byte_2017A00, 0x2017A00
// .equ unk_2017C00, 0x2017C00
// .equ unk_2017E00, 0x2017E00
// .equ unk_2018000, 0x2018000
// .equ unk_2018200, 0x2018200
// .equ unk_2018400, 0x2018400
// .equ unk_2018600, 0x2018600
// .equ unk_2018800, 0x2018800
// .equ unk_2018A00, 0x2018A00
// .equ unk_2018C00, 0x2018C00
// .equ unk_2018E00, 0x2018E00
// .equ unk_2019000, 0x2019000
// .equ unk_2019200, 0x2019200
// .equ unk_2019400, 0x2019400
// .equ unk_2019600, 0x2019600
// .equ unk_2019800, 0x2019800
// .equ byte_2019A00, 0x2019A00
// .equ unk_2019C00, 0x2019C00
// .equ unk_201A800, 0x201A800
// .equ unk_201AA00, 0x201AA00
// .equ byte_201AE00, 0x201AE00
// .equ unk_201B200, 0x201B200
// .equ unk_201B480, 0x201B480
// .equ unk_201BA00, 0x201BA00
// .equ unk_201BA04, 0x201BA04
// .equ unk_201BA20, 0x201BA20
// .equ unk_201BF20, 0x201BF20
// .equ unk_201C400, 0x201C400
// .equ unk_201D280, 0x201D280
// .equ unk_201D2F8, 0x201D2F8
// .equ unk_201D700, 0x201D700
// .equ unk_201D774, 0x201D774
// .equ unk_201D884, 0x201D884
// .equ word_201DA80, 0x201DA80
// .equ unk_201DD70, 0x201DD70
// .equ unk_201E284, 0x201E284
// .equ unk_201F294, 0x201F294
// .equ unk_201F6F0, 0x201F6F0
// .equ dword_201FC20, 0x201FC20
// .equ unk_2020484, 0x2020484
// .equ unk_2020500, 0x2020500
// .equ unk_2020C00, 0x2020C00
// .equ unk_20212F8, 0x20212F8
// .equ unk_20218F0, 0x20218F0
// .equ unk_2021FF0, 0x2021FF0
// .equ unk_20222A0, 0x20222A0
// .equ unk_20222F0, 0x20222F0
// .equ unk_20226F0, 0x20226F0
// .equ unk_2022AA0, 0x2022AA0
// .equ unk_2022C00, 0x2022C00
// .equ unk_2022FA0, 0x2022FA0
// .equ unk_20231A0, 0x20231A0
// .equ byte_2023BC0, 0x2023BC0
// .equ byte_2023BC8, 0x2023BC8
// .equ word_2023FA0, 0x2023FA0
// .equ unk_2024290, 0x2024290
// .equ unk_202458C, 0x202458C
// .equ unk_202488C, 0x202488C
// .equ unk_2024A00, 0x2024A00
// .equ unk_2024A20, 0x2024A20
// .equ unk_2024C00, 0x2024C00
// .equ unk_2024E8C, 0x2024E8C
// .equ unk_20251B0, 0x20251B0
// .equ unk_2025AE8, 0x2025AE8
// .equ unk_2026A00, 0x2026A00
// .equ unk_2026A20, 0x2026A20
// .equ unk_2026C00, 0x2026C00
// .equ unk_2027000, 0x2027000
// .equ unk_20270EC, 0x20270EC
// .equ unk_202714C, 0x202714C
// .equ byte_2027200, 0x2027200
// .equ byte_2027204, 0x2027204
// .equ byte_2027208, 0x2027208
// .equ byte_202720C, 0x202720C
// .equ byte_2027210, 0x2027210
// .equ byte_2027214, 0x2027214
// .equ byte_2027218, 0x2027218
// .equ byte_202721C, 0x202721C
// .equ unk_2028000, 0x2028000
// .equ unk_202CA00, 0x202CA00
// .equ unk_202CC00, 0x202CC00
// .equ unk_202CE00, 0x202CE00
// .equ unk_202D000, 0x202D000
// .equ unk_202D200, 0x202D200
// .equ unk_202D400, 0x202D400
// .equ unk_202D600, 0x202D600
// .equ unk_202D800, 0x202D800
// .equ unk_202DA00, 0x202DA00
// .equ unk_202DC00, 0x202DC00
// .equ unk_202DE00, 0x202DE00
// .equ byte_202E17C, 0x202E17C
// .equ byte_202F57C, 0x202F57C
// .equ byte_202FA04, 0x202FA04
// .equ byte_2030204, 0x2030204
// .equ unk_2031204, 0x2031204
// .equ unk_2031344, 0x2031344
// .equ unk_2032A04, 0x2032A04
// .equ unk_2032D00, 0x2032D00
// .equ unk_2033A00, 0x2033A00
// .equ unk_20343E0, 0x20343E0
// .equ unk_20347D8, 0x20347D8
// .equ unk_2034B6C, 0x2034B6C
// .equ unk_2034E00, 0x2034E00
// .equ unk_203526C, 0x203526C
// .equ unk_2035A04, 0x2035A04
// .equ unk_2036500, 0x2036500
// .equ unk_2037780, 0x2037780
// .equ byte_203778C, 0x203778C
// .equ word_203779E, 0x203779E
// .equ word_20377A0, 0x20377A0
// .equ word_20377A4, 0x20377A4
// .equ word_20377BC, 0x20377BC
// .equ word_20377C0, 0x20377C0
// .equ unk_2037A04, 0x2037A04
// .equ unk_3000000, 0x3000000
// .equ byte_3001550, 0x3001550
// .equ byte_30015B0, 0x30015B0
// .equ byte_30015D0, 0x30015D0
// .equ byte_30015F0, 0x30015F0
// .equ byte_3001610, 0x3001610
// .equ word_3001684, 0x3001684
// .equ byte_3001686, 0x3001686
// .equ byte_30016A8, 0x30016A8
// .equ word_3001B2C, 0x3001B2C
// .equ word_3001B56, 0x3001B56
// .equ word_3001B58, 0x3001B58
// .equ sub_3006B94, 0x3006B94
.equ LCDControl, 0x4000000
// .global battleSpriteMegaMan
// .global battleSpriteSpoutMan
// .global sprite_829D818
// .global sprite_82A5AF0
// .global sprite_82B0690
// .global sprite_82BA7BC
// .global comp_82FCA14

.endif // INC_ASM_ASM32
