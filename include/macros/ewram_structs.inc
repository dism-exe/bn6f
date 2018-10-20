	.macro battle_object_struct label, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	\struct_entry \label\()Flags, 1 // loc=0x0
	\struct_entry \label\()Index, 1 // loc=0x1
	\struct_entry \label\()TypeAndSpriteOffset // loc=0x2
	\struct_entry \label\()Type
	\struct_entry \label\()SpriteOffset, 1
	\struct_entry \label\()ListIndex, 1 // loc=0x3
	\struct_entry \label\()Param1, 1 // loc=0x4
	\struct_entry \label\()Param2, 1 // loc=0x5
	\struct_entry \label\()Param3, 1 // loc=0x6
	\struct_entry \label\()Param4, 1 // loc=0x7
	\struct_entry \label\()CurState, 1 // loc=0x8
	\struct_entry \label\()CurAction, 1 // loc=0x9
	\struct_entry \label\()CurPhase, 1 // loc=0xa
	\struct_entry \label\()PhaseInitialized, 1 // loc=0xb
	\struct_entry \label\()Unk_0c, 1 // loc=0xc
	\struct_entry \label\()Unk_0d, 1 // loc=0xd
	\struct_entry \label\()Element, 1 // loc=0xe
	\struct_entry \label\()Unk_0f, 1 // loc=0xf
	\struct_entry \label\()CurAnim, 1 // loc=0x10
	\struct_entry \label\()CurAnimCopy, 1 // loc=0x11
	\struct_entry \label\()PanelX, 1 // loc=0x12
	\struct_entry \label\()PanelY, 1 // loc=0x13
	\struct_entry \label\()FuturePanelX, 1 // loc=0x14
	\struct_entry \label\()FuturePanelY, 1 // loc=0x15
	\struct_entry \label\()Alliance, 1 // loc=0x16
	\struct_entry \label\()DirectionFlip, 1 // loc=0x17
	\struct_entry \label\()PreventAnim, 1 // loc=0x18
	\struct_entry \label\()Unk_19, 1 // loc=0x19
	\struct_entry \label\()ChipsHeld, 1 // loc=0x1a
	\struct_entry \label\()Unk_1b, 1 // loc=0x1b
	\struct_entry \label\()Unk_1c, 1 // loc=0x1c
	\struct_entry \label\()Unk_1d, 1 // loc=0x1d
	\struct_entry \label\()Unk_1e, 1 // loc=0x1e
	\struct_entry \label\()Unk_1f, 1 // loc=0x1f
	\struct_entry \label\()Timer, 2 // loc=0x20
	\struct_entry \label\()Timer2, 2 // loc=0x22
	\struct_entry \label\()HP, 2 // loc=0x24
	\struct_entry \label\()MaxHP, 2 // loc=0x26
	\struct_entry \label\()NameID, 2 // loc=0x28
	\struct_entry \label\()Chip, 2 // loc=0x2a
	// also includes flags
	\struct_entry \label\()Damage, 2 // loc=0x2c
	// ???
	\struct_entry \label\()StaminaDamageCounterDisabler, 2  // loc=0x2e
	\struct_entry \label\()Unk_30, 2 // loc=0x30
	\struct_entry \label\()Unk_32, 2 // loc=0x32
	\struct_entry \label\()X, 4 // loc=0x34
	\struct_entry \label\()Y, 4 // loc=0x38
	\struct_entry \label\()Z, 4 // loc=0x3c
	\struct_entry \label\()XVelocity, 4 // loc=0x40
	\struct_entry \label\()YVelocity, 4 // loc=0x44
	\struct_entry \label\()ZVelocity, 4 // loc=0x48
	\struct_entry \label\()RelatedObject1Ptr, 4 // loc=0x4c
	\struct_entry \label\()RelatedObject2Ptr, 4 // loc=0x50
	\struct_entry \label\()CollisionDataPtr, 4 // loc=0x54
	\struct_entry \label\()AIPtr, 4 // loc=0x58
	\struct_entry \label\()Unk_5c, 4 // loc=0x5c
	\struct_entry \label\()ExtraVars, 44 // loc=0x60
	\struct_entry \label\()Unk_8c, 4 // loc=0x8c
	\struct_entry \label\()UnkSpriteData_90, 0x48 // loc=0x90
	\struct_entry \label\()Size
	\struct_entry \label\()End // loc=0xd8
	.endm

	.macro toolkit_struct, label, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin
	\struct_entry \label\()MainJumptableIndexPtr, 4 // loc=0x0
	\struct_entry \label\()JoypadPtr, 4 // loc=0x4
	\struct_entry \label\()RenderInfoPtr, 4 // loc=0x8
	\struct_entry \label\()CameraPtr, 4 // loc=0xc
	\struct_entry \label\()S2011c50_Ptr, 4 // loc=0x10
	\struct_entry \label\()Unk2011bb0_Ptr, 4 // loc=0x14
	\struct_entry \label\()S2034880_Ptr, 4 // loc=0x18
	\struct_entry \label\()Unk200f3a0_Ptr, 4 // loc=0x1c
	\struct_entry \label\()Unk2009740_Ptr, 4 // loc=0x20
	\struct_entry \label\()CurFramePtr, 4 // loc=0x24
	\struct_entry \label\()GFX30025c0_Ptr, 4 // loc=0x28
	\struct_entry \label\()ChatboxPtr, 4 // loc=0x2c
	\struct_entry \label\()Unk20384f0_Ptr, 4 // loc=0x30
	\struct_entry \label\()SubmenuPtr, 4 // loc=0x34
	\struct_entry \label\()Unk200a220_Ptr, 4 // loc=0x38
	\struct_entry \label\()GameStatePtr, 4 // loc=0x3c
	\struct_entry \label\()Unk2001c04_Ptr, 4 // loc=0x40
	\struct_entry \label\()Flags2001c88_Ptr, 4 // loc=0x44
	\struct_entry \label\()S_Chip_2002178_Ptr, 4 // loc=0x48
	\struct_entry \label\()Unk2002230_Ptr, 4 // loc=0x4c
	\struct_entry \label\()Unk2003134_Ptr, 4 // loc=0x50
	\struct_entry \label\()Unk20032c8_Ptr, 4 // loc=0x54
	\struct_entry \label\()Unk200414c_Ptr, 4 // loc=0x58
	\struct_entry \label\()Unk2004190_Ptr, 4 // loc=0x5c
	\struct_entry \label\()Unk200431c_Ptr, 4 // loc=0x60
	\struct_entry \label\()Unk2004330_Ptr, 4 // loc=0x64
	\struct_entry \label\()Unk2004334_Ptr, 4 // loc=0x68
	\struct_entry \label\()Unk2004338_Ptr, 4 // loc=0x6c
	\struct_entry \label\()Unk2004348_Ptr, 4 // loc=0x70
	\struct_entry \label\()Unk20047cc_Ptr, 4 // loc=0x74
	\struct_entry \label\()Unk2004a8c_Ptr, 4 // loc=0x78
	\struct_entry \label\()Unk2004c20_Ptr, 4 // loc=0x7c
	\struct_entry \label\()Unk2004e24_Ptr, 4 // loc=0x80
	\struct_entry \label\()Unk2005028_Ptr, 4 // loc=0x84
	\struct_entry \label\()Unk2005030_Ptr, 4 // loc=0x88
	\struct_entry \label\()Unk2005038_Ptr, 4 // loc=0x8c
	\struct_entry \label\()UnusedGarbage, 4  // loc=0x90
	.endm

	// .macro overworld_npc_object_struct, struct_entry=label_struct_entry, struct_begin=struct_begin

	.macro game_state_struct, label, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin
	\struct_entry \label\()SubsystemIndex, 1 // loc=0x0
	\struct_entry \label\()PETNaviIndex, 1 // loc=0x1
	\struct_entry \label\()Unk_02, 1 // loc=0x2
	\struct_entry \label\()Unk_03, 1 // loc=0x3
	\struct_entry \label\()MapGroup, 1 // loc=0x4
	\struct_entry \label\()MapNumber, 1 // loc=0x5
	\struct_entry \label\()GameProgress, 1 // loc=0x6
	\struct_entry \label\()Unk_07, 1 // loc=0x7
	// related to L button messages
	\struct_entry \label\()Unk_08, 1 // loc=0x8
	\struct_entry \label\()Unk_09, 1 // loc=0x9
	\struct_entry \label\()Unk_0a, 1 // loc=0xa
	\struct_entry \label\()Unk_0b, 1 // loc=0xb
	
	\struct_entry \label\()LastMapGroup, 1 // loc=0xc
	\struct_entry \label\()LastMapNumber, 1 // loc=0xd
	\struct_entry \label\()Unk_0e, 1 // loc=0xe
	\struct_entry \label\()BGMusicIndicator, 1 // loc=0xf
	\struct_entry \label\()Unk_10, 1 // loc=0x10
	\struct_entry \label\()Unk_11, 1 // loc=0x11
	\struct_entry \label\()Unk_12, 1 // loc=0x12
	\struct_entry \label\()Unk_13, 1 // loc=0x13
	\struct_entry \label\()Unk_14, 1 // loc=0x14
	\struct_entry \label\()Unk_15, 1 // loc=0x15
	\struct_entry \label\()Unk_16, 1 // loc=0x16
	\struct_entry \label\()Unk_17, 1 // loc=0x17
	\struct_entry \label\()OverworldPlayerObjectPtr, 4 // loc=0x18
	\struct_entry \label\()CurBattleDataPtr, 4 // loc=0x1c
	\struct_entry \label\()Unk_20, 4 // loc=0x20
	\struct_entry \label\()PlayerX, 4 // loc=0x24
	\struct_entry \label\()PlayerY, 4 // loc=0x28
	\struct_entry \label\()Unk_2c, 4 // loc=0x2c
	\struct_entry \label\()Unk_30, 4 // loc=0x30
	\struct_entry \label\()Unk_34, 4 // loc=0x34
	\struct_entry \label\()Unk_38, 4 // loc=0x38
	\struct_entry \label\()Unk_3c, 4 // loc=0x3c
	\struct_entry \label\()Unk_40, 4 // loc=0x40
	\struct_entry \label\()Unk_44, 4 // loc=0x44
	// same struct as Unk_34 to Unk_44
	\struct_entry \label\()Unk_48, 0x14 // loc=0x48
	\struct_entry \label\()ProtectedZenny, 4 // loc=0x5c
	\struct_entry \label\()ProtectedBugfrags, 4 // loc=0x60
	\struct_entry \label\()Unk_64, 4 // loc=0x64
	\struct_entry \label\()Unk_68, 4 // loc=0x68
	\struct_entry \label\()Unk_6c, 4 // loc=0x6c
	\struct_entry \label\()Unk_70, 4 // loc=0x70
	\struct_entry \label\()Unk_74, 0xc // loc=0x74
	// size=0x80
	.endm

	.macro unk_map_script_state_2011e60_struct, label, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin
	// 0-7 likely halfwords
	\struct_entry \label\()Unk_00, 8 // loc=0x0
	\struct_entry \label\()UnkBytecodePtr1_08, 4 // loc=0x8
	\struct_entry \label\()UnkBytecodePtr2_0c, 4 // loc=0xc
	\struct_entry \label\()UnkBytecodePtr3_10, 4 // loc=0x10
	\struct_entry \label\()Size // loc=0x14
	.endm

	def_struct_offsets battle_object_struct, oBattleObject
	def_struct_offsets toolkit_struct, oToolkit
	def_struct_offsets game_state_struct, oGameState
	def_struct_offsets unk_map_script_state_2011e60_struct, oUnkMapScriptState_2011e60
