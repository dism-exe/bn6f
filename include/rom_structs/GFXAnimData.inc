
// only used for struct offsets, see include/bytecode/gfx_anim_script.inc

	.macro gfx_anim_data_struct param0, param1, command, index, param2, param3
  // type: struct GFXAnimData
	init_rom_struct gfx_anim_data_struct
	u32 Param0, \param0         // 0x0
	u32 Param1, \param1         // 0x4
	u8 Command, \command        // 0x8
	u8 Index, \index            // 0x9
	u8 Param2, \param2          // 0xA
	u8 Param3, \param3          // 0xB

  // There is typically then an array of (ParamNext, Delay) to process that is annotated with the type ProcessGFXAnimsNext
  // type: struct GFXAnimDataNext
	u32 ParamNext, \param_next  // 0xC
	u32 Delay, \delay           // 0x10

	.endm

	def_rom_struct_offsets gfx_anim_data_struct, oGFXAnimData
