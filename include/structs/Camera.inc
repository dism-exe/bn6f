
	.macro camera_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0xc
	u16 Unk_0c // loc=0xc
	u16 Unk_0e // loc=0xe
	struct_org 0x30
	u32 X // loc=0x30
	u32 Y // loc=0x34
	u32 Z // loc=0x38
	struct_org 0x50
	u0 Size // loc=0x50
	restore_struct_label
	.endm

	def_struct_offsets camera_struct, oCamera
