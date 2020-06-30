
	.macro overworld_map_object_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct OverworldMapObject
	set_struct_label \struct_entry, \label
	object_header_struct \label, \struct_entry, \set_struct_start_address
	// Index into the OverworldMapObjects array.
	u32 ObjectID // loc=0x4
	u32 Unk_08 // loc=0x8
	u0 Coords // loc=0xc
	s32 X // loc=0xc
	s32 Y // loc=0x10
	s32 Z // loc=0x14
	struct_org 0x40
	object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0x40
	u0 Size // loc=0x78
	u0 End // loc=0x78
	restore_struct_label
	.endm

	def_struct_offsets overworld_map_object_struct, oOverworldMapObject
