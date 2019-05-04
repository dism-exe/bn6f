
	.macro overworld_map_object_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
		struct_init_defs \struct_entry, \label
		object_header_struct \label, \struct_entry, \struct_begin
		.space 0x3c // struct members completely unknown
		u0 SpriteData // loc=0x40
		object_sprite_struct SpriteData, \struct_entry // loc=0x40
		u0 Size // loc=0x78
		u0 End // loc=0x78
		struct_end
	.endm

	def_struct_offsets overworld_map_object_struct, oOverworldMapObject
