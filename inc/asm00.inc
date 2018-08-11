.ifndef INC_ASM00
.equ INC_ASM00, 0

/* Public Symbols */
.global sub_80005AC
.global sub_80005C4
.global sound_play // () -> void
.global sound_bgmusic_play // (int a1) -> void
.global sub_80005F2
.global sub_800060A
.global sub_8000642
.global sound_8000672
.global sub_800068A
.global sub_80006A2
.global sub_8000784
.global sub_80007B2
.global sub_80007BE
.global sub_80008B4
.global sub_80008C0
.global CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
.global sub_8000900 // (int a1, int a2) -> void
.global copyMemory // (void *src, void* dest, int size) -> void
.global CpuSet_800092A // (void *src, void *dest, int mode) -> void
.global CpuSet_800093C
.global CpuFastSet_8000950
.global initMemblockToByte
.global sub_800096C
.global sub_800098C
.global sub_80009AC
.global sub_8000A3C
.global objRender_8000A44
.global loc_8000AC4
.global loc_8000AC8
.global loc_8000ACA
.global decomp_initGfx_8000B30 // (u32 *initRefs) -> void
.global decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
.global sub_8000C00
.global sub_8000C5C
.global sub_8000C72
.global sub_8000CDA
.global sub_8000D12
.global sub_8000D84
.global sub_8000DE0
.global sub_8000E10
.global sub_8000E28
.global sub_8000E3A
.global sub_8000EB6
.global sub_8000EE4
.global sub_8000F86
.global sub_8001040
.global loc_8001048
.global getPETNaviSelect // () -> u8
.global sub_80010BE
.global sub_80010C6
.global sub_80010D4
.global sub_80010EC
.global sub_8001158 // () -> void
.global sub_8001172
.global calcAngle_800117C
.global sub_800118A
.global sub_80011A0
.global sub_80011D6
.global sub_800120E
.global sub_8001330
.global sub_8001382
.global sub_800139A
.global sub_80014D4
.global sub_8001514
.global sub_800151C
.global sub_8001532
.global sub_800154C // () -> void
.global sub_8001562
.global sub_80015B4
.global render_80015D0
.global sub_80015FC
.global render_800172C
.global sub_8001778
.global sub_8001780
.global sub_8001788
.global sub_80017A0
.global sub_80017AA
.global sub_80017E0
.global main_static_80017EC
.global off_8001800
.global renderPalletes_8001808
.global sub_8001820
.global sub_800182E
.global sub_800183C
.global sub_8001850
.global sub_800187C
.global sub_8001890
.global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.global sub_80018D0
.global sub_80018E0
.global sub_8001930
.global sub_800195C
.global sub_8001974
.global cb_call_200A880
.global loc_80019A0
.global locret_80019B2
.global loc_80019B4
.global sub_8001AFC
.global sub_8001B1C
.global sub_8001B6C
.global sub_8001B84
.global PET_onUpdate_8001B94
.global sub_8002354
.global sub_8002368
.global sub_8002378
.global sub_800239A
.global sub_80023A8
.global getPalleteAndTransition_80023E0
.global sub_8002468
.global sub_8002484
.global sub_80024A2
.global sub_80024C0
.global sub_800260C
.global renderPalletesAndObjs_8002650
.global sub_8002668
.global loc_8002676
.global sub_8002694
.global sprite_loadAnimationData
.global sub_80026B6
.global sprite_update
.global sub_80026D6
.global sprite_load
.global sub_800275A
.global sub_8002770
.global loc_8002774
.global sub_80027B4
.global sub_80027C4
.global sub_80027F4
.global sub_8002818
.global sub_800286C
.global sub_8002874
.global handleObjSprites_800289C
.global sub_80028D4
.global sub_8002906
.global sub_8002A64
.global sub_8002ADE
.global sprite_decompress
.global sprite_setScaleParameters
.global sub_8002C52
.global sub_8002C68
.global sub_8002C7A
.global sprite_setMosaicScalingParameters
.global sub_8002CCE
.global sprite_getMosaicScalingParameters
.global sprite_makeScalable
.global sprite_makeUnscalable
.global sprite_setPallete
.global sprite_getPallete
.global sprite_setAnimation
.global sprite_forceWhitePallete
.global loc_8002DB4
.global sub_8002DC8
.global sub_8002DD8
.global sub_8002DEA
.global sub_8002E04
.global sub_8002E14
.global sub_8002E3C
.global sub_8002E52
.global sub_8002EAC
.global sub_8002ED0
.global sub_8002EDC
.global sub_8002EE8
.global sub_8002EF6
.global loc_8002F02
.global sub_8002F2C
.global sub_8002F3E
.global sub_8002F5C
.global sub_8002F7E
.global sub_8002F90
.global sub_8002FA6
.global sub_8002FB2
.global sub_8002FEC
.global sub_8003006
.global sub_800302A
.global sub_800304A
.global sub_8003060
.global sub_800306C
.global sub_800307C
.global sub_800308A
.global sub_80030A8
.global sub_80030BA
.global object_spawnType1
.global object_spawnType3
.global sub_8003374
.global object_spawnType4
.global sub_80033E4
.global object_freeMemory
.global loc_8003570
.global sub_80035A2
.global sub_800362C
.global sub_8003694
.global sub_800378C
.global sub_80037AC
.global sub_80037F4
.global sub_8003914
.global sub_8003940
.global sub_8003962
.global sub_8003984
.global sub_800399A
.global sub_80039CC
.global sub_80039D4
.global sub_8003A64
.global loc_8003A90
.global sub_8003AB2
.global sub_8003AD4
.global sub_8003AEA
.global sub_8003B1C
.global sub_8003B4C
.global sub_8003B86
.global sub_8003BA2
.global sub_8003BF4
.global sub_8003E98
.global sub_8004298
.global sub_8004590
.global sub_80045C0
.global sub_8004602
.global sub_800461E
.global sub_800467C
.global sub_8004702
.global sub_80047E0
.global sub_8004822
.global sub_80048B2
.global sub_80048D2
.global sub_8004934
.global sub_8004D48
.global sub_8004DF0
.global sub_8005524
.global sub_8005BC8
.global sub_8005C04
.global subsystem_launchBBS
.global subsystem_launchReqBBS
.global subsystem_launchShop
.global subsystem_launchChipTrader
.global sub_8005D88
.global sub_8005EA2
.global subsystem_launchMail
.global sub_8005F40
.global sub_8005F6C
.global sub_8005F84
.global engine_setScreeneffect
.global loc_8006274
.global sub_80062C8
.global sub_80062EC
.global engine_isScreeneffectAnimating // () -> zf
.global loc_80062FC
.global subsystem_triggerTransition_800630A
.global dword_8006660
.global sub_80068E0
.global sub_80068EC
.global sub_8006910
.global CpuSet_toolKit
.global sub_8006C22
.global sub_8006C6C
.global sub_8006DEC
.global sub_8006DF6
.global save_8006E0E
.global save_8006E26
.global load_8006E3C
.global sub_8006E50
.global modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
.global sub_8006E84
.global sub_8006EA4
.global sub_8006F1E
.global sub_8006F54
.global sub_8006F78
.global sub_8006FAC
.global sub_8006FD0
.global sub_80070BC
.global sub_80070E6
.global sub_800710A
.global sub_80071B4
.global sub_80071D4
.global sub_80076A0
.global sub_80077B4
.global loc_8007800
.global off_8008000
.global sub_8009FF8
.global battle_isPaused
.global battle_isTimeStop
.global sub_800A0A4
.global sub_800A0D6
.global sub_800A11C
.global sub_800A152
.global battle_isBattleOver
.global battle_setFlags
.global battle_clearFlags
.global battle_getFlags
.global sub_800A704
.global sub_800A70C
.global getBattleSettingsFromList0
.global getBattleSettingsFromList1
.global zf_checkSameSubsystem_800A732
.global sub_800A772
.global sub_800A7D0
.global sub_800A7E2
.global sub_800A832
.global sub_800A856
.global sub_800A8F8
.global sub_800A908
.global sub_800A97A
.global sub_800A9D6
.global sub_800A9E2
.global battle_networkInvert
.global sub_800AA92
.global sub_800AABC
.global sub_800AB2E
.global sub_800AB3A
.global sub_800AB46
.global sub_800ABC6
.global sub_800AE54
.global sub_800AE90
.global sub_800AFBA
.global sub_800B022 // (int a1) ->
.global sub_800B3A2
.global sub_800B3D8
.global sub_800B460
.global sub_800B46C
.global sub_800B6B0
.global sub_800B6CE
.global sub_800B6D4
.global sub_800B6DA
.global sub_800B6E0
.global sub_800B734
.global sub_800BCC0
.global object_timefreezeEnd
.global sub_800BF16
.global sub_800BF5C
.global object_getPanelParameters
.global sub_800C90A
.global object_crackPanel
.global object_crackPanelDup1
.global object_breakPanel
.global object_breakPanel_dup1
.global object_breakPanel_dup2
.global object_breakPanel_dup3
.global object_breakPanelLoud
.global object_highlightPanel
.global object_setPanelType
.global object_setPanelAlliance
.global object_setPanelAllianceTimerLong
.global object_setPanelAllianceTimerShort
.global object_setPanelTypeBlink
.global object_isCurrentPanelValid
.global object_isValidPanel
.global object_checkPanelParameters
.global object_isCurrentPanelSolid
.global object_isPanelSolid
.global object_highlightCurrentCollisionPanels
.global object_highlightPanelRegion
.global object_highlightPanelRegionBlue
.global object_hidePanel
.global object_getPanelsExceptCurrentFilterred
.global sub_800CEA0
.global sub_800CF14
.global sub_800CF42
.global sub_800CF70
.global sub_800CFA6
.global sub_800CFDC
.global sub_800D012
.global sub_800D06A
.global sub_800D086
.global sub_800D0BC
.global sub_800D120
.global sub_800D3FE
.global sub_800D45C
.global sub_800D4C2
.global sub_800D4D0
.global sub_800D58C
.global sub_800D5F0
.global sub_800D618
.global sub_800D668
.global sub_800E24C
.global sub_800E258
.global sub_800E276
.global sub_800E29C
.global sub_800E2AC
.global sub_800E2C0
.global sub_800E2C2
.global sub_800E2CA
.global object_getFlipDirection
.global object_subtractHP
.global object_addHP
.global sub_800E2FC
.global sub_800E3BE
.global sub_800E456
.global object_canMove
.global sub_800E5FC
.global sub_800E680
.global sub_800E6E8
.global sub_800E708
.global object_setCounterTime
.global sub_800EA0E
.global sub_800EA22
.global sub_800EA90
.global sub_800EABA
.global sub_800EAC4
.global sub_800EADA
.global object_setInvulnerableTime
.global sub_800EB08
.global sub_800EB6C
.global object_getEnemyByNameRange
.global sub_800EC3C
.global sub_800EC48
.global sub_800ED90
.global sub_800F214
.global sub_800F23C
.global sub_800F26C
.global sub_800F29C
.global sub_800F2AA
.global sub_800F2B6
.global sub_800F2C6
.global sub_800F2FC
.global sub_800F322
.global sub_800F378
.global sub_800F46C
.global sub_800F486
.global sub_800F49E
.global sub_800F614
.global sub_800F656
.global sub_800F672
.global sub_800F884
.global sub_800F898
.global sub_800F8B0
.global sub_800F8CE
.global sub_800F90E
.global sub_800F964
.global sub_800F998
.global sub_800FA20
.global sub_800FA54
.global sub_800FAAC
.global sub_800FAF6
.global sub_800FB54
.global sub_800FC30
.global sub_800FC7C
.global sub_800FC9E
.global sub_800FCFC
.global sub_800FDB6
.global sub_800FE12
.global sub_800FE28
.global sub_800FE36
.global sub_800FE52
.global sub_800FFE4
.global sub_800FFEE
.global sub_800FFFE
.global sub_8010004
.global sub_8010018
.global sub_801002C
.global sub_80100EC
.global sub_801011A
.global sub_80101AE
.global sub_80101C4
.global sub_80101D4
.global sub_80101F8
.global sub_8010300
.global sub_8010312
.global sub_801031C
.global sub_801032C
.global sub_8010332
.global sub_80103A8
.global sub_80103BC
.global sub_80103EC
.global sub_80103F8
.global sub_8010474
.global sub_801056A
.global sub_80105F2
.global sub_8010660
.global sub_80106C0
.global sub_8010740
.global sub_80107C0
.global sub_80107D4
.global sub_801086C
.global sub_80108FC
.global sub_80109A4
.global sub_8010C76
.global sub_8010CE0
.global sub_8010DD0
.global loc_8010DF6
.global sub_8011020
.global loc_8011044
.global loc_8011268
.global loc_8011384
.global sub_8011420
.global sub_8011450
.global sub_8011504
.global sub_801155A
.global sub_801156A
.global sub_801162A
.global sub_801164C
.global sub_8011680
.global sub_8011684
.global sub_8011688
.global loc_801168C
.global loc_8011690
.global loc_8011694
.global sub_80116AE
.global sub_80116D8
.global sub_8011714
.global loc_801171C
.global sub_8011764
.global sub_801177A
.global sub_8011790
.global loc_80117A4
.global sub_801265A
.global sub_80126E4
.global sub_8012792
.global sub_8012956
.global sub_801299C
.global sub_8012E74
.global sub_8012EA8
.global sub_8013682
.global sub_80136CC
.global sub_80136D8
.global sub_80136E4
.global sub_80136F0
.global sub_8013704
.global sub_8013754
.global sub_8013764
.global sub_8013774
.global sub_8013790
.global navicust_801379E // (int a1, int a2, int a3) -> void
.global sub_80137B6
.global sub_80137E6
.global sub_80137FE
.global sub_8013816
.global sub_801382E
.global sub_8013846
.global sub_8013864
.global sub_8013874
.global sub_801393A
.global sub_80139C4
.global sub_8013B4E
.global loc_8013B64
.global sub_8013CC4
.global sub_8013D5E
.global sub_8013DA0
.global sub_8013FAE
.global sub_8013FD0
.global navicust_8014018 // (int a1) -> int
.global sub_801401E
.global sub_80141AC
.global loc_8014216
.global sub_80142C2
.global sub_80143A6
.global loc_80143B4
.global sub_801443C
.global sub_8014446
.global sub_80144C0
.global sub_8015940
.global sub_8015952
.global sub_8015B00
.global sub_8015B54
.global sub_8015B5C
.global sub_8015BEC
.global sub_8015C32
.global sub_8015C48
.global sub_8015C94
.global sub_8015CC0
.global sub_8015D80
.global sub_8015E46
.global sub_8016004
.global sub_8016218
.global sub_801632C
.global sub_80165B8
.global sub_80165C2
.global sub_8016934
.global sub_80169BE
.global byte_8016B02
.global byte_8016B03
.global sub_8016B36
.global sub_8016B72
.global sub_8016C8A
.global sub_8016C9C
.global loc_8016CE8
.global sub_8016E64
.global sub_8016EC4
.global sub_80170C4
.global sub_80174FE
.global sub_80175B8
.global sub_8017688
.global sub_8017768
.global sub_8017CC0
.global sub_80182B4
.global sub_8018810
.global sub_8018842
.global sub_8019892
.global sub_80198CE
.global off_8019B78
.global dword_8019C34
.global sub_8019F86
.global sub_8019F8C
.global sub_8019FB4
.global sub_801A00E
.global sub_801A018
.global sub_801A04C
.global sub_801A066
.global sub_801A074
.global sub_801A07C
.global sub_801A082
.global sub_801A0D4
.global sub_801A100
.global sub_801A140
.global sub_801A146
.global object_setFlag
.global object_clearFlag
.global object_getFlag
.global sub_801A16C
.global sub_801A176
.global sub_801A180
.global sub_801A258
.global sub_801A264
.global sub_801A284
.global sub_801A29A
.global sub_801A2B0
.global sub_801A4D0
.global sub_801A4DC
.global sub_801A5E2
.global sub_801A66C
.global sub_801A67E
.global sub_801A7CC
.global sub_801A7F4
.global sub_801ABB8
.global sub_801AC6C
.global sub_801AD12
.global sub_801AD6A
.global sub_801AD9E
.global sub_801ADFA
.global sub_801AF44
.global sub_801B1C4
.global sub_801B394
.global sub_801B4D4
.global sub_801B610
.global loc_801B750
.global loc_801B878
.global sub_801BB1C
.global sub_801BB46
.global sub_801BBAC
.global sub_801BBF4
.global sub_801BC24
.global sub_801BC64
.global sub_801BCA6
.global sub_801BCD0
.global sub_801BCF4
.global sub_801BD3C
.global sub_801BDDE
.global sub_801BE04
.global nullsub_10
.global sub_801BE2A
.global sub_801BEB8
.global sub_801BEC2
.global sub_801BECC
.global sub_801BED6
.global sub_801DA48
.global sub_801DACC
.global sub_801DBD4
.global sub_801DC36
.global sub_801DC7C
.global sub_801DCCC
.global sub_801DD34
.global sub_801DED0
.global sub_801DEEE
.global sub_801DF0C
.global sub_801DF8C
.global sub_801DF92
.global sub_801DFA2
.global sub_801E0A0
.global sub_801E0D0
.global sub_801E2BA
.global sub_801E408
.global sub_801E474
.global sub_801E574
.global sub_801E658
.global sub_801E660
.global sub_801E71C
.global sub_801E754
.global sub_801E780
.global loc_801E792
.global sub_801E914
.global sub_801EB18
.global sub_801EC44


/* External Symbols */
.include "start.inc"
// .global start_
// .global dword_8000004
// .global dword_8000004
// .global start_800024C

.include "asm02.inc"
// .global refIndex_8021DA8 // (int idx) -> void*
// .global sub_8021AB4
// .global sub_8021C68
// .global computeItemRef_Toolkit_unk4C // (int idx, int searchItem, int off) -> void*
// .global sub_8021D08
// .global sub_8021D14
// .global sub_8021D36

.include "reqBBS.inc"
// .global reqBBS_813E07C
// .global reqBBS_813E5DC
// .global reqBBS_813E616
// .global reqBBS_init_s_2005780
// .global reqBBS_813F9A0
// .global reqBBS_initMemory_813F9DA
// .global reqBBS_8140984

.include "asm21.inc"
// .global sub_8080D90
// .global sub_8080DA0

.include "asm37_1.inc"
// .global sub_81419A0
// .global sub_8142248
// .global sub_8143482
// .global sub_8144048
// .global sub_81440D8
// .global sub_8144EEC
// .global SWI_CpuFastSet // (void *src, void *dest, int mode) -> void
// .global SWI_CpuSet // (void *src, void *dest, int mode) -> void
// .global SWI_Div
// .global SWI_LZ77UnCompReadNormalWrite16bit
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
// .global SWI_Sqrt
// .global sub_814E87C
// .global sub_814E918
// .global m4a_SongNumStart
// .global sub_814E9F0
// .global sub_814EA58
// .global sub_814EAF0
// .global sub_814EB1C
// .global sub_814F00C
// .global sub_814F988
// .global sub_814F9AC
// .global sub_814FA14

.include "asm33.inc"
// .global sub_8127990
// .global sub_81284A4

.include "asm37_0.inc"
// .global sub_813B768
// .global sub_813B934
// .global sub_813BF1C
// .global sub_813C324
// .global sub_813C3AC
// .global sub_813D60C

.include "asm29.inc"
// .global ho_80A4984
// .global loc_80A4A98
// .global loc_80A4BDC
// .global loc_80A51C4
// .global loc_80A5428
// .global loc_80A54F0
// .global loc_80A57AC
// .global loc_80A5AD4
// .global sub_80A6A16
// .global loc_80A6E98
// .global loc_80A72B4
// .global loc_80A77A8
// .global loc_80A781C
// .global loc_80A78B8
// .global loc_80A7C84
// .global loc_80A7D90
// .global loc_80A8208
// .global loc_80A8394
// .global loc_80A8654
// .global loc_80A8728
// .global loc_80A87F0
// .global loc_80A8870
// .global loc_80A89DC
// .global loc_80A8AB4
// .global loc_80A8E74
// .global loc_80A92B8
// .global loc_80A9430
// .global loc_80A9658
// .global loc_80A9824
// .global loc_80A98D4
// .global loc_80A9A0C
// .global loc_80A9B70
// .global loc_80A9D10
// .global loc_80A9ECC
// .global loc_80A9F58
// .global sub_80AA004
// .global loc_80AA058
// .global sub_80AA104
// .global loc_80AA140
// .global loc_80AA1E0
// .global loc_80AA2D8
// .global loc_80AA374
// .global sub_80AA4C0
// .global sub_80AA88C
// .global sub_80AAB88

.include "asm32.inc"
// .global sub_811EBE0
// .global sub_811EC00
// .global sub_811EC10
// .global sub_811EC50
// .global ho_811ED1C // () -> void
// .global sub_811F6C0
// .global sub_811F6E0
// .global sub_811F7EC
// .global sub_811FB78
// .global sub_81207F8
// .global sub_81209DC
// .global sub_8120A38
// .global sub_8121144
// .global sub_8121198

.include "asm01.inc"
// .global sub_801FE00
// .global sub_801FE24
// .global sub_801FE5E
// .global sub_801FE64
// .global sub_801FE6C
// .global sub_801FEE8
// .global loc_801FEEE
// .global sub_80200A4
// .global sub_8020134
// .global sub_8020140
// .global sub_802015E

.include "asm36.inc"
// .global sub_81376E8
// .global sub_8137700
// .global sub_8137808
// .global sub_8138294

.include "asm28.inc"
// .global loc_809D19C
// .global sub_809E04C
// .global sub_809E098
// .global sub_809E2C2
// .global sub_809E2F4
// .global sub_809E2FC
// .global sub_809E304
// .global sub_809E312
// .global sub_809E3AA
// .global sub_809E3B2
// .global sub_809E462
// .global loc_809E570
// .global sub_809F68C
// .global sub_809F90C
// .global sub_809F942
// .global sub_809F9C8
// .global sub_809F9DC
// .global sub_809FAF4

.include "asm30.inc"
// .global battleSettingsList0
// .global battleSettingsList1

.include "asm03_0.inc"
// .global sub_8026840
// .global loc_8026A28
// .global sub_8027D10
// .global sub_802A866
// .global loc_802A87C
// .global loc_802BD60
// .global sub_802C34E
// .global sub_802C8FA
// .global sub_802C9B8
// .global sub_802C9EA
// .global sub_802CA82
// .global sub_802CB38
// .global loc_802CB78
// .global off_802CCB4
// .global sub_802CDD0
// .global sub_802CDFE
// .global sub_802CE10
// .global sub_802CE54
// .global sub_802CE60
// .global sub_802CE78
// .global sub_802CEA6
// .global sub_802CEC8
// .global sub_802CEF4
// .global sub_802CFF8
// .global sub_802D08C
// .global sub_802D1B4
// .global sub_802D1BE
// .global sub_802D234
// .global get_802D246 // () -> int
// .global sub_802D254 // () -> int
// .global sub_802D26A
// .global sub_802D2B2
// .global sub_802D310
// .global sub_802D638
// .global sub_802D644
// .global sub_802D65E
// .global sub_802D6A0
// .global sub_802D6C4
// .global loc_802D714
// .global loc_802D926
// .global sub_802DCDE
// .global sub_802DCEC
// .global sub_802DD2A
// .global sub_802DE5C
// .global sub_802DFC8
// .global sub_802DFFC
// .global sub_802E014
// .global sub_802E032
// .global sub_802E066
// .global sub_802E070
// .global sub_802E09A
// .global sub_802E112
// .global sub_802E156
// .global sub_802E1D8
// .global sub_802E240
// .global sub_802E440
// .global sub_802E44A
// .global sub_802E454
// .global sub_802E45E
// .global sub_802E4B8
// .global sub_802E830
// .global sub_802EF5C
// .global dword_802F0A8
// .global sub_802F0C4
// .global sub_802F0D8
// .global sub_802F0F4
// .global sub_802F110
// .global sub_802F114 // (int a1) -> void
// .global sub_802F12C // (int a1, int a2) -> void
// .global loc_802F130
// .global sub_802F164 // (int a1, int a2) -> zf
// .global zf_802F168
// .global sub_802F17E // (int a1, int a2) -> void
// .global sub_802F1FC // (int a3, int a2) ->
// .global sub_802F2C8
// .global sub_802FDB0
// .global loc_802FDB4
// .global sub_802FE28
// .global sub_802FE48
// .global sub_802FE6A
// .global sub_802FE7A
// .global sub_802FF2C
// .global sub_802FF4C
// .global loc_802FFF4
// .global sub_80301B2
// .global sub_80302A8
// .global sub_80302B6
// .global sub_80303E8
// .global sub_8030580
// .global sub_8030808
// .global loc_8030A00
// .global sub_8030A30
// .global sub_8031A7A
// .global dword_8031CC4
// .global dword_8032530
// .global dword_8032530
// .global off_803385C
// .global dword_8033878
// .global sub_8033948
// .global loc_80339CC
// .global sub_80341AA
// .global sub_8034B4C
// .global sub_8034BB8
// .global sub_803532C
// .global sub_80355A8
// .global sub_80355EC
// .global sub_80356EC
// .global sub_8035738
// .global sub_8036E90
// .global sub_8036EFE
// .global sub_8036F24
// .global sub_8036F36
// .global sub_80385F0
// .global sub_8038A9C
// .global sub_803C3E0
// .global sub_803C59C
// .global sub_803C754
// .global sub_803CD74
// .global sub_803CEB8
// .global sub_803D0C8
// .global sub_803D0F4
// .global loc_803D1AC
// .global sub_803DD60
// .global sub_803DDA4
// .global sub_803DE24
// .global sub_803EA60
// .global sub_803EBF4
// .global loc_803ED90
// .global sub_803F4EC
// .global sub_803F500
// .global sub_803F524
// .global sub_803F530
// .global sub_803F6B0
// .global sub_803F79E
// .global sub_803F838
// .global sub_803FB28

.include "chatbox.inc"
// .global loc_8040000
// .global chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
// .global chatbox_8040818
// .global chatbox_8045F2C
// .global chatbox_8045F3C

.include "asm03_1.inc"
// .global render_graphicalText_8045F8C
// .global sub_8046664 // () -> void
// .global sub_8046CC8
// .global sub_8048C68
// .global sub_8048C98
// .global sub_8049CF8
// .global sub_804A17A
// .global sub_804A2CC

.include "asm31.inc"
// .global sub_80B81EC
// .global sub_80B8210
// .global loc_80B85E0
// .global loc_80B88D0
// .global loc_80B8A18
// .global loc_80B8CD8
// .global loc_80B8EA0
// .global loc_80B9078
// .global loc_80B92B8
// .global loc_80B94BC
// .global loc_80B97C0
// .global loc_80B99C0
// .global loc_80B9C14
// .global loc_80B9F44
// .global loc_80BA364
// .global loc_80BA708
// .global loc_80BAA8C
// .global loc_80BAF50
// .global loc_80BB2A0
// .global loc_80BB608
// .global loc_80BB914
// .global loc_80BBB98
// .global loc_80BBF0C
// .global loc_80BC17C
// .global loc_80BC4FC
// .global loc_80BC650
// .global sub_80BC844
// .global loc_80BC87C
// .global loc_80BCA04
// .global loc_80BCB50
// .global loc_80BCD14
// .global loc_80BD388
// .global loc_80BDBA4
// .global loc_80BE4D8
// .global loc_80BE798
// .global loc_80BF260
// .global loc_80BF6EC
// .global loc_80BFDFC
// .global loc_80BFF68
// .global loc_80C0178
// .global loc_80C0334
// .global loc_80C04AC
// .global loc_80C065C
// .global loc_80C07BC
// .global loc_80C0E04
// .global loc_80C0F6C
// .global loc_80C11AC
// .global loc_80C1570
// .global loc_80C1A10
// .global loc_80C2138
// .global loc_80C26F0
// .global loc_80C2A78
// .global loc_80C3000
// .global loc_80C3218
// .global loc_80C34E0
// .global loc_80C3734
// .global loc_80C3970
// .global loc_80C3CE8
// .global loc_80C3EE0
// .global loc_80C40D8
// .global sub_80C41D8
// .global sub_80C4204
// .global loc_80C4348
// .global sub_80C44A8
// .global sub_80C44C8
// .global sub_80C44D2
// .global loc_80C4530
// .global sub_80C468C
// .global sub_80C46B0
// .global sub_80C46B6
// .global sub_80C46C0
// .global loc_80C46FC
// .global loc_80C4828
// .global loc_80C4B18
// .global sub_80C4C12
// .global sub_80C4C3A
// .global loc_80C4E58
// .global sub_80C4FFE
// .global loc_80C50B8
// .global loc_80C51AC
// .global loc_80C52B0
// .global sub_80C53A6
// .global loc_80C53C0
// .global loc_80C55B0
// .global loc_80C57C0
// .global loc_80C5A34
// .global sub_80C5B76
// .global loc_80C5BB0
// .global loc_80C5DDC
// .global loc_80C5F60
// .global loc_80C60A8
// .global loc_80C6280
// .global loc_80C6414
// .global loc_80C6580
// .global loc_80C67F8
// .global loc_80C6946
// .global loc_80C6B40
// .global loc_80C6DCC
// .global loc_80C7074
// .global loc_80C71A4
// .global loc_80C740C
// .global loc_80C793C
// .global loc_80C7C18
// .global loc_80C7D78
// .global sub_80C7F20
// .global loc_80C7F40
// .global loc_80C8098
// .global loc_80C81CC
// .global loc_80C8388
// .global loc_80C853C
// .global loc_80C86D8
// .global loc_80C882C
// .global loc_80C8AA4
// .global loc_80C8C74
// .global loc_80C8E08
// .global loc_80C8FFC
// .global loc_80C91A0
// .global loc_80C93CC
// .global sub_80C96A0
// .global locret_80C980C
// .global locret_80C9814
// .global loc_80C9824
// .global loc_80C9BC4
// .global loc_80C9D00
// .global loc_80C9F78
// .global loc_80CA2A8
// .global loc_80CA544
// .global loc_80CA6B8
// .global loc_80CA938
// .global loc_80CAB68
// .global loc_80CAD28
// .global loc_80CAEF0
// .global loc_80CB0DC
// .global loc_80CB284
// .global loc_80CB6F8
// .global loc_80CB900
// .global loc_80CBB44
// .global loc_80CC044
// .global sub_80CC0B2
// .global sub_80CC0E8
// .global loc_80CC4C4
// .global loc_80CC5A8
// .global loc_80CC76C
// .global loc_80CC944
// .global loc_80CCA40
// .global loc_80CCC48
// .global loc_80CCD70
// .global sub_80CCFDC
// .global loc_80CD2EC
// .global loc_80CD4EC
// .global sub_80CD8EC
// .global loc_80CDD44
// .global loc_80CDF84
// .global loc_80CE118
// .global loc_80CE24C
// .global sub_80CE530
// .global loc_80CE70C
// .global loc_80CE81C
// .global loc_80CEB00
// .global sub_80CEE78
// .global sub_80CF0D0
// .global sub_80CF3BE
// .global loc_80CF5C8
// .global loc_80CF7F0
// .global loc_80CF954
// .global sub_80CFBC4
// .global loc_80CFC08
// .global loc_80CFCF8
// .global loc_80CFEC4
// .global loc_80D00A0
// .global loc_80D0268
// .global loc_80D0394
// .global loc_80D0500
// .global loc_80D0610
// .global loc_80D07CC
// .global loc_80D0AA8
// .global loc_80D0D7C
// .global loc_80D0F8C
// .global loc_80D1218
// .global loc_80D1514
// .global loc_80D17A4
// .global loc_80D18D8
// .global loc_80D1A08
// .global loc_80D1B48
// .global loc_80D1C20
// .global sub_80D2034
// .global sub_80D2290
// .global loc_80D2460
// .global sub_80D25D4
// .global loc_80D2A94
// .global loc_80D2BDC
// .global loc_80D2EBC
// .global loc_80D30D0
// .global sub_80D34CC
// .global loc_80D385C
// .global sub_80D39BC
// .global loc_80D4088
// .global loc_80D4440
// .global loc_80D46B8
// .global loc_80D4A28
// .global loc_80D4B68
// .global loc_80D4C84
// .global loc_80D5028
// .global loc_80D5138
// .global loc_80D535C
// .global loc_80D5580
// .global loc_80D5740
// .global loc_80D58B4
// .global loc_80D5ABC
// .global loc_80D5C48
// .global loc_80D5D54
// .global loc_80D5F08
// .global loc_80D622C
// .global loc_80D655C
// .global loc_80D67EC
// .global loc_80D6924
// .global loc_80D6A20
// .global loc_80D6BD4
// .global loc_80D6D80
// .global sub_80D6EE0
// .global loc_80D7068
// .global loc_80D7278
// .global loc_80D7400
// .global loc_80D75FC
// .global loc_80D7ACC
// .global loc_80D7DE4
// .global loc_80D807C
// .global loc_80D825C
// .global loc_80D8444
// .global loc_80D8620
// .global loc_80D879C
// .global loc_80D88E0
// .global loc_80D8C5C
// .global loc_80D8E10
// .global loc_80D8FC4
// .global loc_80D9154
// .global loc_80D9350
// .global loc_80D954C
// .global loc_80D96A4
// .global loc_80D984C
// .global sub_80D99EC
// .global loc_80D9A50
// .global loc_80D9D4C
// .global loc_80DA050
// .global loc_80DA470
// .global loc_80DA5FC
// .global loc_80DA80C
// .global loc_80DAA28
// .global loc_80DACE4
// .global loc_80DAE94
// .global loc_80DB0E4
// .global loc_80DB304
// .global sub_80DB6A4
// .global loc_80DB8CC
// .global loc_80DB994
// .global loc_80DBB40
// .global loc_80DBCEC
// .global sub_80DBEE6
// .global loc_80DC0E8
// .global loc_80DC260
// .global loc_80DC3F8
// .global loc_80DC4FC
// .global loc_80DC5F8
// .global loc_80DC70C
// .global loc_80DCB1C
// .global loc_80DCCD4
// .global loc_80DCE38
// .global loc_80DCEF4
// .global loc_80DD0AC
// .global loc_80DD34C
// .global loc_80DD764
// .global loc_80DD940
// .global loc_80DDA84
// .global loc_80DDC10
// .global loc_80DDDF0
// .global loc_80DE000
// .global loc_80DE13C
// .global loc_80DE404
// .global loc_80DE7F4
// .global loc_80DEA7C
// .global loc_80DEE60
// .global loc_80DF0A4
// .global loc_80DF188
// .global loc_80DF328
// .global loc_80DF4FC
// .global loc_80DF90C
// .global loc_80DFC38
// .global loc_80DFE40
// .global loc_80DFFB8
// .global loc_80E0548
// .global sub_80E05F6
// .global loc_80E0638
// .global sub_80E06F8
// .global loc_80E0710
// .global loc_80E0844
// .global sub_80E08C4
// .global locret_80E08E0
// .global loc_80E08FC
// .global sub_80E09EE
// .global loc_80E0AD4
// .global sub_80E0D98
// .global loc_80E0DF0
// .global sub_80E0F02
// .global loc_80E0FA0
// .global loc_80E10A4
// .global sub_80E11E0
// .global loc_80E11FC
// .global loc_80E1520
// .global sub_80E1620
// .global sub_80E1662
// .global loc_80E17E8
// .global sub_80E192C
// .global loc_80E19BC
// .global sub_80E1A6A
// .global sub_80E1A86
// .global loc_80E1A90
// .global loc_80E1B48
// .global loc_80E1CF8
// .global sub_80E1D7A
// .global loc_80E1D88
// .global loc_80E1E4C
// .global loc_80E2080
// .global loc_80E21D8
// .global loc_80E225C
// .global loc_80E23A4
// .global loc_80E24E4
// .global loc_80E25D0
// .global loc_80E28A8
// .global loc_80E2AE8
// .global loc_80E2B7C
// .global loc_80E2CA4
// .global loc_80E2E34
// .global sub_80E2F56
// .global loc_80E309C
// .global loc_80E3150
// .global loc_80E31D8
// .global loc_80E32B8
// .global loc_80E342C
// .global loc_80E34C0
// .global loc_80E35A4
// .global loc_80E3728
// .global sub_80E37D2
// .global loc_80E37F4
// .global loc_80E39A0
// .global loc_80E3AB8
// .global loc_80E3B70
// .global loc_80E3D68
// .global loc_80E3FD0
// .global loc_80E40EC
// .global loc_80E4188
// .global sub_80E4344
// .global loc_80E440C
// .global loc_80E4634
// .global loc_80E46D8
// .global loc_80E47B4
// .global loc_80E4848
// .global loc_80E4910
// .global loc_80E4A1C
// .global sub_80E4B34
// .global loc_80E4CB8
// .global sub_80E4D8A
// .global sub_80E4DA2
// .global loc_80E4DB0
// .global loc_80E50C4
// .global loc_80E5244
// .global sub_80E5410
// .global sub_80E544C
// .global loc_80E5470
// .global loc_80E55C0
// .global loc_80E5710
// .global loc_80E5944
// .global loc_80E59E8
// .global locret_80E5B60
// .global sub_80E5C2C
// .global loc_80E5D44
// .global loc_80E5E00
// .global loc_80E5ECC
// .global loc_80E5F9C
// .global sub_80E5FBC
// .global loc_80E6088
// .global loc_80E6254
// .global loc_80E6480
// .global loc_80E655C
// .global loc_80E6758
// .global loc_80E680C
// .global loc_80E689C
// .global loc_80E6A90
// .global loc_80E6BDC
// .global loc_80E6E44
// .global loc_80E6F88
// .global loc_80E702C
// .global loc_80E70C8
// .global loc_80E71C4
// .global loc_80E7260
// .global loc_80E74D4
// .global loc_80E7568
// .global loc_80E7624
// .global loc_80E76F8
// .global loc_80E7788
// .global loc_80E78BC
// .global loc_80E795C
// .global loc_80E7ACC
// .global loc_80E7BFC
// .global loc_80E7CCC
// .global loc_80E7DC4
// .global loc_80E7E9C
// .global loc_80E7F38
// .global loc_80E7FDC
// .global loc_80E807C
// .global sub_80E8124
// .global loc_80E8138
// .global loc_80E81D8
// .global loc_80E8268
// .global loc_80E83B8
// .global loc_80E857C
// .global loc_80E8688
// .global loc_80E8794
// .global loc_80E88A0
// .global loc_80E8938
// .global loc_80E8A60
// .global loc_80E8B00
// .global loc_80E8DF0
// .global loc_80E8EE0
// .global loc_80E8FE0
// .global sub_80E90FE
// .global loc_80E9120
// .global loc_80E91E4
// .global loc_80E9310
// .global loc_80E9460
// .global loc_80E9570
// .global loc_80E97F0
// .global dword_80E98C0
// .global sub_80E996E
// .global loc_80E9994
// .global loc_80E9AF0
// .global sub_80E9BDC
// .global loc_80E9C88
// .global loc_80E9DF0
// .global loc_80EA010
// .global loc_80EA14C
// .global loc_80EA258
// .global loc_80EA364
// .global sub_80EA438
// .global off_80EA814
// .global loc_80EA8D8
// .global off_80EAC60
// .global loc_80EAD9C
// .global loc_80EB04C
// .global loc_80EB234
// .global loc_80EE90C
// .global loc_80EEA3C
// .global loc_80EED56
// .global off_80F24D8
// .global off_80F253C
// .global sub_80FF668
// .global off_81090D0
// .global off_8109150
// .global sub_81096FA


/* Undeclared Symbols */
.equ timer_2000000, 0x2000000
.equ dword_2000060, 0x2000060
.equ unk_2000260, 0x2000260
.equ byte_20004E0, 0x20004E0
.equ unk_2000670, 0x2000670
.equ byte_2000780, 0x2000780
.equ byte_2000781, 0x2000781
.equ byte_2000782, 0x2000782
.equ byte_2000783, 0x2000783
.equ dword_2000784, 0x2000784
.equ byte_20008A0, 0x20008A0
.equ dword_2000B30, 0x2000B30
.equ word_2000FA0, 0x2000FA0
.equ byte_2001010, 0x2001010
.equ byte_2001011, 0x2001011
.equ byte_2001012, 0x2001012
.equ byte_2001013, 0x2001013
.equ dword_2001014, 0x2001014
.equ dword_2001060, 0x2001060
.equ dword_2001064, 0x2001064
.equ map_activeNPCs, 0x20010E0
.equ dword_2001120, 0x2001120
.equ dword_20013F0, 0x20013F0
.equ byte_2001600, 0x2001600
.equ dword_20018B8, 0x20018B8
.equ unk_20018C0, 0x20018C0
.equ dword_20018E8, 0x20018E8
.equ sGameState, 0x2001B80
.equ sReqBBS_GUI, 0x2005780
.equ sReqBBS_GUI, 0x2005780
.equ sReqBBS_GUI, 0x2005780
.equ sReqBBS_GUI, 0x2005780
.equ sReqBBS_GUI, 0x2005780
.equ sReqBBS_GUI, 0x2005780
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
.equ toolkit, 0x20093B0
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
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sSubmenu, 0x2009A30
.equ dword_2009AB0, 0x2009AB0
.equ dword_2009AB4, 0x2009AB4
.equ dword_2009CC0, 0x2009CC0
.equ sChatbox, 0x2009CD0
.equ dword_2009F34, 0x2009F34
.equ byte_2009F40, 0x2009F40
.equ byte_2009F41, 0x2009F41
.equ dword_2009F44, 0x2009F44
.equ dword_2009F48, 0x2009F48
.equ dword_2009F5C, 0x2009F5C
.equ pCoords, 0x2009F60
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
.equ iCurrFrame, 0x200A210
.equ byte_200A220, 0x200A220
.equ sJoystick, 0x200A270
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
.equ i_joGameSubsysSel, 0x200A480
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
.equ s_2034880, 0x2034880
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
.equ sBtlPlayer, 0x203A9B0
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
.equ copyTiles_iram, 0x3005E80
.equ sub_3005EBA, 0x3005EBA
.equ sub_3005EF0, 0x3005EF0
.equ loc_3006028, 0x3006028
.equ loc_30061E8, 0x30061E8
.equ loc_3006440, 0x3006440
.equ sub_3006730, 0x3006730
.equ loc_3006792, 0x3006792
.equ loc_3007550, 0x3007550
.equ loc_300777C, 0x300777C
.equ loc_30078C8, 0x30078C8
.equ sub_30078E0, 0x30078E0
.equ sub_3007958, 0x3007958
.equ sub_30079A4, 0x30079A4
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
.equ comp_86DD59C, 0x86DD59C
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
