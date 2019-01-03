.ifndef INC_ASM_ASM36
.equ INC_ASM_ASM36, 0

/* Public Symbols */
.global sub_813005C
.global sub_8130084
.global sub_813017C
.global sub_81301DC
.global sub_8130208
.global sub_8130250
.global sub_81302F4
.global sub_8130370
.global sub_813040C
.global sub_8130424
.global sub_8130464
.global sub_81304A4
.global sub_81304BC
.global sub_81304EC
.global sub_813064C
.global sub_813068C
.global sub_81306F0
.global sub_8130728
.global sub_8130780
.global sub_81307BC
.global sub_81307F4
.global sub_8130810
.global sub_8130850
.global sub_8130864
.global byte_8130905
.global sub_81312F4
.global sub_8132280
.global sub_8132290
.global sub_81322E8
.global sub_8132398
.global sub_81323B0
.global sub_8132430
.global sub_81324A8
.global sub_8132538
.global sub_81325C0
.global sub_81325CC
.global sub_81325E4
.global sub_81325F4
.global sub_8132614
.global sub_8132648
.global sub_8132664
.global sub_8132670
.global sub_81326D4
.global sub_8132764
.global sub_81329C8
.global sub_8132A14
.global sub_8132A50
.global sub_8132B88
.global sub_8133200
.global sub_81348DC
.global sub_8134930
.global sub_81352A0
.global sub_8135314
.global sub_81355D8
.global byte_813565C
.global sub_81356D4
.global sub_8136C24
.global sub_8136D8C
.global sub_8136DE0
.global sub_81376B8
.global sub_81376CC
.global sub_81376E8
.global sub_8137700
.global sub_8137718
.global sub_81377EC
.global sub_8137808
.global sub_8137884
.global sub_8137890
.global sub_81378B4
.global sub_8138294
.global cb_81382AC


/* External Symbols */
.include "asm/asm38.inc"
// .global byte_30069A0

.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sound_bgmusic_play // (int a1) -> void
// .global sub_800068A
// .global ZeroFillByByte // (void *mem, int size) -> void
// .global ZeroFillByHalfword
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global ZeroFillByEightWords // (int a1, int a2) -> void
// .global CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CopyWords // (u32 *src, u32 *dest, int size) -> void
// .global CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
// .global loc_8000AC8
// .global decompAndCopyData_8000B30 // (u32 *initRefs) -> void
// .global sub_8000C00
// .global sub_8000D84
// .global sub_8000E28
// .global sub_8000F86
// .global loc_8001048
// .global getPETNaviSelect // () -> u8
// .global rng_800154C // () -> void
// .global sub_80015FC
// .global sub_80017AA
// .global sub_80017E0
// .global sub_8001820
// .global sub_800183C
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_80018D0
// .global sub_80024A2
// .global sub_800260C
// .global sub_8002668

.include "asm/sprite.inc"
// .global sub_80027B4
// .global sub_80027F4
// .global sub_800286C
// .global sub_80028D4
// .global sub_8002906

.include "asm/asm00_1.inc"
// .global sub_800307C
// .global sub_80035A2
// .global sub_800378C
// .global sub_80037F4
// .global sub_8003962
// .global sub_8003AB2
// .global sub_8003BA2
// .global sub_8003BF4
// .global sub_8003E98
// .global sub_8004298
// .global sub_8004590
// .global npc_800461E
// .global sub_800467C
// .global sub_80048D2
// .global sub_8004934
// .global sub_8005524
// .global sub_8005F40
// .global sub_8005F6C
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global sub_80062C8
// .global engine_isScreeneffectAnimating // () -> zf

.include "asm/asm00_2.inc"
// .global sub_8010C76
// .global navicust_801379E // (int a1, int a2, int a3) -> void
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global sub_80137E6
// .global sub_80137FE
// .global sub_8013846
// .global sub_8013864
// .global sub_8013874
// .global init_8013B4E // (bool a1, int a2) -> void
// .global navicust_8014018 // (int idx_8014034) -> bool
// .global sub_801401E

.include "data/dat01.inc"
// .global byte_80213AC
// .global byte_80213E8
// .global byte_802158C
// .global byte_80215C8
// .global byte_8021604
// .global byte_8021640

.include "asm/asm02.inc"
// .global getChip_8021DA8 // (int chip_idx) -> ChipData*
// .global sub_8021AB4
// .global split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*
// .global sub_8021C68
// .global sub_8021CA8

.include "asm/asm03_0.inc"
// .global sub_802F0D8
// .global sub_802F0F4
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global ClearEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
// .global sub_802FF4C
// .global sub_802FFF4
// .global sub_80301B2
// .global sub_80301DC
// .global sub_80303F2
// .global sub_8030A60
// .global sub_8030AA4

.include "asm/asm03_1.inc"
// .global sub_803578C
// .global sub_8036E78
// .global sub_8036EFE
// .global sub_8036F24
// .global sub_803BB2C
// .global sub_803C2A0
// .global sub_803C330
// .global sub_803C59C
// .global sub_803C620
// .global sub_803C754
// .global sub_803CAF8
// .global sub_803CB00
// .global sub_803CB18
// .global sub_803CDF8
// .global sub_803CE28
// .global sub_803D06C
// .global sub_803D138
// .global sub_803DCD8
// .global sub_803DCE8
// .global sub_803DD60
// .global sub_803E8F8
// .global sub_803EA50
// .global sub_803EA58
// .global sub_803EA60
// .global sub_803EA70
// .global sub_803EA78
// .global sub_803EAE4
// .global sub_803EBAC
// .global sub_803EBB8
// .global sub_803EBF4
// .global sub_803EF60
// .global sub_803EF74
// .global sub_803EF7C

.include "asm/chatbox.inc"
// .global chatbox_803FD78 // (u16 *scriptArr, u8 scriptID) -> void
// .global chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global chatbox_8040818
// .global chatbox_8045F1C
// .global chatbox_8045F2C // (int a1) ->
// .global chatbox_8045F3C
// .global chatbox_8045F4C

.include "asm/asm03_2.inc"
// .global render_graphicalText_8045F8C
// .global sub_8045FBC
// .global sub_8045FC6
// .global sub_80465A0 // (void *a1) -> void
// .global sub_80465BC
// .global sub_80465F8 // () -> void
// .global sub_8046664 // () -> void
// .global sub_8046670
// .global sub_8046696
// .global sub_80466C4
// .global sub_8048F9C
// .global cb_8048FD4
// .global sub_8049D7C
// .global sub_8049D82
// .global sub_804A1D0
// .global sub_804A24C

.include "asm/asm28_0.inc"
// .global sub_809E122

.include "asm/asm28_1.inc"
// .global sub_809F90C

.include "asm/asm32.inc"
// .global sub_81171D4
// .global sub_81171F4
// .global sub_8117D10
// .global sub_811980C
// .global sub_8119854
// .global sub_811A914
// .global sub_811AD04
// .global sub_811AE5C
// .global sub_811AE7C
// .global sub_811F6C0
// .global sub_811F708
// .global sub_811F728
// .global sub_811F7EC
// .global sub_811F7F8
// .global sub_811F91C
// .global sub_811FA0C
// .global sub_811FA22
// .global sub_811FA98
// .global sub_811FAF4
// .global sub_811FB64
// .global sub_811FB84
// .global sub_811FCA4
// .global sub_811FCB8
// .global sub_811FDB8
// .global sub_811FE34
// .global sub_811FE7C
// .global sub_811FF6C
// .global sub_8120018
// .global sub_81200EC
// .global sub_81202B4
// .global sub_81202FC
// .global sub_8120348
// .global sub_8120390
// .global sub_81203E4
// .global sub_8120458
// .global sub_81204C4
// .global sub_812053C
// .global sub_8120618
// .global sub_81206C4
// .global sub_81206F8
// .global sub_8120740
// .global sub_81207C4
// .global sub_81207F8
// .global sub_81209DC
// .global sub_8120BE4
// .global sub_8120C94
// .global sub_8120CC8
// .global sub_8120DAC

.include "asm/asm33.inc"
// .global sub_8123300
// .global byte_8129150
// .global byte_8129178
// .global dword_8129180
// .global sub_8129248
// .global sub_812AC14
// .global sub_812AF3C
// .global sub_812AF78
// .global sub_812AFA4
// .global sub_812AFC8
// .global sub_812B530

.include "data/dat35.inc"
// .global byte_812F044
// .global byte_812F04C
// .global byte_812F054
// .global byte_812F05C
// .global byte_812F064
// .global byte_812F06C

.include "data/dat36.inc"
// .global byte_8138944
// .global byte_8138B90
// .global off_8138C04
// .global off_8138DBC
// .global off_8138F10
// .global off_81390A0
// .global off_81391EC
// .global off_813925C
// .global off_81392A0
// .global off_81393E8

.include "asm/asm37_0.inc"
// .global sub_813B780
// .global sub_813B84C
// .global sub_813B920
// .global sub_813B928
// .global sub_813B950
// .global sub_813B9B4
// .global sub_813B9C4
// .global sub_813B9E0
// .global sub_813B9FC
// .global sub_813BA08
// .global sub_813BA48
// .global sub_813BA64
// .global sub_813BA80
// .global sub_813BAA8
// .global sub_813BAC4
// .global sub_813BAEC
// .global sub_813BB68
// .global sub_813BBD4
// .global sub_813BF60
// .global sub_813BFB8
// .global sub_813C06C
// .global sub_813C1C0
// .global sub_813C334
// .global sub_813C3AC
// .global sub_813D5D0
// .global sub_813D60C
// .global sub_813D638
// .global sub_813D90C
// .global sub_813D978

.include "asm/libs.inc"
// .global sub_81440D8 // static () -> void
// .global sub_81469A0
// .global sub_81469DC
// .global sub_81469E8
// .global sub_8147B24
// .global sub_8147F98
// .global sub_8148224
// .global sub_8148D24
// .global sub_8149568
// .global sub_8149644

.include "data/dat38_60.inc"
// .global dword_86A4740
// .global dword_86A5500
// .global byte_86A5D20
// .global dword_86A5D60
// .global byte_86ACD60
// .global dword_86B7AA0
// .global dword_86B7AE0

.include "data/dat38_63.inc"
// .global dword_86C4B38

.include "data/dat38_67.inc"
// .global dword_86C9108

.include "data/dat38_69.inc"
// .global dword_86C9B54
// .global dword_86C9B94

.include "data/dat38_70.inc"
// .global byte_86C9D6C
// .global dword_86CDBC4

.include "data/dat38_71.inc"
// .global dword_86CEE84
// .global dword_86CF1A8
// .global dword_86CF4AC
// .global dword_86CF618
// .global dword_86CF730

.include "data/dat38_74.inc"
// .global dword_86D5708

.include "data/dat38_76.inc"
// .global dword_86D8FA4
// .global dword_86D9068

.include "data/dat38_85.inc"
// .global dword_86E55FC
// .global byte_86E56FC
// .global dword_86F0D7C

.include "data/dat38_86.inc"
// .global byte_872CF94

.include "data/dat38_87.inc"
// .global byte_873EA50


/* Undeclared Symbols */
// .equ unk_2000090, 0x2000090
// .equ unk_2000260, 0x2000260
// .equ unk_20018C0, 0x20018C0
// .equ unk_20018EC, 0x20018EC
// .equ byte_20018ED, 0x20018ED
// .equ byte_20018EE, 0x20018EE
// .equ byte_20065B4, 0x20065B4
// .equ byte_20065C0, 0x20065C0
// .equ byte_2009390, 0x2009390
// .equ word_2009398, 0x2009398
// .equ word_200939A, 0x200939A
// .equ word_200939C, 0x200939C
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
// .equ byte_200A290, 0x200A290
// .equ byte_200BC50, 0x200BC50
// .equ unk_2011CE0, 0x2011CE0
// .equ decomp_2013A00, 0x2013A00
// .equ unk_2014000, 0x2014000
// .equ unk_2014A00, 0x2014A00
// .equ byte_2016A00, 0x2016A00
// .equ byte_2017A00, 0x2017A00
// .equ unk_2017AE0, 0x2017AE0
// .equ unk_2017BA4, 0x2017BA4
// .equ unk_2017C68, 0x2017C68
// .equ unk_2017E00, 0x2017E00
// .equ unk_2018200, 0x2018200
// .equ unk_2018600, 0x2018600
// .equ unk_2018A00, 0x2018A00
// .equ unk_2018E00, 0x2018E00
// .equ unk_2019200, 0x2019200
// .equ unk_2019600, 0x2019600
// .equ byte_2019A00, 0x2019A00
// .equ unk_2019E00, 0x2019E00
// .equ unk_201A200, 0x201A200
// .equ byte_201B200, 0x201B200
// .equ unk_201BA00, 0x201BA00
// .equ byte_201BA20, 0x201BA20
// .equ byte_201BE80, 0x201BE80
// .equ byte_201BF00, 0x201BF00
// .equ unk_201C380, 0x201C380
// .equ unk_201C400, 0x201C400
// .equ unk_201C480, 0x201C480
// .equ unk_201C4A0, 0x201C4A0
// .equ unk_201C4C0, 0x201C4C0
// .equ word_201C4E0, 0x201C4E0
// .equ word_201C4E2, 0x201C4E2
// .equ unk_201C4F0, 0x201C4F0
// .equ unk_201C500, 0x201C500
// .equ byte_201C780, 0x201C780
// .equ unk_201CA20, 0x201CA20
// .equ unk_201CB80, 0x201CB80
// .equ unk_201CF00, 0x201CF00
// .equ unk_201CF80, 0x201CF80
// .equ unk_201D180, 0x201D180
// .equ unk_201D280, 0x201D280
// .equ word_201DA80, 0x201DA80
// .equ unk_201DD70, 0x201DD70
// .equ unk_201E670, 0x201E670
// .equ unk_201F2F0, 0x201F2F0
// .equ unk_201F320, 0x201F320
// .equ unk_201F4F0, 0x201F4F0
// .equ unk_201F6F0, 0x201F6F0
// .equ unk_201F820, 0x201F820
// .equ unk_201FD60, 0x201FD60
// .equ unk_201FD80, 0x201FD80
// .equ unk_2020A20, 0x2020A20
// .equ unk_20218F0, 0x20218F0
// .equ unk_2021DA0, 0x2021DA0
// .equ unk_2021FF0, 0x2021FF0
// .equ unk_20222F0, 0x20222F0
// .equ unk_20226F0, 0x20226F0
// .equ unk_20229F0, 0x20229F0
// .equ unk_2022AA0, 0x2022AA0
// .equ unk_2022AB0, 0x2022AB0
// .equ unk_2022B70, 0x2022B70
// .equ byte_2022B76, 0x2022B76
// .equ word_2023BA0, 0x2023BA0
// .equ unk_2023BD0, 0x2023BD0
// .equ word_2023FA0, 0x2023FA0
// .equ word_2023FA2, 0x2023FA2
// .equ word_2023FA4, 0x2023FA4
// .equ word_2023FA6, 0x2023FA6
// .equ unk_2023FB0, 0x2023FB0
// .equ unk_2024370, 0x2024370
// .equ unk_20243D0, 0x20243D0
// .equ unk_20243E8, 0x20243E8
// .equ unk_20244C8, 0x20244C8
// .equ unk_2024500, 0x2024500
// .equ unk_2024538, 0x2024538
// .equ unk_2024554, 0x2024554
// .equ unk_2024A20, 0x2024A20
// .equ unk_2024BD0, 0x2024BD0
// .equ unk_2024C10, 0x2024C10
// .equ unk_20251A0, 0x20251A0
// .equ dword_202522C, 0x202522C
// .equ unk_202523C, 0x202523C
// .equ unk_202527C, 0x202527C
// .equ unk_20252BC, 0x20252BC
// .equ unk_2025A70, 0x2025A70
// .equ unk_2025C10, 0x2025C10
// .equ unk_2026A20, 0x2026A20
// .equ unk_2026C10, 0x2026C10
// .equ unk_202708C, 0x202708C
// .equ unk_20270EC, 0x20270EC
// .equ unk_202714C, 0x202714C
// .equ unk_2028A20, 0x2028A20
// .equ unk_202A000, 0x202A000
// .equ word_202A020, 0x202A020
// .equ dword_202A034, 0x202A034
// .equ unk_202A3E0, 0x202A3E0
// .equ word_202A3F4, 0x202A3F4
// .equ word_202A3FC, 0x202A3FC
// .equ unk_202CA00, 0x202CA00
// .equ unk_2033800, 0x2033800
// .equ unk_20343E0, 0x20343E0
// .equ unk_2034400, 0x2034400
// .equ unk_2034458, 0x2034458
// .equ unk_2034538, 0x2034538
// .equ unk_2034570, 0x2034570
// .equ unk_20345A8, 0x20345A8
// .equ unk_20345C4, 0x20345C4
// .equ unk_20345FC, 0x20345FC
// .equ unk_20346DC, 0x20346DC
// .equ unk_2034714, 0x2034714
// .equ unk_203474C, 0x203474C
// .equ unk_2034768, 0x2034768
// .equ unk_20347A0, 0x20347A0
// .equ unk_20347D8, 0x20347D8
// .equ unk_2034814, 0x2034814
// .equ unk_203486C, 0x203486C
// .equ unk_2034B6C, 0x2034B6C
// .equ unk_203526C, 0x203526C
// .equ unk_2035C6C, 0x2035C6C
// .equ unk_203768C, 0x203768C
// .equ unk_20376AC, 0x20376AC
// .equ unk_2037700, 0x2037700
// .equ byte_203770C, 0x203770C
// .equ word_203771C, 0x203771C
// .equ dword_203775C, 0x203775C
// .equ dword_2037760, 0x2037760
// .equ byte_2037770, 0x2037770
// .equ unk_2037780, 0x2037780
// .equ unk_2039AA0, 0x2039AA0
// .equ byte_3001590, 0x3001590
// .equ byte_30015B0, 0x30015B0
// .equ byte_30015F0, 0x30015F0
// .equ byte_3001610, 0x3001610
// .equ byte_3001630, 0x3001630
// .equ byte_30016D0, 0x30016D0
// .equ byte_3001960, 0x3001960
// .equ unk_30019A0, 0x30019A0
// .equ unk_30019C0, 0x30019C0
// .equ unk_30019E0, 0x30019E0
// .equ unk_3001A20, 0x3001A20
// .equ unk_3001A40, 0x3001A40
// .equ unk_3001A60, 0x3001A60
// .equ unk_3001A80, 0x3001A80
// .equ unk_3001AC0, 0x3001AC0
// .equ unk_3001AE0, 0x3001AE0

.endif // INC_ASM_ASM36
