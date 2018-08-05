.ifndef INC_ASM28
.equ INC_ASM28, 0

/* Public Symbols */
.global unk_80991F4
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
.global sub_809E04C
.global sub_809E064
.global sub_809E098
.global sub_809E0B0
.global sub_809E122
.global sub_809E13C
.global sub_809E14C
.global sub_809E188
.global sub_809E1AE
.global sub_809E228
.global sub_809E230
.global sub_809E23C
.global sub_809E248
.global sub_809E254
.global sub_809E2AE
.global sub_809E2B8
.global sub_809E2C2
.global sub_809E2F4
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
.global sub_809F68C
.global dword_809F6CC
.global sub_809F90C
.global sub_809F942
.global sub_809F9BE
.global sub_809F9C8
.global sub_809F9DC
.global sub_809FAF4
.global off_809FEA0


/* External Symbols */
.include "asm02.inc"
// .global dword_8021AEC

.include "asm32.inc"
// .global sub_811980C
// .global sub_8119854
// .global sub_811EBE0

.include "asm37_1.inc"
// .global sub_8143B88
// .global sub_8143DBC
// .global SWI_Div

.include "reqBBS.inc"
// .global reqBBS_81407D8
// .global reqBBS_8140974

.include "asm00.inc"
// .global sound_play
// .global sound_80005D4 // (int a3) -> void
// .global CpuSet_ZeroFillWord
// .global sub_8000900 // (int a3, int a2) -> void
// .global sub_800093C
// .global initMemblockToByte
// .global sub_8000B30
// .global sub_8000E3A
// .global getPETNaviSelect
// .global sub_8001172
// .global calcAngle_800117C
// .global sub_8001850
// .global drawTiles // (int a3, int a2, int a1) -> void
// .global sprite_loadAnimationData_80026A4
// .global anim_80026C4
// .global sub_80026E4
// .global sub_8002C24
// .global sub_8002C52
// .global sub_8002C68
// .global sub_8002C7A
// .global sub_8002CCE
// .global sub_8002D14
// .global sprite_makeUnscalable
// .global sprite_setPallete
// .global sprite_setAnimation
// .global sub_8002DEA
// .global sub_8002E14
// .global sub_8002E3C
// .global sub_8002E52
// .global sub_8002ED0
// .global sub_8002EE8
// .global sub_8002EF6
// .global sub_8002F2C
// .global sub_8002F5C
// .global sub_8002F90
// .global sub_8002FA6
// .global sub_8003006
// .global sub_80037AC
// .global sub_8003962
// .global sub_8003984
// .global sub_800399A
// .global sub_8003AB2
// .global sub_8003AD4
// .global sub_8003AEA
// .global sub_8003B4C
// .global sub_8003B86
// .global sub_8004602
// .global sub_80047E0
// .global sub_80062C8
// .global engine_isScreeneffectAnimating
// .global sub_8013704
// .global sub_80137B6

.include "asm37_0.inc"
// .global sub_813D41C
// .global loc_813D48C

.include "asm03_0.inc"
// .global sub_802D15E
// .global sub_802F110
// .global sub_802F114
// .global sub_802F12C
// .global sub_802F130
// .global sub_802F148
// .global sub_802F164
// .global zf_802F168
// .global sub_802F238
// .global sub_80301B2
// .global sub_80301DC
// .global sub_80302A8
// .global sub_8030B6A
// .global sub_8031612
// .global sub_8031A7A
// .global sub_8033978
// .global sub_8033FC0
// .global sub_8034C36
// .global sub_8035694
// .global sub_8036E90
// .global sub_8036F36
// .global sub_803CD98
// .global sub_803CE28
// .global sub_803D080
// .global sub_803D108
// .global sub_803F798
// .global sub_803F9E4

.include "chatbox.inc"
// .global chatbox_runScript_202da04 // (u8 scriptID) -> void
// .global chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
// .global chatbox_8040818
// .global off_8044470
// .global off_80444C4
// .global chatbox_8045EFC
// .global chatbox_8045F3C
// .global chatbox_8045F4C

.include "asm03_1.inc"
// .global render_graphicalText_8045F8C
// .global sub_80465A0
// .global sub_80465BC
// .global sub_80465F8
// .global sub_8046664


/* Undeclared Symbols */
.equ byte_2000210, 0x2000210
.equ byte_2000212, 0x2000212
.equ byte_2000213, 0x2000213
.equ word_2000214, 0x2000214
.equ word_2000214, 0x2000214
.equ word_2000216, 0x2000216
.equ dword_2000218, 0x2000218
.equ dword_2000220, 0x2000220
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
.equ dword_809FEE4, 0x809FEE4
.equ dword_809FFE8, 0x809FFE8
.equ dword_80A3360, 0x80A3360
.equ off_80A336C, 0x80A336C
.equ off_80A3370, 0x80A3370
.equ off_80A3428, 0x80A3428
.equ dword_80A3430, 0x80A3430
.equ dword_86A5D60, 0x86A5D60
.equ loc_86C54D4, 0x86C54D4
.equ loc_86C5790, 0x86C5790
.equ dword_86C580C, 0x86C580C
.equ byte_86C67E4, 0x86C67E4
.equ dword_873D108, 0x873D108
.equ aPfffff, 0x87E30A0

.endif // INC_ASM28
