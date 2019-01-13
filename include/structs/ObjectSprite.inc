
	.macro object_sprite_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	.space 0x3
	\struct_entry \label\()_Unk_03, 1 // loc=0x3
	.space 0xd
	\struct_entry \label\()_Unk_11, 1 // loc=0x11
	.space 0x1
	\struct_entry \label\()_Unk_13, 1 // loc=0x13
	.space 0x2
	\struct_entry \label\()_Unk_16, 1 // loc=0x16
	.space 0x21
	\struct_entry \label\()_Size
	.endm

	.struct 0
	def_struct_offsets object_sprite_struct, oObjectSprite
