
	.macro game_state_struct, label, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin
	\struct_entry \label\()_SubsystemIndex, 1 // loc=0x0
	\struct_entry \label\()_PETNaviIndex, 1 // loc=0x1
	\struct_entry \label\()_Unk_02, 1 // loc=0x2
	\struct_entry \label\()_Unk_03, 1 // loc=0x3
	\struct_entry \label\()_MapGroup, 1 // loc=0x4
	\struct_entry \label\()_MapNumber, 1 // loc=0x5
	\struct_entry \label\()_GameProgress, 1 // loc=0x6
	\struct_entry \label\()_Unk_07, 1 // loc=0x7
	// related to L button messages
	\struct_entry \label\()_Unk_08, 1 // loc=0x8
	\struct_entry \label\()_Unk_09, 1 // loc=0x9
	\struct_entry \label\()_Unk_0a, 1 // loc=0xa
	\struct_entry \label\()_Unk_0b, 1 // loc=0xb
	
	\struct_entry \label\()_LastMapGroup, 1 // loc=0xc
	\struct_entry \label\()_LastMapNumber, 1 // loc=0xd
	\struct_entry \label\()_Unk_0e, 1 // loc=0xe
	\struct_entry \label\()_BGMusicIndicator, 1 // loc=0xf
	\struct_entry \label\()_Unk_10, 1 // loc=0x10
	\struct_entry \label\()_Unk_11, 1 // loc=0x11
	\struct_entry \label\()_Unk_12, 1 // loc=0x12
	\struct_entry \label\()_Unk_13, 1 // loc=0x13
	\struct_entry \label\()_Unk_14, 1 // loc=0x14
	\struct_entry \label\()_Unk_15, 1 // loc=0x15
	\struct_entry \label\()_Unk_16, 1 // loc=0x16
	\struct_entry \label\()_Unk_17, 1 // loc=0x17
	\struct_entry \label\()_OverworldPlayerObjectPtr, 4 // loc=0x18
	\struct_entry \label\()_CurBattleDataPtr, 4 // loc=0x1c
	\struct_entry \label\()_Unk_20, 4 // loc=0x20
	\struct_entry \label\()_PlayerX, 4 // loc=0x24
	\struct_entry \label\()_PlayerY, 4 // loc=0x28
	\struct_entry \label\()_Unk_2c, 4 // loc=0x2c
	\struct_entry \label\()_Unk_30, 4 // loc=0x30
	\struct_entry \label\()_Unk_34, 4 // loc=0x34
	\struct_entry \label\()_Unk_38, 4 // loc=0x38
	\struct_entry \label\()_Unk_3c, 4 // loc=0x3c
	\struct_entry \label\()_Unk_40, 4 // loc=0x40
	\struct_entry \label\()_Unk_44, 4 // loc=0x44
	// same struct as Unk_3_4 to Unk_44
	\struct_entry \label\()_Unk_48, 0x14 // loc=0x48
	\struct_entry \label\()_ProtectedZenny, 4 // loc=0x5c
	\struct_entry \label\()_ProtectedBugfrags, 4 // loc=0x60
	\struct_entry \label\()_Unk_64, 4 // loc=0x64
	\struct_entry \label\()_Unk_68, 4 // loc=0x68
	\struct_entry \label\()_Unk_6c, 4 // loc=0x6c
	\struct_entry \label\()_Unk_70, 4 // loc=0x70
	\struct_entry \label\()_Unk_74, 0xc // loc=0x74
	// size=0x80
	.endm

	def_struct_offsets game_state_struct, oGameState
