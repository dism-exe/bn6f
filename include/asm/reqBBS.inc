.ifndef INC_ASM_REQBBS
.equ INC_ASM_REQBBS, 0

/* Public Symbols */
.global reqBBS_813E07C
.global reqBBS_cb_draw_813E0A4
.global reqBBS_813E5DC
.global reqBBS_813E616
.global reqBBS_813E660
.global reqBBS_813EE58
.global dword_813F380
.global reqBBS_init_s_2005780
.global reqBBS_cb_813F404
.global reqBBS_813F9A0
.global reqBBS_initMemory_813F9DA
.global sub_813FA24
.global reqBBS_81406FC
.global reqBBS_getTotalPointsIndex // () -> u8
.global reqBBS_81407D8
.global reqBBS_81408B4
.global reqBBS_8140974
.global reqBBS_8140984
.global reqBBS_81409D0 // (int a1) -> int
.global reqBBS_81409E4
.global reqBBS_81409F4
.global reqBBS_setFlag_e17b0f7_8140A00
.global reqBBS_clearFlag_8140A0C
.global reqBBS_runDialog_8140A70
.global dword_8140BAC
.global dword_8140C60
.global dword_8140C68
.global dword_8140C7C
.global dword_8140C90
.global dword_8140CA4
.global dword_8140CB8
.global dword_8140CCC
.global dword_8140CE0
.global dword_8140CF4
.global dword_8140D10
.global dword_8140D1C
.global dword_8140D58
.global dword_8140D6C
.global dword_8140E6C
.global dword_8140FBC
.global dword_814122C
.global dword_81414CC
.global dword_814154C
.global dword_81415F4
.global dword_814172C


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sub_80008C0
// .global CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
// .global initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
// .global loc_8000AC8
// .global decompAndCopyData_8000B30 // (u32 *initRefs) -> void
// .global getPETNaviSelect // () -> u8
// .global change_20013F0_800151C // () -> int
// .global sub_80015FC
// .global sub_8001778
// .global sub_8001788
// .global sub_80017A0
// .global sub_80017AA
// .global sub_80017E0
// .global sub_800183C
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_80018D0

.include "asm/asm00_1.inc"
// .global sub_8002FA6
// .global sub_8005F84
// .global engine_setScreeneffect // (int a1, int a2) -> void
// .global engine_isScreeneffectAnimating // () -> zf

.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global SetEventFlag // (u16 entryFlagBitfield) -> void
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlag // (u16 entryFlagBitfield) -> void
// .global isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
// .global sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
// .global sub_8031A7A

.include "asm/chatbox.inc"
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global chatbox_reqBBS_80404C0
// .global chatbox_8040818
// .global chatbox_8045F3C

.include "asm/asm03_2.inc"
// .global render_graphicalText_8045F8C
// .global sub_8045FC6
// .global sub_80465A0 // (void *a1) -> void
// .global sub_80465BC
// .global sub_80465F8 // () -> void
// .global sub_8046664 // () -> void

.include "asm/asm28_0.inc"
// .global sub_809E122

.include "asm/asm32.inc"
// .global sub_811F7F8
// .global sub_811FA98

.include "asm/asm37_0.inc"
// .global unk_813DBDC
// .global tileRefs_813DBE4
// .global unk_813DEC4
// .global tileRefs_813DF44
// .global off_813DF74
// .global dword_813DF7C

.include "asm/asm37_1.inc"
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void

.include "data/dat38_60.inc"
// .global dword_86A5D60
// .global unk_86ACD60
// .global dword_86B7AE0

.include "data/dat38_87.inc"
// .global dword_87DAC90

.include "data/dat38_92.inc"
// .global dword_87E74F4
// .global dword_87E7514
// .global dword_87E7534
// .global dword_87E7554
// .global dword_87E7574
// .global dword_87E76B8
// .global dword_87E771C
// .global dword_87E7780
// .global dword_87E77E4
// .global dword_87E7848
// .global dword_87EE1AC
// .global dword_87EE2F0
// .global dword_87EE5B0
// .global dword_87EF5A4
// .global dword_87EFBA4
// .global reqBBS_textualShades
// .global byte_87EFE14


/* Undeclared Symbols */
// .equ reqBBS_requestEntriesList, 0x2000290
// .equ unk_2000770, 0x2000770
// .equ unk_2000FC0, 0x2000FC0
// .equ unk_2000FF0, 0x2000FF0
// .equ reqBBS_bxo_2001150, 0x2001150
// .equ byte_2001154, 0x2001154
// .equ dword_2001178, 0x2001178
// .equ unk_2001400, 0x2001400
// .equ dynaicArr, 0x2005780
// .equ unk_200578F, 0x200578F
// .equ reqBBS_numRequestsSent, 0x20065B0
// .equ byte_2008450, 0x2008450
// .equ sChatbox, 0x2009CD0
// .equ decomp_2013A00, 0x2013A00
// .equ unk_2018200, 0x2018200
// .equ reqBBS_tile_data, 0x2018204
// .equ unk_2018A00, 0x2018A00
// .equ unk_2018A04, 0x2018A04
// .equ unk_201AA00, 0x201AA00
// .equ unk_201AA04, 0x201AA04
// .equ unk_201B200, 0x201B200
// .equ unk_201BA00, 0x201BA00
// .equ unk_201BA04, 0x201BA04
// .equ unk_201C200, 0x201C200
// .equ unk_201CA00, 0x201CA00
// .equ reqBBS_requestEntries_IDs, 0x2023A00
// .equ unk_2025A00, 0x2025A00
// .equ reqBBS_requestNames_textualData, 0x2025A04
// .equ unk_2029A00, 0x2029A00
// .equ reqBBS_requestInfo_textOffsets, 0x2029A04
// .equ unk_2033A00, 0x2033A00
// .equ reqBBS_dialogList, 0x2033A04
// .equ byte_3001750, 0x3001750
// .equ unk_30019C0, 0x30019C0
// .equ unk_3001B60, 0x3001B60

.endif // INC_ASM_REQBBS
