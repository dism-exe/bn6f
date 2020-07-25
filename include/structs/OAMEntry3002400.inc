	.macro oam_entry_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u32 OAM0And1 // loc=0x0
	u16 OAM2 // loc=0x4
	u8 Unk_06 // loc=0x6
	.space 0x1
	u16 Unk_08 // loc=0x8
	.space 0x2
	u0 Size // loc=0xc
	.endm

	def_struct_offsets oam_entry_struct, oOAMEntry3002400
