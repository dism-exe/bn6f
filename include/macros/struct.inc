	.set __dummy_symbol__, 0
	.set __struct_start_address__, 0

	.macro set_struct_start_address label=__dummy_symbol__
	.ifndef \label
\label::
	.endif
	.set __struct_start_address__, .
	.endm

	.macro set_offset_struct_start_address label=0
	.set __struct_start_address__, 0
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
	\macro \label, offset_struct_entry, set_offset_struct_start_address
	.endm

	.macro struct_org offset:req
	.space __struct_start_address__ + \offset - .
	.endm

	__struct_label_stack_index = 0

	.macro _add_struct_label index:req, label:req
	.macro __struct_label_stack\()\index
		.ifdef __defined_types
		.purgem u0
		.purgem u8
		.purgem u16
		.purgem u32
		.purgem ptr
		.purgem u8_arr
		.purgem bool
		.purgem bool8
		.endif

		/* struct data macros */
		.macro u0 field:req
			struct_entry \label\()_\field
		.endm

		.macro u8 field:req
			struct_entry \label\()_\field, 1
		.endm

		.macro u16 field:req
			struct_entry \label\()_\field, 2
		.endm

		.macro u32 field:req
			struct_entry \label\()_\field, 4
		.endm

		.macro ptr field:req
			struct_entry \label\()_\field, 4
		.endm

		.macro u8_arr field:req, arr_size:req
			struct_entry \label\()_\field, \arr_size
		.endm

		// for exclusively 0 or 1
		.macro bool field:req
			struct_entry \label\()_\field, 1
		.endm

		// 0 or !0
		.macro bool8 field:req
			struct_entry \label\()_\field, 1
		.endm

		.set __defined_types, 1
	.endm
	__struct_label_stack\()\index
	.endm

	.macro _struct_end index:req
	__struct_label_stack\()\index
	.endm

	.macro _purge_struct_data_macros index:req
	.purgem __struct_label_stack\()\index
	.endm

	// needed by struct data macros: u0, u8, u16, u32, ptr, custom types, etc
	.macro set_struct_label struct_entry:req, label:req
	.if \struct_entry == label_struct_entry
		.set __struct_entry, __LABEL_ENTRY
	.elseif \struct_entry == offset_struct_entry
		.set __struct_entry, __OFFSET_ENTRY
	.else
		.error "set_struct_label: invalid struct_entry"
	.endif

	__struct_label_stack_index = __struct_label_stack_index + 1
	.altmacro
	_add_struct_label %__struct_label_stack_index, \label
	.noaltmacro
	.endm

	.macro restore_struct_label
	.altmacro
	_purge_struct_data_macros %__struct_label_stack_index
	.noaltmacro
	__struct_label_stack_index = __struct_label_stack_index - 1
	.if __struct_label_stack_index
	.altmacro
	_struct_end %__struct_label_stack_index
	.noaltmacro
	.endif
	.endm

	.macro struct_const name:req, val:req
		.if __struct_entry == __OFFSET_ENTRY
			.ifndef \name
				.equiv \name, \val
			.endif
		.endif
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


