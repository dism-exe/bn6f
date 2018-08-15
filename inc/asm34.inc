.ifndef INC_ASM34
.equ INC_ASM34, 0

/* Public Symbols */


/* External Symbols */
.include "asm00_0.inc"
// .global sound_play // () -> void
// .global CpuFastSet_8000900 // (int a1, int a2) -> void
// .global sub_800183C
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
// .global sub_80018D0

.include "asm00_1.inc"
// .global sub_800307C
// .global engine_setScreeneffect
// .global sub_80062C8

.include "asm03_0.inc"
// .global sub_803C754
// .global sub_803EA60
// .global sub_803EBF4

.include "chatbox.inc"
// .global chatbox_8040818

.include "asm03_1.inc"
// .global sub_80465A0 // (void *a1) -> void
// .global sub_8046664 // () -> void
// .global sub_80466C4

.include "asm32.inc"
// .global sub_811980C
// .global sub_8119854
// .global sub_811F7EC
// .global sub_811F7F8
// .global sub_811FA22
// .global sub_811FA98
// .global sub_811FAF4
// .global sub_811FE7C
// .global loc_8120018
// .global sub_8120194
// .global sub_8120228
// .global sub_8120390
// .global sub_81203E4
// .global sub_8120458
// .global sub_81204C4
// .global sub_8120618
// .global sub_8120A88
// .global sub_8120AB8
// .global sub_8120CC8

.include "asm33.inc"
// .global dword_8129178
// .global dword_8129180

.include "asm36.inc"
// .global sub_8132280

.include "asm37_1.inc"
// .global sub_81440D8


/* Undeclared Symbols */
.equ unk_201D620, 0x201D620
.equ unk_201DB20, 0x201DB20
.equ dword_201E420, 0x201E420
.equ unk_20227A0, 0x20227A0
.equ word_2023FA0, 0x2023FA0
.equ unk_2023FC0, 0x2023FC0
.equ unk_202DFA0, 0x202DFA0
.equ unk_202DFC0, 0x202DFC0
.equ unk_202E080, 0x202E080
.equ unk_202E0B8, 0x202E0B8
.equ unk_202E0F0, 0x202E0F0
.equ unk_202E10C, 0x202E10C
.equ unk_202E144, 0x202E144
.equ unk_2037780, 0x2037780
// .global dword_812C258
// .global dword_812C258
// .global dword_812C258
// .global dword_812C258
// .global dword_812C258

.endif // INC_ASM34
