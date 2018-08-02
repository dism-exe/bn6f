.ifndef INC_ASM28
.equ INC_ASM28, 0

/* Public Symbols */
.extern unk_80991F4
.extern dword_8099DC0
.extern dword_8099E04
.extern dword_8099EA0
.extern sub_809BA14
.extern sub_809C890
.extern sub_809C940
.extern sub_809C968
.extern sub_809CA40
.extern sub_809CA84
.extern unk_809CAD8
.extern sub_809CF2C
.extern sub_809E04C
.extern sub_809E064
.extern sub_809E098
.extern sub_809E0B0
.extern sub_809E122
.extern sub_809E13C
.extern sub_809E14C
.extern sub_809E188
.extern sub_809E1AE
.extern sub_809E228
.extern sub_809E230
.extern sub_809E23C
.extern sub_809E248
.extern sub_809E254
.extern sub_809E2AE
.extern sub_809E2B8
.extern sub_809E2C2
.extern sub_809E2F4
.extern sub_809E2FC
.extern loc_809E2FE
.extern sub_809E304
.extern loc_809E306
.extern sub_809E312
.extern loc_809E314
.extern sub_809E3A2
.extern sub_809E3AA
.extern sub_809E3B2
.extern sub_809E3C4
.extern sub_809E434
.extern sub_809E462
.extern sub_809F68C
.extern dword_809F6CC
.extern sub_809F90C
.extern sub_809F942
.extern sub_809F9BE
.extern sub_809F9C8
.extern sub_809F9DC
.extern sub_809FAF4
.extern off_809FEA0


/* External Symbols */
.include "asm03.inc"
// .extern sub_802D15E
// .extern sub_802F110
// .extern sub_802F114
// .extern sub_802F12C
// .extern sub_802F130
// .extern sub_802F148
// .extern sub_802F164
// .extern sub_802F168
// .extern sub_802F238
// .extern sub_80301B2
// .extern sub_80301DC
// .extern sub_80302A8
// .extern sub_8030B6A
// .extern sub_8031612
// .extern sub_8031A7A
// .extern sub_8033978
// .extern sub_8033FC0
// .extern sub_8034C36
// .extern sub_8035694
// .extern sub_8036E90
// .extern sub_8036F36
// .extern sub_803CD98
// .extern sub_803CE28
// .extern sub_803D080
// .extern sub_803D108
// .extern sub_803F798
// .extern sub_803F9E4
// .extern chatbox_runScript_202da04
// .extern chatbox_runScript
// .extern sub_8040818
// .extern off_8044470
// .extern off_80444C4
// .extern sub_8045EFC
// .extern sub_8045F3C
// .extern sub_8045F4C
// .extern render_graphicalText_8045F8C
// .extern sub_80465A0
// .extern sub_80465BC
// .extern sub_80465F8
// .extern sub_8046664

.include "asm32.inc"
// .extern sub_811980C
// .extern sub_8119854
// .extern sub_811EBE0

.include "asm02.inc"
// .extern dword_8021AEC

.include "asm37.inc"
// .extern sub_813D41C
// .extern loc_813D48C
// .extern sub_81407D8
// .extern sub_8140974
// .extern sub_8143B88
// .extern sub_8143DBC
// .extern SWI_Div

.include "asm00.inc"
// .extern sound_play
// .extern sub_80005D4
// .extern CpuSet_ZeroFillWord
// .extern sub_8000900
// .extern sub_800093C
// .extern initMemblockToByte
// .extern sub_8000B30
// .extern sub_8000E3A
// .extern getPETNaviSelect
// .extern sub_8001172
// .extern calcAngle_800117C
// .extern sub_8001850
// .extern sub_80018C2
// .extern sprite_loadAnimationData_80026A4
// .extern anim_80026C4
// .extern sub_80026E4
// .extern sub_8002C24
// .extern sub_8002C52
// .extern sub_8002C68
// .extern sub_8002C7A
// .extern sub_8002CCE
// .extern sub_8002D14
// .extern sprite_makeUnscalable
// .extern sprite_setPallete
// .extern sprite_setAnimation
// .extern sub_8002DEA
// .extern sub_8002E14
// .extern sub_8002E3C
// .extern sub_8002E52
// .extern sub_8002ED0
// .extern sub_8002EE8
// .extern sub_8002EF6
// .extern sub_8002F2C
// .extern sub_8002F5C
// .extern sub_8002F90
// .extern sub_8002FA6
// .extern sub_8003006
// .extern sub_80037AC
// .extern sub_8003962
// .extern sub_8003984
// .extern sub_800399A
// .extern sub_8003AB2
// .extern sub_8003AD4
// .extern sub_8003AEA
// .extern sub_8003B4C
// .extern sub_8003B86
// .extern sub_8004602
// .extern sub_80047E0
// .extern sub_80062C8
// .extern engine_isScreeneffectAnimating
// .extern sub_8013704
// .extern sub_80137B6


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
