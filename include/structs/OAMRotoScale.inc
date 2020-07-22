	.macro oam_roto_scale label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u16 PA // loc=0x0
	u16 PB // loc=0x2
	u16 PC // loc=0x4
	u16 PD // loc=0x6
	.space 4 // loc=0x8
	u0 Size // loc=0xc
	.endm

	def_struct_offsets oam_roto_scale, oOAMRotoScale
