
	.macro ow_object_interaction_area_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	union
	u16 X // loc=0x0
	u16 Y // loc=0x2
	nextu
	u32 xyPacked_00 // loc=0x0
	endu

	union
	u16 Z // loc=0x4
	u8 Radius // radius // loc=0x6
	u8 ZReachAmount // reach amount // loc=0x7
	nextu
	u32 Z_Radius_ZReachAmount // loc=0x4
	endu

	u32 Unk_08 // loc=0x8
	u32 Unk_0c // loc=0xc
	u32 Unk_10 // loc=0x10
	u0 Size // loc=0x14
	u0 End // loc=0x14
	restore_struct_label
	.endm

	def_struct_offsets ow_object_interaction_area_struct, oOWObjectInteractionArea
