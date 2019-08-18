
	.set __defining_rom_struct_offsets, 0
	.set __return_value, 0

	.macro set_last_rom_struct rom_struct:req
	.purgem check_last_rom_struct

	.macro check_last_rom_struct cur_rom_struct:req
		.if \rom_struct == \cur_rom_struct
			.set __return_value, 1
		.else
			.set __return_value, 0
		.endif
	.endm
	.endm

	.macro check_last_rom_struct
	.endm

	set_last_rom_struct __dummy

	.macro init_rom_struct rom_struct:req, label
	.ifeq __defining_rom_struct_offsets
		.ifnb \label
			add_rom_struct_label \label, rom_offset_struct_entry
		.else
			check_last_rom_struct \rom_struct
			.if __return_value == 0
				add_rom_struct_label \label, rom_data_struct_entry
			.endif
			set_last_rom_struct \rom_struct
		.endif
	.endif
	.endm

	.macro rom_offset_struct_entry label:req, size:req, value
\label:
	.if \size // suppress warning from size = 0
		.space \size
	.endif
	.endm

	.macro rom_data_struct_entry label:req, size:req, value:req
	.if \size == 1
		.byte \value
	.elseif \size == 2
		.hword \value
	.elseif \size == 4
		.word \value
	.else
		.error "Invalid size for rom_offset_struct_entry!"
	.endif
	.endm

	.macro def_rom_struct_offsets macro:req, label:req
	.struct 0
	init_rom_struct \macro, \label
	.set __defining_rom_struct_offsets, 1
	\macro
	.set __defining_rom_struct_offsets, 0
	.endm

	.macro add_rom_struct_label label, struct_entry:req
		.ifdef __defined_types
		.purgem u0
		.purgem u8
		.purgem u16
		.purgem u32
		.purgem s8
		.purgem s16
		.purgem s32
		.purgem ptr
		.purgem bool
		.purgem bool8
		.endif

		/* struct data macros */
		.macro u0 field:req, value
			.ifb \label
				\struct_entry \label\()_\field, 0, \value
			.endif
		.endm

		.macro u8 field:req, value
			\struct_entry \label\()_\field, 1, \value
		.endm

		.macro u16 field:req, value
			\struct_entry \label\()_\field, 2, \value
		.endm

		.macro u32 field:req, value
			\struct_entry \label\()_\field, 4, \value
		.endm

		.macro s8 field:req, value
			\struct_entry \label\()_\field, 1, \value
		.endm

		.macro s16 field:req, value
			\struct_entry \label\()_\field, 2, \value
		.endm

		.macro s32 field:req, value
			\struct_entry \label\()_\field, 4, \value
		.endm

		.macro ptr field:req, value
			\struct_entry \label\()_\field, 4, \value
		.endm

		// for exclusively 0 or 1
		.macro bool field:req, value
			\struct_entry \label\()_\field, 1, \value
		.endm

		// 0 or !0
		.macro bool8 field:req, value
			\struct_entry \label\()_\field, 1, \value
		.endm

		.set __defined_types, 1
	.endm
