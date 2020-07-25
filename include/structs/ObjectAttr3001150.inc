	.macro object_attr_3001150_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u32 OAM0And1 // loc=0x0
	u16 OAM2 // loc=0x4
	u8 Unk_06 // loc=0x6
	u8 Unk_07 // loc=0x7
	u0 Size // loc=0x8
	.endm

	def_struct_offsets object_attr_3001150_struct, oObjectAttr3001150
