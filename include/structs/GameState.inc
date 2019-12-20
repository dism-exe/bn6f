
	.macro game_state_struct, label=oGameState, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u8 SubsystemIndex // loc=0x0
	u8 CurPETNavi // loc=0x1
	u8 Unk_02 // loc=0x2
	u8 Unk_03 // loc=0x3
	union
	u8 MapGroup // loc=0x4
	u8 MapNumber // loc=0x5
	nextu
	u16 MapId // loc=0x4
	endu
	u8 GameProgress // loc=0x6
	u8 Unk_07 // loc=0x7
	// related to L button messages
	u8 Unk_08 // loc=0x8
	u8 Unk_09 // loc=0x9
	u8 BattlePaused // loc=0xa
	u8 Unk_0b // loc=0xb

	u8 LastMapGroup // loc=0xc
	u8 LastMapNumber // loc=0xd
	u8 CoordInteractionValue // loc=0xe
	u8 BGMusicIndicator // loc=0xf
	u8 Unk_10 // loc=0x10
	u8 Unk_11 // loc=0x11
	u8 Unk_12 // loc=0x12
	u8 Unk_13 // loc=0x13
	u8 Unk_14 // loc=0x14
	u8 Unk_15 // loc=0x15
	u8 Unk_16 // loc=0x16
	u8 Unk_17 // loc=0x17
	ptr OverworldPlayerObjectPtr // loc=0x18
	ptr CurBattleDataPtr // loc=0x1c
	ptr Ptr_20 // loc=0x20
	u32 PlayerX // loc=0x24
	u32 PlayerY // loc=0x28
	u32 Unk_2c // loc=0x2c
	u32 facingDirectionAfterWarp_30 // loc=0x30
	u32 Unk_34 // loc=0x34
	u32 Unk_38 // loc=0x38
	u32 Unk_3c // loc=0x3c
	u32 Unk_40 // loc=0x40
	u32 Unk_44 // loc=0x44
	// same struct as Unk_3_4 to Unk_44
	u32 Unk_48 // loc=0x48
	u32 Unk_4c // loc=0x4c
	u32 Unk_50 // loc=0x50
	u32 Unk_54 // loc=0x54
	u32 Unk_58 // loc=0x58
	u32 ProtectedZenny // loc=0x5c
	u32 ProtectedBugfrags // loc=0x60
	u32 Unk_64 // loc=0x64
	u32 Unk_68 // loc=0x68
	u32 Unk_6c // loc=0x6c
	u32 Unk_70 // loc=0x70
	u32 Unk_74 // loc=0x74
	u32 Unk_78 // loc=0x78
	u32 Unk_7c // loc=0x7c
	u0 Size // 0x80
	restore_struct_label
	.endm

	def_struct_offsets game_state_struct, oGameState
