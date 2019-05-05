	
	.macro screen_fade_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x3
	u8 Unk_03 // loc=0x03
	struct_org 0x20
	u0 Size // loc=0x20
	restore_struct_label
	.endm

	def_struct_offsets screen_fade_struct, oScreenFade
