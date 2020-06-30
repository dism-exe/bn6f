
	.macro map_bg_descriptor_struct tileset_ptr, palette_ptr, tilemap_ptr
	init_rom_struct map_bg_descriptor_struct
	// Pointer to two map_bg_tileset_header_struct-s.
	ptr TilesetPtr, \tileset_ptr // loc=0x0
	ptr PalettePtr, \palette_ptr // loc=0x4
	// Pointer to a map_bg_tilemap_header_struct.
	ptr TilemapPtr, \tilemap_ptr // loc=0x8
	u0 Size // loc=0x10
	.endm

	def_rom_struct_offsets map_bg_descriptor_struct, oMapBGDescriptor

	.macro map_bg_tilemap_header_struct width, height, unk_2, unk_3, compressed_size
	init_rom_struct map_bg_tilemap_header_struct
	// Size of the tilemap in tiles.
	u8 Width, \width // loc=0x0
	u8 Height, \height // loc=0x1
	u8 Unk_2, \unk_2 // loc=0x2
	u8 Unk_3, \unk_3 // loc=0x3
	// Pointer relative to the beginning of this
	// map_bg_tilemap_header_struct. Assumed to be 0x0C by
	// decompAndCopyMapTiles_8030472. LZ77-compressed.
	u32 CompressedDataOffset, 0x0C // loc=0x4
	u32 CompressedSize, \compressed_size
	u0 Size // loc=0xc
	.endm

	def_rom_struct_offsets map_bg_tilemap_header_struct, oMapBGTilemapHeader

	.macro map_bg_tileset_header_struct word_count, compressed_data_offset, vram_offset
	init_rom_struct map_bg_tileset_header_struct
	// Number of 4-byte words to copy into VRAM (after decompression).
	u32 WordCount, \word_count // loc=0x0
	// Pointer relative to map_bg_descriptor_struct.tileset. LZ77-compressed.
	u32 CompressedDataOffset, \compressed_data_offset // loc=0x4
	// Offset into VRAM to copy data into.
	u32 VRAMOffset, \vram_offset // loc=0x8
	u0 Size // loc=0xc
	.endm

	def_rom_struct_offsets map_bg_tileset_header_struct, oMapBGTilesetHeader
