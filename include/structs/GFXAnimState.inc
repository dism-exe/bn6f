
	.macro gfx_anim_state_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u8 IsActive // loc=0x0
	u8 Index // loc=0x1
	u16 Timer // loc=0x2
	u32 LoopAddress // loc=0x4
	u32 CommandPos // loc=0x8
	u32 Param0 // loc=0xc
	u32 Param1 // loc=0x10
	union
	u8 Command // loc=0x14
	u8 IndexRedundant // loc=0x15 // written to 
	u8 Param2 // loc=0x16
	u8 Param3 // loc=0x17
	nextu
	u32 Command_Param2to3 // loc=0x14
	endu
	u0 Size // loc=0x18
	u0 End // loc=0x18
	restore_struct_label
	.endm

	def_struct_offsets gfx_anim_state_struct, oGFXAnimState
