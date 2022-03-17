	.macro PETNavi field:req // type: enum PETNavi
		enum8 \field
		struct_const PET_NAVI_MEGAMAN,      0x00
		struct_const PET_NAVI_SPOUTMAN,     0x01    
		struct_const PET_NAVI_TOMAHAWKMAN,  0x02
		struct_const PET_NAVI_TENGUMAN,     0x03
		struct_const PET_NAVI_GROUNDMAN,    0x04
		struct_const PET_NAVI_DUSTMAN,      0x05
		// 0x06 resets back to spoutman
	.endm

	.macro game_state_struct, label=oGameState, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct GameState
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u8 SubsystemIndex // loc=0x0
    // PET displayed icon
	PETNavi CurPETNavi // loc=0x1
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
	u8 Unk_09 // loc=0x9 // 03 = can't jack out
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
	u8 EnterMapFadeParam1 // loc=0x16
	u8 EnterMapFadeParam2 // loc=0x17
	ptr OverworldPlayerObjectPtr // loc=0x18
	ptr CurBattleDataPtr // loc=0x1c
	ptr Ptr_20 // loc=0x20
	u32 PlayerX // loc=0x24
	u32 PlayerY // loc=0x28
	u32 PlayerZ // loc=0x2c
	u32 FacingDirectionAfterWarp // loc=0x30
	// can probably be done with a nested struct
	u0 SavedRealWorldCoords_FacingDirection_MapId // loc=0x34
	u32 SavedRealWorldX // loc=0x34
	u32 SavedRealWorldY // loc=0x38
	u32 SavedRealWorldZ // loc=0x3c
	u32 SavedRealWorldFacingDirection // loc=0x40
	u32 SavedRealWorldMapId // loc=0x44
	// same struct as Unk_34 to Unk_44
	u0 SavedInternetCoords_FacingDirection_MapId
	u32 SavedInternetX // loc=0x48
	u32 SavedInternetY // loc=0x4c
	u32 SavedInternetZ // loc=0x50
	u32 SavedInternetFacingDirection // loc=0x54
	u32 SavedInternetMapId // loc=0x58
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

	.equiv oSavedOWPlayerInfo_X, 0x0
	.equiv oSavedOWPlayerInfo_Y, 0x4
	.equiv oSavedOWPlayerInfo_Z, 0x8
	.equiv oSavedOWPlayerInfo_FacingDirection, 0xc
	.equiv oSavedOWPlayerInfo_MapId, 0x10
