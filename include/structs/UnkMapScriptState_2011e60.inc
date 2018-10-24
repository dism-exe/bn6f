	.macro unk_map_script_state_2011e60_struct, label, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin
	// 0-7 likely halfwords
	\struct_entry \label\()Unk_00, 8 // loc=0x0
	\struct_entry \label\()UnkScriptPtr1_08, 4 // loc=0x8
	\struct_entry \label\()UnkScriptPtr2_0c, 4 // loc=0xc
	\struct_entry \label\()UnkScriptPtr3_10, 4 // loc=0x10
	\struct_entry \label\()Size // loc=0x14
	.endm

	def_struct_offsets unk_map_script_state_2011e60_struct, oUnkMapScriptState_2011e60
