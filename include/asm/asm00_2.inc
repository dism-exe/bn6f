	.ifndef INC_ASM_ASM00_2
	.equ INC_ASM_ASM00_2, 0

/* Public Symbols */
	.global sub_800ED80
	.global sub_800ED90
	.global enemy_getStruct1
	.global enemy_getStruct2
	.global sub_800F26C
	.global sub_800F29C
	.global sub_800F2AA
	.global object_setAnimation
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
	.global sub_800FAE0
	.global sub_800FAF6
	.global sub_800FB54
	.global sub_800FC30
	.global sub_800FC7C
	.global sub_800FC9E
	.global sub_800FCFC
	.global object_setDefaultCounterTime
	.global sub_800FDC0
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
	.global sub_80102AC
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
	.global sub_8010488
	.global sub_80104E0
	.global sub_801050C
	.global sub_801055E
	.global sub_801056A
	.global sub_80105F2
	.global sub_8010660
	.global sub_80106C0
	.global sub_8010740
	.global sub_80107C0
	.global sub_80107D4
	.global sub_8010820
	.global loc_801083E
	.global sub_801086C
	.global sub_80108FC
	.global sub_80109A4
	.global sub_8010C76
	.global sub_8010CE0
	.global sub_8010D20
	.global sub_8010DD0
	.global sub_8010DF6
	.global off_8010F08
	.global sub_8011020
	.global sub_8011044
	.global sub_8011268
	.global sub_8011384
	.global sub_8011420
	.global sub_8011450
	.global sub_8011504
	.global loc_8011508
	.global sub_801155A
	.global sub_801156A
	.global object_applyDamage
	.global sub_801164C
	.global object_setAttack0
	.global object_setAttack1
	.global object_setAttack2
	.global object_setAttack3
	.global object_setAttack4
	.global object_setAttack5
	.global sub_80116AE
	.global sub_80116D8
	.global object_exitAttackState
	.global loc_801171C
	.global sub_8011764
	.global sub_801177A
	.global sub_8011790
	.global sub_80117A4
	.global sub_801265A
	.global sub_80126E4
	.global sub_8012792
	.global sub_8012956
	.global sub_801299C
	.global sub_8012DFC
	.global sub_8012E74
	.global sub_8012EA8
	.global loc_8013308
	.global sub_80133EC
	.global sub_8013422
	.global initStruct_8013438 // (void *struc) -> void
	.global sub_80134C8
	.global sub_8013554
	.global sub_80135E8
	.global sub_8013682 // (int idx) -> void*
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
	.global sub_80137B6 // (int a1, int a2) -> u8
	.global sub_80137E6
	.global sub_80137FE
	.global sub_8013816
	.global sub_801382E
	.global sub_8013846
	.global sub_8013854
	.global sub_8013864
	.global sub_8013874
	.global sub_8013884
	.global sub_801393A
	.global sub_80139C4
	.global init_8013B4E // (bool a1, int a2) -> void
	.global init_8013B64 // (int idx, int a2) -> void
	.global sub_8013CC4
	.global sub_8013D5E
	.global sub_8013DA0
	.global sub_8013FAE
	.global sub_8013FD0
	.global navicust_8014018 // (int idx_8014034) -> bool
	.global sub_801401E
	.global sub_8014040
	.global sub_8014150
	.global sub_8014178
	.global sub_80141AC
	.global sub_8014216
	.global sub_80142C2
	.global sub_80143A6
	.global loc_80143B4
	.global sub_801443C
	.global sub_8014446
	.global sub_80144C0
	.global sub_80147E4
	.global sub_801482C
	.global sub_801483C
	.global sub_8015940
	.global sub_8015952
	.global sub_8015A16
	.global sub_8015A38
	.global sub_8015AA6
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
	.global sub_8016380
	.global sub_80165B8
	.global sub_80165C2
	.global sub_80166AE
	.global sub_8016934
	.global sub_80169BE
	.global sub_8016B02
	.global sub_8016B36
	.global sub_8016B72
	.global sub_8016C4E
	.global object_genericDestroy
	.global sub_8016C9C
	.global sub_8016CE8
	.global sub_8016E64
	.global sub_8016EC4
	.global sub_8016F56
	.global sub_80170C4
	.global sub_80171A6
	.global sub_80172F0
	.global sub_80173F4
	.global sub_80174FE
	.global sub_80175B8
	.global sub_8017688
	.global sub_8017768
	.global sub_8017888
	.global sub_80178B6
	.global sub_8017CC0
	.global sub_8017E26
	.global sub_80182B4
	.global sub_8018810
	.global sub_8018842
	.global sub_801986C
	.global object_createCollisionData
	.global sub_80198CE
	.global byte_80198F4
	.global byte_80199B6
	.global byte_80199F5
	.global off_8019B78
	.global off_8019BE0
	.global byte_8019C34
	.global sub_8019F86
	.global sub_8019F8C
	.global object_setupCollisionData
	.global object_removeCollisionData
	.global object_presentCollisionData
	.global object_updateCollisionPanels
	.global object_setCollisionPanelsToCurrent
	.global object_clearCollisionRegion // () -> void
	.global object_setCollisionRegion
	.global sub_801A082
	.global object_spawnCollisionEffect
	.global sub_801A100
	.global object_setCollisionHitEffect
	.global sub_801A146
	.global object_setFlag // (int a1) -> void
	.global object_clearFlag // (int bitfield) -> void
	.global object_getFlag // () -> int
	.global object_setFlag2
	.global object_clearFlag2
	.global object_getFlag2
	.global object_setCollisionStatusEffect1
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
	.global sub_801A9B8
	.global sub_801AA48
	.global sub_801AAC0
	.global sub_801AB40
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
	.global sub_801B750
	.global sub_801B878
	.global object_reservePanel
	.global object_removePanelReserve
	.global object_updateSprite
	.global object_updateSpriteTimestop
	.global sub_801BC24
	.global sub_801BC64
	.global object_updateSpritePaused
	.global sub_801BCD0
	.global sub_801BCF4
	.global sub_801BD3C
	.global sub_801BDDE
	.global sub_801BE04
	.global nullsub_10
	.global sub_801BE2A
	.global sub_801BE70
	.global sub_801BEB8
	.global sub_801BEC2
	.global sub_801BECC
	.global sub_801BED6
	.global sub_801BEE0
	.global sub_801BF64
	.global sub_801DA24
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
	.global sub_801DFB8
	.global sub_801DFE4
	.global sub_801E0A0
	.global sub_801E0C8
	.global sub_801E0D0
	.global sub_801E15C
	.global sub_801E228
	.global sub_801E2BA
	.global sub_801E398
	.global sub_801E408
	.global sub_801E474
	.global sub_801E574
	.global sub_801E5F8
	.global sub_801E658
	.global sub_801E660
	.global sub_801E71C
	.global sub_801E724
	.global sub_801E754
	.global sub_801E780
	.global loc_801E792
	.global sub_801E914
	.global sub_801EB18
	.global sub_801EC44


/* External Symbols */
	.include "asm/asm38.inc"
// .global sub_3007550
// .global sub_300777C

	.include "asm/start.inc"
// .global GameEntryPoint

	.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global musicGameState_8000784 // () -> void
// .global ZeroFillByHalfword
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void
// .global loc_8000AC4
// .global loc_8000AC8
// .global decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
// .global sub_8000C00
// .global sub_8000C5C
// .global sub_8000D84
// .global getPETNaviSelect // () -> u8
// .global calcAngle_800117C
// .global sub_80011A0
// .global sub_800139A
// .global loc_8001440
// .global GetRNG2 // () -> int
// .global GetPositiveSignedRNG2
// .global GetPositiveSignedRNG1
// .global sub_800187C
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_80018D0
// .global sub_80018E0

	.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_update
// .global sprite_load // (int a1, int a2, int a3) ->
// .global sprite_decompress
// .global sub_8002C7A
// .global sub_8002CCE
// .global sprite_setPalette // (int pallete) -> void
// .global sprite_getPalette
// .global sprite_setAnimation // (u8 a1) -> void
// .global sprite_forceWhitePalette

	.include "asm/asm00_1.inc"
// .global sprite_clearFinalPalette
// .global sprite_hasShadow
// .global sprite_setColorShader
// .global sub_8002EE8
// .global sprite_setMosaicSize
// .global sub_8002F2C
// .global sprite_setFlip
// .global sprite_noShadow // () -> void
// .global sub_8002FB2
// .global object_freeMemory
// .global sub_800362C
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global engine_isScreeneffectAnimating // () -> zf
// .global sub_80077B4
// .global battle_isPaused
// .global battle_isTimeStop
// .global sub_800A104
// .global sub_800A11C
// .global battle_isBattleOver
// .global battle_setFlags
// .global battle_clearFlags
// .global battle_getFlags
// .global sub_800A704
// .global sub_800A70C
// .global sub_800A772
// .global sub_800A7E2
// .global sub_800A8F8
// .global sub_800A97A
// .global sub_800A998
// .global sub_800A9E2
// .global battle_networkInvert
// .global sub_800AA06
// .global sub_800AA1A
// .global sub_800AA40
// .global sub_800AB2E
// .global sub_800AB46
// .global sub_800AE44
// .global sub_800B79A
// .global sub_800B8EE

	.include "asm/object.inc"
// .global sub_800BEDA
// .global sub_800BF16
// .global loc_800BF30
// .global object_getPanelParameters
// .global object_getPanelDataOffset
// .global object_crackPanelDup1
// .global object_breakPanel_dup2
// .global object_setPanelType
// .global object_isValidPanel
// .global object_checkPanelParameters
// .global object_getPanelsExceptCurrentFiltered
// .global object_getPanelsFiltered
// .global object_getPanelsInRowFiltered
// .global sub_800D120
// .global sub_800D15A
// .global sub_800E258
// .global object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
// .global object_setCoordinatesFromPanels // () -> void
// .global object_setPanelsFromCoordinates
// .global object_getEnemyDirection
// .global object_getAllianceDirection
// .global object_getFrontDirection // () -> int
// .global object_getFlipDirection // (int a1, int a2) -> int
// .global object_subtractHP
// .global object_addHP
// .global sub_800E2FC
// .global sub_800E3BE
// .global object_calculateFinalDamage1
// .global object_calculateFinalDamage2
// .global object_getFlip // () -> int
// .global sub_800E45E
// .global sub_800E468
// .global sub_800E5AC
// .global sub_800E618
// .global sub_800E6E8
// .global sub_800E730
// .global sub_800E994
// .global object_setCounterTime
// .global sub_800E9FA
// .global object_setInvulnerableTime
// .global sub_800EB08
// .global sub_800EB26
// .global object_spawnHiteffect
// .global object_getEnemyByNameRange
// .global sub_800EC56

	.include "data/dat00.inc"
// .global off_801ECB4
// .global word_801ED6C
// .global word_801EDB4
// .global byte_801EDFC
// .global word_801EE14
// .global word_801EE58
// .global byte_801EE78
// .global byte_801EE98
// .global byte_801EF10
// .global off_801EF30
// .global off_801EF4C
// .global off_801EF68
// .global pt_801EF84
// .global pt_801EFD4
// .global word_801F374
// .global byte_801F376
// .global word_801F554
// .global byte_801F556
// .global off_801FD64
// .global off_801FD90
// .global byte_801FDC0

	.include "data/dat01.inc"
// .global byte_8020354
// .global byte_80203EA
// .global byte_8020404
// .global byte_80209CC
// .global off_80209EC
// .global byte_8020B2C
// .global byte_8020B8C
// .global byte_8020E54
// .global byte_8020FE0
// .global byte_80210DD
// .global byte_8021220
// .global byte_80212BB
// .global byte_80212D4
// .global byte_8021300
// .global byte_8021369
// .global byte_802136A
// .global byte_802136B
// .global byte_802136C

	.include "asm/asm02.inc"
// .global getChip_8021DA8 // (int chip_idx) -> ChipData*
// .global sub_8021D14

	.include "asm/asm03_0.inc"
// .global sub_8027D10
// .global off_802CCB4
// .global off_802CD5C
// .global sub_802CDD0
// .global sub_802CE60
// .global sub_802CE78
// .global sub_802CEF4
// .global sub_802CFF8
// .global sub_802D1B4
// .global sub_802D1BE
// .global sub_802D234
// .global get_802D246 // () -> int
// .global sub_802D26A
// .global sub_802D310
// .global sub_802D644
// .global sub_802D65E
// .global sub_802D714
// .global sub_802D926
// .global sub_802DCDE
// .global sub_802DCEC
// .global sub_802DD2A
// .global sub_802DFC8
// .global sub_802E032
// .global sub_802E066
// .global sub_802E070
// .global sub_802E09A
// .global sub_802E1D8
// .global sub_802E440
// .global sub_802E44A
// .global sub_802E454
// .global sub_802E4B8
// .global sub_802E830
// .global sub_802EF5C
// .global dword_802F0A8
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
// .global sub_802FE48
// .global sub_802FE6A
// .global sub_802FE7A
// .global sub_80302A8
// .global sub_80302B6

	.include "asm/asm03_1.inc"
// .global sub_803D0C8
// .global sub_803F524

	.include "asm/chatbox.inc"
// .global loc_8040A04

	.include "asm/asm03_2.inc"
// .global render_graphicalText_8045F8C

	.include "data/dat08.inc"
// .global byte_8061416
// .global byte_8061622

	.include "data/dat28.inc"
// .global byte_80A0C0E

	.include "asm/asm31.inc"
// .global sub_80BC844
// .global sub_80C41D8
// .global sub_80C4204
// .global sub_80C44A8
// .global sub_80C44C8
// .global sub_80C44D2
// .global sub_80C468C
// .global sub_80C46B0
// .global sub_80C46B6
// .global sub_80C46C0
// .global sub_80C4C12
// .global sub_80C4C3A
// .global sub_80C4FFE
// .global sub_80C53A6
// .global sub_80C7F20
// .global sub_80CC0B2
// .global sub_80CFBC4
// .global sub_80D99EC
// .global SpawnT4BattleObjectWithId0
// .global sub_80E08C4
// .global sub_80E0D98
// .global sub_80E0F02
// .global sub_80E11E0
// .global sub_80E1620
// .global sub_80E1662
// .global sub_80E192C
// .global sub_80E1A6A
// .global sub_80E1A86
// .global sub_80E1D7A
// .global sub_80E4D8A
// .global sub_80E4DA2
// .global sub_80E5410
// .global sub_80E544C
// .global sub_80E8124
// .global sub_80E90FE
// .global byte_80E98C0
// .global sub_80E996E
// .global sub_80EA438
// .global off_80EA814
// .global off_80EA8D8
// .global off_80EA9A0
// .global off_80EAA04
// .global off_80EAA68
// .global off_80EAACC
// .global off_80EAB30
// .global off_80EAB94
// .global off_80EABF8
// .global JumpTable80EAC60
// .global sub_80EAD9C
// .global sub_80EB04C
// .global sub_80EB234
// .global sub_80EE90C
// .global sub_80EEA3C
// .global sub_80EED56
// .global off_80F24D8
// .global off_80F253C
// .global off_80F2604
// .global off_80F2668
// .global off_80F26CC
// .global off_80F2730
// .global off_80F2794
// .global off_80F27F8
// .global off_80F285C
// .global sub_80FF668
// .global off_81090D0
// .global off_8109150
// .global off_8109250
// .global off_81092D0
// .global off_8109350
// .global off_81093D0
// .global off_8109450
// .global off_81094D0
// .global off_8109550
// .global sub_81096FA

	.include "asm/asm37_0.inc"
// .global sub_813BF1C

	.include "data/dat38_60.inc"
// .global byte_8610881
// .global byte_8650866
// .global byte_8660444
// .global dword_86A5D60
// .global dword_86B7AE0
// .global dword_86B7B20
// .global dword_86B7B60
// .global dword_86B7BA0
// .global byte_86B7BC0
// .global dword_86B7BE0
// .global dword_86B7C20
// .global dword_86B7C60
// .global dword_86B7CA0
// .global dword_86B7CE0
// .global dword_86B7D20
// .global dword_86B7D60
// .global dword_86BA0A0
// .global dword_86BA120
// .global byte_86BA140

	.include "data/dat38_85.inc"
// .global dword_86E0AB8
// .global dword_86E0AF8
// .global dword_86E0B38
// .global dword_86E0B78
// .global dword_86E0BB8
// .global dword_86E0BF8
// .global dword_86E0C38
// .global dword_86E0C78
// .global dword_86E0CB8
// .global dword_86E0CF8
// .global dword_86E0D38
// .global dword_86E0D78
// .global dword_86E0DB8
// .global dword_86E0DF8
// .global dword_86E0E38
// .global dword_86E0E78
// .global dword_86E0EB8
// .global dword_86E0EF8
// .global dword_86E0F38
// .global dword_86E0F78
// .global dword_86E0FB8
// .global dword_86E0FF8
// .global dword_86E1038
// .global dword_86E1078
// .global dword_86E10B8
// .global dword_86E10F8
// .global dword_86E1138
// .global dword_86E1178
// .global dword_86E11B8
// .global dword_86E11F8
// .global dword_86E1C78
// .global byte_86E1CD8
// .global dword_86E489C
// .global dword_86E4C1C
// .global dword_86E611C
// .global dword_86E958C
// .global dword_86E960C
// .global dword_86E966C
// .global off_86E968C
// .global dword_86E97CC
// .global dword_86E98CC
// .global dword_86E994C
// .global dword_86E9A0C
// .global dword_86E9A2C
// .global dword_86E9F2C
// .global dword_86EA42C
// .global dword_86EA92C
// .global byte_86F0300
// .global byte_86F0374
// .global byte_86F2900
// .global byte_86F2D00
// .global byte_86F2D80
// .global dword_86F2E00
// .global dword_86F2E14
// .global dword_86F2E20
// .global dword_86F2E34
// .global dword_86F2E40
// .global dword_86F2E54

	.include "data/dat38_86.inc"
// .global byte_8721C58
// .global dword_872CE94
// .global byte_872D014
// .global byte_872D094
// .global dword_872D694
// .global dword_872D814
// .global dword_872D914
// .global dword_872D994
// .global dword_872DB14
// .global byte_872DC94
// .global dword_872DE14
// .global byte_872DF94
// .global dword_872E094
// .global dword_872E194
// .global dword_872E294
// .global dword_872E394
// .global dword_872E494
// .global dword_872E594
// .global dword_872E694
// .global dword_872E794
// .global dword_872E894
// .global dword_872E994
// .global dword_872EF14
// .global byte_872F014
// .global dword_872F114


/* Undeclared Symbols */
// .equ timer_2000000, 0x2000000
// .equ unk_20018C0, 0x20018C0
// .equ unk_200F3C4, 0x200F3C4
// .equ unk_2020000, 0x2020000
// .equ byte_20349C0, 0x20349C0
// .equ unk_2034A60, 0x2034A60
// .equ unk_2034F60, 0x2034F60
// .equ byte_2035280, 0x2035280
// .equ byte_2035281, 0x2035281
// .equ byte_2035282, 0x2035282
// .equ byte_203528B, 0x203528B
// .equ byte_203528C, 0x203528C
// .equ byte_2035292, 0x2035292
// .equ byte_2035293, 0x2035293
// .equ byte_2035295, 0x2035295
// .equ byte_2035296, 0x2035296
// .equ byte_2035297, 0x2035297
// .equ byte_2035298, 0x2035298
// .equ byte_2035299, 0x2035299
// .equ byte_203529A, 0x203529A
// .equ byte_203529B, 0x203529B
// .equ byte_203529C, 0x203529C
// .equ byte_203529E, 0x203529E
// .equ byte_203529F, 0x203529F
// .equ word_20352A0, 0x20352A0
// .equ word_20352A2, 0x20352A2
// .equ word_20352A4, 0x20352A4
// .equ word_20352A6, 0x20352A6
// .equ word_20352A8, 0x20352A8
// .equ word_20352AA, 0x20352AA
// .equ word_20352AC, 0x20352AC
// .equ word_20352AE, 0x20352AE
// .equ word_20352B0, 0x20352B0
// .equ word_20352B2, 0x20352B2
// .equ word_20352B4, 0x20352B4
// .equ word_20352B8, 0x20352B8
// .equ dword_20352C0, 0x20352C0
// .equ dword_20352C4, 0x20352C4
// .equ dword_20352C8, 0x20352C8
// .equ dword_20352E0, 0x20352E0
// .equ dword_20352E0, 0x20352E0
// .equ dword_20352E0, 0x20352E0
// .equ dword_20352E0, 0x20352E0
// .equ dword_20352E4, 0x20352E4
// .equ dword_2035310, 0x2035310
// .equ dword_20367E0, 0x20367E0
// .equ dword_20367F0, 0x20367F0
// .equ byte_20367F4, 0x20367F4
// .equ dword_2036820, 0x2036820
// .equ byte_2036840, 0x2036840
// .equ byte_2036841, 0x2036841
// .equ word_2036842, 0x2036842
// .equ byte_2036846, 0x2036846
// .equ byte_2036847, 0x2036847
// .equ byte_2036848, 0x2036848
// .equ word_203684A, 0x203684A
// .equ word_203684C, 0x203684C
// .equ unk_2036850, 0x2036850
// .equ word_2036852, 0x2036852
// .equ word_2036852, 0x2036852
// .equ byte_2036857, 0x2036857
// .equ byte_2036858, 0x2036858
// .equ byte_2036859, 0x2036859
// .equ byte_203685A, 0x203685A
// .equ byte_203685B, 0x203685B
// .equ byte_203685C, 0x203685C
// .equ unk_20384F0, 0x20384F0
// .equ dword_2038528, 0x2038528
// .equ unk_203A380, 0x203A380
// .equ unk_203A980, 0x203A980
// .equ unk_203A990, 0x203A990
// .equ byte_203C4E0, 0x203C4E0
// .equ dword_203CA48, 0x203CA48
// .equ dword_203CA4C, 0x203CA4C
// .equ byte_203CB10, 0x203CB10
// .equ byte_203CCE0, 0x203CCE0
// .equ dword_203CDF0, 0x203CDF0
// .equ byte_203CE00, 0x203CE00
// .equ byte_203CED0, 0x203CED0
// .equ byte_203CED1, 0x203CED1
// .equ byte_203CED3, 0x203CED3
// .equ dword_203CED4, 0x203CED4
// .equ byte_203CED8, 0x203CED8
// .equ dword_203CFA0, 0x203CFA0
// .equ byte_203EB00, 0x203EB00
// .equ byte_203EB50, 0x203EB50
// .equ word_203EB52, 0x203EB52
// .equ byte_203EB54, 0x203EB54
// .equ byte_203EB55, 0x203EB55
// .equ word_203EB56, 0x203EB56
// .equ byte_203EB58, 0x203EB58
// .equ byte_203EB59, 0x203EB59
// .equ byte_203EB59, 0x203EB59
// .equ byte_203EB60, 0x203EB60
// .equ byte_203EBA0, 0x203EBA0
// .equ byte_203EDA0, 0x203EDA0
// .equ byte_203EFA0, 0x203EFA0
// .equ byte_203F6A0, 0x203F6A0
// .equ dword_203F7E0, 0x203F7E0
// .equ byte_3001670, 0x3001670
// .equ word_3001684, 0x3001684
// .equ byte_30016B0, 0x30016B0
// .equ byte_30016D0, 0x30016D0
// .equ byte_30016F0, 0x30016F0
// .equ unk_3001A80, 0x3001A80
// .equ unk_3001AC0, 0x3001AC0
// .equ unk_3001AE0, 0x3001AE0
// .equ byte_3001B00, 0x3001B00
	.equ LCDControl, 0x4000000
	.equ IWRAMRoutinesROMLocation, 0x81D6000
	.equ IWRAMRoutinesROMLocation, 0x81D6000
	.equ loc_8870888, 0x8870888
	.equ loc_8880886, 0x8880886

	.endif // INC_ASM_ASM00_2
