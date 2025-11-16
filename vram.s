	.include "include/macros.inc"

	.section vram_6000000

byte_6000000:: // 0x6000000
    .space 0x79C0
byte_60079C0:: // 0x60079C0
    .space 0x6640

// BG0 and BG2
vBGTileIds:: // 0x600E000
  .space 0x2000
// 4bpp
vObjectTiles:: // 0x6010000
  .space 0x8000

//>= 06018000 is invalid

