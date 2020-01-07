
	.macro palette_20097a0_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct Palette20097a0
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u8 Unk_00 // loc=0x0
	u8 Unk_01 // loc=0x1
	u8 Unk_02 // loc=0x2
	struct_org 0x4
	u32 Unk_04 // loc=0x4
	u32 Unk_08 // loc=0x8
	u0 Size // loc=0xc
	u0 End // loc=0xc
	restore_struct_label
	.endm

	def_struct_offsets palette_20097a0_struct, oPalette20097a0
