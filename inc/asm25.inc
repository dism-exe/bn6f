.ifndef INC_ASM25
.equ INC_ASM25, 0

/* Public Symbols */
.global off_8090000


/* External Symbols */
.include "asm00_0.inc"
// .global sound_play // () -> void
// .global CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
// .global sub_8001172
// .global sub_800118A

.include "sprite.inc"
// .global sprite_loadAnimationData
// .global sprite_update
// .global sprite_load
// .global sprite_setAnimation

.include "asm00_1.inc"
// .global sub_8002F90
// .global sub_8003914
// .global sub_8003940
// .global sub_80039D4
// .global sub_80047E0
// .global engine_isScreeneffectAnimating // () -> zf

.include "asm03_0.inc"
// .global sub_802F110
// .global sub_802F114 // (int a1) -> void
// .global sub_802F12C // (int a1, int a2) -> void
// .global sub_802F164 // (int a1, int a2) -> zf
// .global zf_802F168
// .global sub_802F1A8 // (int a3, int a2) -> void
// .global sub_80301B2
// .global sub_80301DC
// .global sub_8036E90

.include "asm03_1.inc"
// .global sub_8046818
// .global sub_8046854
// .global sub_80468BA
// .global sub_80468C6

.include "asm28_0.inc"
// .global sub_809E13C
// .global sub_809E188
// .global sub_809E1AE
// .global sub_809E230
// .global sub_809E23C
// .global sub_809E248
// .global sub_809E254
// .global sub_809E2AE
// .global sub_809E2B8
// .global sub_809E2FC
// .global loc_809E2FE
// .global sub_809E304
// .global loc_809E306
// .global sub_809E312
// .global loc_809E314
// .global sub_809E3B2
// .global sub_809E3C4

.include "asm32.inc"
// .global sub_811EBE0

.include "reqBBS.inc"
// .global reqBBS_81409E4
// .global reqBBS_8140A00
// .global reqBBS_8140A0C

.include "asm37_1.inc"
// .global dword_81434E4
// .global dword_81434E4
// .global dword_81434E4
// .global dword_81434E4
// .global dword_81434E4


/* Undeclared Symbols */
.equ unk_2000310, 0x2000310
.equ byte_2000312, 0x2000312
.equ byte_2000314, 0x2000314
.equ byte_2000315, 0x2000315
.equ byte_2000318, 0x2000318
.equ byte_200031C, 0x200031C
.equ byte_200031E, 0x200031E
.equ byte_200031F, 0x200031F
.equ byte_2000320, 0x2000320
.equ byte_2000321, 0x2000321
.equ word_2000322, 0x2000322
.equ dword_2000324, 0x2000324
.equ dword_2000324, 0x2000324
.equ dword_2000324, 0x2000324
.equ byte_2000328, 0x2000328
.equ byte_200032C, 0x200032C
.equ dword_2000330, 0x2000330
.equ off_808F5D4, 0x808F5D4
.equ dword_808F668, 0x808F668
.equ dword_808F668, 0x808F668
.equ dword_808F668, 0x808F668
.equ unk_808F6EC, 0x808F6EC
.equ unk_808F728, 0x808F728
.equ unk_808F748, 0x808F748
.equ unk_808F788, 0x808F788

.endif // INC_ASM25
