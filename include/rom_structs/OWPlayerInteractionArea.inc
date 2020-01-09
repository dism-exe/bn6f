
	.macro ow_player_interaction_area_struct x_offset, y_offset, z_offset, radius, z_reach_amount, flags_10, flags_14
    // type: struct OWPlayerInteracionArea
	init_rom_struct ow_player_interaction_area_struct
	u32 XOffset, \x_offset // loc=0x0
	u32 YOffset, \y_offset // loc=0x4
	u32 ZOffset, \z_offset // loc=0x8
	u0 Radius_ZReachAmount // loc=0xc
	u8 Radius, \radius // loc=0xc
	u8 ZReachAmount, \z_reach_amount // loc=0xd
	.balign 4, 0
	u32 Flags_10, \flags_10
	u32 Flags_14, \flags_14
	.endm

	def_rom_struct_offsets ow_player_interaction_area_struct, oOWPlayerInteractionArea
