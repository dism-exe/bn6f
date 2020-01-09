
// only used for struct offsets, see include/bytecode/gfx_anim_script.inc

	.macro gfx_anim_data_struct param0, param1, command, index, param2, param3
    // type: struct GFXAnimData
	init_rom_struct gfx_anim_data_struct
	u32 Param0, \param0
	u32 Param1, \param1
	u8 Command, \command
	u8 Index, \index
	u8 Param2, \param2
	u8 Param3, \param3
	u32 ParamNext, \param_next
	u32 Delay, \delay
	.endm

	def_rom_struct_offsets gfx_anim_data_struct, oGFXAnimData
