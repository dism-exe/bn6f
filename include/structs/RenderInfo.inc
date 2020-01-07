
	.macro render_info_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct RenderInfo
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	// look at render_800172C for how data is transferred
	// todo document rest of struct fields
	u16 Unk_00 // loc=0x0
	struct_org 0x10
	u16 Unk_10 // loc=0x10
	u16 Unk_12 // loc=0x12
	u16 Unk_14 // loc=0x14
	u16 Unk_16 // loc=0x16
	u16 Unk_18 // loc=0x18
	u16 Unk_1a // loc=0x1a
	struct_org 0x40
	u0 Size // loc=0x40
	restore_struct_label
	.endm

	def_struct_offsets render_info_struct, oRenderInfo
