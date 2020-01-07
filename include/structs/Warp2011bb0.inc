
	.macro warp_2011bb0_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct Warp2011bb0
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x10
	u8 Unk_10 // loc=0x10
	u8 Unk_11 // loc=0x11
	u8 Unk_12 // loc=0x12
	struct_org 0x14
	ptr Ptr_14 // loc=0x14
	struct_org 0x20
	u0 Size // loc=0x20
	restore_struct_label
	.endm

	def_struct_offsets warp_2011bb0_struct, oWarp2011bb0
