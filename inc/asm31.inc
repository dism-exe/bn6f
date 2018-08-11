.ifndef INC_ASM31
.equ INC_ASM31, 0

/* Public Symbols */
.global sub_80B8A0A
.global sub_80BC844
.global sub_80BC998
.global sub_80BC9BE
.global sub_80BCB12
.global sub_80BE6D8
.global loc_80C1008
.global sub_80C10E8
.global sub_80C4038
.global sub_80C4072
.global sub_80C41D8
.global sub_80C4204
.global sub_80C44A8
.global sub_80C44C8
.global sub_80C468C
.global sub_80C46B0
.global sub_80C46C0
.global sub_80C4C12
.global sub_80C4C3A
.global sub_80C4FFE
.global sub_80C536A
.global sub_80C53A6
.global sub_80C579E
.global sub_80C59F6
.global sub_80C5B76
.global sub_80C7F20
.global sub_80CC0B2
.global sub_80CFBC4
.global sub_80D1EE8
.global sub_80D464A
.global sub_80D6B78
.global sub_80D8400
.global sub_80D842E
.global sub_80D99EC
.global sub_80DFAD6
.global sub_80DFF84
.global off_80E0408
.global sub_80E05F6
.global sub_80E06F8
.global sub_80E08C4
.global sub_80E09EE
.global sub_80E0D98
.global sub_80E0F02
.global sub_80E11E0
.global sub_80E1620
.global sub_80E164A
.global sub_80E1662
.global sub_80E192C
.global sub_80E1A6A
.global sub_80E1A86
.global sub_80E1D7A
.global sub_80E37D2
.global sub_80E4B34
.global sub_80E4D8A
.global sub_80E4DA2
.global sub_80E5410
.global sub_80E544C
.global sub_80E5B62
.global sub_80E7486
.global sub_80E8124
.global sub_80E90FE
.global dword_80E98C0
.global sub_80E996E
.global sub_80E9BDC
.global sub_80EA438
.global off_80EA814
.global loc_80EA8D8
.global off_80EAC60
.global loc_80EAD9C
.global loc_80EB04C
.global loc_80EB234
.global loc_80EE90C
.global loc_80EEA3C
.global loc_80EED56
.global loc_80F0804
.global off_80F24D8
.global off_80F253C
.global dword_80F28F0
.global dword_80F2A54
.global dword_80F390C
.global dword_80F47D4
.global dword_80F5838
.global dword_80F6394
.global dword_80F757C
.global dword_80F8334
.global dword_80F8EEC
.global dword_80F9C80
.global dword_80FACDC
.global dword_80FB8E0
.global dword_80FD044
.global dword_80FDCF0
.global dword_80FE7D0
.global off_81090D0
.global off_8109150
.global sub_8109630
.global sub_8109660
.global sub_81096FA
.global sub_8109708
.global sub_810971A
.global sub_81097B4
.global sub_8109804
.global sub_8109952
.global loc_8109974
.global dword_8109AA4
.global dword_8109BFC
.global dword_810A2EC
.global dword_810A86C
.global dword_810AE70
.global unk_810B7B8
.global dword_810BEF8


/* External Symbols */
.include "start.inc"
// .global start_
// .global dword_8000004
// .global dword_80001F4

.include "asm02.inc"
// .global refIndex_8021DA8 // (int idx) -> void*

.include "asm21.inc"
// .global aSa

.include "asm32.inc"
// .global dword_810DD10
// .global dword_810DD10
// .global sub_810E2A6
// .global sub_810E336
// .global sub_810E340
// .global dword_810E3E8
// .global dword_810E3E8
// .global sub_810E854
// .global dword_810EC80
// .global dword_810EC80
// .global sub_810F090
// .global dword_810F200
// .global dword_810F200
// .global dword_810F22C
// .global dword_810F22C
// .global sub_810FA4C
// .global sub_81100E2
// .global dword_811028C
// .global dword_811028C
// .global sub_811060A
// .global dword_8110610
// .global dword_8110610
// .global dword_8111130
// .global dword_8111130
// .global sub_8111846
// .global dword_811190C
// .global dword_811190C
// .global dword_8111FF8
// .global dword_8111FF8
// .global dword_81126DC
// .global dword_81126DC
// .global sub_81129EE
// .global dword_8112B94
// .global dword_8112B94
// .global dword_8112F2C
// .global dword_8112F2C
// .global dword_8113754
// .global dword_8113754
// .global dword_8113DC0
// .global dword_81143C0
// .global dword_81143C0
// .global sub_8114F52
// .global sub_8114F6A
// .global sub_8115098
// .global dword_81150AC
// .global dword_81150AC
// .global dword_8115704
// .global dword_8115704
// .global sub_81159DC
// .global sub_8115BB0
// .global dword_8115BEC
// .global dword_8115BEC
// .global sub_81162AA
// .global dword_81162F8
// .global dword_81162F8
// .global dword_81165BC
// .global dword_81165BC
// .global sub_8116878

.include "asm00.inc"
// .global sound_play
// .global sub_80008C0
// .global CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
// .global copyMemory // (void *src, void* dest, int size) -> void
// .global loc_8000AC8
// .global sub_8000C72
// .global sub_8000DE0
// .global calcAngle_800117C
// .global sub_80011A0
// .global sub_800120E
// .global sub_8001330
// .global sub_8001382
// .global sub_800139A
// .global sub_800151C
// .global sub_8001532
// .global sub_8002378
// .global sub_800239A
// .global sprite_loadAnimationData
// .global sprite_update
// .global sprite_load
// .global sprite_decompress
// .global sub_8002C7A
// .global sprite_setMosaicScalingParameters
// .global sub_8002CCE
// .global sprite_getMosaicScalingParameters
// .global sprite_setPallete
// .global sprite_getPallete
// .global sprite_setAnimation
// .global sprite_forceWhitePallete
// .global loc_8002DB4
// .global sub_8002DC8
// .global sub_8002DD8
// .global sub_8002DEA
// .global sub_8002E14
// .global sub_8002E3C
// .global sub_8002E52
// .global sub_8002EAC
// .global sub_8002ED0
// .global sub_8002EDC
// .global sub_8002EE8
// .global loc_8002F02
// .global sub_8002F3E
// .global sub_8002F5C
// .global sub_8002F7E
// .global sub_8002F90
// .global sub_8002FA6
// .global sub_8003006
// .global sub_800302A
// .global sub_80030BA
// .global object_spawnType1
// .global object_spawnType3
// .global sub_8003374
// .global object_spawnType4
// .global sub_80033E4
// .global object_freeMemory
// .global sub_800362C
// .global engine_setScreeneffect // (int a1) -> void
// .global engine_isScreeneffectAnimating // () -> zf
// .global dword_80065D0
// .global dword_8006660
// .global battle_isPaused // () -> zf
// .global battle_isTimeStop
// .global sub_800A152
// .global battle_isBattleOver
// .global battle_setFlags
// .global battle_clearFlags
// .global battle_getFlags // () -> int
// .global sub_800A704
// .global sub_800A772
// .global sub_800A8F8
// .global battle_networkInvert
// .global sub_800AA92
// .global sub_800AB3A
// .global sub_800AB46
// .global sub_800ABC6
// .global sub_800AE54
// .global sub_800AE90
// .global sub_800AF34
// .global sub_800B916
// .global sub_800B94C
// .global sub_800B97E
// .global sub_800B9B0
// .global sub_800BA8A
// .global sub_800BBA8
// .global sub_800BC88
// .global sub_800BCC0
// .global object_timefreezeEnd
// .global loc_800BDB2
// .global sub_800BF16
// .global sub_800BF5C
// .global object_getPanelParameters
// .global sub_800C90A
// .global object_crackPanel
// .global object_crackPanelDup1
// .global object_breakPanel
// .global object_breakPanel_dup1
// .global object_breakPanel_dup2
// .global object_breakPanel_dup3
// .global object_breakPanelLoud
// .global object_panel_setPoison
// .global object_highlightPanel
// .global object_setPanelType
// .global object_setPanelAlliance
// .global object_setPanelAllianceTimerLong
// .global object_setPanelAllianceTimerShort
// .global object_setPanelTypeBlink
// .global object_isCurrentPanelValid
// .global object_isValidPanel
// .global object_checkPanelParameters
// .global object_isCurrentPanelSolid
// .global object_isPanelSolid
// .global object_highlightCurrentCollisionPanels
// .global object_highlightPanelRegion
// .global object_highlightPanelRegionBlue
// .global object_hidePanel
// .global object_getPanelsExceptCurrentFilterred
// .global sub_800CEA0
// .global sub_800CF14
// .global sub_800CF42
// .global sub_800CF70
// .global sub_800CFA6
// .global sub_800CFDC
// .global sub_800D012
// .global sub_800D06A
// .global sub_800D086
// .global sub_800D0BC
// .global sub_800D120
// .global sub_800D3FE
// .global sub_800D4C2
// .global sub_800D4D0
// .global sub_800D58C
// .global sub_800D5F0
// .global sub_800D618
// .global sub_800D668
// .global sub_800E24C
// .global sub_800E258
// .global sub_800E276
// .global sub_800E29C
// .global sub_800E2AC
// .global sub_800E2C0
// .global sub_800E2C2
// .global sub_800E2CA
// .global object_getFlipDirection
// .global object_subtractHP
// .global object_addHP
// .global sub_800E2FC
// .global sub_800E3BE
// .global sub_800E456
// .global object_canMove
// .global sub_800E5FC
// .global sub_800E6E8
// .global sub_800E708
// .global object_setCounterTime
// .global sub_800EA22
// .global sub_800EA90
// .global sub_800EABA
// .global sub_800EAC4
// .global sub_800EADA
// .global object_setInvulnerableTime
// .global sub_800EB08
// .global sub_800EB6C
// .global object_getEnemyByNameRange
// .global sub_800EC48
// .global sub_800ED90
// .global sub_800F214
// .global sub_800F23C
// .global sub_800F26C
// .global sub_800F29C
// .global sub_800F2AA
// .global sub_800F2B6
// .global sub_800F2C6
// .global sub_800F2FC
// .global sub_800F322
// .global sub_800F46C
// .global sub_800F486
// .global sub_800F49E
// .global sub_800F614
// .global sub_800F656
// .global sub_800F672
// .global sub_800F884
// .global sub_800F898
// .global sub_800F8B0
// .global sub_800F8CE
// .global sub_800F90E
// .global sub_800F964
// .global sub_800F998
// .global sub_800FA20
// .global sub_800FA54
// .global sub_800FAAC
// .global sub_800FAF6
// .global sub_800FB54
// .global sub_800FC30
// .global sub_800FC7C
// .global sub_800FC9E
// .global sub_800FCFC
// .global sub_800FDB6
// .global sub_800FE12
// .global sub_800FE28
// .global sub_800FE36
// .global sub_800FE52
// .global sub_800FFE4
// .global sub_800FFEE
// .global sub_800FFFE
// .global sub_8010004
// .global sub_8010018
// .global sub_801002C
// .global sub_80100EC
// .global sub_801011A
// .global sub_80101AE
// .global sub_80101C4
// .global sub_80101D4
// .global sub_8010300
// .global sub_8010312
// .global sub_801031C
// .global sub_801032C
// .global sub_8010332
// .global sub_80103A8
// .global sub_80103BC
// .global sub_80103F8
// .global sub_8010474
// .global sub_8010488
// .global sub_80104E0
// .global sub_801050C
// .global sub_801056A
// .global sub_80105F2
// .global sub_8010660
// .global sub_80106C0
// .global sub_8010740
// .global sub_80107C0
// .global sub_80107D4
// .global sub_8010820
// .global sub_8010DD0
// .global loc_8010DF6
// .global sub_8011020
// .global loc_8011044
// .global sub_8011420
// .global sub_8011450
// .global sub_8011504
// .global sub_801155A
// .global sub_801156A
// .global sub_801162A
// .global sub_801164C
// .global sub_8011680
// .global sub_8011684
// .global sub_8011688
// .global loc_801168C
// .global loc_8011690
// .global sub_80116AE
// .global sub_80116D8
// .global sub_8011714
// .global loc_801171C
// .global sub_8011764
// .global sub_801177A
// .global sub_8011790
// .global loc_80117A4
// .global sub_801265A
// .global sub_80126E4
// .global sub_8012792
// .global sub_8012956
// .global sub_801299C
// .global sub_8012E74
// .global sub_8012EA8
// .global sub_8013682
// .global sub_80136CC
// .global sub_8013754
// .global sub_8013764
// .global sub_8013774
// .global sub_80139C4
// .global sub_8013CC4
// .global sub_8013DA0
// .global sub_8013FAE
// .global sub_80142C2
// .global sub_801443C
// .global sub_8014446
// .global sub_80144C0
// .global sub_8015AA6
// .global sub_8015B00
// .global sub_8015B54
// .global sub_8015BEC
// .global sub_8015C48
// .global sub_8015D80
// .global sub_8015E46
// .global sub_8016004
// .global sub_8016218
// .global sub_801632C
// .global sub_8016380
// .global sub_80165B8
// .global sub_80165C2
// .global sub_80166AE
// .global sub_80169BE
// .global byte_8016B02
// .global byte_8016B03
// .global sub_8016B36
// .global sub_8016B72
// .global sub_8016C4E
// .global sub_8016C8A
// .global sub_8016C9C
// .global loc_8016CE8
// .global sub_8016E64
// .global sub_8016F56
// .global sub_80170C4
// .global sub_80172F0
// .global sub_80173F4
// .global sub_80174FE
// .global sub_80175B8
// .global sub_8017688
// .global sub_8017768
// .global sub_8017888
// .global loc_80178B6
// .global sub_8017CC0
// .global loc_8017E26
// .global sub_80182B4
// .global sub_8018810
// .global sub_8018842
// .global sub_8019892
// .global sub_80198CE
// .global dword_80198E8
// .global dword_80198E8
// .global dword_80198E8
// .global dword_80198E8
// .global dword_80198E8
// .global dword_80198E8
// .global off_8019B78
// .global dword_8019B84
// .global dword_8019C34
// .global sub_8019F86
// .global sub_8019F8C
// .global sub_8019FB4
// .global sub_801A00E
// .global sub_801A018
// .global sub_801A04C
// .global sub_801A066
// .global sub_801A074
// .global sub_801A07C
// .global sub_801A082
// .global sub_801A0D4
// .global sub_801A100
// .global sub_801A140
// .global sub_801A146
// .global object_setFlag
// .global object_clearFlag
// .global object_getFlag
// .global sub_801A16C
// .global sub_801A176
// .global sub_801A180
// .global sub_801A258
// .global sub_801A264
// .global sub_801A4D0
// .global sub_801A4DC
// .global sub_801A66C
// .global sub_801A67E
// .global sub_801A7CC
// .global sub_801A9B8
// .global sub_801AA48
// .global sub_801AAC0
// .global sub_801AB40
// .global sub_801ABB8
// .global sub_801AC6C
// .global sub_801AD12
// .global sub_801AD6A
// .global sub_801AD9E
// .global sub_801ADFA
// .global sub_801AF44
// .global sub_801B1C4
// .global sub_801B394
// .global sub_801B4D4
// .global sub_801B610
// .global loc_801B750
// .global loc_801B878
// .global sub_801BB1C
// .global sub_801BB46
// .global sub_801BBAC
// .global sub_801BBF4
// .global sub_801BC24
// .global sub_801BC64
// .global sub_801BCA6
// .global sub_801BCD0
// .global sub_801BCF4
// .global sub_801BD3C
// .global sub_801BDDE
// .global sub_801BE04
// .global nullsub_10
// .global sub_801BE2A
// .global sub_801BED6
// .global sub_801DA48
// .global sub_801DACC
// .global sub_801DBD4
// .global sub_801DC7C
// .global sub_801DCCC
// .global sub_801DD34
// .global sub_801DF8C
// .global sub_801E658
// .global sub_801EB18

.include "asm03_0.inc"
// .global ho_8026554
// .global sub_802B6EC
// .global loc_802B734
// .global off_802CCB4
// .global off_802CD5C
// .global sub_802CDE6
// .global sub_802CE30
// .global sub_802CE78
// .global sub_802CE8A
// .global sub_802CEA6
// .global sub_802D234
// .global get_802D246 // () -> int
// .global sub_802D26A
// .global loc_802D322
// .global loc_802D4C6
// .global sub_802DD2A
// .global sub_802E032
// .global sub_802E04E
// .global sub_802E070
// .global sub_802E1BE
// .global sub_802E4B8
// .global sub_802E4E4
// .global sub_802EF5C
// .global sub_802F068
// .global sub_80302A8

.include "chatbox.inc"
// .global chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
// .global chatbox_8045F3C

.include "asm03_1.inc"
// .global sub_80465BC
// .global sub_80465F8 // () -> void
// .global sub_8046664 // () -> void
// .global sub_8046670


/* Undeclared Symbols */
.equ timer_2000000, 0x2000000
.equ unk_200150C, 0x200150C
.equ dword_2009380, 0x2009380
.equ dword_2009384, 0x2009384
.equ dword_2009AB0, 0x2009AB0
.equ unk_2010000, 0x2010000
.equ unk_2010108, 0x2010108
.equ unk_2010208, 0x2010208
.equ unk_2010308, 0x2010308
.equ byte_2010408, 0x2010408
.equ unk_2010508, 0x2010508
.equ unk_2010608, 0x2010608
.equ unk_2010708, 0x2010708
.equ unk_2010808, 0x2010808
.equ unk_2010908, 0x2010908
.equ unk_2010A08, 0x2010A08
.equ unk_2010B08, 0x2010B08
.equ unk_202070C, 0x202070C
.equ unk_2030204, 0x2030204
.equ byte_2036740, 0x2036740
.equ byte_203C960, 0x203C960
.equ byte_203C961, 0x203C961
.equ word_203C962, 0x203C962
.equ dword_203C964, 0x203C964
.equ dword_203C968, 0x203C968
.equ dword_203CFB0, 0x203CFB0
.equ dword_203CFB4, 0x203CFB4
.equ dword_203CFB8, 0x203CFB8
.equ dword_203CFBC, 0x203CFBC
.equ dword_203CFC0, 0x203CFC0
.equ dword_203CFC4, 0x203CFC4
.equ unk_3001750, 0x3001750
.equ unk_3001B60, 0x3001B60
.equ unk_3003D0C, 0x3003D0C
.equ LCDControl, 0x4000000
.equ BG2Rotation_ScalingParameterA_dx_, 0x4000020
.equ dword_80205F8, 0x80205F8
.equ dword_8021300, 0x8021300
.equ byte_802136D, 0x802136D
.equ dword_8080AC4, 0x8080AC4
.equ dword_80A0BE0, 0x80A0BE0
.equ dword_810C35C, 0x810C35C
.equ dword_810C35C, 0x810C35C
.equ dword_810C388, 0x810C388
.equ dword_810C388, 0x810C388
.equ dword_810CFE8, 0x810CFE8
.equ dword_810CFE8, 0x810CFE8
.equ dword_810D034, 0x810D034
.equ dword_810D034, 0x810D034
.equ dword_810D198, 0x810D198
.equ dword_810D198, 0x810D198
.equ aTuDhr, 0x8736D74

.endif // INC_ASM31
