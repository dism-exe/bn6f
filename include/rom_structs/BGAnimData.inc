
	.macro bg_anim_data_struct gfx_src, gfx_dest, tilemap_src, tilemap_dest_offset, palette_src, palette_dest, palette_size
    // type: struct BGAnimData
	init_rom_struct bg_scroll_callbacks_data_struct
	u32 GFXSrc, \gfx_src // loc=0x0
	u32 GFXDest, \gfx_dest // loc=0x4
	u32 TilemapSrc, \tilemap_src // loc=0x8
	u32 TilemapDestOffset, \tilemap_dest_offset // loc=0xc
	u32 PaletteSrc, \palette_src // loc=0x10
	u32 PaletteDest, \palette_dest // loc=0x14
	u32 PaletteSize, \palette_size // loc=0x18
	u0 Size // loc=0x1c
	.endm

	def_rom_struct_offsets bg_anim_data_struct, oBGAnimData
