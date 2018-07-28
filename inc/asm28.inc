.ifndef INC_ASM28
.equ INC_ASM28, 0

/* Public Symbols */
.extern loc_80991F4
.extern dword_8099DC0
.extern dword_8099E04
.extern dword_8099EA0
.extern sub_809BA14
.extern sub_809C890
.extern sub_809C940
.extern sub_809C968
.extern sub_809CA40
.extern sub_809CA84
.extern loc_809CAD8
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
.equ sub_802D15E, 0x802D15E
.equ sub_802F110, 0x802F110
.equ sub_802F114, 0x802F114
.equ sub_802F12C, 0x802F12C
.equ sub_802F130, 0x802F130
.equ sub_802F148, 0x802F148
.equ sub_802F164, 0x802F164
.equ sub_802F168, 0x802F168
.equ sub_802F238, 0x802F238
.equ sub_80301B2, 0x80301B2
.equ sub_80301DC, 0x80301DC
.equ sub_80302A8, 0x80302A8
.equ sub_8030B6A, 0x8030B6A
.equ sub_8031612, 0x8031612
.equ sub_8031A7A, 0x8031A7A
.equ sub_8033978, 0x8033978
.equ sub_8033FC0, 0x8033FC0
.equ sub_8034C36, 0x8034C36
.equ sub_8035694, 0x8035694
.equ sub_8036E90, 0x8036E90
.equ sub_8036F36, 0x8036F36
.equ sub_803CD98, 0x803CD98
.equ sub_803CE28, 0x803CE28
.equ sub_803D080, 0x803D080
.equ sub_803D108, 0x803D108
.equ sub_803F798, 0x803F798
.equ sub_803F9E4, 0x803F9E4
.equ chatbox_runScript_202da04, 0x803FD68
.equ chatbox_runScript, 0x8040384
.equ sub_8040818, 0x8040818
.equ off_8044470, 0x8044470
.equ off_80444C4, 0x80444C4
.equ sub_8045EFC, 0x8045EFC
.equ sub_8045F3C, 0x8045F3C
.equ sub_8045F4C, 0x8045F4C
.equ render_graphicalText_8045F8C, 0x8045F8C
.equ sub_80465A0, 0x80465A0
.equ sub_80465BC, 0x80465BC
.equ sub_80465F8, 0x80465F8
.equ sub_8046664, 0x8046664

.include "asm32.inc"
.equ sub_811980C, 0x811980C
.equ sub_8119854, 0x8119854
.equ sub_811EBE0, 0x811EBE0

.include "asm02.inc"
.equ dword_8021AEC, 0x8021AEC

.include "asm37.inc"
.equ sub_813D41C, 0x813D41C
.equ loc_813D48C, 0x813D48C
.equ sub_81407D8, 0x81407D8
.equ sub_8140974, 0x8140974
.equ sub_8143B88, 0x8143B88
.equ sub_8143DBC, 0x8143DBC
.equ SWI_Div, 0x814D8BC

.include "asm00.inc"
.equ sound_play, 0x80005CC
.equ sub_80005D4, 0x80005D4
.equ CpuSet_ZeroFillWord, 0x80008E0
.equ sub_8000900, 0x8000900
.equ sub_800093C, 0x800093C
.equ initMemblockToByte, 0x8000964
.equ sub_8000B30, 0x8000B30
.equ sub_8000E3A, 0x8000E3A
.equ getPETNaviSelect, 0x80010B6
.equ sub_8001172, 0x8001172
.equ calcAngle_800117C, 0x800117C
.equ sub_8001850, 0x8001850
.equ sub_80018C2, 0x80018C2
.equ sprite_loadAnimationData_80026A4, 0x80026A4
.equ anim_80026C4, 0x80026C4
.equ sub_80026E4, 0x80026E4
.equ sub_8002C24, 0x8002C24
.equ sub_8002C52, 0x8002C52
.equ sub_8002C68, 0x8002C68
.equ sub_8002C7A, 0x8002C7A
.equ sub_8002CCE, 0x8002CCE
.equ sub_8002D14, 0x8002D14
.equ sprite_makeUnscalable, 0x8002D52
.equ sprite_setPallete, 0x8002D80
.equ sprite_setAnimation, 0x8002DA4
.equ sub_8002DEA, 0x8002DEA
.equ sub_8002E14, 0x8002E14
.equ sub_8002E3C, 0x8002E3C
.equ sub_8002E52, 0x8002E52
.equ sub_8002ED0, 0x8002ED0
.equ sub_8002EE8, 0x8002EE8
.equ sub_8002EF6, 0x8002EF6
.equ sub_8002F2C, 0x8002F2C
.equ sub_8002F5C, 0x8002F5C
.equ sub_8002F90, 0x8002F90
.equ sub_8002FA6, 0x8002FA6
.equ sub_8003006, 0x8003006
.equ sub_80037AC, 0x80037AC
.equ sub_8003962, 0x8003962
.equ sub_8003984, 0x8003984
.equ sub_800399A, 0x800399A
.equ sub_8003AB2, 0x8003AB2
.equ sub_8003AD4, 0x8003AD4
.equ sub_8003AEA, 0x8003AEA
.equ sub_8003B4C, 0x8003B4C
.equ sub_8003B86, 0x8003B86
.equ sub_8004602, 0x8004602
.equ sub_80047E0, 0x80047E0
.equ sub_80062C8, 0x80062C8
.equ engine_isScreeneffectAnimating, 0x80062F8
.equ sub_8013704, 0x8013704
.equ sub_80137B6, 0x80137B6


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
.equ byte_2005780, 0x2005780
.equ byte_20057B0, 0x20057B0
.equ byte_20057C0, 0x20057C0
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
