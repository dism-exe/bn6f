
	.macro object_header_struct, label=oObjectHeader, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin \label
		struct_init_defs \struct_entry, \label
		u0 \label, ObjectHeader // loc=0x0
		u8 \label, Flags // loc=0x0
		    struct_const OBJECT_FLAG_ACTIVE,                0x01
		    struct_const OBJECT_FLAG_VISABLE,               0x02
		    struct_const OBJECT_FLAG_PAUSE_UPDATE,          0x04
		    struct_const OBJECT_FLAG_STOP_SPRITE_UPDATE,    0x08
		    struct_const OBJECT_FLAG_UPDATE_DURING_TIMESTOP,0x10
		    struct_const OBJECT_FLAG_UNK_20,                0x20
		    struct_const OBJECT_FLAG_UNK_40,                0x40
		    struct_const OBJECT_LAG_UNK_80,                 0x80
		u8 \label, Index // loc=0x1
		u0 \label, TypeAndSpriteOffset // loc=0x2
		u0 \label, Type			// 0X
		u8 \label, SpriteOffset // X0
		u8 \label, ListIndex // loc=0x3
	.endm

	def_struct_offsets object_header_struct, oObjectHeader
