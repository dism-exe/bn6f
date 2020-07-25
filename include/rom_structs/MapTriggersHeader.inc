
	.macro map_triggers_header_struct unk_offset_00, unk_offset_04, layer_priority_triggers_offset, unk_offset_0c
	init_rom_struct map_triggers_header_struct
	u32 UnkOffset_00, \unk_offset_00 // loc=0x0
	u32 UnkOffset_04, \unk_offset_04 // loc=0x4
	u32 LayerPriorityTriggersOffset, \layer_priority_triggers_offset // loc=0x8
	u32 UnkOffset_0C, \unk_offset_0c // loc=0xc
	u0 Size // loc=0x10
	.endm

	def_rom_struct_offsets map_triggers_header_struct, oMapTriggersHeader
