.ifndef INC_ASM_ASM37_0
.equ INC_ASM_ASM37_0, 0

/* Public Symbols */
.global sub_813B768
.global sub_813B780
.global loc_813B7A0
.global sub_813B84C
.global sub_813B920
.global sub_813B928
.global sub_813B934
.global sub_813B950
.global sub_813B9B4
.global sub_813B9C4
.global sub_813B9E0
.global sub_813B9FC
.global sub_813BA08
.global sub_813BA48
.global sub_813BA64
.global sub_813BA80
.global sub_813BAA8
.global sub_813BAC4
.global sub_813BAEC
.global sub_813BB68
.global sub_813BBD4
.global sub_813BF1C
.global sub_813BF60
.global sub_813BFB8
.global sub_813C030 // () -> void
.global sub_813C06C
.global sub_813C1C0
.global sub_813C324
.global sub_813C334
.global sub_813C3AC
.global sub_813D41C
.global loc_813D48C
.global sub_813D5C8
.global sub_813D5D0
.global sub_813D60C
.global sub_813D638
.global sub_813D648
.global sub_813D66C
.global sub_813D760
.global sub_813D78C
.global sub_813D7B8
.global sub_813D8C4
.global sub_813D8D0
.global sub_813D90C
.global sub_813D91C
.global sub_813D924
.global sub_813D934
.global sub_813D94C
.global sub_813D960
.global sub_813D978
.global sub_813D98C
.global sub_813D9A0
.global sub_813DA84
.global sub_813DA94
.global sub_813DB24
.global byte_813DBC0
.global unk_813DBDC
.global tileRefs_813DBE4
.global unk_813DEC4
.global tileRefs_813DF44
.global off_813DF74


/* External Symbols */
.include "asm/start.inc"
// .global start_800027C

.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global clearBackwards_80008B4 // (void *mem, int size) -> void
// .global CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
// .global copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
// .global initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
// .global getPETNaviSelect // () -> u8
// .global sub_80010BE
// .global change_20013F0_800151C // () -> int

.include "asm/asm00_2.inc"
// .global navicust_801379E // (int a1, int a2, int a3) -> void
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global sub_80137E6
// .global sub_80137FE

.include "asm/asm02.inc"
// .global getChip_8021DA8 // (int chip_idx) -> ChipData*
// .global split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)

.include "asm/asm03_0.inc"
// .global sub_802D064
// .global sub_802D158
// .global sub_802D15E
// .global setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
// .global isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
// .global setFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
// .global clearFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void

.include "asm/asm03_1.inc"
// .global sub_803CB00
// .global sub_803CE28
// .global sub_803CE44
// .global sub_803CED4
// .global sub_803D108
// .global sub_803DD30

.include "asm/asm32.inc"
// .global loc_8121154

.include "asm/asm36.inc"
// .global sub_8136C24

.include "data/dat36.inc"
// .global dword_813944C
// .global dword_813B1C4
// .global dword_813B48C
// .global dword_813B4B0
// .global dword_813B4D4

.include "asm/asm37_1.inc"
// .global sub_81465BC
// .global sub_814692C
// .global sub_8146B70
// .global sub_8146E78
// .global sub_8147B3C
// .global sub_8148884
// .global sub_8148FC0
// .global sub_8149718


/* Undeclared Symbols */
.equ unk_2000090, 0x2000090
.equ byte_2006C50, 0x2006C50
.equ unk_2006C88, 0x2006C88
.equ unk_2006CC0, 0x2006CC0
.equ unk_2006CF8, 0x2006CF8
.equ unk_2006D30, 0x2006D30
.equ unk_2006D68, 0x2006D68
.equ byte_2006DA0, 0x2006DA0
.equ unk_2006DD8, 0x2006DD8
.equ byte_2009470, 0x2009470
.equ unk_2009480, 0x2009480
.equ byte_20096D8, 0x20096D8
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ dword_2009A28, 0x2009A28
.equ unk_2009F00, 0x2009F00
.equ byte_200AF80, 0x200AF80
.equ byte_200AF81, 0x200AF81
.equ byte_200AF82, 0x200AF82
.equ byte_200AF83, 0x200AF83
.equ byte_200AF85, 0x200AF85
.equ dword_200B1B0, 0x200B1B0
.equ word_200B1B4, 0x200B1B4
.equ word_200B1B6, 0x200B1B6
.equ word_200B1B8, 0x200B1B8
.equ word_200B1BA, 0x200B1BA
.equ byte_200BC30, 0x200BC30
.equ byte_200BC3E, 0x200BC3E
.equ byte_200BC50, 0x200BC50
.equ byte_200BC51, 0x200BC51
.equ byte_200BC52, 0x200BC52
.equ byte_200BC53, 0x200BC53
.equ byte_200BC54, 0x200BC54
.equ byte_200BC55, 0x200BC55
.equ byte_200BC56, 0x200BC56
.equ byte_200BC57, 0x200BC57
.equ word_200BC58, 0x200BC58
.equ word_200BC5A, 0x200BC5A
.equ byte_200DD10, 0x200DD10
.equ byte_200DD11, 0x200DD11
.equ dword_200DD14, 0x200DD14
.equ byte_200F360, 0x200F360
.equ unk_200FFF0, 0x200FFF0
.equ unk_2010150, 0x2010150
.equ byte_20101B4, 0x20101B4
.equ byte_2010290, 0x2010290
.equ unk_201BA00, 0x201BA00
.equ unk_201BA40, 0x201BA40
.equ unk_201BC40, 0x201BC40
.equ unk_201BC80, 0x201BC80
.equ reqBBS_requestNames_textualData, 0x2025A04
.equ reqBBS_requestInfo_textOffsets, 0x2029A04
.equ word_2036780, 0x2036780
.equ dword_2036788, 0x2036788
.equ unk_20399F0, 0x20399F0
.equ unk_2039A00, 0x2039A00
.equ dword_203F7D8, 0x203F7D8
.equ dword_203F7D8, 0x203F7D8
.equ unk_30019E0, 0x30019E0

.endif // INC_ASM_ASM37_0
