	.set __dummy_symbol__, 0
	.set __struct_begin_label__, 0

	.macro struct_begin label=__dummy_symbol__
	.ifndef \label
\label::
	.endif
	.set __struct_begin_label__, .
	.endm

	.macro offset_struct_begin label=0
	.set __struct_begin_label__, 0
	.struct 0
	.endm

	/* unions types */
	/* defines overloaded data types
	use union to start the union
	use nextu to reset back to where the start position was
	use endu to complete the union
	total size of the union is the size of the largest union entry */

	__in_union = 0

	.macro union
	__union_max_size = 0
	__union_offset = 0
	__in_union = 1
	.endm

	.macro nextu
	__union_offset = 0
	.endm

	.macro endu
	.space __union_max_size
	__in_union = 0
	.endm

	.macro struct_entry label:req, size=0
	.if __in_union
		.set \label, . + __union_offset
		__union_offset = __union_offset + \size
		.if __union_offset > __union_max_size
			__union_max_size = __union_offset
		.endif
	.else
\label:
		.if \size // suppress warning from size = 0
			.space \size
		.endif
	.endif
	.if __struct_entry == __LABEL_ENTRY
		.global \label
	.endif
	.endm

	.macro label_struct_entry label:req, size=0
\label::
	.if \size // suppress warning from size = 0
	.space \size
	.endif
	.endm

	.macro offset_struct_entry label:req, size=0
\label:
	.struct \label + \size
	.endm

	.macro def_struct_offsets macro:req, label:req
	\macro \label, offset_struct_entry, offset_struct_begin
	.endm

	.macro struct_org offset:req
	.space __struct_begin_label__ + \offset - .
	.endm

	// needed by struct data macros: u0, u8, u16, u32, ptr, custom types, etc
	.macro struct_init_defs, struct_entry:req, label:req
		.set __struct_label, \label
		.if \struct_entry == label_struct_entry
			.set __struct_entry, __LABEL_ENTRY
		.elseif \struct_entry == offset_struct_entry
			.set __struct_entry, __OFFSET_ENTRY
		.else
			.error "struct_init_defs: invalid struct_entry"
		.endif
	.endm

	.macro struct_const name:req, val:req
		.if __struct_entry == __OFFSET_ENTRY
			.ifndef \name
				.equiv \name, \val
			.endif
		.endif
	.endm

	/* struct data macros */
	// use this macro to define additional types
	.macro struct_data_type label=__struct_label, field:req, size:req
		struct_entry \label\()_\field, \size
	.endm

	.macro u0 label=__struct_label, field:req
		struct_data_type \label, \field, 0
	.endm

	.macro u8 label=__struct_label, field:req
		struct_data_type \label, \field, 1
	.endm

	.macro u16 label=__struct_label, field:req
		struct_data_type \label, \field, 2
	.endm

	.macro u32 label=__struct_label, field:req
		struct_data_type \label, \field, 4
	.endm

	.macro ptr label=__struct_label, field:req
		struct_data_type \label, \field, 4
	.endm

	.macro u8_arr label=__struct_label, field:req, size:req
		struct_data_type \label, \field, \size
	.endm

	// for exclusively 0 or 1
	.macro bool label=__struct_label, field:req
		struct_data_type \label, \field, 1
	.endm

	// 0 or !0
	.macro bool8 label=__struct_label, field:req
		struct_data_type \label, \field, 1
	.endm

	.macro ptr_debug, label=__struct_label, field:req
		.print "defining pointer"
		// just for debugging
		.if \label == oToolkit
			.print "oToolkit: \label"
		.elseif \label =s= eToolkit
			.print "eToolkit: \label"
		.else
			.error "invalid __struct_label"
		.endif
		// run correct macro based on flag
		.if __struct_entry == __LABEL_ENTRY
			.print "label_struct_entry"
			label_struct_entry \label\()_\field, 4
		.elseif __struct_entry == __OFFSET_ENTRY
			.print "offset_struct_entry"
			.print "\label"
			offset_struct_entry \label\()_\field, 4
		.else
			.error "invalid __struct_entry"
		.endif
	.endm


