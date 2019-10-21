
	.macro fade_params_struct unk_00_ptr, unk_04_ptr, unused_08, byte_0c, byte_0d, byte_0e, byte_0f
	init_rom_struct fade_params_struct
	u32 Ptr_00, \unk_00_ptr
	u32 Ptr_04, \unk_04_ptr
	u32 Unused_08, \unused_08
	u8 Unk_0c, \byte_0c
	u8 Unk_0d, \byte_0d
	u8 Unk_0e, \byte_0e
	u8 Unk_0f, \byte_0f
	.endm

	def_rom_struct_offsets fade_params_struct, oFadeParams
