	.macro struct_begin
	.set __struct_offset__, 0
	.endm

	.macro label_struct_entry label, size
	ds \label
// suppress warning from size = 0
	.if \size
	.space \size
	.endif
	.endm
	
	.macro offset_struct_entry label, size
	.set \label, __struct_offset__
	.global \label
	.set __struct_offset__, __struct_offset__ + \size
	.endm
	
	.macro def_struct_offsets macro, label
	\macro label, offset_struct_entry
	.endm
	
	.macro struct_entry label_name, offset_name, size=0
	ds \label_name
// suppress warning from size = 0
	.if \size
	.space \size
	.endif
	.set \offset_name, __struct_offset__
	.global \offset_name
	.set __struct_offset__, __struct_offset__ + \size
	.endm
