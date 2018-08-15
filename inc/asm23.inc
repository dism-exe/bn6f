.ifndef INC_ASM23
.equ INC_ASM23, 0

/* Public Symbols */
.global dword_8089128


/* External Symbols */
.include "asm00_0.inc"
// .global sound_play // () -> void
// .global getPETNaviSelect // () -> u8
// .global sub_80010D4
// .global sub_8001158 // () -> void
// .global off_8001800

.include "asm00_1.inc"
// .global sub_8004822
// .global sub_80048B2
// .global sub_8005D88
// .global engine_setScreeneffect
// .global engine_isScreeneffectAnimating // () -> zf

.include "asm03_0.inc"
// .global sub_802F110
// .global sub_802F12C // (int a1, int a2) -> void
// .global loc_802F130
// .global sub_802F164 // (int a1, int a2) -> zf
// .global sub_802FE28
// .global sub_8035408
// .global sub_8036E44
// .global sub_8036E78
// .global sub_8036F98
// .global sub_8036FAA

.include "chatbox.inc"
// .global chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
// .global chatbox_8045EDC
// .global chatbox_8045F3C
// .global chatbox_8045F4C

.include "asm03_1.inc"
// .global sub_80468C6
// .global sub_80468EC

.include "asm28_0.inc"
// .global sub_809E13C
// .global sub_809E2AE
// .global sub_809E2B8

.include "reqBBS.inc"
// .global reqBBS_8140A0C

.include "asm37_1.inc"
// .global sub_814216E
// .global sub_8142190
// .global sub_814219C
// .global sub_81421B2
// .global sub_81421C8
// .global sub_81421D0
// .global sub_8142224
// .global sub_814223E
// .global sub_81422B4
// .global sub_81426CE
// .global sub_81427CE
// .global sub_8142896
// .global sub_81428D4
// .global sub_8142990
// .global sub_81429CA
// .global sub_8142A84
// .global sub_8142ADA
// .global sub_8142B58
// .global sub_8142BB6
// .global sub_8142BF4
// .global sub_8142BFA
// .global sub_8142C20
// .global sub_8142C46


/* Undeclared Symbols */
.equ unk_30016F0, 0x30016F0
.equ dword_87DE44C, 0x87DE44C

.endif // INC_ASM23
