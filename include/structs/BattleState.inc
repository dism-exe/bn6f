
	.macro battle_state_struct label=oBattleState, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x1
	u8 Unk_01 // loc=0x1
	struct_org 0x4
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	struct_org 0x7
	u8 Unk_07 // loc=0x7
	struct_org 0xb
	u8 Unk_0b // loc=0xb
	struct_org 0xd
	u8 Unk_0d // loc=0xd
	u8 Unk_0e // loc=0xe
	struct_org 0x12
	u8 Unk_12 // loc=0x12
	u8 Unk_13 // loc=0x13
	u8 Unk_14 // loc=0x14
	struct_org 0x16
	u8 Unk_16 // loc=0x16
	struct_org 0x1a
	u8 Unk_1a // loc=0x1a
	struct_org 0x1c
	u8 Unk_1c // loc=0x1c
	u8 Unk_1d // loc=0x1d
	struct_org 0x32
	u16 Unk_32 // loc=0x32
	struct_org 0x36
	u16 Unk_36 // loc=0x36
	struct_org 0x3a
	u16 Unk_3a // loc=0x3a
	u32 BattleSettings // loc=0x3c
	u32 Unk_40 // loc=0x40
	struct_org 0x5c
	u8 Unk_5c // loc=0x5c
	struct_org 0x80
	u0 AliveBattleActors // loc=0x80
	u8_arr AlivePlayerActors, 0x10 // loc=0x80
	u8_arr AliveOpponentActors, 0x10 // loc=0x90
	u0 Unk_a0 // loc=0xa0
	struct_org 0xd0
	u0 BattleActors // loc=0xd0
	u8_arr PlayerActors, 0x10 // loc=0xd0
	u8_arr OpponentActors, 0x10 // loc=0xe0
	u0 Size // loc=0xf0
	restore_struct_label
	.endm

	def_struct_offsets battle_state_struct, oBattleState
