
	.macro object_sprite_struct, label=oObjectSprite, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	set_struct_label \struct_entry, \label
\label:
	u8 Unk_00 // loc=0x0
	u8 Unk_01 // loc=0x1
	u8 Unk_02 // loc=0x2
	u8 Unk_03 // loc=0x3
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	u16 Unk_06 // loc=0x6
	.space 0x2
	u16 Unk_0a // loc=0xa
	.space 0x4
	u8 Unk_10 // loc=0x12 // also size 2
	u8 Unk_11 // loc=0x11
	u8 Unk_12 // loc=0x12 // also size 2
	u8 Unk_13 // loc=0x13
	u8 Unk_14 // loc=0x14
	u8 Unk_15 // loc=0x15
	u16 Unk_16 // loc=0x16
	u32 Unk_18 // loc=0x18
	u32 Unk_1c // loc=0x1c
	u32 Unk_20 // loc=0x20
	u32 Unk_24 // loc=0x24
	u32 Unk_28 // loc=0x28
	u32 Unk_2c // loc=0x2c
	u32 Unk_30 // loc=0x30
	u32 Unk_34 // loc=0x34
	u0 Size // loc=0x38
	restore_struct_label
	.endm

	.struct 0
	def_struct_offsets object_sprite_struct, oObjectSprite
