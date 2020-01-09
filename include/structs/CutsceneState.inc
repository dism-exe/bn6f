
	.macro cutscene_state_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct CutsceneState
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x4
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	u8 Unk_06 // loc=0x6
	u8 Unk_07 // loc=0x7
	u0 Unk_08 // loc=0x8
	struct_org 0xc
	u8 CutsceneScript1PauseTimer // loc=0xc
	u8 CutsceneScript2PauseTimer // loc=0xd
	u8 CutsceneScript3PauseTimer // loc=0xe
	u8 CutsceneScript4PauseTimer // loc=0xf
	u8 OWPlayerCoordSpecialTimer // loc=0x10
	u8 TransformPlayerNaviSpriteTimer // loc=0x11
	u8 WhichCutsceneScript // loc=0x12
	u8 CutsceneCameraScriptActive // loc=0x13
	u16 CutsceneScript1LongPauseTimer // loc=0x14
	u16 CutsceneScript2LongPauseTimer // loc=0x16
	u16 CutsceneScript3LongPauseTimer // loc=0x18
	u16 CutsceneScript4LongPauseTimer // loc=0x1a
	ptr CutsceneScriptPos // loc=0x1c
		struct_const CUTSCENE_SCRIPT_UNK_MAGIC_SCRIPT_VALUE_0x1, 0x1
	ptr CutsceneScriptPos2 // loc=0x20
	ptr CutsceneScriptPos3 // loc=0x24
	ptr CutsceneScriptPos4 // loc=0x28
	flags32 CutsceneFlags // loc=0x2c
		struct_const CUTSCENE_FLAG_SCRIPT_1_PAUSED, 0x0
		struct_const CUTSCENE_FLAG_SCRIPT_2_PAUSED, 0x1
		struct_const CUTSCENE_FLAG_SCRIPT_3_PAUSED, 0x2
		struct_const CUTSCENE_FLAG_SCRIPT_4_PAUSED, 0x3
		struct_const CUTSCENE_FLAG_SCRIPT_1_PAUSED_LONG, 0x4
		struct_const CUTSCENE_FLAG_SCRIPT_2_PAUSED_LONG, 0x5
		struct_const CUTSCENE_FLAG_SCRIPT_3_PAUSED_LONG, 0x6
		struct_const CUTSCENE_FLAG_SCRIPT_4_PAUSED_LONG, 0x7
		struct_const CUTSCENE_FLAG_8, 0x8
		struct_const CUTSCENE_FLAG_9, 0x9
	TextScriptArchivePtr TextArchivePtr // loc=0x30
	ptr Unk_34 // loc=0x34
	ptr CutsceneScriptAfterCutsceneSkip // loc=0x38
	ptr CutsceneCameraScriptPtr // loc=0x3c
	ptr originalCutsceneScriptPos_40 // loc=0x40
	u8_arr owMapObjectPtrs_44, 0x2c // loc=0x44
	u0 owMapObjectPtrsEnd_70 // loc=0x70
	struct_org 0x90
	u0 Size // loc=0x90
	restore_struct_label
	.endm

	def_struct_offsets cutscene_state_struct, oCutsceneState
	
// [2011c6c]!!?
