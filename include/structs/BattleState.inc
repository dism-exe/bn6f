
	.macro battle_state_struct label=oBattleState, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	// type: BattleState
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u8 Unk_00 // loc=0x0
	u8 Unk_01 // loc=0x1

	union
	u8 Unk_02 // loc=0x2
	u8 Unk_03 // loc=0x3
	nextu
	u16 Unk_02_03 // loc=0x2
	endu

	union
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	nextu
	u16 Unk_04_05 // loc=0x4
	endu

	u8 Unk_06 // loc=0x6
	u8 Unk_07 // loc=0x7
	u8 Unk_08 // loc=0x8
	struct_org 0xa
	u8 Unk_0a // loc=0xa
	u8 Unk_0b // loc=0xb
	struct_org 0xd
	u8 Unk_0d // loc=0xd
	u8 Unk_0e // loc=0xe
	u8 Unk_0f // loc=0xf
	u8 Unk_10 // loc=0x10
	u8 Unk_11 // loc=0x11

	union
	u8 Unk_12 // loc=0x12
	u8 Unk_13 // loc=0x13
	nextu
	u16 Unk_12_13 // loc=0x12
	endu

	u8 Unk_14 // loc=0x14
	u8 Unk_15 // loc=0x15
	u8 Unk_16 // loc=0x16
	u8 Unk_17 // loc=0x17
	u8 Unk_18 // loc=0x18
	u8 Unk_19 // loc=0x19
	u8 Unk_1a // loc=0x1a
	u8 Unk_1b // loc=0x1b
	u8 Unk_1c // loc=0x1c
	u8 Unk_1d // loc=0x1d
	u8 Unk_1e // loc=0x1e
	u8 Unk_1f // loc=0x1f
	u16 Unk_20 // loc=0x20

	struct_org 0x28
	u16 Unk_28 // loc=0x28
	struct_org 0x32
	u16 Unk_32 // loc=0x32
	u16 Unk_34 // loc=0x34
	u16 Unk_36 // loc=0x36
	u16 Unk_38 // loc=0x38
	u16 Unk_3a // loc=0x3a
	u32 BattleSettings // loc=0x3c
	u32 Unk_40 // loc=0x40
	// todo: figure out where these are accessed
	// analyzer detects these but obviously not an imm read
	u8 Unk_44 // loc=0x44
	u8 Unk_45 // loc=0x45
	struct_org 0x5c
	u32 Unk_5c // loc=0x5c
	u32 Unk_60 // loc=0x60
	u32 Unk_64 // loc=0x64
	struct_org 0x80
	u0 AliveBattleActors // loc=0x80
	u8_arr AlivePlayerActors, 0x10 // loc=0x80
	u8_arr AliveOpponentActors, 0x10 // loc=0x90
	u0 Unk_a0 // loc=0xa0
	struct_org 0xc0
	u0 Unk_c0 // loc=0xc0
	struct_org 0xd0
	u0 BattleActors // loc=0xd0
	u8_arr PlayerActors, 0x10 // loc=0xd0
	u8_arr OpponentActors, 0x10 // loc=0xe0
	u0 Size // loc=0xf0
	restore_struct_label
	.endm

// TODO
//	u32 Unk_80 // loc=0x80
//	u32 Unk_84 // loc=0x84
//	u32 Unk_90 // loc=0x90
//	u32 Unk_94 // loc=0x94
//	u32 Unk_b8 // loc=0xb8
//	u32 Unk_bc // loc=0xbc
//	u32 Unk_e0 // loc=0xe0

	def_struct_offsets battle_state_struct, oBattleState
