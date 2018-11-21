.ifndef INC_ASM_SPRITE
.equ INC_ASM_SPRITE, 0

/* Public Symbols */
.global sprite_loadAnimationData // () -> void
.global sprite_80026B6
.global sprite_update
.global sprite_chatbox_80026D6
.global sprite_load // (int a1, int a2, int a3) ->
.global spriteLoadMugshot_800275A // (int a1) -> void
.global sub_8002770 // (int a1, int a2) -> void
.global loc_8002774
.global sub_80027B4
.global sub_80027C4
.global sub_80027D4
.global sub_80027E4
.global sub_80027F4
.global sub_8002818
.global sub_800286C
.global sub_8002874
.global sprite_handleObjSprites_800289C
.global sub_80028C0
.global sub_80028D4
.global sub_8002906
.global sub_80029A8
.global sub_8002A64
.global sub_8002ADE
.global sprite_decompress
.global sprite_setScaleParameters
.global sub_8002C52
.global sub_8002C68
.global sub_8002C7A
.global sprite_setMosaicScalingParameters
.global sub_8002CCE
.global sprite_getMosaicScalingParameters
.global sprite_makeScalable
.global sprite_makeUnscalable
.global sprite_setPallete // (int pallete) -> void
.global sprite_getPallete
.global sprite_setAnimation // (u8 a1) -> void
.global sprite_forceWhitePallete
.global loc_8002DB4


/* External Symbols */
.include "asm/asm00_0.inc"
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
// .global HalfwordFill
// .global WordFill
// .global loc_8000AC8

.include "asm/asm00_2.inc"
// .global sub_800F26C

.include "asm/asm03_0.inc"
// .global sub_802FE48
// .global sub_802FE6A
// .global sub_802FE7A

.include "data/spritePointers_8031CC4.inc"
// .global spritePointers_8031CC4
// .global mugshots_8032598
// .global guiSprites_803271C

.include "asm/libs.inc"
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void


/* Undeclared Symbols */
// .equ dword_20093A8, 0x20093A8
// .equ byte_20098A8, 0x20098A8
// .equ byte_20098A9, 0x20098A9
// .equ word_20098AA, 0x20098AA
// .equ dword_200A890, 0x200A890
// .equ byte_200DCA0, 0x200DCA0
// .equ dword_200DCEC, 0x200DCEC
// .equ dword_200F340, 0x200F340
// .equ dword_200F350, 0x200F350
// .equ dword_2033000, 0x2033000
// .equ unk_2037800, 0x2037800
// .equ byte_3001550, 0x3001550
// .equ sub_3005EF0, 0x3005EF0
// .equ loc_30061E8, 0x30061E8
// .equ sub_3006730, 0x3006730
// .equ sub_3006792, 0x3006792
// .global spriteWhiteDot

.endif // INC_ASM_SPRITE
