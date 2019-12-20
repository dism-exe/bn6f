
	.macro bg_scroll_callbacks_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u32 Callback0 // loc=0x0
	u32 HBlankCallback // loc=0x4
	u32 Callback1 // loc=0x8
	u0 Size // loc=0xc
	restore_struct_label
	.endm

	def_struct_offsets bg_scroll_callbacks_struct, oBGScrollCallbacks
