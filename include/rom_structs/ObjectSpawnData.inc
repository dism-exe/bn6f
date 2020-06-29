
	.macro object_spawn_data_struct type, index, x, y, z, object_id
	init_rom_struct object_spawn_data_struct
	u8 Type, \type // loc=0x0
	u8 Index, \index // loc=0x1
	u8 Padding2, 0 // loc=0x2
	u8 Padding3, 0 // loc=0x3
	u32 X, \x // loc=0x4
	u32 Y, \y // loc=0x8
	u32 Z, \z // loc=0xc
	u32 ObjectID, \object_id // loc=0x10
	u0 Size // loc=0x14
	.endm

	def_rom_struct_offsets object_spawn_data_struct, oObjectSpawnData
