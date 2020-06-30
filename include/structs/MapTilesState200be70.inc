
	.macro map_tiles_state_200be70_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u8 MapWidth // loc=0x0
	u8 MapHeight // loc=0x1
	struct_org 0x4
	u16 Unk_04 // loc=0x4
	u16 Unk_06 // loc=0x6
	// Pointer to a map_bg_descriptor_struct.
	u32 MapBGDescriptorPtr // loc=0x8
	u32 Unk_0c // loc=0xc
	u32 PalettePtr // loc=0x10
	// Pointer to two map_bg_tileset_header_struct-s.
	u32 TilesetPtr // loc=0x14
	u32 UnkCallback_18 // loc=0x18
	u32 UnkCallback_1c // loc=0x1c
	u32 UnkCallback_20 // loc=0x20	
	u0 Size // loc=0x24
	restore_struct_label
	.endm

	def_struct_offsets map_tiles_state_200be70_struct, oMapTilesState200be70
