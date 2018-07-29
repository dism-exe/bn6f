.ifndef INC_ASM00
.equ INC_ASM00, 0

/* Public Symbols */
.extern sub_80005AC
.extern sub_80005C4
.extern sound_play
.extern sub_80005D4
.extern sub_80005F2
.extern sub_800060A
.extern sub_8000642
.extern sub_8000672
.extern sub_800068A
.extern sub_80006A2
.extern sub_8000784
.extern sub_80007B2
.extern sub_80007BE
.extern sub_80008B4
.extern sub_80008C0
.extern CpuSet_ZeroFillWord
.extern sub_8000900
.extern sub_8000920
.extern sub_800092A
.extern sub_800093C
.extern sub_8000950
.extern initMemblockToByte
.extern sub_800096C
.extern sub_800098C
.extern sub_80009AC
.extern sub_8000A3C
.extern objRender_8000A44
.extern loc_8000AC4
.extern loc_8000AC8
.extern loc_8000ACA
.extern sub_8000B30
.extern sub_8000B8E
.extern sub_8000C00
.extern sub_8000C5C
.extern sub_8000C72
.extern sub_8000CDA
.extern sub_8000D12
.extern sub_8000D84
.extern sub_8000DE0
.extern sub_8000E10
.extern sub_8000E28
.extern sub_8000E3A
.extern sub_8000EB6
.extern sub_8000EE4
.extern sub_8000F86
.extern sub_8001040
.extern loc_8001048
.extern getPETNaviSelect
.extern sub_80010BE
.extern sub_80010C6
.extern sub_80010D4
.extern sub_80010EC
.extern sub_8001158
.extern sub_8001172
.extern calcAngle_800117C
.extern sub_800118A
.extern sub_80011A0
.extern sub_80011D6
.extern sub_800120E
.extern sub_8001330
.extern sub_8001382
.extern sub_800139A
.extern sub_80014D4
.extern sub_8001514
.extern sub_800151C
.extern sub_8001532
.extern sub_800154C
.extern sub_8001562
.extern sub_80015B4
.extern render_80015D0
.extern sub_80015FC
.extern render_800172C
.extern sub_8001778
.extern sub_8001780
.extern sub_8001788
.extern sub_80017A0
.extern sub_80017AA
.extern sub_80017E0
.extern main_static_80017EC
.extern off_8001800
.extern renderPalletes_8001808
.extern sub_8001820
.extern sub_800182E
.extern sub_800183C
.extern sub_8001850
.extern sub_800187C
.extern sub_8001890
.extern sub_80018C2
.extern sub_80018D0
.extern sub_80018E0
.extern sub_8001930
.extern sub_800195C
.extern sub_8001974
.extern cb_call_200A880
.extern loc_80019A0
.extern locret_80019B2
.extern loc_80019B4
.extern sub_8001AFC
.extern sub_8001B1C
.extern sub_8001B6C
.extern sub_8001B84
.extern PET_onUpdate_8001B94
.extern sub_8002354
.extern sub_8002368
.extern sub_8002378
.extern sub_800239A
.extern sub_80023A8
.extern getPalleteAndTransition_80023E0
.extern sub_8002468
.extern loc_8002484
.extern sub_80024A2
.extern sub_80024C0
.extern sub_800260C
.extern renderPalletesAndObjs_8002650
.extern sub_8002668
.extern loc_8002676
.extern sub_8002694
.extern sprite_loadAnimationData_80026A4
.extern sub_80026B6
.extern anim_80026C4
.extern sub_80026D6
.extern sub_80026E4
.extern sub_800275A
.extern sub_8002770
.extern loc_8002774
.extern sub_80027B4
.extern sub_80027C4
.extern sub_80027F4
.extern sub_8002818
.extern sub_800286C
.extern sub_8002874
.extern handleObjSprites_800289C
.extern sub_80028D4
.extern sub_8002906
.extern sub_8002A64
.extern sub_8002ADE
.extern sub_8002B30
.extern sub_8002C24
.extern sub_8002C52
.extern sub_8002C68
.extern sub_8002C7A
.extern loc_8002C7E
.extern sub_8002CCE
.extern sub_8002CE0
.extern sub_8002D14
.extern sprite_makeUnscalable
.extern sprite_setPallete
.extern sub_8002D8C
.extern sprite_setAnimation
.extern sub_8002DB0
.extern loc_8002DB4
.extern sub_8002DC8
.extern sub_8002DD8
.extern sub_8002DEA
.extern sub_8002E04
.extern sub_8002E14
.extern sub_8002E3C
.extern sub_8002E52
.extern sub_8002EAC
.extern sub_8002ED0
.extern sub_8002EDC
.extern sub_8002EE8
.extern sub_8002EF6
.extern loc_8002F02
.extern sub_8002F2C
.extern sub_8002F3E
.extern sub_8002F5C
.extern sub_8002F7E
.extern sub_8002F90
.extern sub_8002FA6
.extern sub_8002FB2
.extern sub_8002FEC
.extern sub_8003006
.extern sub_800302A
.extern sub_800304A
.extern sub_8003060
.extern sub_800306C
.extern sub_800307C
.extern sub_800308A
.extern sub_80030A8
.extern sub_80030BA
.extern object_spawnType1
.extern object_spawnType3
.extern sub_8003374
.extern object_spawnType4
.extern sub_80033E4
.extern object_freeMemory
.extern loc_8003570
.extern sub_80035A2
.extern sub_800362C
.extern sub_8003694
.extern sub_800378C
.extern sub_80037AC
.extern sub_80037F4
.extern sub_8003914
.extern sub_8003940
.extern sub_8003962
.extern sub_8003984
.extern sub_800399A
.extern sub_80039CC
.extern sub_80039D4
.extern sub_8003A64
.extern loc_8003A90
.extern sub_8003AB2
.extern sub_8003AD4
.extern sub_8003AEA
.extern sub_8003B1C
.extern sub_8003B4C
.extern sub_8003B86
.extern sub_8003BA2
.extern sub_8003BF4
.extern sub_8003E98
.extern sub_8004298
.extern sub_8004590
.extern sub_80045C0
.extern sub_8004602
.extern sub_800461E
.extern sub_800467C
.extern sub_8004702
.extern sub_80047E0
.extern sub_8004822
.extern sub_80048B2
.extern sub_80048D2
.extern sub_8004934
.extern sub_8004D48
.extern sub_8004DF0
.extern sub_8005524
.extern sub_8005BC8
.extern sub_8005C04
.extern subsystem_launchBBS
.extern subsystem_launchReqBBS
.extern subsystem_launchShop
.extern subsystem_launchChipTrader
.extern sub_8005D88
.extern sub_8005EA2
.extern subsystem_launchMail
.extern sub_8005F40
.extern sub_8005F6C
.extern sub_8005F84
.extern engine_setScreeneffect
.extern loc_8006274
.extern sub_80062C8
.extern sub_80062EC
.extern engine_isScreeneffectAnimating
.extern loc_80062FC
.extern subsystem_triggerTransition_800630A
.extern dword_8006660
.extern sub_80068E0
.extern sub_80068EC
.extern sub_8006910
.extern CpuSet_toolKit
.extern sub_8006C22
.extern sub_8006C6C
.extern sub_8006DEC
.extern sub_8006DF6
.extern save_8006E0E
.extern save_8006E26
.extern load_8006E3C
.extern sub_8006E50
.extern sub_8006E70
.extern sub_8006E84
.extern sub_8006EA4
.extern sub_8006F1E
.extern sub_8006F54
.extern sub_8006F78
.extern sub_8006FAC
.extern sub_8006FD0
.extern sub_80070BC
.extern sub_80070E6
.extern sub_800710A
.extern sub_80071B4
.extern sub_80071D4
.extern sub_80076A0
.extern sub_80077B4
.extern loc_8007800
.extern off_8008000
.extern sub_8009FF8
.extern battle_isPaused
.extern battle_isTimeStop
.extern sub_800A0A4
.extern sub_800A0D6
.extern sub_800A11C
.extern sub_800A152
.extern battle_isBattleOver
.extern battle_setFlags
.extern battle_clearFlags
.extern battle_getFlags
.extern sub_800A704
.extern sub_800A70C
.extern getBattleSettingsFromList0
.extern getBattleSettingsFromList1
.extern zf_checkSameSubsystem_800A732
.extern sub_800A772
.extern sub_800A7D0
.extern sub_800A7E2
.extern sub_800A832
.extern sub_800A856
.extern sub_800A8F8
.extern sub_800A908
.extern sub_800A97A
.extern sub_800A9D6
.extern sub_800A9E2
.extern battle_networkInvert
.extern sub_800AA92
.extern sub_800AABC
.extern sub_800AB2E
.extern sub_800AB3A
.extern sub_800AB46
.extern sub_800ABC6
.extern sub_800AE54
.extern sub_800AE90
.extern sub_800AFBA
.extern sub_800B022
.extern sub_800B3A2
.extern sub_800B3D8
.extern sub_800B460
.extern sub_800B46C
.extern sub_800B6B0
.extern sub_800B6CE
.extern sub_800B6D4
.extern sub_800B6DA
.extern sub_800B6E0
.extern sub_800B734
.extern sub_800BCC0
.extern object_timefreezeEnd
.extern sub_800BF16
.extern sub_800BF5C
.extern object_getPanelParameters
.extern sub_800C90A
.extern object_crackPanel
.extern object_crackPanelDup1
.extern object_breakPanel
.extern object_breakPanel_dup1
.extern object_breakPanel_dup2
.extern object_breakPanel_dup3
.extern object_breakPanelLoud
.extern object_highlightPanel
.extern object_setPanelType
.extern object_setPanelAlliance
.extern object_setPanelAllianceTimerLong
.extern object_setPanelAllianceTimerShort
.extern object_setPanelTypeBlink
.extern object_isCurrentPanelValid
.extern object_isValidPanel
.extern object_checkPanelParameters
.extern object_isCurrentPanelSolid
.extern object_isPanelSolid
.extern object_highlightCurrentCollisionPanels
.extern object_highlightPanelRegion
.extern object_highlightPanelRegionBlue
.extern object_hidePanel
.extern object_getPanelsExceptCurrentFilterred
.extern sub_800CEA0
.extern sub_800CF14
.extern sub_800CF42
.extern sub_800CF70
.extern sub_800CFA6
.extern sub_800CFDC
.extern sub_800D012
.extern sub_800D06A
.extern sub_800D086
.extern sub_800D0BC
.extern sub_800D120
.extern sub_800D3FE
.extern sub_800D45C
.extern sub_800D4C2
.extern sub_800D4D0
.extern sub_800D58C
.extern sub_800D5F0
.extern sub_800D618
.extern sub_800D668
.extern sub_800E24C
.extern sub_800E258
.extern sub_800E276
.extern sub_800E29C
.extern sub_800E2AC
.extern sub_800E2C0
.extern sub_800E2C2
.extern sub_800E2CA
.extern object_getFlipDirection
.extern object_subtractHP
.extern object_addHP
.extern sub_800E2FC
.extern sub_800E3BE
.extern sub_800E456
.extern object_canMove
.extern sub_800E5FC
.extern sub_800E680
.extern sub_800E6E8
.extern sub_800E708
.extern object_setCounterTime
.extern sub_800EA0E
.extern sub_800EA22
.extern sub_800EA90
.extern sub_800EABA
.extern sub_800EAC4
.extern sub_800EADA
.extern object_setInvulnerableTime
.extern sub_800EB08
.extern sub_800EB6C
.extern object_getEnemyByNameRange
.extern sub_800EC3C
.extern sub_800EC48
.extern sub_800ED90
.extern sub_800F214
.extern sub_800F23C
.extern sub_800F26C
.extern sub_800F29C
.extern sub_800F2AA
.extern sub_800F2B6
.extern sub_800F2C6
.extern sub_800F2FC
.extern sub_800F322
.extern sub_800F378
.extern sub_800F46C
.extern sub_800F486
.extern sub_800F49E
.extern sub_800F614
.extern sub_800F656
.extern sub_800F672
.extern sub_800F884
.extern sub_800F898
.extern sub_800F8B0
.extern sub_800F8CE
.extern sub_800F90E
.extern sub_800F964
.extern sub_800F998
.extern sub_800FA20
.extern sub_800FA54
.extern sub_800FAAC
.extern sub_800FAF6
.extern sub_800FB54
.extern sub_800FC30
.extern sub_800FC7C
.extern sub_800FC9E
.extern sub_800FCFC
.extern sub_800FDB6
.extern sub_800FE12
.extern sub_800FE28
.extern sub_800FE36
.extern sub_800FE52
.extern sub_800FFE4
.extern sub_800FFEE
.extern sub_800FFFE
.extern sub_8010004
.extern sub_8010018
.extern sub_801002C
.extern sub_80100EC
.extern sub_801011A
.extern sub_80101AE
.extern sub_80101C4
.extern sub_80101D4
.extern sub_80101F8
.extern sub_8010300
.extern sub_8010312
.extern sub_801031C
.extern sub_801032C
.extern sub_8010332
.extern sub_80103A8
.extern sub_80103BC
.extern sub_80103EC
.extern sub_80103F8
.extern sub_8010474
.extern sub_801056A
.extern sub_80105F2
.extern sub_8010660
.extern sub_80106C0
.extern sub_8010740
.extern sub_80107C0
.extern sub_80107D4
.extern sub_801086C
.extern sub_80108FC
.extern loc_80109A4
.extern sub_8010C76
.extern sub_8010CE0
.extern sub_8010DD0
.extern loc_8010DF6
.extern sub_8011020
.extern loc_8011044
.extern loc_8011268
.extern loc_8011384
.extern sub_8011420
.extern sub_8011450
.extern sub_8011504
.extern sub_801155A
.extern sub_801156A
.extern sub_801162A
.extern sub_801164C
.extern sub_8011680
.extern sub_8011684
.extern sub_8011688
.extern loc_801168C
.extern loc_8011690
.extern loc_8011694
.extern sub_80116AE
.extern sub_80116D8
.extern sub_8011714
.extern loc_801171C
.extern sub_8011764
.extern sub_801177A
.extern sub_8011790
.extern loc_80117A4
.extern sub_801265A
.extern sub_80126E4
.extern sub_8012792
.extern sub_8012956
.extern sub_801299C
.extern sub_8012E74
.extern sub_8012EA8
.extern sub_8013682
.extern sub_80136CC
.extern sub_80136D8
.extern sub_80136E4
.extern sub_80136F0
.extern sub_8013704
.extern sub_8013754
.extern sub_8013764
.extern sub_8013774
.extern sub_8013790
.extern sub_801379E
.extern sub_80137B6
.extern sub_80137E6
.extern sub_80137FE
.extern sub_8013816
.extern sub_801382E
.extern sub_8013846
.extern sub_8013864
.extern sub_8013874
.extern sub_801393A
.extern sub_80139C4
.extern sub_8013B4E
.extern loc_8013B64
.extern sub_8013CC4
.extern sub_8013D5E
.extern sub_8013DA0
.extern sub_8013FAE
.extern sub_8013FD0
.extern sub_8014018
.extern sub_801401E
.extern sub_80141AC
.extern loc_8014216
.extern sub_80142C2
.extern sub_80143A6
.extern loc_80143B4
.extern sub_801443C
.extern sub_8014446
.extern sub_80144C0
.extern sub_8015940
.extern sub_8015952
.extern sub_8015B00
.extern sub_8015B54
.extern sub_8015B5C
.extern sub_8015BEC
.extern sub_8015C32
.extern sub_8015C48
.extern sub_8015C94
.extern sub_8015CC0
.extern sub_8015D80
.extern sub_8015E46
.extern sub_8016004
.extern sub_8016218
.extern sub_801632C
.extern sub_80165B8
.extern sub_80165C2
.extern sub_8016934
.extern sub_80169BE
.extern byte_8016B02
.extern byte_8016B03
.extern sub_8016B36
.extern sub_8016B72
.extern sub_8016C8A
.extern sub_8016C9C
.extern loc_8016CE8
.extern sub_8016E64
.extern sub_8016EC4
.extern sub_80170C4
.extern sub_80174FE
.extern sub_80175B8
.extern sub_8017688
.extern sub_8017768
.extern sub_8017CC0
.extern sub_80182B4
.extern sub_8018810
.extern sub_8018842
.extern sub_8019892
.extern sub_80198CE
.extern off_8019B78
.extern dword_8019C34
.extern sub_8019F86
.extern sub_8019F8C
.extern sub_8019FB4
.extern sub_801A00E
.extern sub_801A018
.extern sub_801A04C
.extern sub_801A066
.extern sub_801A074
.extern sub_801A07C
.extern sub_801A082
.extern sub_801A0D4
.extern sub_801A100
.extern sub_801A140
.extern sub_801A146
.extern object_setFlag
.extern object_clearFlag
.extern object_getFlag
.extern sub_801A16C
.extern sub_801A176
.extern sub_801A180
.extern sub_801A258
.extern sub_801A264
.extern sub_801A284
.extern sub_801A29A
.extern sub_801A2B0
.extern sub_801A4D0
.extern sub_801A4DC
.extern sub_801A5E2
.extern sub_801A66C
.extern sub_801A67E
.extern sub_801A7CC
.extern sub_801A7F4
.extern sub_801ABB8
.extern sub_801AC6C
.extern sub_801AD12
.extern sub_801AD6A
.extern sub_801AD9E
.extern sub_801ADFA
.extern sub_801AF44
.extern sub_801B1C4
.extern sub_801B394
.extern sub_801B4D4
.extern sub_801B610
.extern loc_801B750
.extern loc_801B878
.extern sub_801BB1C
.extern sub_801BB46
.extern sub_801BBAC
.extern sub_801BBF4
.extern sub_801BC24
.extern sub_801BC64
.extern sub_801BCA6
.extern sub_801BCD0
.extern sub_801BCF4
.extern sub_801BD3C
.extern sub_801BDDE
.extern sub_801BE04
.extern nullsub_10
.extern sub_801BE2A
.extern sub_801BEB8
.extern sub_801BEC2
.extern sub_801BECC
.extern sub_801BED6
.extern sub_801DA48
.extern sub_801DACC
.extern sub_801DBD4
.extern sub_801DC36
.extern sub_801DC7C
.extern sub_801DCCC
.extern sub_801DD34
.extern sub_801DED0
.extern sub_801DEEE
.extern sub_801DF0C
.extern sub_801DF8C
.extern sub_801DF92
.extern sub_801DFA2
.extern sub_801E0A0
.extern sub_801E0D0
.extern sub_801E2BA
.extern sub_801E408
.extern sub_801E474
.extern sub_801E574
.extern sub_801E658
.extern sub_801E660
.extern sub_801E71C
.extern sub_801E754
.extern sub_801E780
.extern loc_801E792
.extern sub_801E914
.extern sub_801EB18
.extern sub_801EC44


/* External Symbols */
.include "asm03.inc"
// .extern sub_8026840
// .extern loc_8026A28
// .extern sub_8027D10
// .extern sub_802A866
// .extern loc_802A87C
// .extern loc_802BD60
// .extern sub_802C34E
// .extern sub_802C8FA
// .extern sub_802C9B8
// .extern sub_802C9EA
// .extern sub_802CA82
// .extern sub_802CB38
// .extern loc_802CB78
// .extern off_802CCB4
// .extern sub_802CDD0
// .extern sub_802CDFE
// .extern sub_802CE10
// .extern sub_802CE54
// .extern sub_802CE60
// .extern sub_802CE78
// .extern sub_802CEA6
// .extern sub_802CEC8
// .extern sub_802CEF4
// .extern sub_802CFF8
// .extern sub_802D08C
// .extern sub_802D1B4
// .extern sub_802D1BE
// .extern sub_802D234
// .extern sub_802D246
// .extern sub_802D254
// .extern sub_802D26A
// .extern sub_802D2B2
// .extern sub_802D310
// .extern sub_802D638
// .extern sub_802D644
// .extern sub_802D65E
// .extern sub_802D6A0
// .extern sub_802D6C4
// .extern loc_802D714
// .extern loc_802D926
// .extern sub_802DCDE
// .extern sub_802DCEC
// .extern sub_802DD2A
// .extern sub_802DE5C
// .extern sub_802DFC8
// .extern sub_802DFFC
// .extern sub_802E014
// .extern sub_802E032
// .extern sub_802E066
// .extern sub_802E070
// .extern sub_802E09A
// .extern sub_802E112
// .extern sub_802E156
// .extern sub_802E1D8
// .extern sub_802E240
// .extern sub_802E440
// .extern sub_802E44A
// .extern sub_802E454
// .extern sub_802E45E
// .extern sub_802E4B8
// .extern sub_802E830
// .extern sub_802EF5C
// .extern dword_802F0A8
// .extern sub_802F0C4
// .extern sub_802F0D8
// .extern sub_802F0F4
// .extern sub_802F110
// .extern sub_802F114
// .extern sub_802F12C
// .extern sub_802F130
// .extern sub_802F164
// .extern sub_802F168
// .extern sub_802F17E
// .extern sub_802F1FC
// .extern sub_802F2C8
// .extern sub_802FDB0
// .extern loc_802FDB4
// .extern sub_802FE28
// .extern sub_802FE48
// .extern sub_802FE6A
// .extern sub_802FE7A
// .extern sub_802FF2C
// .extern sub_802FF4C
// .extern loc_802FFF4
// .extern sub_80301B2
// .extern sub_80302A8
// .extern sub_80302B6
// .extern sub_80303E8
// .extern sub_8030580
// .extern sub_8030808
// .extern loc_8030A00
// .extern sub_8030A30
// .extern sub_8031A7A
// .extern dword_8031CC4
// .extern dword_8032530
// .extern dword_8032530
// .extern off_803385C
// .extern dword_8033878
// .extern sub_8033948
// .extern loc_80339CC
// .extern sub_80341AA
// .extern sub_8034B4C
// .extern sub_8034BB8
// .extern sub_803532C
// .extern sub_80355A8
// .extern sub_80355EC
// .extern sub_80356EC
// .extern sub_8035738
// .extern sub_8036E90
// .extern sub_8036EFE
// .extern sub_8036F24
// .extern sub_8036F36
// .extern sub_80385F0
// .extern sub_8038A9C
// .extern sub_803C3E0
// .extern sub_803C59C
// .extern sub_803C754
// .extern sub_803CD74
// .extern sub_803CEB8
// .extern sub_803D0C8
// .extern sub_803D0F4
// .extern loc_803D1AC
// .extern sub_803DD60
// .extern sub_803DDA4
// .extern sub_803DE24
// .extern sub_803EA60
// .extern sub_803EBF4
// .extern loc_803ED90
// .extern sub_803F4EC
// .extern sub_803F500
// .extern sub_803F524
// .extern sub_803F530
// .extern sub_803F6B0
// .extern sub_803F79E
// .extern sub_803F838
// .extern sub_803FB28
// .extern loc_8040000
// .extern chatbox_runScript
// .extern sub_8040818
// .extern sub_8045F2C
// .extern sub_8045F3C
// .extern render_graphicalText_8045F8C
// .extern sub_8046664
// .extern sub_8046CC8
// .extern sub_8048C68
// .extern sub_8048C98
// .extern sub_8049CF8
// .extern sub_804A17A
// .extern sub_804A2CC

.include "start.inc"
// .extern start_
// .extern dword_8000004
// .extern dword_8000004
// .extern start_800024C

.include "asm02.inc"
// .extern sub_8021AA4
// .extern sub_8021AB4
// .extern sub_8021C68
// .extern sub_8021C7C
// .extern sub_8021D08
// .extern sub_8021D14
// .extern sub_8021D36

.include "asm21.inc"
// .extern sub_8080D90
// .extern sub_8080DA0

.include "asm37.inc"
// .extern sub_813B768
// .extern sub_813B934
// .extern sub_813BF1C
// .extern sub_813C324
// .extern sub_813C3AC
// .extern sub_813D60C
// .extern sub_813E07C
// .extern sub_813E5DC
// .extern sub_813E616
// .extern reqBBS_init_s_2005780
// .extern sub_813F9A0
// .extern reqBBS_initMemory_813F9DA
// .extern sub_8140984
// .extern sub_81419A0
// .extern sub_8142248
// .extern sub_8143482
// .extern sub_8144048
// .extern sub_81440D8
// .extern sub_8144EEC
// .extern SWI_CpuFastSet
// .extern SWI_CpuSet
// .extern SWI_Div
// .extern SWI_LZ77UnCompReadNormalWrite16bit
// .extern SWI_LZ77UnCompReadNormalWrite8bit
// .extern SWI_Sqrt
// .extern sub_814E87C
// .extern sub_814E918
// .extern m4a_SongNumStart
// .extern sub_814E9F0
// .extern sub_814EA58
// .extern sub_814EAF0
// .extern sub_814EB1C
// .extern sub_814F00C
// .extern sub_814F988
// .extern sub_814F9AC
// .extern sub_814FA14

.include "asm33.inc"
// .extern sub_8127990
// .extern sub_81284A4

.include "asm29.inc"
// .extern ho_80A4984
// .extern loc_80A4A98
// .extern loc_80A4BDC
// .extern loc_80A51C4
// .extern loc_80A5428
// .extern loc_80A54F0
// .extern loc_80A57AC
// .extern loc_80A5AD4
// .extern sub_80A6A16
// .extern loc_80A6E98
// .extern loc_80A72B4
// .extern loc_80A77A8
// .extern loc_80A781C
// .extern loc_80A78B8
// .extern loc_80A7C84
// .extern loc_80A7D90
// .extern loc_80A8208
// .extern loc_80A8394
// .extern loc_80A8654
// .extern loc_80A8728
// .extern loc_80A87F0
// .extern loc_80A8870
// .extern loc_80A89DC
// .extern loc_80A8AB4
// .extern loc_80A8E74
// .extern loc_80A92B8
// .extern loc_80A9430
// .extern loc_80A9658
// .extern loc_80A9824
// .extern loc_80A98D4
// .extern loc_80A9A0C
// .extern loc_80A9B70
// .extern loc_80A9D10
// .extern loc_80A9ECC
// .extern loc_80A9F58
// .extern sub_80AA004
// .extern loc_80AA058
// .extern sub_80AA104
// .extern loc_80AA140
// .extern loc_80AA1E0
// .extern loc_80AA2D8
// .extern loc_80AA374
// .extern sub_80AA4C0
// .extern sub_80AA88C
// .extern sub_80AAB88

.include "asm32.inc"
// .extern sub_811EBE0
// .extern sub_811EC00
// .extern sub_811EC10
// .extern sub_811EC50
// .extern loc_811ED1C
// .extern sub_811F6C0
// .extern sub_811F6E0
// .extern sub_811F7EC
// .extern sub_811FB78
// .extern sub_81207F8
// .extern sub_81209DC
// .extern sub_8120A38
// .extern sub_8121144
// .extern sub_8121198

.include "asm01.inc"
// .extern sub_801FE00
// .extern sub_801FE24
// .extern sub_801FE5E
// .extern sub_801FE64
// .extern sub_801FE6C
// .extern sub_801FEE8
// .extern loc_801FEEE
// .extern sub_80200A4
// .extern sub_8020134
// .extern sub_8020140
// .extern sub_802015E

.include "asm36.inc"
// .extern sub_81376E8
// .extern sub_8137700
// .extern sub_8137808
// .extern sub_8138294

.include "asm28.inc"
// .extern loc_809D19C
// .extern sub_809E04C
// .extern sub_809E098
// .extern sub_809E2C2
// .extern sub_809E2F4
// .extern sub_809E2FC
// .extern sub_809E304
// .extern sub_809E312
// .extern sub_809E3AA
// .extern sub_809E3B2
// .extern sub_809E462
// .extern loc_809E570
// .extern sub_809F68C
// .extern sub_809F90C
// .extern sub_809F942
// .extern sub_809F9C8
// .extern sub_809F9DC
// .extern sub_809FAF4

.include "asm30.inc"
// .extern battleSettingsList0
// .extern battleSettingsList1

.include "asm31.inc"
// .extern sub_80B81EC
// .extern sub_80B8210
// .extern loc_80B85E0
// .extern loc_80B88D0
// .extern loc_80B8A18
// .extern loc_80B8CD8
// .extern loc_80B8EA0
// .extern loc_80B9078
// .extern loc_80B92B8
// .extern loc_80B94BC
// .extern loc_80B97C0
// .extern loc_80B99C0
// .extern loc_80B9C14
// .extern loc_80B9F44
// .extern loc_80BA364
// .extern loc_80BA708
// .extern loc_80BAA8C
// .extern loc_80BAF50
// .extern loc_80BB2A0
// .extern loc_80BB608
// .extern loc_80BB914
// .extern loc_80BBB98
// .extern loc_80BBF0C
// .extern loc_80BC17C
// .extern loc_80BC4FC
// .extern loc_80BC650
// .extern sub_80BC844
// .extern loc_80BC87C
// .extern loc_80BCA04
// .extern loc_80BCB50
// .extern loc_80BCD14
// .extern loc_80BD388
// .extern loc_80BDBA4
// .extern loc_80BE4D8
// .extern loc_80BE798
// .extern loc_80BF260
// .extern loc_80BF6EC
// .extern loc_80BFDFC
// .extern loc_80BFF68
// .extern loc_80C0178
// .extern loc_80C0334
// .extern loc_80C04AC
// .extern loc_80C065C
// .extern loc_80C07BC
// .extern loc_80C0E04
// .extern loc_80C0F6C
// .extern loc_80C11AC
// .extern loc_80C1570
// .extern loc_80C1A10
// .extern loc_80C2138
// .extern loc_80C26F0
// .extern loc_80C2A78
// .extern loc_80C3000
// .extern loc_80C3218
// .extern loc_80C34E0
// .extern loc_80C3734
// .extern loc_80C3970
// .extern loc_80C3CE8
// .extern loc_80C3EE0
// .extern loc_80C40D8
// .extern sub_80C41D8
// .extern sub_80C4204
// .extern loc_80C4348
// .extern sub_80C44A8
// .extern sub_80C44C8
// .extern sub_80C44D2
// .extern loc_80C4530
// .extern sub_80C468C
// .extern sub_80C46B0
// .extern sub_80C46B6
// .extern sub_80C46C0
// .extern loc_80C46FC
// .extern loc_80C4828
// .extern loc_80C4B18
// .extern sub_80C4C12
// .extern sub_80C4C3A
// .extern loc_80C4E58
// .extern sub_80C4FFE
// .extern loc_80C50B8
// .extern loc_80C51AC
// .extern loc_80C52B0
// .extern sub_80C53A6
// .extern loc_80C53C0
// .extern loc_80C55B0
// .extern loc_80C57C0
// .extern loc_80C5A34
// .extern sub_80C5B76
// .extern loc_80C5BB0
// .extern loc_80C5DDC
// .extern loc_80C5F60
// .extern loc_80C60A8
// .extern loc_80C6280
// .extern loc_80C6414
// .extern loc_80C6580
// .extern loc_80C67F8
// .extern loc_80C6946
// .extern loc_80C6B40
// .extern loc_80C6DCC
// .extern loc_80C7074
// .extern loc_80C71A4
// .extern loc_80C740C
// .extern loc_80C793C
// .extern loc_80C7C18
// .extern loc_80C7D78
// .extern sub_80C7F20
// .extern loc_80C7F40
// .extern loc_80C8098
// .extern loc_80C81CC
// .extern loc_80C8388
// .extern loc_80C853C
// .extern loc_80C86D8
// .extern loc_80C882C
// .extern loc_80C8AA4
// .extern loc_80C8C74
// .extern loc_80C8E08
// .extern loc_80C8FFC
// .extern loc_80C91A0
// .extern loc_80C93CC
// .extern sub_80C96A0
// .extern locret_80C980C
// .extern locret_80C9814
// .extern loc_80C9824
// .extern loc_80C9BC4
// .extern loc_80C9D00
// .extern loc_80C9F78
// .extern loc_80CA2A8
// .extern loc_80CA544
// .extern loc_80CA6B8
// .extern loc_80CA938
// .extern loc_80CAB68
// .extern loc_80CAD28
// .extern loc_80CAEF0
// .extern loc_80CB0DC
// .extern loc_80CB284
// .extern loc_80CB6F8
// .extern loc_80CB900
// .extern loc_80CBB44
// .extern loc_80CC044
// .extern sub_80CC0B2
// .extern sub_80CC0E8
// .extern loc_80CC4C4
// .extern loc_80CC5A8
// .extern loc_80CC76C
// .extern loc_80CC944
// .extern loc_80CCA40
// .extern loc_80CCC48
// .extern loc_80CCD70
// .extern sub_80CCFDC
// .extern loc_80CD2EC
// .extern loc_80CD4EC
// .extern sub_80CD8EC
// .extern loc_80CDD44
// .extern loc_80CDF84
// .extern loc_80CE118
// .extern loc_80CE24C
// .extern loc_80CE530
// .extern loc_80CE70C
// .extern loc_80CE81C
// .extern loc_80CEB00
// .extern sub_80CEE78
// .extern sub_80CF0D0
// .extern sub_80CF3BE
// .extern loc_80CF5C8
// .extern loc_80CF7F0
// .extern loc_80CF954
// .extern sub_80CFBC4
// .extern loc_80CFC08
// .extern loc_80CFCF8
// .extern loc_80CFEC4
// .extern loc_80D00A0
// .extern loc_80D0268
// .extern loc_80D0394
// .extern loc_80D0500
// .extern loc_80D0610
// .extern loc_80D07CC
// .extern loc_80D0AA8
// .extern loc_80D0D7C
// .extern loc_80D0F8C
// .extern loc_80D1218
// .extern loc_80D1514
// .extern loc_80D17A4
// .extern loc_80D18D8
// .extern loc_80D1A08
// .extern loc_80D1B48
// .extern loc_80D1C20
// .extern sub_80D2034
// .extern sub_80D2290
// .extern loc_80D2460
// .extern sub_80D25D4
// .extern loc_80D2A94
// .extern loc_80D2BDC
// .extern loc_80D2EBC
// .extern loc_80D30D0
// .extern sub_80D34CC
// .extern loc_80D385C
// .extern sub_80D39BC
// .extern loc_80D4088
// .extern loc_80D4440
// .extern loc_80D46B8
// .extern loc_80D4A28
// .extern loc_80D4B68
// .extern loc_80D4C84
// .extern loc_80D5028
// .extern loc_80D5138
// .extern loc_80D535C
// .extern loc_80D5580
// .extern loc_80D5740
// .extern loc_80D58B4
// .extern loc_80D5ABC
// .extern loc_80D5C48
// .extern loc_80D5D54
// .extern loc_80D5F08
// .extern loc_80D622C
// .extern loc_80D655C
// .extern loc_80D67EC
// .extern loc_80D6924
// .extern loc_80D6A20
// .extern loc_80D6BD4
// .extern loc_80D6D80
// .extern sub_80D6EE0
// .extern loc_80D7068
// .extern loc_80D7278
// .extern loc_80D7400
// .extern loc_80D75FC
// .extern loc_80D7ACC
// .extern loc_80D7DE4
// .extern loc_80D807C
// .extern loc_80D825C
// .extern loc_80D8444
// .extern loc_80D8620
// .extern loc_80D879C
// .extern loc_80D88E0
// .extern loc_80D8C5C
// .extern loc_80D8E10
// .extern loc_80D8FC4
// .extern loc_80D9154
// .extern loc_80D9350
// .extern loc_80D954C
// .extern loc_80D96A4
// .extern loc_80D984C
// .extern sub_80D99EC
// .extern loc_80D9A50
// .extern loc_80D9D4C
// .extern loc_80DA050
// .extern loc_80DA470
// .extern loc_80DA5FC
// .extern loc_80DA80C
// .extern loc_80DAA28
// .extern loc_80DACE4
// .extern loc_80DAE94
// .extern loc_80DB0E4
// .extern loc_80DB304
// .extern loc_80DB6A4
// .extern loc_80DB8CC
// .extern loc_80DB994
// .extern loc_80DBB40
// .extern loc_80DBCEC
// .extern sub_80DBEE6
// .extern loc_80DC0E8
// .extern loc_80DC260
// .extern loc_80DC3F8
// .extern loc_80DC4FC
// .extern loc_80DC5F8
// .extern loc_80DC70C
// .extern loc_80DCB1C
// .extern loc_80DCCD4
// .extern loc_80DCE38
// .extern loc_80DCEF4
// .extern loc_80DD0AC
// .extern loc_80DD34C
// .extern loc_80DD764
// .extern loc_80DD940
// .extern loc_80DDA84
// .extern loc_80DDC10
// .extern loc_80DDDF0
// .extern loc_80DE000
// .extern loc_80DE13C
// .extern loc_80DE404
// .extern loc_80DE7F4
// .extern loc_80DEA7C
// .extern loc_80DEE60
// .extern loc_80DF0A4
// .extern loc_80DF188
// .extern loc_80DF328
// .extern loc_80DF4FC
// .extern loc_80DF90C
// .extern loc_80DFC38
// .extern loc_80DFE40
// .extern loc_80DFFB8
// .extern loc_80E0548
// .extern sub_80E05F6
// .extern loc_80E0638
// .extern sub_80E06F8
// .extern loc_80E0710
// .extern loc_80E0844
// .extern sub_80E08C4
// .extern locret_80E08E0
// .extern loc_80E08FC
// .extern sub_80E09EE
// .extern loc_80E0AD4
// .extern sub_80E0D98
// .extern loc_80E0DF0
// .extern sub_80E0F02
// .extern loc_80E0FA0
// .extern loc_80E10A4
// .extern sub_80E11E0
// .extern loc_80E11FC
// .extern loc_80E1520
// .extern sub_80E1620
// .extern sub_80E1662
// .extern loc_80E17E8
// .extern sub_80E192C
// .extern loc_80E19BC
// .extern sub_80E1A6A
// .extern sub_80E1A86
// .extern loc_80E1A90
// .extern loc_80E1B48
// .extern loc_80E1CF8
// .extern sub_80E1D7A
// .extern loc_80E1D88
// .extern loc_80E1E4C
// .extern loc_80E2080
// .extern loc_80E21D8
// .extern loc_80E225C
// .extern loc_80E23A4
// .extern loc_80E24E4
// .extern loc_80E25D0
// .extern loc_80E28A8
// .extern loc_80E2AE8
// .extern loc_80E2B7C
// .extern loc_80E2CA4
// .extern loc_80E2E34
// .extern sub_80E2F56
// .extern loc_80E309C
// .extern loc_80E3150
// .extern loc_80E31D8
// .extern loc_80E32B8
// .extern loc_80E342C
// .extern loc_80E34C0
// .extern loc_80E35A4
// .extern loc_80E3728
// .extern sub_80E37D2
// .extern loc_80E37F4
// .extern loc_80E39A0
// .extern loc_80E3AB8
// .extern loc_80E3B70
// .extern loc_80E3D68
// .extern loc_80E3FD0
// .extern loc_80E40EC
// .extern loc_80E4188
// .extern sub_80E4344
// .extern loc_80E440C
// .extern loc_80E4634
// .extern loc_80E46D8
// .extern loc_80E47B4
// .extern loc_80E4848
// .extern loc_80E4910
// .extern loc_80E4A1C
// .extern sub_80E4B34
// .extern loc_80E4CB8
// .extern sub_80E4D8A
// .extern sub_80E4DA2
// .extern loc_80E4DB0
// .extern loc_80E50C4
// .extern loc_80E5244
// .extern sub_80E5410
// .extern sub_80E544C
// .extern loc_80E5470
// .extern loc_80E55C0
// .extern loc_80E5710
// .extern loc_80E5944
// .extern loc_80E59E8
// .extern locret_80E5B60
// .extern sub_80E5C2C
// .extern loc_80E5D44
// .extern loc_80E5E00
// .extern loc_80E5ECC
// .extern loc_80E5F9C
// .extern sub_80E5FBC
// .extern loc_80E6088
// .extern loc_80E6254
// .extern loc_80E6480
// .extern loc_80E655C
// .extern loc_80E6758
// .extern loc_80E680C
// .extern loc_80E689C
// .extern loc_80E6A90
// .extern loc_80E6BDC
// .extern loc_80E6E44
// .extern loc_80E6F88
// .extern loc_80E702C
// .extern loc_80E70C8
// .extern loc_80E71C4
// .extern loc_80E7260
// .extern loc_80E74D4
// .extern loc_80E7568
// .extern loc_80E7624
// .extern loc_80E76F8
// .extern loc_80E7788
// .extern loc_80E78BC
// .extern loc_80E795C
// .extern loc_80E7ACC
// .extern loc_80E7BFC
// .extern loc_80E7CCC
// .extern loc_80E7DC4
// .extern loc_80E7E9C
// .extern loc_80E7F38
// .extern loc_80E7FDC
// .extern loc_80E807C
// .extern sub_80E8124
// .extern loc_80E8138
// .extern loc_80E81D8
// .extern loc_80E8268
// .extern loc_80E83B8
// .extern loc_80E857C
// .extern loc_80E8688
// .extern loc_80E8794
// .extern loc_80E88A0
// .extern loc_80E8938
// .extern loc_80E8A60
// .extern loc_80E8B00
// .extern loc_80E8DF0
// .extern loc_80E8EE0
// .extern loc_80E8FE0
// .extern sub_80E90FE
// .extern loc_80E9120
// .extern loc_80E91E4
// .extern loc_80E9310
// .extern loc_80E9460
// .extern loc_80E9570
// .extern loc_80E97F0
// .extern dword_80E98C0
// .extern sub_80E996E
// .extern loc_80E9994
// .extern loc_80E9AF0
// .extern sub_80E9BDC
// .extern loc_80E9C88
// .extern loc_80E9DF0
// .extern loc_80EA010
// .extern loc_80EA14C
// .extern loc_80EA258
// .extern loc_80EA364
// .extern sub_80EA438
// .extern off_80EA814
// .extern loc_80EA8D8
// .extern off_80EAC60
// .extern loc_80EAD9C
// .extern loc_80EB04C
// .extern loc_80EB234
// .extern loc_80EE90C
// .extern loc_80EEA3C
// .extern loc_80EED56
// .extern off_80F24D8
// .extern off_80F253C
// .extern sub_80FF668
// .extern off_81090D0
// .extern off_8109150
// .extern sub_81096FA


/* Undeclared Symbols */
.equ unk_2000000, 0x2000000
.equ dword_2000060, 0x2000060
.equ unk_2000260, 0x2000260
.equ unk_20004E0, 0x20004E0
.equ unk_2000670, 0x2000670
.equ byte_2000780, 0x2000780
.equ byte_2000781, 0x2000781
.equ byte_2000782, 0x2000782
.equ byte_2000783, 0x2000783
.equ dword_2000784, 0x2000784
.equ unk_20008A0, 0x20008A0
.equ dword_2000B30, 0x2000B30
.equ word_2000FA0, 0x2000FA0
.equ byte_2001010, 0x2001010
.equ byte_2001011, 0x2001011
.equ byte_2001012, 0x2001012
.equ byte_2001013, 0x2001013
.equ dword_2001014, 0x2001014
.equ dword_2001060, 0x2001060
.equ dword_2001064, 0x2001064
.equ dword_20010E0, 0x20010E0
.equ dword_2001120, 0x2001120
.equ dword_20013F0, 0x20013F0
.equ unk_2001600, 0x2001600
.equ dword_20018B8, 0x20018B8
.equ unk_20018C0, 0x20018C0
.equ dword_20018E8, 0x20018E8
.equ unk_2001B80, 0x2001B80
.equ byte_20057B0, 0x20057B0
.equ byte_20057B1, 0x20057B1
.equ dword_20057B4, 0x20057B4
.equ dword_20057D4, 0x20057D4
.equ dword_20057D8, 0x20057D8
.equ dword_20057DC, 0x20057DC
.equ byte_2006530, 0x2006530
.equ unk_2006840, 0x2006840
.equ byte_2006848, 0x2006848
.equ byte_2006849, 0x2006849
.equ dword_2006C48, 0x2006C48
.equ byte_20081B0, 0x20081B0
.equ byte_20081B1, 0x20081B1
.equ word_20081B2, 0x20081B2
.equ dword_20081B4, 0x20081B4
.equ dword_20081B8, 0x20081B8
.equ dword_20081BC, 0x20081BC
.equ dword_20081C0, 0x20081C0
.equ unk_20081D0, 0x20081D0
.equ unk_2008980, 0x2008980
.equ unk_2008E80, 0x2008E80
.equ dword_2009380, 0x2009380
.equ dword_2009384, 0x2009384
.equ dword_20093A4, 0x20093A4
.equ dword_20093A8, 0x20093A8
.equ unk_20093B0, 0x20093B0
.equ byte_20094C0, 0x20094C0
.equ word_20094C2, 0x20094C2
.equ dword_20094C4, 0x20094C4
.equ dword_20094C8, 0x20094C8
.equ byte_20094D4, 0x20094D4
.equ dword_2009690, 0x2009690
.equ dword_2009694, 0x2009694
.equ unk_20096A0, 0x20096A0
.equ byte_20096A3, 0x20096A3
.equ dword_20096A4, 0x20096A4
.equ dword_20096A8, 0x20096A8
.equ dword_20096AC, 0x20096AC
.equ dword_20096B0, 0x20096B0
.equ dword_20096B4, 0x20096B4
.equ dword_20096B8, 0x20096B8
.equ dword_20096BC, 0x20096BC
.equ dword_20096C0, 0x20096C0
.equ dword_20096C4, 0x20096C4
.equ dword_20096C8, 0x20096C8
.equ dword_20096CC, 0x20096CC
.equ dword_20096D0, 0x20096D0
.equ unk_2009740, 0x2009740
.equ byte_20097A0, 0x20097A0
.equ byte_20097A1, 0x20097A1
.equ byte_20097A2, 0x20097A2
.equ dword_20097A4, 0x20097A4
.equ dword_20097A8, 0x20097A8
.equ byte_20098A8, 0x20098A8
.equ byte_20098A9, 0x20098A9
.equ word_20098AA, 0x20098AA
.equ unk_2009980, 0x2009980
.equ byte_20099CC, 0x20099CC
.equ byte_2009A30, 0x2009A30
.equ dword_2009AB0, 0x2009AB0
.equ dword_2009AB4, 0x2009AB4
.equ dword_2009CC0, 0x2009CC0
.equ unk_2009CD0, 0x2009CD0
.equ dword_2009F34, 0x2009F34
.equ byte_2009F40, 0x2009F40
.equ byte_2009F41, 0x2009F41
.equ dword_2009F44, 0x2009F44
.equ dword_2009F48, 0x2009F48
.equ dword_2009F5C, 0x2009F5C
.equ dword_2009F60, 0x2009F60
.equ dword_2009F64, 0x2009F64
.equ word_2009FB2, 0x2009FB2
.equ word_2009FB4, 0x2009FB4
.equ word_2009FB6, 0x2009FB6
.equ byte_200A008, 0x200A008
.equ byte_200A009, 0x200A009
.equ byte_200A00A, 0x200A00A
.equ byte_200A00B, 0x200A00B
.equ word_200A00C, 0x200A00C
.equ word_200A00E, 0x200A00E
.equ word_200A210, 0x200A210
.equ byte_200A220, 0x200A220
.equ unk_200A270, 0x200A270
.equ byte_200A440, 0x200A440
.equ byte_200A441, 0x200A441
.equ byte_200A442, 0x200A442
.equ byte_200A443, 0x200A443
.equ word_200A444, 0x200A444
.equ word_200A448, 0x200A448
.equ word_200A44A, 0x200A44A
.equ dword_200A450, 0x200A450
.equ dword_200A454, 0x200A454
.equ word_200A458, 0x200A458
.equ word_200A45C, 0x200A45C
.equ unk_200A480, 0x200A480
.equ dword_200A490, 0x200A490
.equ byte_200A494, 0x200A494
.equ dword_200A498, 0x200A498
.equ byte_200A6A0, 0x200A6A0
.equ dword_200A6A4, 0x200A6A4
.equ dword_200A6A8, 0x200A6A8
.equ dword_200A6AC, 0x200A6AC
.equ dword_200A880, 0x200A880
.equ dword_200A884, 0x200A884
.equ dword_200A888, 0x200A888
.equ dword_200A890, 0x200A890
.equ dword_200AC18, 0x200AC18
.equ dword_200AC1C, 0x200AC1C
.equ unk_200AC40, 0x200AC40
.equ byte_200ACE0, 0x200ACE0
.equ dword_200ACF8, 0x200ACF8
.equ byte_200ACFC, 0x200ACFC
.equ dword_200AD00, 0x200AD00
.equ dword_200AF70, 0x200AF70
.equ unk_200B4B0, 0x200B4B0
.equ byte_200BE70, 0x200BE70
.equ dword_200BE7C, 0x200BE7C
.equ byte_200DCA0, 0x200DCA0
.equ dword_200DCEC, 0x200DCEC
.equ byte_200DF20, 0x200DF20
.equ byte_200DF21, 0x200DF21
.equ byte_200DF28, 0x200DF28
.equ unk_200DF40, 0x200DF40
.equ unk_200E440, 0x200E440
.equ unk_200E580, 0x200E580
.equ unk_200E640, 0x200E640
.equ dword_200F340, 0x200F340
.equ dword_200F350, 0x200F350
.equ unk_200F388, 0x200F388
.equ unk_200F390, 0x200F390
.equ unk_200F3A0, 0x200F3A0
.equ dword_200F3B0, 0x200F3B0
.equ unk_200F3B8, 0x200F3B8
.equ unk_200F3C4, 0x200F3C4
.equ byte_200F410, 0x200F410
.equ unk_2010490, 0x2010490
.equ unk_20104D0, 0x20104D0
.equ unk_2010510, 0x2010510
.equ unk_2010550, 0x2010550
.equ unk_2010590, 0x2010590
.equ unk_20105D0, 0x20105D0
.equ unk_2010610, 0x2010610
.equ unk_2010650, 0x2010650
.equ unk_2010690, 0x2010690
.equ unk_20106D0, 0x20106D0
.equ unk_2010710, 0x2010710
.equ unk_2010750, 0x2010750
.equ unk_2010790, 0x2010790
.equ unk_20107D0, 0x20107D0
.equ unk_2010810, 0x2010810
.equ unk_2010850, 0x2010850
.equ unk_2010890, 0x2010890
.equ unk_20108D0, 0x20108D0
.equ unk_2010910, 0x2010910
.equ unk_2010950, 0x2010950
.equ unk_2010990, 0x2010990
.equ unk_20109D0, 0x20109D0
.equ unk_2010A10, 0x2010A10
.equ unk_2010A50, 0x2010A50
.equ unk_2010A90, 0x2010A90
.equ unk_2010AD0, 0x2010AD0
.equ unk_2010B10, 0x2010B10
.equ unk_2010B50, 0x2010B50
.equ byte_2010B90, 0x2010B90
.equ unk_2010BA0, 0x2010BA0
.equ unk_2010BE0, 0x2010BE0
.equ unk_2010C20, 0x2010C20
.equ unk_2010C60, 0x2010C60
.equ byte_2011800, 0x2011800
.equ unk_2011BB0, 0x2011BB0
.equ unk_2011C50, 0x2011C50
.equ unk_2011E50, 0x2011E50
.equ byte_2011EE0, 0x2011EE0
.equ byte_2011EE1, 0x2011EE1
.equ dword_2011EE4, 0x2011EE4
.equ dword_2011EE8, 0x2011EE8
.equ dword_2011EEC, 0x2011EEC
.equ dword_2011EF0, 0x2011EF0
.equ dword_2011EF4, 0x2011EF4
.equ byte_20138A8, 0x20138A8
.equ byte_20138A9, 0x20138A9
.equ dword_20138AC, 0x20138AC
.equ dword_20138B0, 0x20138B0
.equ dword_20138B4, 0x20138B4
.equ dword_20138B8, 0x20138B8
.equ dword_20138BC, 0x20138BC
.equ dword_2013920, 0x2013920
.equ unk_2020000, 0x2020000
.equ dword_2033000, 0x2033000
.equ word_2033038, 0x2033038
.equ word_203303A, 0x203303A
.equ word_2033040, 0x2033040
.equ unk_2034000, 0x2034000
.equ unk_2034010, 0x2034010
.equ unk_2034018, 0x2034018
.equ byte_2034019, 0x2034019
.equ byte_203401A, 0x203401A
.equ byte_203401B, 0x203401B
.equ byte_203401C, 0x203401C
.equ byte_203401D, 0x203401D
.equ word_203401E, 0x203401E
.equ unk_2034080, 0x2034080
.equ dword_20340FC, 0x20340FC
.equ unk_2034880, 0x2034880
.equ byte_20349C0, 0x20349C0
.equ byte_2034A10, 0x2034A10
.equ unk_2034A60, 0x2034A60
.equ unk_2034AC4, 0x2034AC4
.equ unk_2034F54, 0x2034F54
.equ unk_2034F60, 0x2034F60
.equ unk_2035260, 0x2035260
.equ unk_203526C, 0x203526C
.equ byte_2035280, 0x2035280
.equ byte_2035281, 0x2035281
.equ byte_2035282, 0x2035282
.equ byte_203528B, 0x203528B
.equ byte_203528C, 0x203528C
.equ byte_2035292, 0x2035292
.equ byte_2035293, 0x2035293
.equ byte_2035295, 0x2035295
.equ byte_2035296, 0x2035296
.equ byte_2035297, 0x2035297
.equ byte_2035298, 0x2035298
.equ byte_2035299, 0x2035299
.equ byte_203529A, 0x203529A
.equ byte_203529B, 0x203529B
.equ byte_203529C, 0x203529C
.equ byte_203529E, 0x203529E
.equ byte_203529F, 0x203529F
.equ word_20352A0, 0x20352A0
.equ word_20352A2, 0x20352A2
.equ word_20352A4, 0x20352A4
.equ word_20352A6, 0x20352A6
.equ word_20352A8, 0x20352A8
.equ word_20352AA, 0x20352AA
.equ word_20352AC, 0x20352AC
.equ word_20352AE, 0x20352AE
.equ word_20352B0, 0x20352B0
.equ word_20352B2, 0x20352B2
.equ word_20352B4, 0x20352B4
.equ word_20352B8, 0x20352B8
.equ dword_20352C0, 0x20352C0
.equ dword_20352C4, 0x20352C4
.equ dword_20352C8, 0x20352C8
.equ dword_20352E0, 0x20352E0
.equ dword_20352E0, 0x20352E0
.equ dword_20352E0, 0x20352E0
.equ dword_20352E0, 0x20352E0
.equ dword_20352E4, 0x20352E4
.equ dword_2035310, 0x2035310
.equ dword_20364C0, 0x20364C0
.equ dword_20364C4, 0x20364C4
.equ byte_20366C0, 0x20366C0
.equ unk_2036710, 0x2036710
.equ byte_2036740, 0x2036740
.equ byte_2036742, 0x2036742
.equ byte_2036743, 0x2036743
.equ byte_2036744, 0x2036744
.equ byte_2036745, 0x2036745
.equ byte_2036746, 0x2036746
.equ byte_2036747, 0x2036747
.equ byte_2036748, 0x2036748
.equ byte_2036749, 0x2036749
.equ byte_203674A, 0x203674A
.equ byte_203674B, 0x203674B
.equ byte_203674C, 0x203674C
.equ byte_203674D, 0x203674D
.equ unk_2036750, 0x2036750
.equ byte_2036778, 0x2036778
.equ unk_2036790, 0x2036790
.equ unk_20367B8, 0x20367B8
.equ dword_20367E0, 0x20367E0
.equ dword_20367F0, 0x20367F0
.equ byte_20367F4, 0x20367F4
.equ dword_2036820, 0x2036820
.equ dword_2036824, 0x2036824
.equ dword_2036828, 0x2036828
.equ dword_203682C, 0x203682C
.equ byte_2036830, 0x2036830
.equ byte_2036840, 0x2036840
.equ byte_2036841, 0x2036841
.equ word_2036842, 0x2036842
.equ byte_2036846, 0x2036846
.equ byte_2036847, 0x2036847
.equ byte_2036848, 0x2036848
.equ word_203684A, 0x203684A
.equ word_203684C, 0x203684C
.equ unk_2036850, 0x2036850
.equ word_2036852, 0x2036852
.equ word_2036852, 0x2036852
.equ byte_2036857, 0x2036857
.equ byte_2036858, 0x2036858
.equ byte_2036859, 0x2036859
.equ unk_2036870, 0x2036870
.equ unk_2037800, 0x2037800
.equ unk_2038170, 0x2038170
.equ unk_20384F0, 0x20384F0
.equ dword_2038528, 0x2038528
.equ dword_2039A10, 0x2039A10
.equ unk_2039AA0, 0x2039AA0
.equ unk_2039ADC, 0x2039ADC
.equ byte_2039AE0, 0x2039AE0
.equ byte_2039AE1, 0x2039AE1
.equ byte_2039AE6, 0x2039AE6
.equ byte_2039AE7, 0x2039AE7
.equ byte_2039AE8, 0x2039AE8
.equ byte_2039AE9, 0x2039AE9
.equ byte_2039AEA, 0x2039AEA
.equ byte_2039AEB, 0x2039AEB
.equ byte_2039AEC, 0x2039AEC
.equ byte_2039AED, 0x2039AED
.equ unk_2039C00, 0x2039C00
.equ byte_2039C02, 0x2039C02
.equ dword_2039C18, 0x2039C18
.equ dword_203A010, 0x203A010
.equ unk_203A380, 0x203A380
.equ unk_203A980, 0x203A980
.equ unk_203A990, 0x203A990
.equ unk_203A9A0, 0x203A9A0
.equ unk_203A9B0, 0x203A9B0
.equ unk_203C4A0, 0x203C4A0
.equ unk_203C4E0, 0x203C4E0
.equ byte_203C960, 0x203C960
.equ unk_203C980, 0x203C980
.equ unk_203C9E4, 0x203C9E4
.equ dword_203CA48, 0x203CA48
.equ dword_203CA4C, 0x203CA4C
.equ dword_203CA50, 0x203CA50
.equ byte_203CA70, 0x203CA70
.equ byte_203CA74, 0x203CA74
.equ word_203CA7A, 0x203CA7A
.equ byte_203CA7C, 0x203CA7C
.equ dword_203CB04, 0x203CB04
.equ unk_203CB10, 0x203CB10
.equ unk_203CB74, 0x203CB74
.equ dword_203CBE0, 0x203CBE0
.equ dword_203CBE4, 0x203CBE4
.equ dword_203CBE8, 0x203CBE8
.equ byte_203CC03, 0x203CC03
.equ byte_203CC0D, 0x203CC0D
.equ word_203CC2A, 0x203CC2A
.equ dword_203CC2C, 0x203CC2C
.equ unk_203CC34, 0x203CC34
.equ word_203CC50, 0x203CC50
.equ word_203CC78, 0x203CC78
.equ unk_203CC98, 0x203CC98
.equ dword_203CCA0, 0x203CCA0
.equ dword_203CCA4, 0x203CCA4
.equ byte_203CCA8, 0x203CCA8
.equ byte_203CCA9, 0x203CCA9
.equ byte_203CCAA, 0x203CCAA
.equ byte_203CCAB, 0x203CCAB
.equ dword_203CCD4, 0x203CCD4
.equ unk_203CCE0, 0x203CCE0
.equ unk_203CDA8, 0x203CDA8
.equ word_203CDB0, 0x203CDB0
.equ word_203CDE8, 0x203CDE8
.equ word_203CDEA, 0x203CDEA
.equ dword_203CDF0, 0x203CDF0
.equ dword_203CDF4, 0x203CDF4
.equ unk_203CE00, 0x203CE00
.equ unk_203CE64, 0x203CE64
.equ byte_203CED0, 0x203CED0
.equ byte_203CED1, 0x203CED1
.equ byte_203CED3, 0x203CED3
.equ byte_203CED4, 0x203CED4
.equ dword_203CED8, 0x203CED8
.equ unk_203CF00, 0x203CF00
.equ dword_203CFA0, 0x203CFA0
.equ dword_203CFA4, 0x203CFA4
.equ unk_203CFD0, 0x203CFD0
.equ unk_203CFE0, 0x203CFE0
.equ dword_203EAD0, 0x203EAD0
.equ unk_203EAE0, 0x203EAE0
.equ unk_203EB00, 0x203EB00
.equ unk_203EB28, 0x203EB28
.equ byte_203EB50, 0x203EB50
.equ word_203EB52, 0x203EB52
.equ byte_203EB54, 0x203EB54
.equ byte_203EB55, 0x203EB55
.equ word_203EB56, 0x203EB56
.equ byte_203EB58, 0x203EB58
.equ byte_203EB59, 0x203EB59
.equ dword_203EB5C, 0x203EB5C
.equ dword_203EB60, 0x203EB60
.equ unk_203EBA0, 0x203EBA0
.equ unk_203EDA0, 0x203EDA0
.equ unk_203EFA0, 0x203EFA0
.equ dword_203F4A0, 0x203F4A0
.equ dword_203F4A4, 0x203F4A4
.equ unk_203F4AC, 0x203F4AC
.equ unk_203F4F4, 0x203F4F4
.equ unk_203F510, 0x203F510
.equ unk_203F538, 0x203F538
.equ unk_203F558, 0x203F558
.equ dword_203F560, 0x203F560
.equ dword_203F564, 0x203F564
.equ dword_203F568, 0x203F568
.equ unk_203F56C, 0x203F56C
.equ dword_203F594, 0x203F594
.equ dword_203F5A0, 0x203F5A0
.equ dword_203F5A4, 0x203F5A4
.equ unk_203F5AC, 0x203F5AC
.equ unk_203F5F4, 0x203F5F4
.equ unk_203F610, 0x203F610
.equ unk_203F638, 0x203F638
.equ unk_203F658, 0x203F658
.equ dword_203F660, 0x203F660
.equ dword_203F664, 0x203F664
.equ unk_203F66C, 0x203F66C
.equ dword_203F694, 0x203F694
.equ dword_203F6A0, 0x203F6A0
.equ byte_203F6B0, 0x203F6B0
.equ byte_203F6B1, 0x203F6B1
.equ byte_203F6B2, 0x203F6B2
.equ byte_203F6B3, 0x203F6B3
.equ unk_203F6D0, 0x203F6D0
.equ dword_203F750, 0x203F750
.equ dword_203F7D8, 0x203F7D8
.equ dword_203F7D8, 0x203F7D8
.equ dword_203F7E0, 0x203F7E0
.equ dword_203F7E4, 0x203F7E4
.equ dword_3000EA8, 0x3000EA8
.equ unk_3001550, 0x3001550
.equ unk_3001670, 0x3001670
.equ word_3001684, 0x3001684
.equ unk_30016B0, 0x30016B0
.equ unk_30016D0, 0x30016D0
.equ unk_30016F0, 0x30016F0
.equ unk_3001710, 0x3001710
.equ unk_3001730, 0x3001730
.equ unk_3001750, 0x3001750
.equ word_3001960, 0x3001960
.equ unk_3001980, 0x3001980
.equ unk_3001A80, 0x3001A80
.equ unk_3001AC0, 0x3001AC0
.equ unk_3001AE0, 0x3001AE0
.equ unk_3001B00, 0x3001B00
.equ unk_3001B40, 0x3001B40
.equ unk_3001B60, 0x3001B60
.equ dword_3002180, 0x3002180
.equ dword_3002184, 0x3002184
.equ dword_3002188, 0x3002188
.equ dword_300218C, 0x300218C
.equ unk_30025C0, 0x30025C0
.equ loc_3005E80, 0x3005E80
.equ loc_3005EBA, 0x3005EBA
.equ loc_3005EF0, 0x3005EF0
.equ loc_3006028, 0x3006028
.equ loc_30061E8, 0x30061E8
.equ loc_3006440, 0x3006440
.equ loc_3006730, 0x3006730
.equ loc_3006792, 0x3006792
.equ loc_3007550, 0x3007550
.equ loc_300777C, 0x300777C
.equ loc_30078C8, 0x30078C8
.equ loc_30078E0, 0x30078E0
.equ loc_3007958, 0x3007958
.equ loc_30079A4, 0x30079A4
.equ LCDControl, 0x4000000
.equ VerticalCounter_LY_, 0x4000006
.equ BG0Control, 0x4000008
.equ Window0HorizontalDimensions, 0x4000040
.equ MosaicSize, 0x400004C
.equ ColorSpecialEffectsSelection, 0x4000050
.equ Brightness_Fade_In_Out_Coefficient, 0x4000054
.equ DMA0SourceAddress, 0x40000B0
.equ DMA0WordCount, 0x40000B8
.equ DMA1SourceAddress, 0x40000BC
.equ DMA1WordCount, 0x40000C4
.equ DMA2SourceAddress, 0x40000C8
.equ DMA2WordCount, 0x40000D0
.equ DMA3SourceAddress, 0x40000D4
.equ DMA3WordCount, 0x40000DC
.equ off_801ECB4, 0x801ECB4
.equ word_801ED6C, 0x801ED6C
.equ word_801EDB4, 0x801EDB4
.equ dword_801EDFC, 0x801EDFC
.equ word_801EE14, 0x801EE14
.equ word_801EE58, 0x801EE58
.equ dword_801EE78, 0x801EE78
.equ dword_801EE98, 0x801EE98
.equ dword_801EF10, 0x801EF10
.equ off_801EF30, 0x801EF30
.equ off_801EF4C, 0x801EF4C
.equ off_801EF68, 0x801EF68
.equ pt_801EF84, 0x801EF84
.equ pt_801EFD4, 0x801EFD4
.equ word_801F374, 0x801F374
.equ byte_801F376, 0x801F376
.equ word_801F554, 0x801F554
.equ byte_801F556, 0x801F556
.equ off_801FD64, 0x801FD64
.equ off_801FD90, 0x801FD90
.equ dword_801FDC0, 0x801FDC0
.equ dword_8020354, 0x8020354
.equ dword_8020404, 0x8020404
.equ dword_80209CC, 0x80209CC
.equ off_80209EC, 0x80209EC
.equ dword_8020B2C, 0x8020B2C
.equ dword_8020B8C, 0x8020B8C
.equ dword_8020E54, 0x8020E54
.equ dword_8020FE0, 0x8020FE0
.equ dword_8021220, 0x8021220
.equ dword_80212D4, 0x80212D4
.equ dword_8021300, 0x8021300
.equ byte_8021369, 0x8021369
.equ byte_802136A, 0x802136A
.equ byte_802136B, 0x802136B
.equ byte_802136C, 0x802136C
.equ dword_802137C, 0x802137C
.equ dword_80213AC, 0x80213AC
.equ dword_802412C, 0x802412C
.equ dword_8098A78, 0x8098A78
.equ dword_8098B1C, 0x8098B1C
.equ dword_84E0554, 0x84E0554
.equ dword_86A5500, 0x86A5500
.equ dword_86A5520, 0x86A5520
.equ dword_86A5D60, 0x86A5D60
.equ dword_86B7AE0, 0x86B7AE0
.equ dword_86B7B20, 0x86B7B20
.equ dword_86B7B60, 0x86B7B60
.equ dword_86B7BA0, 0x86B7BA0
.equ dword_86B7BE0, 0x86B7BE0
.equ dword_86B7C20, 0x86B7C20
.equ dword_86B7C60, 0x86B7C60
.equ dword_86B7CA0, 0x86B7CA0
.equ dword_86B7CE0, 0x86B7CE0
.equ dword_86B7D20, 0x86B7D20
.equ dword_86B7D60, 0x86B7D60
.equ dword_86BA0A0, 0x86BA0A0
.equ dword_86BA120, 0x86BA120
.equ dword_86BEC80, 0x86BEC80
.equ dword_86DDBA0, 0x86DDBA0
.equ byte_86DFA98, 0x86DFA98
.equ dword_86E0458, 0x86E0458
.equ dword_86E0478, 0x86E0478
.equ dword_86E0498, 0x86E0498
.equ dword_86E08F8, 0x86E08F8
.equ dword_86E09F8, 0x86E09F8
.equ dword_86E0AB8, 0x86E0AB8
.equ dword_86E0AF8, 0x86E0AF8
.equ dword_86E0B38, 0x86E0B38
.equ dword_86E0B78, 0x86E0B78
.equ dword_86E0BB8, 0x86E0BB8
.equ dword_86E0BF8, 0x86E0BF8
.equ dword_86E0C38, 0x86E0C38
.equ dword_86E0C78, 0x86E0C78
.equ dword_86E0CB8, 0x86E0CB8
.equ dword_86E0CF8, 0x86E0CF8
.equ dword_86E0D38, 0x86E0D38
.equ dword_86E0D78, 0x86E0D78
.equ dword_86E0DB8, 0x86E0DB8
.equ dword_86E0DF8, 0x86E0DF8
.equ dword_86E0E38, 0x86E0E38
.equ dword_86E0E78, 0x86E0E78
.equ dword_86E0EB8, 0x86E0EB8
.equ dword_86E0EF8, 0x86E0EF8
.equ dword_86E0F38, 0x86E0F38
.equ dword_86E0F78, 0x86E0F78
.equ dword_86E0FB8, 0x86E0FB8
.equ dword_86E0FF8, 0x86E0FF8
.equ dword_86E1038, 0x86E1038
.equ dword_86E1078, 0x86E1078
.equ dword_86E10B8, 0x86E10B8
.equ dword_86E10F8, 0x86E10F8
.equ dword_86E1138, 0x86E1138
.equ dword_86E1178, 0x86E1178
.equ dword_86E11B8, 0x86E11B8
.equ dword_86E11F8, 0x86E11F8
.equ dword_86E1C78, 0x86E1C78
.equ dword_86E1CD8, 0x86E1CD8
.equ dword_86E489C, 0x86E489C
.equ dword_86E4C1C, 0x86E4C1C
.equ dword_86E611C, 0x86E611C
.equ dword_86E958C, 0x86E958C
.equ dword_86E960C, 0x86E960C
.equ dword_86E966C, 0x86E966C
.equ off_86E968C, 0x86E968C
.equ dword_86E97CC, 0x86E97CC
.equ dword_86E98CC, 0x86E98CC
.equ dword_86E994C, 0x86E994C
.equ dword_86E9A0C, 0x86E9A0C
.equ dword_86E9A2C, 0x86E9A2C
.equ dword_86E9F2C, 0x86E9F2C
.equ dword_86EA42C, 0x86EA42C
.equ dword_86EA92C, 0x86EA92C
.equ aBdfhjlnprtvxzB, 0x86F0300
.equ aLoxajs, 0x86F0374
.equ dword_86F047C, 0x86F047C
.equ dword_86F0D7C, 0x86F0D7C
.equ dword_86F2900, 0x86F2900
.equ dword_86F2E00, 0x86F2E00
.equ dword_86F2E14, 0x86F2E14
.equ dword_86F2E20, 0x86F2E20
.equ dword_86F2E34, 0x86F2E34
.equ dword_86F2E40, 0x86F2E40
.equ dword_86F2E54, 0x86F2E54
.equ dword_86F3F5C, 0x86F3F5C
.equ dword_86F4498, 0x86F4498
.equ dword_86F53CC, 0x86F53CC
.equ dword_872CE94, 0x872CE94
.equ unk_872D014, 0x872D014
.equ unk_872D094, 0x872D094
.equ dword_872D694, 0x872D694
.equ dword_872D814, 0x872D814
.equ dword_872D914, 0x872D914
.equ dword_872D994, 0x872D994
.equ dword_872DB14, 0x872DB14
.equ unk_872DC94, 0x872DC94
.equ dword_872DE14, 0x872DE14
.equ unk_872DF94, 0x872DF94
.equ dword_872E094, 0x872E094
.equ dword_872E194, 0x872E194
.equ dword_872E294, 0x872E294
.equ dword_872E394, 0x872E394
.equ dword_872E494, 0x872E494
.equ dword_872E594, 0x872E594
.equ dword_872E694, 0x872E694
.equ dword_872E794, 0x872E794
.equ dword_872E894, 0x872E894
.equ dword_872E994, 0x872E994
.equ dword_872EF14, 0x872EF14
.equ dword_872F014, 0x872F014
.equ dword_872F114, 0x872F114
.equ dword_87370C0, 0x87370C0
.equ a58, 0x87F2F68

.endif // INC_ASM00
