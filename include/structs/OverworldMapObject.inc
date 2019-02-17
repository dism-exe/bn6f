
	.macro overworld_map_object_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	object_header_struct \label, \struct_entry, \struct_begin
	.space 0x3c // struct members completely unknown
	\struct_entry \label\()_SpriteData // loc=0x40
	object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0x40
	\struct_entry \label\()_Size // loc=0x78
	\struct_entry \label\()_End // loc=0x78
	.endm

	def_struct_offsets overworld_map_object_struct, oOverworldMapObject
