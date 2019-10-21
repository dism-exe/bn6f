
	.macro object_header_struct, label=oObjectHeader, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u0 ObjectHeader // loc=0x0
	u8 Flags // loc=0x0
		struct_const OBJECT_FLAG_ACTIVE,                  0x01
		struct_const OBJECT_FLAG_VISIBLE,                 0x02
		struct_const OBJECT_FLAG_PAUSE_UPDATE,            0x04
		struct_const OBJECT_FLAG_STOP_SPRITE_UPDATE,      0x08
		struct_const OBJECT_FLAG_UPDATE_DURING_TIMESTOP,  0x10
		struct_const OBJECT_FLAG_UNK_20,                  0x20
		struct_const OBJECT_FLAG_UNK_40,                  0x40
		struct_const OBJECT_FLAG_UNK_80,                  0x80
	u8 Index // loc=0x1
	u0 TypeAndSpriteOffset // loc=0x2
	u0 Type			// 0X
	u8 SpriteOffset // X0
	u8 ListIndex // loc=0x3
	restore_struct_label
	.endm

	def_struct_offsets object_header_struct, oObjectHeader
