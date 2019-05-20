
	.macro s_200ace0_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x2
	u8 Unk_02 // loc=0x2
	struct_org 0x8
	s32 PlayerX // loc=0x8
	s32 PlayerY // loc=0xc
	s32 PlayerZ // loc=0x10
	struct_org 0x15
	u8 Unk_15 // loc=0x15
	struct_org 0x18
	u16 Unk_18 // loc=0x18
	u16 Unk_1a // loc=0x1a
	u32 Unk_1c // loc=0x1c
	u32 Unk_20 // loc=0x20
	u0 Size // loc=0x24
	restore_struct_label
	.endm

	def_struct_offsets s_200ace0_struct, oS200ace0
