
	.macro bg_scroll_cb_counters_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u32 Counter0 // loc=0x0
	u32 Counter1 // loc=0x4
	u0 Size // loc=0x8
	restore_struct_label
	.endm

	def_struct_offsets bg_scroll_cb_counters_struct, oBGScrollCBCounters
