
	.macro map_script_state_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	// 0-7 likely halfwords
	u8_arr Unk_00, 8 // loc=0x0
	ptr OnInitMapScriptPtr // loc=0x8
	ptr ContinuousMapScriptPtr // loc=0xc
	ptr SecondaryContinuousMapScriptPtr // loc=0x10
	u0 Size // loc=0x14
	restore_struct_label
	.endm

	def_struct_offsets map_script_state_struct, oMapScriptState
