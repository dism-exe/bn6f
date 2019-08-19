
	.macro s_20094c0_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u8 Unk_00 // loc=0x0
	u8 Unk_01 // loc=0x1
	u16 Unk_02 // loc=0x2
	u32 Unk_04 // loc=0x4
	u32 Unk_08 // loc=0x8
	u32 Unk_0c // loc=0xc
	u32 Unk_10 // loc=0x10
	u32 Unk_14 // loc=0x14
	u0 Size // loc=0x18
	u0 End // loc=0x18
	restore_struct_label
	.endm

	def_struct_offsets s_20094c0_struct, oS20094c0
