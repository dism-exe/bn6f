
	.macro map_object_data_struct unk_00, sprite_index, unk_02, unk_03, unk_04, palette, unk_09, unk_0a, unk_0c, unk_0e
	init_rom_struct map_object_data_struct
	u8 Unk_00, \unk_00 // loc=0x0
	u8 SpriteIndex, \sprite_index // loc=0x1
	u8 Unk_02, \unk_02 // loc=0x2
	u8 Unk_03, \unk_03 // loc=0x3
	u32 Unk_04, \unk_04 // loc=0x4
	u8 Palette, \palette // loc=0x8
	u8 Unk_09, \unk_09 // loc=0x9
	u16 Unk_0A, \unk_0a // loc=0xa
	u16 Unk_0C, \unk_0c // loc=0xc
	u16 Unk_0E, \unk_0e // loc=0xe
	u0 Size // loc=0x10
	.endm

	def_rom_struct_offsets map_object_data_struct, oMapObjectData

	// A sprite whose palette and tileset needs to be loaded into memory.
	// Used by uncompSprite_8002906 during overworld map loading.
	.macro sprite_load_data_struct sprite_type_offset, sprite_index
	init_rom_struct sprite_load_data_struct
	// Byte offset into the SpritePointersList array.
	u8 SpriteTypeOffset, \sprite_type_offset // loc=0x0
	u8 SpriteIndex, \sprite_index // loc=0x1
	u0 Size // loc=0x2
	.endm

	def_rom_struct_offsets sprite_load_data_struct, oSpriteLoadData
