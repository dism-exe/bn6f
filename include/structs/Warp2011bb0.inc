
	.macro warp_2011bb0_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct Warp2011bb0
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	union
		u8 MapGroup // loc=0x0
		u8 MapNumber // loc=0x1
	nextu
		u16 MapId // loc=0x0
	endu
	u8 warpType_02 // loc=0x2
	u8 FacingDirection // loc=0x3
	u32 X // loc=0x4
	u32 Y // loc=0x8
	u32 Z // loc=0xc
	u8 Unk_10 // loc=0x10
	u8 WarpIndex // loc=0x11
	u8 MapGroupTransitionType // loc=0x12
	struct_org 0x14
	ptr WarpDataPtr // loc=0x14
	struct_org 0x20
	u0 Size // loc=0x20
	restore_struct_label
	.endm

	def_struct_offsets warp_2011bb0_struct, oWarp2011bb0
