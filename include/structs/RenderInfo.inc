
	.macro render_info_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x40
	u0 Size // loc=0x40
	restore_struct_label
	.endm

	def_struct_offsets render_info_struct, oRenderInfo
