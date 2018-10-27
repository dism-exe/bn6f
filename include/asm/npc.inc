.ifndef INC_ASM_NPC
.equ INC_ASM_NPC, 0

/* Public Symbols */
.global npc_809E570


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global sound_bgmusic_play // (int a1) -> void
// .global getPETNaviSelect // () -> u8
// .global calcAngle_800117C

.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_update
// .global sprite_load // (int a1, int a2, int a3) ->
// .global sprite_setScaleParameters
// .global sub_8002C52
// .global sub_8002C68
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
// .global sub_8002EF6
// .global sub_8002F2C
// .global sub_8002F5C
// .global sub_8002F90 // () -> void
// .global sub_8002FA6
// .global sub_8003006
// .global sub_8004602
// .global sub_80047E0
// .global sub_80062C8

.include "asm/asm03_0.inc"
// .global SetEventFlag // (u16 entryFlagBitfield) -> void
// .global ClearEventFlag // (u16 entryFlagBitfield) -> void
// .global TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global sub_80302A8
// .global sub_8031612

.include "asm/asm03_1.inc"
// .global sub_8035694

.include "asm/chatbox.inc"
// .global chatbox_runScript_202da04 // (u8 scriptID) -> void
// .global chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
// .global off_8044470
// .global off_80444C4

.include "asm/asm28_0.inc"
// .global unk_809D328
// .global dword_809E530

.include "asm/asm28_1.inc"
// .global sub_809F526
// .global sub_809F5B0
// .global sub_809F5FC
// .global sub_809F612
// .global sub_809F638
// .global getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
// .global sub_809F656 // (void* a1) -> int
// .global off_809F6AC
// .global dword_809F6B0
// .global sub_809F922
// .global sub_809FC1C
// .global sub_809FC96

.include "asm/asm37_1.inc"
// .global sub_8143B88
// .global sub_8143DBC
// .global SWI_Div

.include "data/dat38_87.inc"
// .global dword_873D108
// .global byte_87E30A0


/* Undeclared Symbols */
// .equ byte_202FA04, 0x202FA04

.endif // INC_ASM_NPC
