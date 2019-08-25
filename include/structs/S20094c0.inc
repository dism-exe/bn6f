
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
	union
	u8 Unk_14 // loc=0x14
	u8 Unk_15 // loc=0x15
	u8 Unk_16 // loc=0x16
	u8 Unk_17 // loc=0x17
	nextu
	u32 Unk_14_Word // loc=0x14
	endu
	u0 Size // loc=0x18
	u0 End // loc=0x18
	restore_struct_label
	.endm

	def_struct_offsets s_20094c0_struct, oS20094c0
