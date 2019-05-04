
	.macro overworld_map_object_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	set_struct_label \struct_entry, \label
	object_header_struct \label, \struct_entry, \set_struct_start_address
	.space 0x3c // struct members completely unknown
	object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0x40
	u0 Size // loc=0x78
	u0 End // loc=0x78
	restore_struct_label
	.endm

	def_struct_offsets overworld_map_object_struct, oOverworldMapObject
