
	.macro battle_state_struct, label=oBattleState, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin
		struct_init_defs \struct_entry, \label
		struct_org 0x1
		u8 \label, Unk_01 // loc=0x1
		struct_org 0x4
		u8 \label, Unk_04 // loc=0x4
		u8 \label, Unk_05 // loc=0x5
		struct_org 0x7
		u8 \label, Unk_07 // loc=0x7
		struct_org 0xb
		u8 \label, Unk_0b // loc=0xb
		.space 0x1
		u8 \label, Unk_0d // loc=0xd
		u8 \label, Unk_0e // loc=0xe
		struct_org 0x12
		u8 \label, Unk_12 // loc=0x12
		u8 \label, Unk_13 // loc=0x13
		struct_org 0x16
		u8 \label, Unk_16 // loc=0x16
		struct_org 0x1a
		u8 \label, Unk_1a // loc=0x1a
		struct_org 0x1c
		u8 \label, Unk_1c // loc=0x1c
		u8 \label, Unk_1d // loc=0x1d
		struct_org 0x32
		u16 \label, Unk_32 // loc=0x32
		struct_org 0x36
		u16 \label, Unk_36 // loc=0x36
		struct_org 0x3a
		u16 \label, Unk_3a // loc=0x3a
		u32 \label, Unk_3c // loc=0x3c
		u32 \label, Unk_40 // loc=0x40
		struct_org 0x5c
		u8 \label, Unk_5c // loc=0x5c
		struct_org 0xf0
		u0 \label, Size // loc=0xf0
	.endm

	def_struct_offsets battle_state_struct, oBattleState
