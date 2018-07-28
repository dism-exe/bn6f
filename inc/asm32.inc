.ifndef INC_ASM32
.equ INC_ASM32, 0

/* Public Symbols */
.extern dword_810DD10
.extern dword_810DD3C
.extern sub_810E336
.extern sub_810E340
.extern dword_810E3E8
.extern dword_810E414
.extern dword_810EC80
.extern dword_810ECAC
.extern dword_810F200
.extern dword_810F22C
.extern dword_810F510
.extern sub_810FA4C
.extern dword_81102BC
.extern sub_811060A
.extern unk_8110654
.extern dword_8111130
.extern dword_811115C
.extern dword_811190C
.extern dword_8111938
.extern dword_8111FF8
.extern dword_8112024
.extern dword_81126DC
.extern dword_8112708
.extern dword_8112B94
.extern dword_8112BC0
.extern dword_8113268
.extern dword_8113754
.extern dword_8113780
.extern dword_8113DC0
.extern dword_81143F4
.extern sub_8114F52
.extern sub_8114F6A
.extern dword_81150AC
.extern dword_81150D8
.extern dword_8115704
.extern dword_8115730
.extern sub_8115BB0
.extern dword_8115BEC
.extern dword_8115C18
.extern dword_81162F8
.extern dword_81165BC
.extern sub_8116878
.extern sub_8116FDC
.extern sub_8117084
.extern sub_81171D4
.extern sub_81171F4
.extern sub_81179AE
.extern sub_8117D10
.extern sub_81190F8
.extern sub_8119118
.extern sub_811980C
.extern sub_811983C
.extern sub_8119854
.extern sub_8119BE8
.extern sub_8119C74
.extern sub_8119C94
.extern sub_811A1F4
.extern sub_811A220
.extern sub_811A610
.extern sub_811A768
.extern sub_811A914
.extern sub_811AD04
.extern sub_811AE5C
.extern sub_811AE7C
.extern sub_811B010
.extern sub_811B314
.extern sub_811B46C
.extern sub_811B48C
.extern sub_811BC00
.extern sub_811BDFC
.extern sub_811BED4
.extern sub_811C23C
.extern sub_811C2A8
.extern sub_811C4D8
.extern sub_811D634
.extern sub_811D66C
.extern sub_811D69C
.extern sub_811DBF0
.extern sub_811DC88
.extern sub_811DF0C
.extern sub_811E0BA
.extern sub_811E744
.extern sub_811EBE0
.extern sub_811EBF4
.extern sub_811EC00
.extern sub_811EC10
.extern sub_811EC50
.extern loc_811ED1C
.extern sub_811F290
.extern sub_811F6C0
.extern sub_811F6E0
.extern sub_811F708
.extern sub_811F728
.extern sub_811F758
.extern sub_811F7EC
.extern sub_811F7F8
.extern sub_811F91C
.extern sub_811FA0C
.extern sub_811FA22
.extern sub_811FA98
.extern sub_811FAF4
.extern sub_811FB64
.extern sub_811FB78
.extern sub_811FB84
.extern sub_811FCA4
.extern sub_811FCB8
.extern sub_811FDB8
.extern sub_811FE34
.extern sub_811FE7C
.extern sub_811FF6C
.extern sub_811FFC0
.extern loc_8120018
.extern sub_81200EC
.extern sub_8120194
.extern sub_8120228
.extern sub_8120280
.extern sub_81202B4
.extern sub_81202FC
.extern sub_8120348
.extern sub_8120390
.extern sub_81203E4
.extern sub_8120458
.extern sub_81204C4
.extern sub_812053C
.extern sub_8120618
.extern sub_81206C4
.extern sub_81206F8
.extern sub_8120740
.extern sub_81207C4
.extern sub_81207F8
.extern sub_8120900
.extern sub_81209DC
.extern sub_8120A38
.extern sub_8120A88
.extern sub_8120AB8
.extern sub_8120B54
.extern sub_8120BE4
.extern sub_8120C94
.extern sub_8120CC8
.extern sub_8120D10
.extern sub_8120DAC
.extern sub_8120DF0
.extern sub_8121144
.extern loc_8121154
.extern sub_8121198
.extern dword_81211B4
.extern pt_8121200


/* External Symbols */
.include "asm03.inc"
.equ sub_802CDD0, 0x802CDD0
.equ sub_802D234, 0x802D234
.equ sub_802D246, 0x802D246
.equ sub_802EF5C, 0x802EF5C
.equ sub_802F164, 0x802F164
.equ sub_802F168, 0x802F168
.equ sub_802FE28, 0x802FE28
.equ sub_8033978, 0x8033978
.equ sub_8036F70, 0x8036F70
.equ sub_803C316, 0x803C316
.equ sub_803CE28, 0x803CE28
.equ sub_803D06C, 0x803D06C
.equ sub_803D0F4, 0x803D0F4
.equ sub_803D138, 0x803D138
.equ sub_803D148, 0x803D148
.equ sub_803DD60, 0x803DD60
.equ sub_803F524, 0x803F524
.equ sub_803F674, 0x803F674
.equ sub_803F740, 0x803F740
.equ sub_8040818, 0x8040818
.equ sub_8045F2C, 0x8045F2C
.equ sub_8045F3C, 0x8045F3C
.equ render_graphicalText_8045F8C, 0x8045F8C
.equ sub_80465A0, 0x80465A0
.equ sub_80465BC, 0x80465BC
.equ sub_80465F8, 0x80465F8
.equ sub_8046664, 0x8046664
.equ sub_8046670, 0x8046670
.equ sub_804668A, 0x804668A
.equ sub_80466C4, 0x80466C4
.equ sub_80468E0, 0x80468E0
.equ sub_8047D84, 0x8047D84
.equ sub_804A24C, 0x804A24C

.include "start.inc"
.equ start_, 0x8000000

.include "asm02.inc"
.equ sub_8021AA4, 0x8021AA4
.equ sub_8021AE0, 0x8021AE0
.equ dword_8021AEC, 0x8021AEC
.equ sub_8021B2A, 0x8021B2A
.equ sub_8021B92, 0x8021B92
.equ sub_8021BC0, 0x8021BC0
.equ sub_8021BD8, 0x8021BD8
.equ sub_8021C7C, 0x8021C7C

.include "asm37.inc"
.equ sub_813B780, 0x813B780
.equ loc_813B7A0, 0x813B7A0
.equ sub_813B9B4, 0x813B9B4
.equ sub_813B9FC, 0x813B9FC
.equ sub_813EE58, 0x813EE58
.equ sub_81406FC, 0x81406FC
.equ sub_81418E4, 0x81418E4
.equ sub_8142190, 0x8142190
.equ sub_81421D0, 0x81421D0
.equ sub_8143198, 0x8143198
.equ sub_81433DA, 0x81433DA
.equ sub_8143D4C, 0x8143D4C
.equ sub_8143F90, 0x8143F90
.equ sub_8144010, 0x8144010
.equ sub_8144D30, 0x8144D30
.equ SWI_LZ77UnCompReadNormalWrite8bit, 0x814D8C4

.include "asm33.inc"
.equ sub_8123208, 0x8123208
.equ sub_8123360, 0x8123360
.equ sub_8123434, 0x8123434
.equ sub_8123F5C, 0x8123F5C
.equ dword_8124B1C, 0x8124B1C
.equ sub_8124B3C, 0x8124B3C
.equ sub_8126B4C, 0x8126B4C
.equ menuControl_cb_email, 0x81279F8
.equ sub_8128730, 0x8128730
.equ loc_8128CBC, 0x8128CBC
.equ sub_81291E8, 0x81291E8
.equ sub_8129248, 0x8129248

.include "asm36.inc"
.equ sub_81312F4, 0x81312F4
.equ sub_81329C8, 0x81329C8
.equ sub_8132A14, 0x8132A14
.equ sub_8132A50, 0x8132A50
.equ dword_8132A9C, 0x8132A9C
.equ sub_8132B88, 0x8132B88
.equ sub_8133200, 0x8133200
.equ sub_81355D8, 0x81355D8
.equ sub_81356D4, 0x81356D4
.equ loc_8136DE0, 0x8136DE0
.equ sub_81376CC, 0x81376CC
.equ sub_8137718, 0x8137718
.equ sub_81377EC, 0x81377EC
.equ sub_8137884, 0x8137884
.equ sub_8137890, 0x8137890
.equ loc_81378B4, 0x81378B4

.include "asm28.inc"
.equ sub_809F68C, 0x809F68C

.include "asm00.inc"
.equ sound_play, 0x80005CC
.equ sub_80008C0, 0x80008C0
.equ CpuSet_ZeroFillWord, 0x80008E0
.equ sub_8000900, 0x8000900
.equ sub_800093C, 0x800093C
.equ sub_8000950, 0x8000950
.equ sub_800098C, 0x800098C
.equ loc_8000AC4, 0x8000AC4
.equ loc_8000AC8, 0x8000AC8
.equ sub_8000B30, 0x8000B30
.equ sub_8000B8E, 0x8000B8E
.equ sub_8000C00, 0x8000C00
.equ sub_8000C5C, 0x8000C5C
.equ getPETNaviSelect, 0x80010B6
.equ sub_800139A, 0x800139A
.equ sub_800151C, 0x800151C
.equ sub_8001532, 0x8001532
.equ sub_8001562, 0x8001562
.equ sub_80015FC, 0x80015FC
.equ sub_8001850, 0x8001850
.equ sub_80018C2, 0x80018C2
.equ sub_8001B1C, 0x8001B1C
.equ sub_8001B84, 0x8001B84
.equ loc_8002676, 0x8002676
.equ sprite_loadAnimationData_80026A4, 0x80026A4
.equ anim_80026C4, 0x80026C4
.equ sub_8002770, 0x8002770
.equ loc_8002774, 0x8002774
.equ sub_8002C24, 0x8002C24
.equ sub_8002C52, 0x8002C52
.equ sub_8002C7A, 0x8002C7A
.equ loc_8002C7E, 0x8002C7E
.equ sub_8002CCE, 0x8002CCE
.equ sub_8002CE0, 0x8002CE0
.equ sub_8002D14, 0x8002D14
.equ sprite_makeUnscalable, 0x8002D52
.equ sprite_setPallete, 0x8002D80
.equ sprite_setAnimation, 0x8002DA4
.equ sub_8002DEA, 0x8002DEA
.equ sub_8002E14, 0x8002E14
.equ sub_8002ED0, 0x8002ED0
.equ sub_8002EE8, 0x8002EE8
.equ loc_8002F02, 0x8002F02
.equ sub_8002F3E, 0x8002F3E
.equ sub_8002F5C, 0x8002F5C
.equ sub_8002F90, 0x8002F90
.equ sub_8002FA6, 0x8002FA6
.equ sub_8002FB2, 0x8002FB2
.equ sub_8002FEC, 0x8002FEC
.equ sub_800304A, 0x800304A
.equ sub_8003060, 0x8003060
.equ sub_800306C, 0x800306C
.equ sub_800307C, 0x800307C
.equ sub_800308A, 0x800308A
.equ sub_80030A8, 0x80030A8
.equ sub_8005524, 0x8005524
.equ engine_setScreeneffect, 0x8006270
.equ engine_isScreeneffectAnimating, 0x80062F8
.equ dword_80065D0, 0x80065D0
.equ dword_8006660, 0x8006660
.equ sub_80077B4, 0x80077B4
.equ battle_isPaused, 0x800A03C
.equ battle_isTimeStop, 0x800A098
.equ sub_800A11C, 0x800A11C
.equ battle_isBattleOver, 0x800A18E
.equ sub_800A704, 0x800A704
.equ object_getPanelParameters, 0x800C8F8
.equ object_setPanelType, 0x800CC0A
.equ object_isCurrentPanelValid, 0x800CC66
.equ object_isValidPanel, 0x800CC72
.equ object_checkPanelParameters, 0x800CC86
.equ object_isPanelSolid, 0x800CCB2
.equ sub_800CEA0, 0x800CEA0
.equ sub_800CFA6, 0x800CFA6
.equ sub_800CFDC, 0x800CFDC
.equ sub_800D086, 0x800D086
.equ sub_800D3FE, 0x800D3FE
.equ sub_800D45C, 0x800D45C
.equ sub_800D5F0, 0x800D5F0
.equ sub_800E258, 0x800E258
.equ sub_800E276, 0x800E276
.equ sub_800E29C, 0x800E29C
.equ sub_800E2AC, 0x800E2AC
.equ sub_800E2C0, 0x800E2C0
.equ sub_800E2C2, 0x800E2C2
.equ sub_800E2CA, 0x800E2CA
.equ object_canMove, 0x800E5E2
.equ object_setCounterTime, 0x800E9DC
.equ object_getEnemyByNameRange, 0x800EBD4
.equ sub_800ED90, 0x800ED90
.equ sub_800F2C6, 0x800F2C6
.equ sub_800F322, 0x800F322
.equ sub_80101C4, 0x80101C4
.equ sub_80101F8, 0x80101F8
.equ sub_80103F8, 0x80103F8
.equ sub_8010C76, 0x8010C76
.equ sub_8010CE0, 0x8010CE0
.equ sub_8011680, 0x8011680
.equ sub_8011714, 0x8011714
.equ loc_801171C, 0x801171C
.equ sub_80126E4, 0x80126E4
.equ sub_801379E, 0x801379E
.equ sub_80137B6, 0x80137B6
.equ sub_80137E6, 0x80137E6
.equ sub_80137FE, 0x80137FE
.equ sub_8013B4E, 0x8013B4E
.equ sub_8014018, 0x8014018
.equ sub_8015C48, 0x8015C48
.equ sub_8015C94, 0x8015C94
.equ sub_8015D80, 0x8015D80
.equ sub_8015E46, 0x8015E46
.equ sub_8016380, 0x8016380
.equ sub_80165B8, 0x80165B8
.equ sub_80165C2, 0x80165C2
.equ sub_80166AE, 0x80166AE
.equ sub_8016934, 0x8016934
.equ byte_8016B02, 0x8016B02
.equ byte_8016B03, 0x8016B03
.equ sub_8016B36, 0x8016B36
.equ sub_8016B72, 0x8016B72
.equ loc_8016CE8, 0x8016CE8
.equ sub_8016EC4, 0x8016EC4
.equ sub_8018810, 0x8018810
.equ off_8019B78, 0x8019B78
.equ sub_801A04C, 0x801A04C
.equ sub_801A066, 0x801A066
.equ sub_801A074, 0x801A074
.equ sub_801A07C, 0x801A07C
.equ sub_801A082, 0x801A082
.equ object_setFlag, 0x801A152
.equ object_clearFlag, 0x801A15C
.equ object_getFlag, 0x801A166
.equ sub_801A176, 0x801A176
.equ sub_801A284, 0x801A284
.equ sub_801A29A, 0x801A29A
.equ sub_801A2B0, 0x801A2B0
.equ sub_801A5E2, 0x801A5E2
.equ sub_801A7F4, 0x801A7F4
.equ sub_801BB1C, 0x801BB1C
.equ sub_801BB46, 0x801BB46
.equ sub_801BD3C, 0x801BD3C
.equ sub_801DC36, 0x801DC36
.equ sub_801DC7C, 0x801DC7C
.equ sub_801DD34, 0x801DD34
.equ sub_801DFA2, 0x801DFA2

.include "asm23.inc"
.equ dword_8089128, 0x8089128

.include "asm31.inc"
.equ sub_80B8A0A, 0x80B8A0A
.equ sub_80BC998, 0x80BC998
.equ sub_80BC9BE, 0x80BC9BE
.equ sub_80BCB12, 0x80BCB12
.equ sub_80BE6D8, 0x80BE6D8
.equ sub_80C10E8, 0x80C10E8
.equ sub_80C4038, 0x80C4038
.equ sub_80C4072, 0x80C4072
.equ sub_80C536A, 0x80C536A
.equ sub_80C579E, 0x80C579E
.equ sub_80C59F6, 0x80C59F6
.equ sub_80D1EE8, 0x80D1EE8
.equ sub_80D464A, 0x80D464A
.equ sub_80D6B78, 0x80D6B78
.equ sub_80D8400, 0x80D8400
.equ sub_80D842E, 0x80D842E
.equ sub_80DFAD6, 0x80DFAD6
.equ sub_80DFF84, 0x80DFF84
.equ sub_80E05F6, 0x80E05F6
.equ sub_80E8124, 0x80E8124
.equ sub_8109630, 0x8109630
.equ sub_8109660, 0x8109660
.equ sub_81096FA, 0x81096FA
.equ sub_8109708, 0x8109708
.equ sub_810971A, 0x810971A
.equ sub_81097B4, 0x81097B4
.equ sub_81097BA, 0x81097BA
.equ loc_81097D6, 0x81097D6
.equ sub_81097DC, 0x81097DC
.equ loc_8109804, 0x8109804
.equ loc_8109952, 0x8109952
.equ loc_8109974, 0x8109974


/* Undeclared Symbols */
.equ unk_2000000, 0x2000000
.equ unk_2000310, 0x2000310
.equ byte_2000780, 0x2000780
.equ byte_2001010, 0x2001010
.equ dword_2001020, 0x2001020
.equ dword_2001020, 0x2001020
.equ byte_2001150, 0x2001150
.equ unk_20018EC, 0x20018EC
.equ byte_2005780, 0x2005780
.equ unk_20065C0, 0x20065C0
.equ unk_20096E0, 0x20096E0
.equ byte_2009A30, 0x2009A30
.equ byte_2009A31, 0x2009A31
.equ byte_2009A32, 0x2009A32
.equ byte_2009A3C, 0x2009A3C
.equ byte_2009A3D, 0x2009A3D
.equ byte_2009A3E, 0x2009A3E
.equ byte_2009A3F, 0x2009A3F
.equ byte_2009A47, 0x2009A47
.equ word_2009A48, 0x2009A48
.equ word_2009A4E, 0x2009A4E
.equ word_2009A50, 0x2009A50
.equ word_2009A54, 0x2009A54
.equ word_2009A6C, 0x2009A6C
.equ word_2009A70, 0x2009A70
.equ unk_200BEA0, 0x200BEA0
.equ unk_200C0E0, 0x200C0E0
.equ unk_200C2A0, 0x200C2A0
.equ unk_200C620, 0x200C620
.equ unk_200C920, 0x200C920
.equ unk_200CC20, 0x200CC20
.equ unk_200CF20, 0x200CF20
.equ unk_200D220, 0x200D220
.equ word_200DCF0, 0x200DCF0
.equ byte_200DF20, 0x200DF20
.equ byte_200DF21, 0x200DF21
.equ byte_200DF24, 0x200DF24
.equ byte_200DF25, 0x200DF25
.equ byte_200DF28, 0x200DF28
.equ byte_200DF29, 0x200DF29
.equ byte_200DF2A, 0x200DF2A
.equ byte_200DF2B, 0x200DF2B
.equ word_200DF30, 0x200DF30
.equ byte_200F360, 0x200F360
.equ unk_2010100, 0x2010100
.equ byte_2011C10, 0x2011C10
.equ byte_2011E40, 0x2011E40
.equ byte_2011E42, 0x2011E42
.equ byte_2011E46, 0x2011E46
.equ unk_2016200, 0x2016200
.equ unk_2016300, 0x2016300
.equ unk_2016400, 0x2016400
.equ unk_2016A04, 0x2016A04
.equ unk_2017A00, 0x2017A00
.equ unk_2017C00, 0x2017C00
.equ unk_2017E00, 0x2017E00
.equ unk_2018000, 0x2018000
.equ unk_2018200, 0x2018200
.equ unk_2018400, 0x2018400
.equ unk_2018600, 0x2018600
.equ unk_2018800, 0x2018800
.equ unk_2018A00, 0x2018A00
.equ unk_2018C00, 0x2018C00
.equ unk_2018E00, 0x2018E00
.equ unk_2019000, 0x2019000
.equ unk_2019200, 0x2019200
.equ unk_2019400, 0x2019400
.equ unk_2019600, 0x2019600
.equ unk_2019800, 0x2019800
.equ byte_2019A00, 0x2019A00
.equ unk_2019C00, 0x2019C00
.equ unk_201A800, 0x201A800
.equ unk_201AA00, 0x201AA00
.equ byte_201AE00, 0x201AE00
.equ unk_201B200, 0x201B200
.equ unk_201B480, 0x201B480
.equ unk_201BA00, 0x201BA00
.equ unk_201BA04, 0x201BA04
.equ unk_201BA20, 0x201BA20
.equ unk_201BF20, 0x201BF20
.equ unk_201C400, 0x201C400
.equ unk_201D280, 0x201D280
.equ unk_201D2F8, 0x201D2F8
.equ unk_201D700, 0x201D700
.equ unk_201D774, 0x201D774
.equ unk_201D884, 0x201D884
.equ word_201DA80, 0x201DA80
.equ unk_201DD70, 0x201DD70
.equ unk_201E284, 0x201E284
.equ unk_201F294, 0x201F294
.equ unk_201F6F0, 0x201F6F0
.equ dword_201FC20, 0x201FC20
.equ unk_2020200, 0x2020200
.equ unk_2020484, 0x2020484
.equ unk_2020500, 0x2020500
.equ unk_2020C00, 0x2020C00
.equ unk_20212F8, 0x20212F8
.equ unk_20218F0, 0x20218F0
.equ unk_2021FF0, 0x2021FF0
.equ unk_20222A0, 0x20222A0
.equ unk_20222F0, 0x20222F0
.equ unk_20226F0, 0x20226F0
.equ unk_2022AA0, 0x2022AA0
.equ unk_2022C00, 0x2022C00
.equ unk_2022FA0, 0x2022FA0
.equ unk_20231A0, 0x20231A0
.equ byte_2023BC0, 0x2023BC0
.equ byte_2023BC8, 0x2023BC8
.equ word_2023FA0, 0x2023FA0
.equ unk_2024290, 0x2024290
.equ unk_202458C, 0x202458C
.equ unk_202488C, 0x202488C
.equ unk_2024A00, 0x2024A00
.equ unk_2024A20, 0x2024A20
.equ unk_2024C00, 0x2024C00
.equ unk_2024E8C, 0x2024E8C
.equ unk_20251B0, 0x20251B0
.equ unk_2025AE8, 0x2025AE8
.equ unk_2026A00, 0x2026A00
.equ unk_2026A20, 0x2026A20
.equ unk_2026C00, 0x2026C00
.equ unk_2027000, 0x2027000
.equ unk_20270EC, 0x20270EC
.equ unk_202714C, 0x202714C
.equ byte_2027200, 0x2027200
.equ byte_2027204, 0x2027204
.equ byte_2027208, 0x2027208
.equ byte_202720C, 0x202720C
.equ byte_2027210, 0x2027210
.equ byte_2027214, 0x2027214
.equ byte_2027218, 0x2027218
.equ byte_202721C, 0x202721C
.equ unk_2028000, 0x2028000
.equ unk_202CA00, 0x202CA00
.equ unk_202CC00, 0x202CC00
.equ unk_202CE00, 0x202CE00
.equ unk_202D000, 0x202D000
.equ unk_202D200, 0x202D200
.equ unk_202D400, 0x202D400
.equ unk_202D600, 0x202D600
.equ unk_202D800, 0x202D800
.equ unk_202DA00, 0x202DA00
.equ unk_202DC00, 0x202DC00
.equ unk_202DE00, 0x202DE00
.equ unk_202E17C, 0x202E17C
.equ unk_202F57C, 0x202F57C
.equ unk_202FA04, 0x202FA04
.equ unk_2030204, 0x2030204
.equ unk_2031204, 0x2031204
.equ unk_2031344, 0x2031344
.equ unk_2032A04, 0x2032A04
.equ unk_2032D00, 0x2032D00
.equ unk_2033A00, 0x2033A00
.equ unk_20343E0, 0x20343E0
.equ unk_20347D8, 0x20347D8
.equ unk_2034B6C, 0x2034B6C
.equ unk_2034E00, 0x2034E00
.equ unk_203526C, 0x203526C
.equ unk_2035A04, 0x2035A04
.equ unk_2036500, 0x2036500
.equ unk_2037780, 0x2037780
.equ byte_203778C, 0x203778C
.equ word_203779E, 0x203779E
.equ word_20377A0, 0x20377A0
.equ word_20377A4, 0x20377A4
.equ word_20377BC, 0x20377BC
.equ word_20377C0, 0x20377C0
.equ unk_2037A04, 0x2037A04
.equ word_3000000, 0x3000000
.equ unk_3001550, 0x3001550
.equ unk_30015B0, 0x30015B0
.equ unk_30015D0, 0x30015D0
.equ unk_30015F0, 0x30015F0
.equ unk_3001610, 0x3001610
.equ word_3001684, 0x3001684
.equ word_3001686, 0x3001686
.equ unk_30016A8, 0x30016A8
.equ word_3001B2C, 0x3001B2C
.equ word_3001B56, 0x3001B56
.equ word_3001B58, 0x3001B58
.equ loc_3006B94, 0x3006B94
.equ LCDControl, 0x4000000
.equ dword_8121270, 0x8121270
.equ dword_812127C, 0x812127C
.equ dword_8121288, 0x8121288
.equ dword_812129C, 0x812129C
.equ dword_81212B0, 0x81212B0
.equ dword_81212CC, 0x81212CC
.equ dword_81212E8, 0x81212E8
.equ dword_812130C, 0x812130C
.equ dword_8121330, 0x8121330
.equ dword_8121354, 0x8121354
.equ dword_8121388, 0x8121388
.equ dword_81213BC, 0x81213BC
.equ dword_81213F0, 0x81213F0
.equ dword_8121424, 0x8121424
.equ dword_8121458, 0x8121458
.equ off_812148C, 0x812148C
.equ off_8121748, 0x8121748
.equ off_8121A2C, 0x8121A2C
.equ off_8121C40, 0x8121C40
.equ off_8121EA4, 0x8121EA4
.equ off_81220F8, 0x81220F8
.equ off_8122334, 0x8122334
.equ off_8122618, 0x8122618
.equ off_812291C, 0x812291C
.equ off_8122BF8, 0x8122BF8
.equ off_8122EBC, 0x8122EBC
.equ unk_81D8000, 0x81D8000
.equ dword_82FCA14, 0x82FCA14
.equ dword_86A5D60, 0x86A5D60
.equ dword_86B7AE0, 0x86B7AE0
.equ loc_86CAC4C, 0x86CAC4C
.equ loc_86CB360, 0x86CB360
.equ dword_86CF4AC, 0x86CF4AC
.equ dword_86DC2C4, 0x86DC2C4
.equ dword_86E2E98, 0x86E2E98
.equ dword_86E3B9C, 0x86E3B9C
.equ dword_86E411C, 0x86E411C
.equ dword_86E43DC, 0x86E43DC
.equ dword_86E587C, 0x86E587C
.equ dword_86EB354, 0x86EB354
.equ dword_86EDB54, 0x86EDB54
.equ dword_873EA50, 0x873EA50

.endif // INC_ASM32
