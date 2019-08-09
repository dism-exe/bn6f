
	.set __defining_rom_struct_offsets, 0

	.macro init_rom_struct label
	.ifeq __defining_rom_struct_offsets
		.ifnb \label
			add_rom_struct_label \label, rom_offset_struct_entry
		.else
			add_rom_struct_label \label, rom_data_struct_entry
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
	init_rom_struct \label
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

	.macro fade_params_struct unk_00_ptr, unk_04_ptr, unused_08, byte_0c, byte_0d, byte_0e, byte_0f
	init_rom_struct
	u32 Ptr_00, \unk_00_ptr
	u32 Ptr_04, \unk_04_ptr
	u32 Unused_08, \unused_08
	u8 Unk_0c, \byte_0c
	u8 Unk_0d, \byte_0d
	u8 Unk_0e, \byte_0e
	u8 Unk_0f, \byte_0f
	.endm

	def_rom_struct_offsets fade_params_struct, oFadeParams
