
	.macro warp_data_struct map_group, map_number, warp_type_02, facing_direction, x, y, z
	init_rom_struct warp_data_struct
	u0 MapId // loc=0x0
	u8 MapGroup, \map_group // loc=0x0
	u8 MapNumber, \map_number // loc=0x1
	u8 warpType_02, \warp_type_02 // loc=0x2
	u8 FacingDirection, \facing_direction // loc=0x3
	u32 X, \x // loc=0x4
	u32 Y, \y // loc=0x8
	u32 Z, \z // loc=0xc
	u0 Size // loc=0x10
	.endm

	def_rom_struct_offsets warp_data_struct, oWarpData
