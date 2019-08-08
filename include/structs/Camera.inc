
	.macro camera_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x3
	u8 Unk_03 // loc=0x3
	struct_org 0xc
	u16 Unk_0c // loc=0xc
	u16 Unk_0e // loc=0xe
	u16 Unk_10 // loc=0x10
	u16 Unk_12 // loc=0x12
	u32 Unk_14 // loc=0x14
	struct_org 0x30
	u32 X // loc=0x30
	u32 Y // loc=0x34
	u32 Z // loc=0x38
	u32 nextX_3c // loc=0x3c
	u32 nextY_40 // loc=0x40
	u32 nextZ_44 // loc=0x44
	u32 Unk_48 // loc=0x48
	struct_org 0x50
	u0 Size // loc=0x50
	restore_struct_label
	.endm

	def_struct_offsets camera_struct, oCamera
