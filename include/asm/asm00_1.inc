.ifndef INC_ASM_ASM00_1
.equ INC_ASM_ASM00_1, 0

/* Public Symbols */
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
.global sub_8002F90 // () -> void
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
.global sub_8003534
.global sub_800355C
.global sub_8003566
.global sub_8003570
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
.global sub_8003A90
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
.global npc_800461E
.global sub_800467C
.global sub_8004702
.global sub_80047E0
.global sub_8004822
.global sub_80048B2
.global sub_80048D2
.global sub_8004934
.global sub_8004D48
.global sub_8004DF0
.global cb_80050EC // () -> void
.global sub_8005524
.global gameState_8005BC8 // (BattleSettings *r0Bt, bool r1) -> void
.global sub_8005C04
.global subsystem_launchBBS
.global subsystem_launchReqBBS
.global subsystem_launchShop
.global subsystem_launchChipTrader
.global sub_8005D88
.global sub_8005EA2
.global subsystem_launchMail
.global sub_8005F00
.global sub_8005F14
.global sub_8005F32
.global sub_8005F40
.global sub_8005F6C
.global sub_8005F84
.global engine_setScreeneffect // (int a1, int a2) -> void
.global loc_8006274
.global sub_80062C8
.global sub_80062EC
.global engine_isScreeneffectAnimating // () -> zf
.global loc_80062FC
.global subsystem_triggerTransition_800630A
.global byte_80065E0
.global byte_8006660
.global byte_80066E0
.global sub_80068E0
.global sub_80068EC
.global sub_8006910
.global sub_8006920
.global sub_8006990
.global sub_8006A5C
.global CpuSet_toolKit // () -> void
.global sub_8006C22
.global sub_8006C6C
.global sub_8006DEC
.global sub_8006DF6
.global save_memSetFlags_8006E0E // (u8 *mem, int size) -> void
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
.global sub_8007800
.global off_8008000
.global sub_8009FF8
.global battle_isPaused
.global battle_isTimeStop
.global sub_800A0A4
.global sub_800A0D6
.global sub_800A104
.global sub_800A11C
.global sub_800A152
.global battle_isBattleOver
.global battle_setFlags
.global battle_clearFlags
.global battle_getFlags
.global sub_800A704
.global sub_800A70C
.global getBattleSettingsFromList0 // (int battleSettingsIdx) -> BattleSettings*
.global getBattleSettingsFromList1 // (int battleSettingsIdx) -> BattleSettings*
.global isSameSubsystem_800A732 // () -> zf
.global sub_800A772
.global sub_800A7D0 // () -> (zf, int)
.global sub_800A7E2
.global sub_800A832
.global sub_800A856
.global sub_800A8F8
.global sub_800A908
.global sub_800A97A
.global sub_800A998
.global sub_800A9D6
.global sub_800A9E2
.global battle_networkInvert
.global sub_800AA06
.global sub_800AA1A
.global sub_800AA40
.global sub_800AA92
.global sub_800AABC
.global sub_800AAE8
.global sub_800AB2E
.global sub_800AB3A
.global sub_800AB46
.global sub_800ABC6
.global sub_800AE44
.global sub_800AE54
.global sub_800AE90
.global sub_800AF34
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
.global sub_800B79A
.global sub_800B884
.global sub_800B892
.global sub_800B89C
.global sub_800B8AC
.global sub_800B8D8
.global sub_800B8EE
.global sub_800B916
.global sub_800B94C
.global sub_800B97E
.global sub_800B9B0
.global sub_800BA8A
.global sub_800BBA8
.global sub_800BC88
.global sub_800BCC0


/* External Symbols */
.include "asm/asm38.inc"
// .global sub_3006028
// .global sub_30061E8
// .global loc_3006440

.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sound_bgmusic_play // (int a1) -> void
// .global sub_800065A
// .global sound_8000672
// .global musicGameState_8000784 // () -> void
// .global ZeroFillByByte // (void *mem, int size) -> void
// .global ZeroFillByHalfword
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global ZeroFillByEightWords // (int a1, int a2) -> void
// .global CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void
// .global ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
// .global WordFill
// .global decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
// .global sub_8000D12
// .global sub_8000D84
// .global sub_8000FAC
// .global updatePlayerGameState_800107A // () -> void
// .global getPETNaviSelect // () -> u8
// .global sub_8001172
// .global sub_800139A
// .global sub_80013A2
// .global copyWords_80014EC // (void *src, void *dest, int size) -> void
// .global change_20013F0_800151C // () -> int
// .global sub_8001532
// .global rng_800154C // () -> void
// .global rng_8001562
// .global sub_8001708
// .global sub_8001778
// .global sub_8001788
// .global sub_80017A0
// .global sub_80017AA
// .global sub_80017E0
// .global sub_8001820
// .global sub_800182E
// .global sub_8001850
// .global sub_800187C
// .global sub_8001974
// .global sub_8001AFC
// .global sub_8001B6C
// .global sub_8002368
// .global sub_8002378
// .global sub_800239A
// .global sub_80023A8
// .global sub_80024A2
// .global sub_80024AE
// .global sub_8002668

.include "asm/sprite.inc"
// .global sub_80027B4
// .global sub_80027C4
// .global sub_80027D4
// .global sub_80027E4
// .global sub_800286C
// .global sub_80028C0
// .global sub_80028D4
// .global sub_80029A8
// .global sprite_makeUnscalable

.include "asm/object.inc"
// .global sub_800BF5C
// .global sub_800BF66
// .global byte_800BF74
// .global off_800BF78
// .global off_800BF7C
// .global sub_800BF88
// .global sub_800BFC4
// .global sub_800C5E0
// .global sub_800C8F0
// .global object_getPanelParameters
// .global sub_800C90A
// .global sub_800E276 // (int a1, int a2) -> (int n1, int n2)
// .global sub_800EC80
// .global sub_800ED00
// .global object_createAIData

.include "asm/asm00_2.inc"
// .global sub_800ED80
// .global sub_800F214
// .global sub_800F23C
// .global sub_800FAE0
// .global sub_800FDC0
// .global sub_8010018
// .global sub_80102AC
// .global sub_80103BC
// .global sub_80103EC
// .global sub_801055E
// .global sub_80109A4
// .global sub_8010D20
// .global sub_8012DFC
// .global sub_80133EC
// .global sub_8013422
// .global initStruct_8013438 // (void *struc) -> void
// .global sub_80134C8
// .global sub_8013554
// .global sub_80135E8
// .global sub_8013682 // (int idx) -> void*
// .global sub_80136CC
// .global sub_8013754
// .global sub_8013774
// .global navicust_801379E // (int a1, int a2, int a3) -> void
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global sub_80137E6
// .global sub_8013854
// .global sub_8013884
// .global sub_801401E
// .global sub_8014040
// .global sub_8014178
// .global sub_80147E4
// .global sub_801482C
// .global sub_801483C
// .global sub_8015A16
// .global sub_8015A38
// .global sub_8015B54
// .global sub_80182B4
// .global sub_801986C
// .global sub_801BE70
// .global sub_801BECC
// .global sub_801BED6
// .global sub_801BEE0
// .global sub_801BF64
// .global sub_801DA24
// .global sub_801DA48
// .global sub_801DACC
// .global sub_801DF0C
// .global sub_801DFA2
// .global sub_801DFB8
// .global sub_801DFE4
// .global sub_801E0A0
// .global sub_801E0C8
// .global sub_801E15C
// .global sub_801E228
// .global sub_801E398
// .global sub_801E5F8
// .global sub_801E724
// .global sub_801E754
// .global loc_801E792

.include "asm/asm01.inc"
// .global sub_801FE00
// .global sub_801FE24
// .global sub_801FE5E
// .global sub_801FE64
// .global sub_801FE6C
// .global sub_801FEE8
// .global sub_801FEEE
// .global sub_80200A4
// .global sub_8020134
// .global sub_8020140
// .global sub_802015E

.include "data/dat01.inc"
// .global byte_802137C
// .global byte_80213AC

.include "asm/asm02.inc"
// .global getChip_8021DA8 // (int chip_idx) -> ChipData*
// .global sub_8021AB4
// .global sub_8021C68
// .global chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
// .global sub_8021D08
// .global sub_8021D36

.include "data/ChipDataArr.inc"
// .global byte_802412C

.include "asm/asm03_0.inc"
// .global sub_8026840
// .global sub_8026A28
// .global sub_802A866
// .global sub_802A87C
// .global sub_802BD60
// .global sub_802C34E
// .global sub_802C8FA
// .global sub_802C9B8
// .global sub_802C9EA
// .global sub_802CA82
// .global sub_802CB38
// .global sub_802CB78
// .global sub_802CDFE
// .global sub_802CE54
// .global sub_802CE78
// .global sub_802CEC8
// .global sub_802D08C
// .global sub_802D234
// .global get_802D246 // () -> int
// .global sub_802D254 // () -> int
// .global sub_802D26A
// .global battleSettings_802D2B2 // () -> BattleSettings*
// .global sub_802D638
// .global sub_802D6A0
// .global sub_802D6C4
// .global sub_802DE5C
// .global sub_802DFFC
// .global sub_802E014
// .global sub_802E032
// .global sub_802E070
// .global sub_802E09A
// .global sub_802E112
// .global sub_802E156
// .global sub_802E240
// .global sub_802E45E
// .global sub_802F0C4
// .global sub_802F0D8
// .global sub_802F0F4
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global SetEventFlag
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
// .global sub_802F2C8
// .global sub_802FDB0
// .global loc_802FDB4
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
// .global sub_802FF2C
// .global sub_802FF4C
// .global sub_802FFF4
// .global sub_80301B2
// .global sub_80303E8
// .global sub_8030580
// .global sub_8030A00
// .global sub_8030A30
// .global sub_8031A7A

.include "asm/asm03_1.inc"
// .global sub_8033948
// .global sub_80339CC
// .global sub_80341AA
// .global sub_8034B4C
// .global sub_8034BB8
// .global sub_803532C
// .global sub_80355A8
// .global sub_80355EC
// .global sub_80356EC
// .global sub_8035738
// .global init_s_02011C50_8036E90
// .global sub_8036EFE
// .global sub_8036F24
// .global s_2011C50_ptr_1C_isNull // () -> zf
// .global sub_80385F0
// .global sub_8038A9C
// .global sub_803C3E0
// .global sub_803C59C
// .global sub_803C754
// .global sub_803CD74
// .global sub_803CEB8
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
// .global sub_803F530
// .global sub_803F6B0
// .global sub_803FB28

.include "asm/chatbox.inc"
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global chatbox_8040818
// .global chatbox_8045F2C // (int a1) ->
// .global chatbox_8045F3C

.include "asm/asm03_2.inc"
// .global sub_8046664 // () -> void
// .global sub_8046CC8
// .global sub_8048C68
// .global sub_8048C98
// .global sub_8049CF8
// .global sub_804A17A
// .global sub_804A2CC

.include "asm/asm21.inc"
// .global sub_8080D90
// .global sub_8080DA0

.include "asm/asm25.inc"
// .global sub_808FEA4

.include "data/dat27.inc"
// .global byte_8098A02
// .global byte_8098A2E
// .global byte_8098A78
// .global byte_8098B1C

.include "asm/asm28_0.inc"
// .global byte_809B5AD
// .global sub_809D19C
// .global sub_809E04C
// .global setFlag3_2e2_2001C88
// .global sub_809E2C2
// .global sub_809E2F4
// .global sub_809E2FC
// .global sub_809E304
// .global sub_809E312
// .global sub_809E3AA
// .global sub_809E3B2
// .global sub_809E462

.include "asm/npc.inc"
// .global npc_809E570

.include "asm/asm28_1.inc"
// .global sub_809F68C
// .global sub_809F90C
// .global sub_809F942
// .global sub_809F9C8
// .global sub_809F9DC
// .global sub_809FAF4

.include "asm/asm29.inc"
// .global ho_80A4984
// .global sub_80A4A98
// .global sub_80A4BDC
// .global sub_80A51C4
// .global sub_80A5428
// .global sub_80A54F0
// .global sub_80A57AC
// .global sub_80A5AD4
// .global sub_80A6A16
// .global sub_80A6E98
// .global sub_80A72B4
// .global sub_80A77A8
// .global sub_80A781C
// .global sub_80A78B8
// .global sub_80A7C84
// .global sub_80A7D90
// .global sub_80A8208
// .global sub_80A8394
// .global sub_80A8654
// .global sub_80A8728
// .global sub_80A87F0
// .global sub_80A8870
// .global sub_80A89DC
// .global sub_80A8AB4
// .global sub_80A8E74
// .global sub_80A92B8
// .global sub_80A9430
// .global sub_80A9658
// .global sub_80A9824
// .global sub_80A98D4
// .global sub_80A9A0C
// .global sub_80A9B70
// .global sub_80A9D10
// .global sub_80A9ECC
// .global sub_80A9F58
// .global sub_80AA004
// .global sub_80AA058
// .global sub_80AA104
// .global sub_80AA140
// .global sub_80AA1E0
// .global sub_80AA2D8
// .global sub_80AA374
// .global sub_80AA4C0
// .global sub_80AA88C
// .global sub_80AAB88

.include "data/BattleSettings.inc"
// .global battleSettingsList0
// .global BattleSettingsList1

.include "asm/asm31.inc"
// .global sub_80B81EC
// .global sub_80B8210
// .global sub_80B85E0
// .global sub_80B88D0
// .global sub_80B8A18
// .global sub_80B8CD8
// .global sub_80B8EA0
// .global sub_80B9078
// .global sub_80B92B8
// .global sub_80B94BC
// .global sub_80B97C0
// .global sub_80B99C0
// .global sub_80B9C14
// .global sub_80B9F44
// .global sub_80BA364
// .global sub_80BA708
// .global sub_80BAA8C
// .global sub_80BAF50
// .global sub_80BB2A0
// .global sub_80BB608
// .global sub_80BB914
// .global sub_80BBB98
// .global sub_80BBF0C
// .global sub_80BC17C
// .global sub_80BC4FC
// .global sub_80BC650
// .global sub_80BC87C
// .global sub_80BCA04
// .global sub_80BCB50
// .global sub_80BCD14
// .global sub_80BD388
// .global sub_80BDBA4
// .global sub_80BE4D8
// .global sub_80BE798
// .global sub_80BF260
// .global sub_80BF6EC
// .global sub_80BFDFC
// .global sub_80BFF68
// .global sub_80C0178
// .global sub_80C0334
// .global sub_80C04AC
// .global sub_80C065C
// .global sub_80C07BC
// .global loc_80C0B0E
// .global sub_80C0E04
// .global sub_80C0F6C
// .global sub_80C11AC
// .global sub_80C1570
// .global sub_80C1A10
// .global sub_80C2138
// .global sub_80C26F0
// .global sub_80C2A78
// .global sub_80C3000
// .global sub_80C3218
// .global sub_80C34E0
// .global sub_80C3734
// .global sub_80C3970
// .global sub_80C3CE8
// .global sub_80C3EE0
// .global sub_80C40D8
// .global sub_80C4348
// .global sub_80C4530
// .global sub_80C46FC
// .global sub_80C4828
// .global sub_80C4B18
// .global sub_80C4E58
// .global sub_80C50B8
// .global sub_80C51AC
// .global sub_80C52B0
// .global sub_80C53C0
// .global sub_80C55B0
// .global sub_80C57C0
// .global sub_80C5A34
// .global sub_80C5BB0
// .global sub_80C5DDC
// .global sub_80C5F60
// .global sub_80C60A8
// .global sub_80C6280
// .global sub_80C6414
// .global sub_80C6580
// .global sub_80C67F8
// .global sub_80C6946
// .global sub_80C6B40
// .global sub_80C6DCC
// .global sub_80C7074
// .global sub_80C71A4
// .global sub_80C740C
// .global sub_80C793C
// .global sub_80C7C18
// .global sub_80C7D78
// .global sub_80C7F40
// .global sub_80C8098
// .global sub_80C81CC
// .global sub_80C8388
// .global sub_80C853C
// .global loc_80C86D8
// .global sub_80C882C
// .global sub_80C8AA4
// .global sub_80C8C74
// .global sub_80C8E08
// .global sub_80C8FFC
// .global sub_80C91A0
// .global sub_80C93CC
// .global sub_80C96A0
// .global nullsub_101
// .global nullsub_94
// .global sub_80C9824
// .global sub_80C9BC4
// .global sub_80C9D00
// .global sub_80C9F78
// .global sub_80CA2A8
// .global sub_80CA544
// .global sub_80CA6B8
// .global sub_80CA938
// .global sub_80CAB68
// .global sub_80CAD28
// .global sub_80CAEF0
// .global sub_80CB0DC
// .global sub_80CB284
// .global sub_80CB49C
// .global sub_80CB6F8
// .global sub_80CB900
// .global sub_80CBB44
// .global sub_80CC044
// .global sub_80CC0E8
// .global sub_80CC4C4
// .global sub_80CC5A8
// .global sub_80CC76C
// .global sub_80CC944
// .global sub_80CCA40
// .global sub_80CCC48
// .global sub_80CCD70
// .global sub_80CCFDC
// .global sub_80CD2EC
// .global sub_80CD4EC
// .global sub_80CD8EC
// .global sub_80CDD44
// .global sub_80CDF84
// .global sub_80CE118
// .global sub_80CE24C
// .global sub_80CE530
// .global sub_80CE70C
// .global sub_80CE81C
// .global sub_80CEB00
// .global sub_80CEE78
// .global sub_80CF0D0
// .global sub_80CF3BE
// .global sub_80CF5C8
// .global sub_80CF7F0
// .global sub_80CF954
// .global sub_80CFBC4
// .global sub_80CFC08
// .global sub_80CFCF8
// .global sub_80CFEC4
// .global sub_80D00A0
// .global sub_80D0268
// .global sub_80D0394
// .global sub_80D0500
// .global sub_80D0610
// .global sub_80D07CC
// .global sub_80D0AA8
// .global sub_80D0D7C
// .global sub_80D0F8C
// .global sub_80D1218
// .global sub_80D1514
// .global sub_80D17A4
// .global sub_80D18D8
// .global sub_80D1A08
// .global sub_80D1B48
// .global sub_80D1C20
// .global sub_80D2034
// .global sub_80D2290
// .global sub_80D2430
// .global sub_80D2460
// .global sub_80D25D4
// .global sub_80D2A94
// .global sub_80D2BDC
// .global sub_80D2EBC
// .global sub_80D30D0
// .global sub_80D34CC
// .global sub_80D385C
// .global sub_80D39BC
// .global sub_80D4088
// .global sub_80D4440
// .global sub_80D46B8
// .global sub_80D4A28
// .global sub_80D4B68
// .global sub_80D4C84
// .global sub_80D4FA6
// .global sub_80D5028
// .global sub_80D5138
// .global sub_80D535C
// .global sub_80D5580
// .global sub_80D5740
// .global sub_80D58B4
// .global sub_80D5ABC
// .global sub_80D5C48
// .global sub_80D5D54
// .global sub_80D5F08
// .global sub_80D622C
// .global sub_80D655C
// .global sub_80D67EC
// .global sub_80D6924
// .global sub_80D6A20
// .global sub_80D6BD4
// .global sub_80D6D80
// .global sub_80D6EE0
// .global sub_80D7068
// .global sub_80D7278
// .global sub_80D7400
// .global sub_80D75FC
// .global sub_80D7ACC
// .global sub_80D7DE4
// .global sub_80D807C
// .global sub_80D825C
// .global sub_80D8444
// .global sub_80D85F0
// .global sub_80D8620
// .global sub_80D879C
// .global sub_80D88E0
// .global sub_80D8C5C
// .global sub_80D8D5A
// .global sub_80D8E10
// .global sub_80D8FC4
// .global sub_80D9154
// .global sub_80D9350
// .global sub_80D954C
// .global sub_80D96A4
// .global sub_80D984C
// .global sub_80D9A50
// .global sub_80D9D4C
// .global sub_80DA050
// .global sub_80DA470
// .global sub_80DA5FC
// .global sub_80DA80C
// .global sub_80DA9DC
// .global sub_80DA9FE
// .global sub_80DAA28
// .global sub_80DACE4
// .global sub_80DAE94
// .global sub_80DB0E4
// .global sub_80DB304
// .global sub_80DB570
// .global sub_80DB6A4
// .global sub_80DB8CC
// .global sub_80DB994
// .global sub_80DBB40
// .global sub_80DBCEC
// .global sub_80DBEE6
// .global sub_80DC0E8
// .global sub_80DC260
// .global sub_80DC3F8
// .global sub_80DC4FC
// .global sub_80DC5F8
// .global sub_80DC70C
// .global sub_80DCB1C
// .global sub_80DCCD4
// .global sub_80DCE38
// .global sub_80DCEF4
// .global sub_80DD0AC
// .global sub_80DD34C
// .global sub_80DD764
// .global sub_80DD940
// .global sub_80DDA84
// .global sub_80DDC10
// .global sub_80DDDF0
// .global sub_80DE000
// .global sub_80DE13C
// .global sub_80DE404
// .global sub_80DE7F4
// .global sub_80DEA7C
// .global sub_80DEE60
// .global sub_80DF0A4
// .global sub_80DF188
// .global sub_80DF328
// .global sub_80DF4FC
// .global sub_80DF90C
// .global sub_80DFC38
// .global sub_80DFE40
// .global sub_80DFFB8
// .global loc_80E0548
// .global sub_80E05F6
// .global sub_80E0638
// .global sub_80E06F8
// .global sub_80E0710
// .global sub_80E0844
// .global nullsub_99
// .global sub_80E08FC
// .global sub_80E0AD4
// .global sub_80E0DF0
// .global sub_80E0FA0
// .global sub_80E10A4
// .global sub_80E11FC
// .global sub_80E1520
// .global sub_80E17E8
// .global sub_80E19BC
// .global sub_80E1A90
// .global sub_80E1B48
// .global sub_80E1CF8
// .global sub_80E1D88
// .global sub_80E1E4C
// .global sub_80E2080
// .global sub_80E21D8
// .global sub_80E225C
// .global sub_80E23A4
// .global sub_80E24E4
// .global sub_80E25D0
// .global sub_80E28A8
// .global sub_80E2AE8
// .global sub_80E2B7C
// .global sub_80E2CA4
// .global sub_80E2E34
// .global sub_80E2F56
// .global sub_80E309C
// .global sub_80E3150
// .global sub_80E31D8
// .global sub_80E32B8
// .global sub_80E342C
// .global sub_80E34C0
// .global sub_80E35A4
// .global sub_80E3728
// .global sub_80E37F4
// .global sub_80E39A0
// .global sub_80E3AB8
// .global sub_80E3B70
// .global sub_80E3D68
// .global sub_80E3FD0
// .global sub_80E40EC
// .global sub_80E4188
// .global sub_80E4344
// .global sub_80E440C
// .global sub_80E4634
// .global sub_80E46D8
// .global sub_80E47B4
// .global sub_80E4848
// .global sub_80E4910
// .global sub_80E4A1C
// .global sub_80E4CB8
// .global sub_80E4DB0
// .global sub_80E50C4
// .global sub_80E5244
// .global sub_80E5368
// .global sub_80E5470
// .global sub_80E55C0
// .global sub_80E5710
// .global sub_80E5944
// .global sub_80E59E8
// .global locret_80E5B60
// .global sub_80E5C2C
// .global sub_80E5D44
// .global sub_80E5E00
// .global sub_80E5ECC
// .global sub_80E5F9C
// .global sub_80E5FBC
// .global sub_80E6088
// .global sub_80E6254
// .global sub_80E6480
// .global sub_80E655C
// .global sub_80E6758
// .global sub_80E680C
// .global sub_80E689C
// .global sub_80E6A90
// .global sub_80E6BDC
// .global sub_80E6E44
// .global sub_80E6F88
// .global sub_80E702C
// .global sub_80E70C8
// .global sub_80E71C4
// .global sub_80E7260
// .global sub_80E74D4
// .global sub_80E7568
// .global sub_80E7624
// .global sub_80E76F8
// .global sub_80E7788
// .global sub_80E78BC
// .global sub_80E795C
// .global sub_80E7ACC
// .global sub_80E7BFC
// .global sub_80E7CCC
// .global sub_80E7DC4
// .global sub_80E7E9C
// .global sub_80E7F38
// .global sub_80E7FDC
// .global sub_80E807C
// .global sub_80E8138
// .global sub_80E81D8
// .global sub_80E8268
// .global sub_80E83B8
// .global sub_80E857C
// .global sub_80E8688
// .global sub_80E8794
// .global sub_80E88A0
// .global sub_80E8938
// .global sub_80E8A60
// .global sub_80E8B00
// .global sub_80E8DF0
// .global sub_80E8EE0
// .global sub_80E8FE0
// .global sub_80E9120
// .global sub_80E91E4
// .global sub_80E9310
// .global sub_80E9460
// .global sub_80E9570
// .global sub_80E97F0
// .global sub_80E9994
// .global sub_80E9AF0
// .global loc_80E9C88
// .global loc_80E9DF0
// .global sub_80EA010
// .global loc_80EA14C
// .global loc_80EA258
// .global loc_80EA364

.include "asm/asm32.inc"
// .global sub_811EBE0
// .global sub_811EC00
// .global sub_811EC10
// .global sub_811EC50
// .global ho_811ED1C // () -> void
// .global sub_811F6C0
// .global sub_811F6E0
// .global sub_811F7EC
// .global sub_811FB78
// .global sub_81209DC
// .global sub_8120A38
// .global sub_8121144
// .global sub_8121198

.include "asm/asm33.inc"
// .global sub_8127990
// .global sub_81284A4

.include "asm/asm36.inc"
// .global sub_81376E8
// .global sub_8137700
// .global sub_8137808
// .global sub_8138294

.include "asm/asm37_0.inc"
// .global sub_813B768
// .global sub_813B934
// .global sub_813C324
// .global sub_813C3AC
// .global sub_813D60C

.include "asm/reqBBS.inc"
// .global reqBBS_813E07C
// .global reqBBS_813E616
// .global reqBBS_init_s_2005780
// .global reqBBS_initMemory_813F9DA
// .global reqBBS_8140984

.include "asm/asm37_1.inc"
// .global sub_81419A0
// .global sub_8142248
// .global sub_8143482
// .global sub_8144048

.include "asm/libs.inc"
// .global sub_81440D8 // static () -> void
// .global sub_8144EEC
// .global SWI_LZ77UnCompReadNormalWrite16bit

.include "data/dat38_85.inc"
// .global dword_86DDBA0
// .global dword_86E08F8
// .global dword_86E09F8

.include "data/dat38_96.inc"
// .global dword_87F2F68


/* Undeclared Symbols */
// .equ dword_2000060, 0x2000060
// .equ unk_2000260, 0x2000260
// .equ byte_20004E0, 0x20004E0
// .equ unk_2000670, 0x2000670
// .equ byte_2000780, 0x2000780
// .equ byte_2000781, 0x2000781
// .equ byte_2000782, 0x2000782
// .equ byte_2000783, 0x2000783
// .equ dword_2000784, 0x2000784
// .equ byte_20008A0, 0x20008A0
// .equ dword_2000B30, 0x2000B30
// .equ word_2000FA0, 0x2000FA0
// .equ byte_2001010, 0x2001010
// .equ byte_2001011, 0x2001011
// .equ byte_2001012, 0x2001012
// .equ byte_2001013, 0x2001013
// .equ dword_2001014, 0x2001014
// .equ eUnusedGameStateBaseOffset, 0x2001060
// .equ dword_2001064, 0x2001064
// .equ map_activeNPCs, 0x20010E0
// .equ dword_20013F0, 0x20013F0
// .equ byte_2001600, 0x2001600
// .equ dword_20018B8, 0x20018B8
// .equ unk_20018C0, 0x20018C0
// .equ eGameState, 0x2001B80
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ byte_2006530, 0x2006530
// .equ byte_2006848, 0x2006848
// .equ byte_2006849, 0x2006849
// .equ unk_2006C46, 0x2006C46
// .equ dword_2006C48, 0x2006C48
// .equ byte_20081B0, 0x20081B0
// .equ byte_20081B1, 0x20081B1
// .equ word_20081B2, 0x20081B2
// .equ dword_20081B4, 0x20081B4
// .equ dword_20081B8, 0x20081B8
// .equ dword_20081BC, 0x20081BC
// .equ dword_20081C0, 0x20081C0
// .equ unk_20081D0, 0x20081D0
// .equ unk_2008980, 0x2008980
// .equ unk_2008E80, 0x2008E80
// .equ dword_2009380, 0x2009380
// .equ dword_2009384, 0x2009384
// .equ dword_20093A4, 0x20093A4
// .equ eToolkit, 0x20093B0
// .equ unk_20096A0, 0x20096A0
// .equ byte_20096A3, 0x20096A3
// .equ dword_20096A4, 0x20096A4
// .equ dword_20096A8, 0x20096A8
// .equ dword_20096AC, 0x20096AC
// .equ dword_20096B0, 0x20096B0
// .equ dword_20096B4, 0x20096B4
// .equ dword_20096B8, 0x20096B8
// .equ dword_20096BC, 0x20096BC
// .equ dword_20096C0, 0x20096C0
// .equ dword_20096C4, 0x20096C4
// .equ dword_20096C8, 0x20096C8
// .equ dword_20096CC, 0x20096CC
// .equ dword_20096D0, 0x20096D0
// .equ unk_2009740, 0x2009740
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sSubmenu, 0x2009A30
// .equ dword_2009AB0, 0x2009AB0
// .equ dword_2009AB4, 0x2009AB4
// .equ sChatbox, 0x2009CD0
// .equ dword_2009F34, 0x2009F34
// .equ eOWPlayerObject, 0x2009F40
// .equ byte_2009F41, 0x2009F41
// .equ dword_2009F44, 0x2009F44
// .equ dword_2009F48, 0x2009F48
// .equ dword_2009F5C, 0x2009F5C
// .equ pCoords, 0x2009F60
// .equ dword_2009F64, 0x2009F64
// .equ word_2009FB2, 0x2009FB2
// .equ word_2009FB4, 0x2009FB4
// .equ word_2009FB6, 0x2009FB6
// .equ byte_200A008, 0x200A008
// .equ byte_200A009, 0x200A009
// .equ byte_200A00A, 0x200A00A
// .equ byte_200A00B, 0x200A00B
// .equ word_200A00C, 0x200A00C
// .equ word_200A00E, 0x200A00E
// .equ iCurrFrame, 0x200A210
// .equ byte_200A220, 0x200A220
// .equ sJoystick, 0x200A270
// .equ byte_200A440, 0x200A440
// .equ byte_200A441, 0x200A441
// .equ byte_200A442, 0x200A442
// .equ byte_200A443, 0x200A443
// .equ word_200A444, 0x200A444
// .equ word_200A448, 0x200A448
// .equ word_200A44A, 0x200A44A
// .equ off_200A450, 0x200A450
// .equ off_200A454, 0x200A454
// .equ word_200A458, 0x200A458
// .equ word_200A45C, 0x200A45C
// .equ byte_200A461, 0x200A461
// .equ byte_200A462, 0x200A462
// .equ byte_200A463, 0x200A463
// .equ word_200A464, 0x200A464
// .equ word_200A468, 0x200A468
// .equ word_200A46A, 0x200A46A
// .equ dword_200A470, 0x200A470
// .equ dword_200A474, 0x200A474
// .equ word_200A478, 0x200A478
// .equ word_200A47C, 0x200A47C
// .equ i_joGameSubsysSel, 0x200A480
// .equ dword_200AC18, 0x200AC18
// .equ unk_200AC40, 0x200AC40
// .equ byte_200ACE0, 0x200ACE0
// .equ dword_200ACF8, 0x200ACF8
// .equ byte_200ACFC, 0x200ACFC
// .equ dword_200AD00, 0x200AD00
// .equ dword_200AF70, 0x200AF70
// .equ byte_200DF20, 0x200DF20
// .equ byte_200DF21, 0x200DF21
// .equ byte_200DF28, 0x200DF28
// .equ unk_200F3A0, 0x200F3A0
// .equ dword_200F3B0, 0x200F3B0
// .equ unk_200F3B8, 0x200F3B8
// .equ byte_200F410, 0x200F410
// .equ byte_2011800, 0x2011800
// .equ byte_2011BB0, 0x2011BB0
// .equ unk_2011C50, 0x2011C50
// .equ unk_2011E50, 0x2011E50
// .equ byte_2011EE0, 0x2011EE0
// .equ byte_2011EE1, 0x2011EE1
// .equ dword_2011EE4, 0x2011EE4
// .equ dword_2011EE8, 0x2011EE8
// .equ dword_2011EEC, 0x2011EEC
// .equ dword_2011EF0, 0x2011EF0
// .equ dword_2011EF4, 0x2011EF4
// .equ byte_20138A8, 0x20138A8
// .equ byte_20138A9, 0x20138A9
// .equ dword_20138AC, 0x20138AC
// .equ dword_20138B0, 0x20138B0
// .equ dword_20138B4, 0x20138B4
// .equ dword_20138B8, 0x20138B8
// .equ dword_20138BC, 0x20138BC
// .equ dword_2013920, 0x2013920
// .equ dword_2033000, 0x2033000
// .equ word_2033038, 0x2033038
// .equ word_203303A, 0x203303A
// .equ word_2033040, 0x2033040
// .equ unk_2034000, 0x2034000
// .equ s_2034880, 0x2034880
// .equ byte_20349C0, 0x20349C0
// .equ byte_2034A10, 0x2034A10
// .equ unk_2034A60, 0x2034A60
// .equ unk_2034AC4, 0x2034AC4
// .equ unk_2034F54, 0x2034F54
// .equ unk_2035260, 0x2035260
// .equ unk_203526C, 0x203526C
// .equ dword_20364C0, 0x20364C0
// .equ dword_20364C4, 0x20364C4
// .equ byte_20366C0, 0x20366C0
// .equ unk_2036710, 0x2036710
// .equ unk_2036750, 0x2036750
// .equ byte_2036778, 0x2036778
// .equ unk_2036790, 0x2036790
// .equ unk_20367B8, 0x20367B8
// .equ dword_20367E0, 0x20367E0
// .equ dword_2036820, 0x2036820
// .equ dword_2036824, 0x2036824
// .equ dword_2036828, 0x2036828
// .equ dword_203682C, 0x203682C
// .equ byte_2036830, 0x2036830
// .equ unk_2036860, 0x2036860
// .equ unk_2036870, 0x2036870
// .equ unk_2038160, 0x2038160
// .equ unk_2038170, 0x2038170
// .equ unk_20384F0, 0x20384F0
// .equ dword_2039A10, 0x2039A10
// .equ unk_2039AA0, 0x2039AA0
// .equ unk_2039ADC, 0x2039ADC
// .equ dword_203A010, 0x203A010
// .equ unk_203A9A0, 0x203A9A0
// .equ eBattleObjectPlayer, 0x203A9B0
// .equ byte_203C4A0, 0x203C4A0
// .equ byte_203C960, 0x203C960
// .equ byte_203C980, 0x203C980
// .equ byte_203C9E4, 0x203C9E4
// .equ byte_203CA50, 0x203CA50
// .equ dword_203CA70, 0x203CA70
// .equ byte_203CA74, 0x203CA74
// .equ word_203CA7A, 0x203CA7A
// .equ dword_203CA7C, 0x203CA7C
// .equ byte_203CB10, 0x203CB10
// .equ byte_203CB74, 0x203CB74
// .equ dword_203CBE0, 0x203CBE0
// .equ dword_203CBE4, 0x203CBE4
// .equ byte_203CBE8, 0x203CBE8
// .equ byte_203CC03, 0x203CC03
// .equ byte_203CC0D, 0x203CC0D
// .equ word_203CC2A, 0x203CC2A
// .equ byte_203CC2C, 0x203CC2C
// .equ byte_203CC34, 0x203CC34
// .equ byte_203CC50, 0x203CC50
// .equ byte_203CC78, 0x203CC78
// .equ byte_203CC98, 0x203CC98
// .equ dword_203CCA0, 0x203CCA0
// .equ dword_203CCA4, 0x203CCA4
// .equ byte_203CCA8, 0x203CCA8
// .equ byte_203CCA9, 0x203CCA9
// .equ byte_203CCAA, 0x203CCAA
// .equ byte_203CCAB, 0x203CCAB
// .equ byte_203CCD4, 0x203CCD4
// .equ byte_203CCE0, 0x203CCE0
// .equ byte_203CDA8, 0x203CDA8
// .equ byte_203CDB0, 0x203CDB0
// .equ word_203CDE8, 0x203CDE8
// .equ byte_203CDEA, 0x203CDEA
// .equ dword_203CDF0, 0x203CDF0
// .equ byte_203CDF4, 0x203CDF4
// .equ byte_203CE00, 0x203CE00
// .equ byte_203CE64, 0x203CE64
// .equ byte_203CED0, 0x203CED0
// .equ dword_203CFA0, 0x203CFA0
// .equ byte_203CFA4, 0x203CFA4
// .equ byte_203CFD0, 0x203CFD0
// .equ byte_203CFE0, 0x203CFE0
// .equ byte_203CFE0, 0x203CFE0
// .equ dword_203EAD0, 0x203EAD0
// .equ byte_203EAE0, 0x203EAE0
// .equ byte_203EB00, 0x203EB00
// .equ byte_203EB28, 0x203EB28
// .equ dword_203F4A0, 0x203F4A0
// .equ byte_203F4A4, 0x203F4A4
// .equ byte_203F4AC, 0x203F4AC
// .equ byte_203F4F4, 0x203F4F4
// .equ byte_203F510, 0x203F510
// .equ byte_203F538, 0x203F538
// .equ byte_203F558, 0x203F558
// .equ dword_203F560, 0x203F560
// .equ dword_203F564, 0x203F564
// .equ dword_203F568, 0x203F568
// .equ byte_203F56C, 0x203F56C
// .equ byte_203F594, 0x203F594
// .equ dword_203F5A0, 0x203F5A0
// .equ byte_203F5A4, 0x203F5A4
// .equ byte_203F5AC, 0x203F5AC
// .equ byte_203F5F4, 0x203F5F4
// .equ byte_203F610, 0x203F610
// .equ byte_203F638, 0x203F638
// .equ byte_203F658, 0x203F658
// .equ dword_203F660, 0x203F660
// .equ byte_203F664, 0x203F664
// .equ byte_203F66C, 0x203F66C
// .equ byte_203F694, 0x203F694
// .equ byte_203F6D0, 0x203F6D0
// .equ byte_203F750, 0x203F750
// .equ byte_203F7D8, 0x203F7D8
// .equ byte_203F7D8, 0x203F7D8
// .equ dword_203F7E0, 0x203F7E0
// .equ byte_203F7E4, 0x203F7E4
// .equ byte_3000EA8, 0x3000EA8
// .equ byte_3001690, 0x3001690
// .equ byte_3001750, 0x3001750
// .equ byte_3001960, 0x3001960
// .equ unk_3001980, 0x3001980
// .equ unk_3001B60, 0x3001B60
// .equ dword_3002180, 0x3002180
// .equ dword_3002184, 0x3002184
// .equ dword_3002188, 0x3002188
// .equ dword_300218C, 0x300218C
// .equ unk_30025C0, 0x30025C0
.equ Window0HorizontalDimensions, 0x4000040
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
.equ IWRAMRoutinesROMLocation, 0x81D6000
// .global scripts_fullSynchro_86F3F5C
// .global scripts_dad_cybeastTut_86F4498
// .global scripts_shuko_crossTut_86F53CC
// .global scripts_commErr_87370C0

.endif // INC_ASM_ASM00_1
