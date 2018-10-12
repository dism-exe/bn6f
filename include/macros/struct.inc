	.macro struct_begin label
	ds \label
	.endm

	.macro offset_struct_begin label
	.struct 0
	.endm

	.macro label_struct_entry label, size=0
	ds \label
	.if \size // suppress warning from size = 0
	.space \size
	.endif
	.endm
	
	.macro offset_struct_entry label, size=0
\label:
	.struct \label + \size
	.endm

	.macro def_struct_offsets macro, label
	\macro \label, offset_struct_entry, offset_struct_begin
	.endm
