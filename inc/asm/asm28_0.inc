.ifndef INC_ASM_ASM28_0
.equ INC_ASM_ASM28_0, 0

/* Public Symbols */
.global dword_80991F4
.global dword_8099DC0
.global dword_8099E04
.global dword_8099EA0
.global sub_809BA14
.global sub_809C890
.global sub_809C940
.global sub_809C968
.global sub_809CA40
.global sub_809CA84
.global unk_809CAD8
.global sub_809CF2C
.global unk_809D328
.global sub_809E04C
.global sub_809E064
.global setFlag3_2e2_2001C88
.global updateFlags_809E0B0 // () -> void
.global sub_809E122
.global sub_809E13C
.global sub_809E14C
.global sub_809E188
.global loc_809E1A4
.global sub_809E1AE
.global sub_809E1FA
.global sub_809E218
.global sub_809E228
.global sub_809E230
.global sub_809E23C
.global sub_809E248
.global sub_809E254
.global sub_809E2AE
.global sub_809E2B8
.global sub_809E2C2
.global loc_809E2C8
.global sub_809E2DC
.global sub_809E2F4
.global loc_809E2F6
.global sub_809E2FC
.global loc_809E2FE
.global sub_809E304
.global loc_809E306
.global sub_809E312
.global loc_809E314
.global sub_809E3A2
.global sub_809E3AA
.global sub_809E3B2
.global sub_809E3C4
.global sub_809E434
.global sub_809E462
.global sub_809E496
.global dword_809E530


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
// .global decompAndCopyData_8000B30 // (u32 *initRefs) -> void
// .global getPETNaviSelect // () -> u8
// .global sub_8001172
// .global sub_8001850
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void

.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_update
// .global sprite_load // (int a1, int a2, int a3) ->
// .global sprite_setScaleParameters
// .global sub_8002C7A
// .global sub_8002CCE
// .global sprite_makeScalable
// .global sprite_makeUnscalable
// .global sprite_setPallete // (int pallete) -> void
// .global sprite_setAnimation // (u8 a1) -> void

.include "asm/asm00_1.inc"
// .global sub_8002DEA
// .global sub_8002E14
// .global sub_8002E3C
// .global sub_8002E52
// .global sub_8002ED0
// .global sub_8002EE8
// .global sub_8002F90 // () -> void
// .global sub_80037AC
// .global sub_8003962
// .global sub_8003984
// .global sub_800399A
// .global sub_8003AB2
// .global sub_8003AD4
// .global sub_8003AEA
// .global sub_8003B4C
// .global sub_8003B86
// .global engine_isScreeneffectAnimating // () -> zf

.include "asm/asm00_2.inc"
// .global sub_8013704
// .global sub_80137B6 // (int a1, int a2) -> u8

.include "asm/asm02.inc"
// .global sub_8021AEE

.include "asm/asm03_0.inc"
// .global sub_802D15E
// .global setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
// .global toggleFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
// .global isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
// .global sub_802F238
// .global sub_80301B2
// .global sub_80301DC
// .global sub_8030B6A
// .global sub_8031612
// .global sub_8031A7A
// .global sub_8033978
// .global sub_8033FC0
// .global sub_8034C36
// .global sub_8035694
// .global init_s_02011C50_8036E90
// .global s_2011C50_ptr_1C_isNull // () -> zf
// .global sub_8037AEC
// .global sub_803CD98
// .global sub_803CE28
// .global sub_803D080
// .global sub_803D108
// .global sub_803F798
// .global sub_803F9E4

.include "asm/chatbox.inc"
// .global chatbox_dead_uncomp_803FD3C
// .global chatbox_runTrainScript // (u8 scriptOffIdx) -> void
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global chatbox_8040818
// .global chatbox_8045F3C
// .global chatbox_8045F4C

.include "asm/asm03_1.inc"
// .global render_graphicalText_8045F8C
// .global sub_80465A0 // (void *a1) -> void
// .global sub_80465BC
// .global sub_80465F8 // () -> void
// .global sub_8046664 // () -> void

.include "asm/asm25.inc"
// .global off_8090000

.include "asm/asm32.inc"
// .global sub_811980C
// .global sub_8119854
// .global sub_811EBE0

.include "asm/asm37_0.inc"
// .global sub_813D41C
// .global loc_813D48C

.include "asm/reqBBS.inc"
// .global reqBBS_81407D8
// .global reqBBS_8140974


/* Undeclared Symbols */
.equ byte_2000AA0, 0x2000AA0
.equ byte_2000AA1, 0x2000AA1
.equ byte_2000AA2, 0x2000AA2
.equ byte_2000AA3, 0x2000AA3
.equ byte_2000AA4, 0x2000AA4
.equ byte_2000AA5, 0x2000AA5
.equ word_2000AA6, 0x2000AA6
.equ byte_2000AA8, 0x2000AA8
.equ byte_2000AAB, 0x2000AAB
.equ dword_2000AAC, 0x2000AAC
.equ dword_2000AB0, 0x2000AB0
.equ dword_2000AB4, 0x2000AB4
.equ dword_2000AB8, 0x2000AB8
.equ sReqBBS_GUI, 0x2005780
.equ sReqBBS_GUI, 0x2005780
.equ dword_2005800, 0x2005800
.equ dword_2005810, 0x2005810
.equ byte_2009F40, 0x2009F40
.equ byte_2009F4D, 0x2009F4D
.equ byte_2009F4E, 0x2009F4E
.equ byte_2009F4F, 0x2009F4F
.equ byte_2009FC3, 0x2009FC3
.equ unk_200AC80, 0x200AC80
.equ byte_200ACE0, 0x200ACE0
.equ byte_200ACE1, 0x200ACE1
.equ byte_200ACE2, 0x200ACE2
.equ dword_200ACE8, 0x200ACE8
.equ dword_200ACEC, 0x200ACEC
.equ dword_200ACF0, 0x200ACF0
.equ byte_200ACF5, 0x200ACF5
.equ dword_200ACF8, 0x200ACF8
.equ dword_200ACF8, 0x200ACF8
.equ byte_200ACFC, 0x200ACFC
.equ dword_200AD00, 0x200AD00
.equ unk_200EF40, 0x200EF40
.equ unk_2011C50, 0x2011C50
.equ dword_2011CC0, 0x2011CC0
.equ unk_2020000, 0x2020000
.equ unk_202DA04, 0x202DA04
.equ unk_202FA04, 0x202FA04
.equ unk_2033404, 0x2033404
.equ unk_2033700, 0x2033700
.equ Undocumented_GreenSwap, 0x4000002
.equ InterruptEnableRegister, 0x4000200
.equ dword_86A5D60, 0x86A5D60
.equ loc_86C54D4, 0x86C54D4
.equ loc_86C5790, 0x86C5790
// .global scripts_86C580C
// .global byte_86C67E4

.endif // INC_ASM_ASM28_0
