	.include "include/macros.inc"

	.section vram_6000000

byte_6000000:: // 0x6000000
	.space 0x20
unk_6000020:: // 0x6000020
	.space 0x20
unk_6000040:: // 0x6000040
	.space 0xA0
unk_60000E0:: // 0x60000E0
	.space 0x59E0
unk_6005AC0:: // 0x6005AC0
	.space 0x1F00
byte_60079C0:: // 0x60079C0
	.space 0x660
unk_6008020:: // 0x6008020
	.space 0x20
unk_6008040:: // 0x6008040
	.space 0x5fc0

// BG0 and BG2
vBGTileIds:: // 0x600E000
  .space 0x2000
// 4bpp
vObjectTiles:: // 0x6010000
  .space 0x8000


//>= 06018000 is invalid

