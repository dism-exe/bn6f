
	.macro overworld_map_object_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
        object_header_struct \label, \struct_entry, \struct_begin
        .space 0x3c // struct members completely unknown
        u0 \label, SpriteData // loc=0x40
        object_sprite_struct \label, SpriteData, \struct_entry // loc=0x40
        u0 \label, Size // loc=0x78
        u0 \label, End // loc=0x78
	.endm

	def_struct_offsets overworld_map_object_struct, oOverworldMapObject
