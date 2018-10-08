.ifndef INC_ASM_ASM03_1
.equ INC_ASM_ASM03_1, 0

/* Public Symbols */
.global off_8033764
.global off_8033770
.global off_803378C
.global off_803385C
.global off_8033878
.global sub_8033948
.global sub_8033978
.global sub_80339CC
.global sub_8033FC0
.global sub_80341AA
.global off_80348FC
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
.global sub_8039570
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
.global sub_803D1A8 // () -> void
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
.global sub_803E928
.global sub_803E930
.global sub_803E938
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
.global clear_200AD04 // () -> void
.global sub_803F4EC
.global sub_803F500
.global loc_803F512
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
.global sub_803FA42
.global sub_803FB28
.global dword_803FCE4
.global sub_803FCF0


/* External Symbols */
.include "asm/start.inc"
// .global start_8000288

.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sound_bgmusic_play // (int a1) -> void
// .global sub_80005F2
// .global sub_800068A
// .global sub_80006A2
// .global musicGameState_8000784 // () -> void
// .global clearBackwards_80008B4 // (void *mem, int size) -> void
// .global sub_80008C0
// .global CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
// .global CpuFastSet_8000900 // (int a1, int a2) -> void
// .global copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
// .global CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
// .global sub_800096C
// .global loc_8000AC4
// .global loc_8000AC8
// .global decompAndCopyData_8000B30 // (u32 *initRefs) -> void
// .global sub_8000C00
// .global sub_8000EE4
// .global getPETNaviSelect // () -> u8
// .global sub_80010BE
// .global sub_80010C6
// .global sub_80010D4
// .global sub_8001172
// .global sub_8001514 // () -> void
// .global change_20013F0_800151C // () -> int
// .global sub_80015FC
// .global sub_8001778
// .global sub_8001788
// .global sub_80017A0
// .global sub_80017AA
// .global sub_80017E0
// .global sub_800183C
// .global sub_8001850
// .global sub_8001890
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_80018D0
// .global sub_80018E0
// .global sub_8001930
// .global sub_8001974
// .global sub_8001B1C
// .global sub_8001B6C
// .global sub_8002354
// .global sub_8002468
// .global sub_8002484
// .global sub_80024C0

.include "asm/sprite.inc"
// .global sub_80027C4

.include "asm/asm00_1.inc"
// .global sub_8003570
// .global sub_80035A2
// .global sub_8003914
// .global sub_8003940
// .global sub_80039CC
// .global sub_8003A64
// .global loc_8003A90
// .global sub_8003B1C
// .global sub_80047E0
// .global sub_80048B2
// .global gameState_8005BC8 // (BattleSettings *bt, bool a2) -> void
// .global sub_8005C04
// .global sub_8005F00
// .global sub_8005F14
// .global sub_8005F32
// .global sub_8005F40
// .global sub_8005F6C
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global engine_isScreeneffectAnimating // () -> zf
// .global byte_80065E0
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
// .global sub_80071D4
// .global loc_8007800
// .global getBattleSettingsFromList0 // (int battleSettingsIdx) -> BattleSettings*
// .global sub_800A7D0 // () -> (zf, int)
// .global sub_800A908
// .global sub_800B6B0
// .global sub_800B734

.include "asm/asm00_2.inc"
// .global sub_80136F0
// .global sub_8013704
// .global navicust_801379E // (int a1, int a2, int a3) -> void
// .global sub_80137E6
// .global sub_80137FE
// .global sub_80141AC
// .global sub_8015C32

.include "asm/asm02.inc"
// .global sub_8021AEE
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*
// .global sub_8021BC0
// .global sub_8021BD8

.include "asm/asm03_0.inc"
// .global sub_802D070
// .global sub_802D150
// .global get_802D246 // () -> int
// .global setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
// .global isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
// .global isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
// .global setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
// .global setFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
// .global clearFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
// .global clearFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
// .global loc_802F200
// .global sub_802F238
// .global sub_802F530
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
// .global sub_802FF2C
// .global sub_80301B2
// .global sub_80301D0
// .global sub_80301DC
// .global sub_80302A8
// .global sub_8030A30
// .global sub_8030A60
// .global loc_80318B0
// .global sub_8031A7A

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

.include "asm/asm03_2.inc"
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
// .global sub_804CF84

.include "data/dat03.inc"
// .global off_804D0A4
// .global off_804D0AC
// .global off_804D0B4
// .global off_804D0BC
// .global byte_804D0FC
// .global byte_804D0FE
// .global byte_804D100

.include "asm/asm04.inc"
// .global sub_804E720

.include "data/dat04.inc"
// .global off_804E92C
// .global off_804E940
// .global off_804E954
// .global off_804E968
// .global byte_804EA08
// .global byte_804EA0D
// .global byte_804EA12
// .global byte_804EA1C
// .global byte_804EA1C
// .global unk_80525C0
// .global byte_80525DC

.include "asm/asm05.inc"
// .global sub_80527F0

.include "data/dat05.inc"
// .global off_8052D88
// .global off_8052DB4
// .global off_8052DE0
// .global off_8052E0C
// .global byte_8052F6C
// .global byte_8052F77
// .global byte_8052F82

.include "asm/asm06.inc"
// .global sub_80596C8

.include "data/dat06.inc"
// .global off_8059D48
// .global off_8059D5C
// .global off_8059D70
// .global off_8059D84
// .global byte_8059E24
// .global byte_8059E29
// .global byte_8059E2E

.include "asm/asm07.inc"
// .global sub_805DFF0

.include "data/dat07.inc"
// .global off_805E15C
// .global off_805E170
// .global off_805E184
// .global off_805E198
// .global byte_805E238
// .global byte_805E23D
// .global byte_805E242

.include "asm/asm08.inc"
// .global sub_806044C

.include "data/dat08.inc"
// .global off_806063C
// .global off_806064C
// .global off_806065C
// .global off_806066C
// .global byte_80606EC
// .global byte_80606F0
// .global byte_80606F4
// .global byte_80606F4
// .global byte_8060C02

.include "asm/asm09.inc"
// .global sub_8062BCC

.include "data/dat09.inc"
// .global off_8062F48
// .global off_8062F60
// .global off_8062F78
// .global off_8062F90
// .global byte_8063050
// .global byte_8063056

.include "asm/asm10.inc"
// .global sub_806649C
// .global sub_806651C
// .global sub_8066540
// .global off_80665A4
// .global off_80665AC
// .global off_80665B4
// .global off_80665BC
// .global byte_80665E4
// .global sub_8067C88
// .global sub_8067D1C
// .global sub_8067D46
// .global off_8067DC8
// .global off_8067DD4
// .global off_8067DE0
// .global pt_8067DEC

.include "data/dat10.inc"
// .global byte_8067E28

.include "asm/asm11.inc"
// .global sub_8069140
// .global sub_80691D4
// .global sub_80691FE
// .global off_80692F8
// .global off_8069304
// .global off_8069310
// .global off_806931C
// .global byte_8069358
// .global sub_806A120
// .global sub_806A1B4
// .global sub_806A1DE
// .global off_806A260
// .global off_806A26C
// .global off_806A278
// .global off_806A284
// .global byte_806A2C0
// .global sub_806AB94
// .global sub_806ACC0
// .global sub_806AD00
// .global off_806AE08
// .global off_806AE1C
// .global off_806AE30
// .global off_806AE44
// .global byte_806AEA8
// .global sub_806C35C
// .global sub_806C4B0
// .global sub_806C59C

.include "data/dat11.inc"
// .global off_806C7B0
// .global off_806C7CC
// .global off_806C7E8
// .global off_806C804
// .global byte_806C870

.include "asm/asm12.inc"
// .global sub_806DA58
// .global sub_806DC0C
// .global sub_806DCD4

.include "data/dat12.inc"
// .global off_806DFB0
// .global dword_806DFF0
// .global off_806E030
// .global off_806E070
// .global byte_806E1B0

.include "asm/asm13.inc"
// .global sub_806FD54
// .global sub_806FF08
// .global sub_806FFDA

.include "data/dat13.inc"
// .global off_807022C
// .global dword_807026C
// .global off_80702AC
// .global off_80702EC
// .global byte_807042C

.include "asm/asm14.inc"
// .global sub_8071C30
// .global sub_8071CC4
// .global sub_8071CEE
// .global off_8071EB0
// .global dword_8071EBC
// .global off_8071EC8
// .global off_8071ED4
// .global byte_8071F10
// .global byte_8071F13

.include "asm/asm15.inc"
// .global sub_8075530
// .global sub_80755C4
// .global sub_80755EE

.include "data/dat15.inc"
// .global off_80758A0
// .global off_80758AC
// .global off_80758B8
// .global off_80758C4
// .global byte_8075900
// .global byte_8075903

.include "asm/asm16.inc"
// .global sub_8077DE0
// .global sub_8077E60
// .global sub_8077E84

.include "data/dat16.inc"
// .global off_8078104
// .global dword_807810C
// .global off_8078114
// .global off_807811C
// .global byte_8078144

.include "asm/asm17.inc"
// .global sub_80793E8
// .global sub_8079468
// .global sub_807948C

.include "data/dat17.inc"
// .global off_807952C
// .global off_8079534
// .global off_807953C
// .global off_8079544
// .global byte_807956C
// .global byte_807956E

.include "asm/asm18.inc"
// .global sub_807A9CC
// .global sub_807AAAC
// .global sub_807AAD6

.include "data/dat18.inc"
// .global off_807ADEC
// .global dword_807ADF8
// .global off_807AE04
// .global off_807AE10
// .global byte_807AE4C

.include "asm/asm19.inc"
// .global sub_807CF24
// .global sub_807CFCC
// .global sub_807CFFC

.include "data/dat19.inc"
// .global off_807D2F0
// .global off_807D300
// .global off_807D310
// .global off_807D320
// .global byte_807D370

.include "asm/asm20.inc"
// .global sub_807EDD4
// .global sub_807EE68
// .global sub_807EE92

.include "data/dat20.inc"
// .global dword_807F1F8
// .global dword_807F204
// .global dword_807F210
// .global off_807F21C
// .global byte_807F268

.include "data/dat27.inc"
// .global byte_8098358
// .global unk_8098384
// .global dword_80984C8
// .global dword_8098824
// .global dword_80988E4
// .global dword_809895C
// .global byte_80989C1
// .global byte_8098BB8

.include "asm/asm28_0.inc"
// .global byte_80990B8
// .global dword_80991F4
// .global dword_8099DC0
// .global dword_8099E04
// .global dword_8099EA0
// .global unk_809A8A8
// .global byte_809AA34
// .global unk_809AE68
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
// .global sub_809E188
// .global loc_809E1A4
// .global sub_809E1AE
// .global sub_809E1D8
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
// .global loc_809E2FE
// .global sub_809E312
// .global loc_809E314
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

.include "asm/asm31.inc"
// .global loc_80C1008

.include "asm/asm32.inc"
// .global sub_811D634
// .global sub_811D66C
// .global sub_811D69C
// .global sub_811DBF0
// .global sub_811EBE0
// .global sub_811F290
// .global sub_8120DF0

.include "asm/asm33.inc"
// .global sub_8123360

.include "asm/asm37_0.inc"
// .global sub_813B780
// .global sub_813C3AC
// .global sub_813D5C8
// .global sub_813D60C
// .global sub_813D638
// .global sub_813D648
// .global sub_813D750
// .global sub_813D91C
// .global sub_813D934
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

.include "data/dat38_60.inc"
// .global unk_8699EDC
// .global dword_86A4A40
// .global unk_86A4D40
// .global unk_86A5180
// .global dword_86A5300
// .global dword_86A5500
// .global dword_86A5D60
// .global unk_86ACD60
// .global dword_86B7AE0
// .global dword_86BEAE0
// .global dword_86C0D20
// .global unk_86C0EA0
// .global unk_86C0FA0
// .global unk_86C10A0
// .global unk_86C11A0
// .global unk_86C12A0
// .global byte_86C13A0
// .global byte_86C18A0
// .global byte_86C18E0
// .global byte_86C1920
// .global byte_86C1960
// .global byte_86C19A0
// .global byte_86C19E0
// .global byte_86C1A20
// .global byte_86C1A60
// .global byte_86C1AA0
// .global unk_86C1B20
// .global unk_86C1BA0
// .global unk_86C1C20
// .global unk_86C1CA0
// .global unk_86C1D20
// .global unk_86C1DA0
// .global byte_86C1E20
// .global byte_86C1EA0
// .global byte_86C1F20
// .global byte_86C1F80
// .global byte_86C22C0
// .global byte_86C22E0
// .global byte_86C2300
// .global byte_86C2320
// .global byte_86C2340
// .global byte_86C2360
// .global byte_86C2380

.include "data/dat38_61.inc"
// .global byte_86C3C94

.include "data/dat38_62.inc"
// .global byte_86C3FD4
// .global byte_86C4194
// .global dword_86C41B4

.include "data/dat38_63.inc"
// .global byte_86C4660

.include "data/dat38_70.inc"
// .global unk_86CB360

.include "data/dat38_87.inc"
// .global dword_873B9E0
// .global byte_87E36F8

.include "data/dat38_88.inc"
// .global dword_87E4FE0
// .global byte_87E5000

.include "data/dat38_89.inc"
// .global unk_87E54B0

.include "data/dat38_90.inc"
// .global dword_87E660C
// .global dword_87E66EC
// .global byte_87E672C
// .global word_87E672E

.include "data/dat38_91.inc"
// .global byte_87E6BDC

.include "data/dat38_96.inc"
// .global aLlllllllllllll
// .global dword_87F2808
// .global dword_87F2A1C


/* Undeclared Symbols */
// .equ timer_2000000, 0x2000000
// .equ dword_2000DC0, 0x2000DC0
// .equ dword_2000DC4, 0x2000DC4
// .equ dword_2000DC4, 0x2000DC4
// .equ byte_20010F0, 0x20010F0
// .equ unk_20057B0, 0x20057B0
// .equ unk_2006710, 0x2006710
// .equ dword_2006714, 0x2006714
// .equ unk_2006720, 0x2006720
// .equ dword_2006740, 0x2006740
// .equ dword_2006744, 0x2006744
// .equ unk_2006750, 0x2006750
// .equ word_2006770, 0x2006770
// .equ byte_2006772, 0x2006772
// .equ word_2006774, 0x2006774
// .equ word_2006776, 0x2006776
// .equ unk_2006778, 0x2006778
// .equ byte_2006788, 0x2006788
// .equ unk_2006798, 0x2006798
// .equ byte_20067AE, 0x20067AE
// .equ dword_20067C0, 0x20067C0
// .equ byte_2008978, 0x2008978
// .equ dword_200897C, 0x200897C
// .equ unk_2009450, 0x2009450
// .equ unk_2009460, 0x2009460
// .equ unk_2009480, 0x2009480
// .equ byte_2009790, 0x2009790
// .equ byte_2009940, 0x2009940
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ sCamera, 0x2009980
// .equ dword_2009A10, 0x2009A10
// .equ dword_2009A18, 0x2009A18
// .equ dword_2009A24, 0x2009A24
// .equ dword_2009A28, 0x2009A28
// .equ sSubmenu, 0x2009A30
// .equ unk_2009AC0, 0x2009AC0
// .equ unk_200A010, 0x200A010
// .equ sJoystick, 0x200A270
// .equ byte_200A290, 0x200A290
// .equ byte_200A2A4, 0x200A2A4
// .equ byte_200A2A6, 0x200A2A6
// .equ byte_200A2A7, 0x200A2A7
// .equ word_200A2B0, 0x200A2B0
// .equ word_200A2B4, 0x200A2B4
// .equ word_200A2B6, 0x200A2B6
// .equ unk_200A3A0, 0x200A3A0
// .equ unk_200A3B0, 0x200A3B0
// .equ unk_200A3C0, 0x200A3C0
// .equ unk_200A3E0, 0x200A3E0
// .equ unk_200A400, 0x200A400
// .equ unk_200A420, 0x200A420
// .equ byte_200AC20, 0x200AC20
// .equ byte_200AC21, 0x200AC21
// .equ byte_200AC22, 0x200AC22
// .equ byte_200AC23, 0x200AC23
// .equ byte_200AC27, 0x200AC27
// .equ unk_200AC30, 0x200AC30
// .equ byte_200AC33, 0x200AC33
// .equ byte_200AC34, 0x200AC34
// .equ byte_200AC35, 0x200AC35
// .equ unk_200AC80, 0x200AC80
// .equ word_200AC84, 0x200AC84
// .equ byte_200AD04, 0x200AD04
// .equ byte_200AD05, 0x200AD05
// .equ word_200AD06, 0x200AD06
// .equ byte_200AF80, 0x200AF80
// .equ byte_200AF81, 0x200AF81
// .equ byte_200AF82, 0x200AF82
// .equ byte_200AF84, 0x200AF84
// .equ byte_200AF85, 0x200AF85
// .equ dword_200AF88, 0x200AF88
// .equ dword_200AF8C, 0x200AF8C
// .equ byte_200AF90, 0x200AF90
// .equ dword_200AF94, 0x200AF94
// .equ byte_200B1A0, 0x200B1A0
// .equ byte_200B1A1, 0x200B1A1
// .equ byte_200B1A2, 0x200B1A2
// .equ byte_200B1A3, 0x200B1A3
// .equ dword_200B1B0, 0x200B1B0
// .equ byte_200BC30, 0x200BC30
// .equ byte_200BC31, 0x200BC31
// .equ byte_200BC32, 0x200BC32
// .equ byte_200BC35, 0x200BC35
// .equ byte_200BC3D, 0x200BC3D
// .equ byte_200BC50, 0x200BC50
// .equ dword_200BC5C, 0x200BC5C
// .equ byte_200BC60, 0x200BC60
// .equ byte_200BC61, 0x200BC61
// .equ unk_200BC70, 0x200BC70
// .equ byte_200DD10, 0x200DD10
// .equ byte_200F348, 0x200F348
// .equ byte_200F360, 0x200F360
// .equ byte_200F361, 0x200F361
// .equ byte_200F362, 0x200F362
// .equ dword_200F368, 0x200F368
// .equ unk_200F380, 0x200F380
// .equ dword_200F444, 0x200F444
// .equ byte_200F460, 0x200F460
// .equ unk_200FE70, 0x200FE70
// .equ byte_2010144, 0x2010144
// .equ byte_2010280, 0x2010280
// .equ byte_2010288, 0x2010288
// .equ word_2010420, 0x2010420
// .equ byte_2011800, 0x2011800
// .equ byte_2011805, 0x2011805
// .equ byte_2011A40, 0x2011A40
// .equ dword_2011BD0, 0x2011BD0
// .equ dword_2011BD4, 0x2011BD4
// .equ unk_2011E30, 0x2011E30
// .equ byte_2011E34, 0x2011E34
// .equ byte_2011E37, 0x2011E37
// .equ word_2011E38, 0x2011E38
// .equ byte_2011E40, 0x2011E40
// .equ unk_2011E60, 0x2011E60
// .equ dword_2011E68, 0x2011E68
// .equ dword_2011E6C, 0x2011E6C
// .equ dword_2011E70, 0x2011E70
// .equ unk_2011EA0, 0x2011EA0
// .equ decomp_2013A00, 0x2013A00
// .equ unk_2014A00, 0x2014A00
// .equ byte_2017A00, 0x2017A00
// .equ byte_2017A04, 0x2017A04
// .equ unk_2018A00, 0x2018A00
// .equ unk_2018A04, 0x2018A04
// .equ unk_201AA00, 0x201AA00
// .equ unk_201BA00, 0x201BA00
// .equ unk_201BA10, 0x201BA10
// .equ unk_201F320, 0x201F320
// .equ unk_201F5A0, 0x201F5A0
// .equ unk_2024A00, 0x2024A00
// .equ unk_2024E00, 0x2024E00
// .equ unk_2025200, 0x2025200
// .equ unk_2025600, 0x2025600
// .equ unk_2025A00, 0x2025A00
// .equ unk_2025E00, 0x2025E00
// .equ unk_2026200, 0x2026200
// .equ unk_2026600, 0x2026600
// .equ unk_2026A00, 0x2026A00
// .equ byte_2027200, 0x2027200
// .equ unk_2027400, 0x2027400
// .equ unk_2027A00, 0x2027A00
// .equ unk_2028200, 0x2028200
// .equ unk_2028204, 0x2028204
// .equ unk_2028A00, 0x2028A00
// .equ unk_2029200, 0x2029200
// .equ unk_2029A00, 0x2029A00
// .equ reqBBS_requestInfo_textOffsets, 0x2029A04
// .equ unk_2029E00, 0x2029E00
// .equ unk_2029E04, 0x2029E04
// .equ unk_202A200, 0x202A200
// .equ unk_202A204, 0x202A204
// .equ unk_202A600, 0x202A600
// .equ unk_202A604, 0x202A604
// .equ unk_202AB00, 0x202AB00
// .equ unk_202AF00, 0x202AF00
// .equ unk_202DA04, 0x202DA04
// .equ unk_2030003, 0x2030003
// .equ unk_2030A00, 0x2030A00
// .equ unk_2032A00, 0x2032A00
// .equ unk_2033400, 0x2033400
// .equ unk_2034A00, 0x2034A00
// .equ word_2036780, 0x2036780
// .equ unk_20399F0, 0x20399F0
// .equ unk_2039A00, 0x2039A00
// .equ unk_3001550, 0x3001550
// .equ unk_30015D0, 0x30015D0
// .equ unk_30016D0, 0x30016D0
// .equ unk_3001750, 0x3001750
// .equ word_3001960, 0x3001960
// .equ unk_3001980, 0x3001980
// .equ unk_30019A0, 0x30019A0
// .equ unk_30019C0, 0x30019C0
// .equ unk_30019E0, 0x30019E0
// .equ unk_3001A40, 0x3001A40
// .equ unk_3001AE0, 0x3001AE0
// .equ unk_3001B20, 0x3001B20
// .equ unk_3001B60, 0x3001B60
.equ LCDControl, 0x4000000
.equ BG1X_Offset, 0x4000014
// .global comp_82E8470
// .global spriteWhiteDot
// .global compSpriteWhiteDot_84E0C4C
// .global compSpriteWhiteDot_84E0C4C
// .global compSpriteWhiteDot_84E0C4C
// .global compSpriteWhiteDot_84E0C4C
// .global compSpriteWhiteDot_84E0C4C
// .global compSpriteWhiteDot_84E0C4C
// .global compFile_86C23A0
// .global comp_86C2E2C
// .global comp_86C33B4
// .global comp_86C3528
// .global comp_86C3E94
// .global comp_86C41D0
// .global comp_86C4490
// .global comp_86C45A8
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

.endif // INC_ASM_ASM03_1
