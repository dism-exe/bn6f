	.macro unk_map_script_state_2011e60_struct, label=oUnkMapScriptState_2011e60, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin
		struct_init_defs \struct_entry, \label
		// 0-7 likely halfwords
		u8_arr Unk_00, 8 // loc=0x0
		ptr UnkScriptPtr1_08 // loc=0x8
		ptr UnkScriptPtr2_0c // loc=0xc
		ptr UnkScriptPtr3_10 // loc=0x10
		u0 Size // loc=0x14
		struct_end
	.endm

	def_struct_offsets unk_map_script_state_2011e60_struct, oUnkMapScriptState_2011e60
