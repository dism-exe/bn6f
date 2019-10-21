
	.macro sub_8001b1c_struct unk_00, unk_04, unk_08, unk_09, unk_0c, unk_10
	init_rom_struct sub_8001b1c_struct
	u32 Unk_00, \unk_00
	u32 Unk_04, \unk_04
	u8 Unk_08, \unk_08
	u8 Unk_09, \unk_09
	// edit 1
	.balign 4, 0
	u32 Unk_0c, \unk_0c
	// edit 2
	u32 Unk_10, \unk_10
	.endm

	def_rom_struct_offsets sub_8001b1c_struct, oS8001b1c
