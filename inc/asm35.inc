.ifndef INC_ASM35
.equ INC_ASM35, 0

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
// .global sub_803CE28
// .global sub_803EBF4

.include "asm03_1.inc"
// .global render_graphicalText_8045F8C
// .global sub_80465A0 // (void *a1) -> void
// .global sub_8046664 // () -> void
// .global sub_80466C4

.include "asm32.inc"
// .global sub_811BC00
// .global sub_811F7EC
// .global sub_811F7F8
// .global sub_811FAF4
// .global sub_8120280
// .global sub_8120CC8

.include "asm33.inc"
// .global dword_8129178
// .global dword_8129180

.include "asm36.inc"
// .global sub_8132280

.include "asm37_0.inc"
// .global sub_813B780
// .global sub_813B9FC


/* Undeclared Symbols */
.equ unk_201B200, 0x201B200
.equ unk_201E920, 0x201E920
.equ unk_201EE20, 0x201EE20
.equ word_2023FA0, 0x2023FA0
.equ word_2023FA2, 0x2023FA2
.equ word_2023FA4, 0x2023FA4
.equ unk_2024F90, 0x2024F90
.equ unk_2024FB0, 0x2024FB0
.equ unk_2025070, 0x2025070
.equ unk_2025A70, 0x2025A70
.equ unk_2030000, 0x2030000
.equ unk_2037780, 0x2037780
// .global dword_812DA94
// .global dword_812DA94
// .global dword_812DA94
// .global dword_812DA94
// .global dword_812DA94
// .global dword_812DA94
.equ dword_86A5D60, 0x86A5D60

.endif // INC_ASM35
