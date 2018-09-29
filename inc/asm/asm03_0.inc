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
.global sub_802BD60
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
.global sub_802D070
.global sub_802D08C
.global sub_802D150
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
.global sub_802F530
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
.global locret_8030102
.global sub_80301B2
.global sub_80301D0
.global sub_80301DC
.global loc_8030202
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
.global loc_80315CC
.global sub_8031612
.global loc_80318B0
.global sub_8031A7A


/* External Symbols */
.include "asm/start.inc"
// .global start_

.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sub_80005F2
// .global sub_8000642
// .global sub_800068A
// .global musicGameState_8000784 // () -> void
// .global clearBackwards_80008B4 // (void *mem, int size) -> void
// .global sub_80008C0
// .global CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
// .global CpuFastSet_8000900 // (int a1, int a2) -> void
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
// .global sub_8001158 // () -> void
// .global change_20013F0_800151C // () -> int
// .global sub_8001532
// .global rng_800154C // () -> void
// .global sub_80015FC
// .global sub_8001778
// .global sub_8001788
// .global sub_80017A0
// .global sub_80017AA
// .global sub_800183C
// .global sub_800187C
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_80018D0
// .global sub_80018E0
// .global sub_8001AFC
// .global sub_8001B1C
// .global sub_8002354
// .global sub_80023A8
// .global sub_800260C

.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_load // (int a1, int a2, int a3) ->
// .global sub_8002A64
// .global sub_8002ADE
// .global sprite_setPallete // (int pallete) -> void
// .global sprite_setAnimation // (u8 a1) -> void
// .global sprite_forceWhitePallete

.include "asm/asm00_1.inc"
// .global sub_8002E3C
// .global sub_8002F5C
// .global sub_80035A2
// .global sub_80045C0
// .global sub_8004D48
// .global sub_8004DF0
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global loc_8006274
// .global sub_80062EC
// .global engine_isScreeneffectAnimating // () -> zf
// .global loc_80062FC
// .global unk_80065E0
// .global dword_8006660
// .global modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
// .global sub_80070BC
// .global sub_80076A0
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
// .global getBattleSettingsFromList1 // (int battleSettingsIdx) -> BattleSettings*
// .global sub_800A7D0 // () -> (zf, int)
// .global sub_800A7E2
// .global sub_800A832
// .global sub_800A856
// .global sub_800A8F8
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
// .global sub_800B6CE
// .global sub_800B6D4
// .global sub_800B6DA
// .global sub_800B6E0

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
// .global sub_8013754
// .global sub_8013764
// .global sub_8013774
// .global sub_8013790
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global sub_8013816
// .global sub_801382E
// .global sub_801393A
// .global init_8013B64 // (int idx, int a2) -> void
// .global sub_8013D5E
// .global sub_8013FD0
// .global loc_8014216
// .global sub_80143A6
// .global loc_80143B4
// .global sub_80144C0
// .global sub_8015940
// .global sub_8015952
// .global sub_8015B54
// .global sub_8015B5C
// .global sub_8015BEC
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
// .global unk_802167C
// .global unk_80216B8
// .global unk_80216F4
// .global unk_8021730
// .global unk_802176C
// .global unk_80217A8
// .global unk_80217E4
// .global unk_8021820
// .global unk_802185C
// .global unk_8021898
// .global unk_80218D4
// .global unk_8021910
// .global unk_802194C
// .global unk_8021988

.include "asm/asm02.inc"
// .global getChip_8021DA8 // (int chip_idx) -> ChipData*
// .global sub_8021AEE
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*
// .global sub_8021D14

.include "data/pt_8031CC4.inc"
// .global off_80329A8
// .global off_80329C4
// .global off_8032F6C
// .global off_8032F88
// .global pt_8033530
// .global pt_803354C

.include "asm/asm03_1.inc"
// .global off_8033770
// .global off_803378C
// .global sub_8039570
// .global sub_803CFF8
// .global sub_803D080
// .global loc_803D1AC
// .global sub_803E900
// .global sub_803E928
// .global sub_803E930
// .global sub_803E938
// .global sub_803EA70
// .global sub_803EBAC
// .global clear_200AD04 // () -> void
// .global loc_803F512
// .global sub_803F524
// .global sub_803F6B0
// .global sub_803F838
// .global sub_803FA42

.include "asm/chatbox.inc"
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global chatbox_8040818
// .global chatbox_8045F3C
// .global chatbox_8045F4C

.include "asm/asm03_2.inc"
// .global render_graphicalText_8045F8C
// .global sub_804CE90
// .global sub_804CF32

.include "asm/asm04.inc"
// .global sub_804E62C
// .global sub_804E6D0

.include "asm/asm05.inc"
// .global sub_8052688
// .global sub_8052764

.include "asm/asm06.inc"
// .global sub_80595B8
// .global sub_8059664

.include "asm/asm07.inc"
// .global sub_805DF08
// .global sub_805DFA2

.include "data/dat07.inc"
// .global unk_806020A

.include "asm/asm08.inc"
// .global sub_806036C
// .global sub_8060406

.include "asm/asm09.inc"
// .global sub_8062AB0
// .global sub_8062B64

.include "asm/asm10.inc"
// .global sub_80663D0
// .global sub_8066450
// .global sub_8067B5C
// .global sub_8067BE4

.include "asm/asm11.inc"
// .global sub_8069038
// .global sub_80690C2
// .global sub_8069FE8
// .global sub_806A070
// .global sub_806AA00
// .global sub_806AAAA
// .global sub_806C23C
// .global sub_806C2E2

.include "asm/asm12.inc"
// .global sub_806D8F8
// .global sub_806D9FC

.include "asm/asm13.inc"
// .global sub_806FC08
// .global sub_806FCF8

.include "asm/asm14.inc"
// .global sub_8071B50
// .global sub_8071BE4

.include "asm/asm15.inc"
// .global sub_807544C
// .global sub_80754E2

.include "asm/asm16.inc"
// .global sub_8077D00
// .global sub_8077D8A

.include "asm/asm17.inc"
// .global sub_807931C
// .global sub_807939A

.include "asm/asm18.inc"
// .global sub_807A8E0
// .global sub_807A974

.include "asm/asm19.inc"
// .global sub_807CDEC
// .global sub_807CE90

.include "asm/asm20.inc"
// .global sub_807ECD0
// .global sub_807ED6C

.include "asm/asm29.inc"
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
// .global sub_81096FA
// .global sub_810971A

.include "asm/asm32.inc"
// .global sub_811F7F8
// .global sub_811FA98
// .global sub_811FAF4
// .global sub_8120B54
// .global sub_8120CC8

.include "asm/asm33.inc"
// .global dword_8129180

.include "asm/asm37_0.inc"
// .global sub_813D90C
// .global sub_813D960

.include "asm/asm37_1.inc"
// .global sub_81440D8
// .global sub_8149644
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void

.include "data/dat38_42.inc"
// .global unk_86A48C0
// .global dword_86A5500
// .global dword_86B7AE0

.include "data/dat38_52.inc"
// .global unk_86C9D6C

.include "data/dat38_66.inc"
// .global comp_86DD59C

.include "data/dat38_67.inc"
// .global unk_86DDB24

.include "data/dat38_68.inc"
// .global dword_86E1238
// .global dword_86E2E98
// .global dword_86E3598
// .global dword_86E3B18
// .global dword_86E411C
// .global dword_86E441C
// .global dword_86E4D9C
// .global dword_86E55BC
// .global dword_86E55FC
// .global unk_86E56FC
// .global unk_86E57FC
// .global unk_86E587C
// .global dword_86E591C
// .global unk_86E601C
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
// .global unk_86E79CC
// .global dword_86E7DCC
// .global dword_86E944C
// .global dword_86EA94C
// .global unk_86EB354
// .global unk_86EB8B8
// .global unk_86EE0CC
// .global dword_86EF4D4
// .global a8Bdfhjlnprtvxz
// .global notAdded_scripts_86EF78C
// .global byte_86F0300
// .global dword_86F047C
// .global dword_86F2E60
// .global dword_86F3868

.include "data/dat38_69.inc"
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
// .global dword_8730254
// .global dword_8731154
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

.include "data/dat38_70.inc"
// .global aF_0

.include "data/dat38_81.inc"
// .global unk_87F3620

.include "data/dat38_82.inc"
// .global unk_87F40F4
// .global unk_87F4194

.include "data/dat38_84.inc"
// .global dword_87F8EB0


/* Undeclared Symbols */
.equ timer_2000000, 0x2000000
.equ unk_2000070, 0x2000070
.equ unk_20000A0, 0x20000A0
.equ unk_2000260, 0x2000260
.equ unk_2000370, 0x2000370
.equ dword_2001140, 0x2001140
.equ unk_20018C0, 0x20018C0
.equ byte_2006530, 0x2006530
.equ dword_2006740, 0x2006740
.equ unk_2008170, 0x2008170
.equ sCamera, 0x2009980
.equ dword_2009A2C, 0x2009A2C
.equ word_200A6F0, 0x200A6F0
.equ sStartScr, 0x200AD10
.equ BattleSettings_200AF60, 0x200AF60
.equ BattleSettings_200AF60, 0x200AF60
.equ BattleSettings_200AF60, 0x200AF60
.equ byte_200B1A0, 0x200B1A0
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
.equ byte_200F360, 0x200F360
.equ unk_200F3C4, 0x200F3C4
.equ dword_200F3D0, 0x200F3D0
.equ dword_200F3E0, 0x200F3E0
.equ dword_200F3E4, 0x200F3E4
.equ dword_200F3EC, 0x200F3EC
.equ dword_200F3F0, 0x200F3F0
.equ dword_200F3F8, 0x200F3F8
.equ dword_200F3FC, 0x200F3FC
.equ unk_2010100, 0x2010100
.equ dword_2011A20, 0x2011A20
.equ word_2011A24, 0x2011A24
.equ byte_2011A26, 0x2011A26
.equ byte_2011A27, 0x2011A27
.equ dword_2011A34, 0x2011A34
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
.equ unk_2027A00, 0x2027A00
.equ comp_2030860, 0x2030860
.equ unk_2030E60, 0x2030E60
.equ unk_2031000, 0x2031000
.equ decomp_2032000, 0x2032000
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
.equ dword_20367E0, 0x20367E0
.equ dword_2036820, 0x2036820
.equ dword_2036824, 0x2036824
.equ dword_203682C, 0x203682C
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
.equ unk_3001570, 0x3001570
.equ unk_3001590, 0x3001590
.equ unk_3001610, 0x3001610
.equ unk_30016B0, 0x30016B0
.equ unk_30016F0, 0x30016F0
.equ dword_3001950, 0x3001950
.equ word_3001960, 0x3001960
.equ unk_3001A80, 0x3001A80
.equ unk_3001AA0, 0x3001AA0
.equ unk_3001AD4, 0x3001AD4
.equ unk_3001AE0, 0x3001AE0
.equ dword_3001D70, 0x3001D70
.equ unk_3002580, 0x3002580
.equ dword_3002590, 0x3002590
.equ unk_30025B0, 0x30025B0
.equ sub_30068E8, 0x30068E8
.equ sub_3006920, 0x3006920
.equ LCDControl, 0x4000000
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
// .global comp_87F3370
// .global comp_87F36A0
// .global comp_87F4394

.endif // INC_ASM_ASM03_0
