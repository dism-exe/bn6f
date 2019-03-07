
	.macro object_header_struct, label=oObjectHeader, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin \label
		struct_init_defs \struct_entry, \label
		u0 \label, ObjectHeader // loc=0x0
		u8 \label, Flags // loc=0x0
		u8 \label, Index // loc=0x1
		u0 \label, TypeAndSpriteOffset // loc=0x2
		u0 \label, Type			// 0X
		u8 \label, SpriteOffset // X0
		u8 \label, ListIndex // loc=0x3
	.endm

	def_struct_offsets object_header_struct, oObjectHeader
