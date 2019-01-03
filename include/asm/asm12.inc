.ifndef INC_ASM_ASM12
.equ INC_ASM_ASM12, 0

/* Public Symbols */
.global sub_806D8F8
.global sub_806D9FC
.global sub_806DA58
.global sub_806DC0C
.global sub_806DCD4


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sub_8001778
// .global sub_8001780
// .global sub_800195C
// .global sub_80019D0
// .global nullsub_39
// .global sub_8002354

.include "asm/sprite.inc"
// .global sub_80028D4
// .global sub_8002906

.include "asm/asm00_1.inc"
// .global sub_8003570

.include "asm/asm03_0.inc"
// .global SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global sub_802FF4C
// .global sub_803037C
// .global sub_8030472
// .global sub_80304E8
// .global sub_8030AA4

.include "asm/asm03_1.inc"
// .global sub_8034FB8

.include "asm/chatbox.inc"
// .global chatbox_uncomp_803FD08 // () -> int

.include "data/dat11.inc"
// .global off_806D6B0
// .global byte_806D820

.include "data/dat12.inc"
// .global byte_806DD2C
// .global byte_806DD44
// .global byte_806DD84
// .global byte_806DD9C
// .global byte_806DDB4
// .global byte_806DDCC
// .global byte_806DDE4
// .global byte_806DDFC
// .global byte_806DE3C
// .global byte_806DE54
// .global byte_806DE80
// .global byte_806DEC0
// .global byte_806DEEC
// .global byte_806DF18
// .global byte_806DF44
// .global byte_806DF70

.include "data/dat38_60.inc"
// .global off_8616598
// .global byte_8616634
// .global byte_8616760
// .global byte_8616EC4


/* Undeclared Symbols */
// .equ unk_2037800, 0x2037800

.endif // INC_ASM_ASM12
