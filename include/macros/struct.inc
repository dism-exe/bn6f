	.set __dummy_symbol__, 0

	.macro struct_begin label=__dummy_symbol__
	.ifndef \label
	ds \label
	.endif
	.endm

	.macro offset_struct_begin label=0
	.struct 0
	.endm

	.macro label_struct_entry label, size=0
\label::
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
