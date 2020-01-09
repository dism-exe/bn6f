
	.macro bg_scroll_callbacks_data_struct callback0, callback1, hblank_callback, lcd_control_flags
    // type: struct BGScrollCallbackData
	init_rom_struct bg_scroll_callbacks_data_struct
	u32 Callback0, \callback0
	u32 Callback1, \callback1
	u32 HBlankCallback, \hblank_callback
	u32 LCDControlFlags, \lcd_control_flags
	u0 Size
	.endm

	def_rom_struct_offsets bg_scroll_callbacks_data_struct, oBGScrollCallbacksData
