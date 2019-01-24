// not done

	.macro overworld_player_object_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	object_header_struct \label, \struct_entry, \struct_begin
	.space 0x10
	\struct_entry \label\()_AnimationSelect, 1 // loc=0x14
	\struct_entry \label\()_AnimationSelectUpdate, 1 // loc=0x15
	\struct_entry \label\()_PaletteIndex, 1 // loc=0x16
	\struct_entry \label\()_InteractionLocked, 1 // loc=0x17
	.space 0x4
	\struct_entry \label\()_Coords // loc=0x1c
	\struct_entry \label\()_X, 4 // loc=0x1c
	\struct_entry \label\()_Y, 4 // loc=0x20
	\struct_entry \label\()_Z, 4 // loc=0x24
	\struct_entry \label\()_NextX, 4 // loc=0x28
	\struct_entry \label\()_NextY, 4 // loc=0x2c
	\struct_entry \label\()_NextZ, 4 // loc=0x30
	.space 0x5c
	\struct_entry \label\()_SpriteData // loc=0x90
	object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0x90
	\struct_entry \label\()_Size // loc=0xc8
	.endm

	def_struct_offsets overworld_player_object_struct, oOWPlayerObject

	.equiv oOWObjectCoords_XFull, 0
	.equiv oOWObjectCoords_X, 2
	.equiv oOWObjectCoords_YFull, 4
	.equiv oOWObjectCoords_Y, 6
	.equiv oOWObjectCoords_ZFull, 8
	.equiv oOWObjectCoords_Z, 10

/*
	.macro overworld_player_object_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	
	object_header_struct \label, \struct_entry, \struct_begin
	\struct_entry \label\()_WalkingSpeed, 1 // loc=0x4
	\struct_entry \label\()_WalkingTimer, 1 // loc=0x5
	\struct_entry \label\()_Undetected_06, 1 // loc=0x6
	\struct_entry \label\()_Unk_07, 1 // loc=0x7
	\struct_entry \label\()_Unk_08_MainJumptableIndex, 1 // loc=0x8
	\struct_entry \label\()_MovementFlag_09, 1 // loc=0x9
	\struct_entry \label\()_MovementFlag_0a, 1 // loc=0xa
	\struct_entry \label\()_Unk_0b, 1 // loc=0xb
		\struct_entry \label\()_Unk_0c, 1 // loc=0xc
	\struct_entry \label\()_Unk_0d, 1 // loc=0xd
	\struct_entry \label\()_Unk_0e, 1 // loc=0xe
	\struct_entry \label\()_Unk_0f, 1 // loc=0xf
		\struct_entry \label\()_Unk_10, 1 // loc=0x10
	\struct_entry \label\()_Unk_11, 1 // loc=0x11
	\struct_entry \label\()_Unk_12, 1 // loc=0x12
	\struct_entry \label\()_Unk_13, 1 // loc=0x13
		\struct_entry \label\()_AnimationSelect, 1 // loc=0x14
		\struct_entry \label\()_AnimationSelectUpdate, 1 // loc=0x15
		\struct_entry \label\()_PaletteIndex, 1 // loc=0x16
		\struct_entry \label\()_InteractionLocked, 1 // loc=0x17
	\struct_entry \label\()_ChatTriggered, 1 // loc=0x18
	\struct_entry \label\()_TerminateScript_19, 1 // loc=0x19 more like a return value than a state value
	\struct_entry \label\()_Undetected_1a, 1 // loc=0x1a
	\struct_entry \label\()_Undetected_1b, 1 // loc=0x1b
	\struct_entry \label\()_TextScriptIndex, 1 // loc=0x1c
	\struct_entry \label\()_Unk_1d, 1 // loc=0x1d
	\struct_entry \label\()_Unk_1e, 1 // loc=0x1e
	\struct_entry \label\()_TerminateScript_1f, 1 // loc=0x1f
	\struct_entry \label\()_AnimationTimer, 2 // loc=0x20
	\struct_entry \label\()_Timer_20, 2 // loc=0x22
	\struct_entry \label\()_X, 4 // loc=0x1c
	\struct_entry \label\()_Y, 4 // loc=0x20
	\struct_entry \label\()_Z, 4 // loc=0x24
	\struct_entry \label\()_NextX, 4 // loc=0x30
	\struct_entry \label\()_NextY, 4 // loc=0x34
	\struct_entry \label\()_NextZ, 4 // loc=0x38
	\struct_entry \label\()_NPCSprite, 2 // loc=0x3c
	\struct_entry \label\()_NPCSpriteUpdate, 2 // loc=0x3e
	\struct_entry \label\()_DeltaX, 4 // loc=0x40
	\struct_entry \label\()_DeltaY, 4 // loc=0x44
	\struct_entry \label\()_DeltaZ, 4 // loc=0x48
	\struct_entry \label\()_AnimationScriptPtr, 4 // loc=0x4c
	\struct_entry \label\()_Unk_50, 4 // loc=0x50
	\struct_entry \label\()_Unk_54, 4 // loc=0x54
	\struct_entry \label\()_Unk_58, 4 // loc=0x58
	\struct_entry \label\()_UnkNPCScriptPtr_5c, 4 // loc=0x5c
	\struct_entry \label\()_UnkFlags_60, 4 // loc=0x60
	\struct_entry \label\()_Unk_64, 4 // loc=0x64
	\struct_entry \label\()_Flags_68, 4 // loc=0x68
	\struct_entry \label\()_Flags_68_Update, 4 // loc=0x6c
	\struct_entry \label\()_Unk_70, 4 // loc=0x70
	\struct_entry \label\()_Unk_74, 4 // loc=0x74
	\struct_entry \label\()_Unk_78, 4 // loc=0x78
	\struct_entry \label\()_Undetected_7c, 4 // loc=0x7c
	\struct_entry \label\()_Unk_80, 1 // loc=0x80 read internally as u32
	\struct_entry \label\()_Unk_81, 1 // loc=0x81
	\struct_entry \label\()_WalkingSpeedReload, 1 // loc=0x82
	\struct_entry \label\()_WalkingTimerReload, 1 // loc=0x83
	\struct_entry \label\()_Unk_84, 4 // loc=0x84
	\struct_entry \label\()_Undetected_88, 4 // loc=0x88
	\struct_entry \label\()_Undetected_8c, 4 // loc=0x8c
	\struct_entry \label\()_Chatbox_90, 4 // loc=0x90
	\struct_entry \label\()_TextScriptPtr, 4 // loc=0x94
	// loc=0x98
	.space 8 // align to nearest power of 4 relative to struct
	\struct_entry \label\()_SpriteData // loc=0xa0
	object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0xa0
	\struct_entry \label\()_Size
	\struct_entry \label\()_End // loc=0xd8
	.endm*/
