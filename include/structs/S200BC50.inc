//! type: struct S200BC50

	.macro s_200BC50_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	
	u8 Index00 // loc=0x00

	// guess based on next used ewram reference byte_200BC60
	struct_org 0x10
	u0 Size // loc=0x10
	
	restore_struct_label
	.endm
	
	def_struct_offsets s_200BC50_struct, oS200BC50
