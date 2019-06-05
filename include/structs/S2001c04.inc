
	.macro s_2001c04_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x4
	u8 MapMusic // loc=0x4
	struct_org 0x12
	u16 Unk_12 // loc=0x12
	u16 Unk_14 // loc=0x14
	struct_org 0x18
	u32 GameTimeFrames // loc=0x18
	struct_org 0x6c
	u8_arr BuildString, 0x14 // loc=0x6c
	struct_org 0x84
	u0 Size // loc=0x84
	restore_struct_label
	.endm

	def_struct_offsets s_2001c04_struct, oS2001c04
