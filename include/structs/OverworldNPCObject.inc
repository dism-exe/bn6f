
	.macro overworld_npc_object_struct, label=oOverworldNPCObject, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct OverworldNPCObject
	set_struct_label \struct_entry, \label
	object_header_struct \label, \struct_entry, \set_struct_start_address

	union
	u8 MovementSpeed // loc=0x4
	u8 MovementDistance // loc=0x5
	u8 Undetected_06 // loc=0x6
	u8 Unk_07 // loc=0x7
	nextu
	u32 MovementSpeed_MovementTimer_Undetected_06_Unk_07 // loc=0x4
	endu

	enum8 CurState // loc=0x8
		struct_const NPC_CUR_STATE_INIT,       0x0
		struct_const NPC_CUR_STATE_STANDARD,   0x4
		struct_const NPC_CUR_STATE_IN_CHATBOX, 0x8

	// 0x0 - init
	// 0x4 - standard
	// 0x8 - stationary? activated when ChatTriggered is true
	flags8 CurAction // loc=0x9
		struct_const MOVEMENT_FLAG_STOP,                      0x00
		struct_const MOVEMENT_FLAG_DEFAULT_MOVING,            0x04
		struct_const MOVEMENT_FLAG_HOP_OR_LEAP,               0x08
		struct_const MOVEMENT_FLAG_WAIT_ANIM_FRAME,           0x0c
		struct_const MOVEMENT_FLAG_CALL_NATIVE_FUNCTION,      0x10
		struct_const MOVEMENT_FLAG_WAIT_CUTSCENE_VAR,         0x14
		struct_const MOVEMENT_FLAG_WAIT_MYSTERY_DATA_TAKEN,   0x18
	/*
	Those might not be flags, since 0x0C behaves unpredictably by 0x04 and 0x08
	0x00 - No effect, it keeps setting to 0x04
	0x04 - Default, moving
	0x08 - Stop
	0x0C - Stop, with a weird location transformation for a moment.
	*/
	union
		u8 MovementFlag_0a // loc=0xa
		u8 Unk_0b // loc=0xb
	nextu
		u16 MovementFlag_0a_Unk_0b // loc=0xa
	endu
	
	union
		u8 CollisionRadius // loc=0xc
		u8 ZReach // loc=0xd
	nextu
		u16 CollisionRadius_ZReach // loc=0xc
	endu

	u8 MovementDirection // loc=0xe
	u8 Unk_0f // loc=0xf
	u8 Unk_10 // loc=0x10
	u8 CenterOffsetX // loc=0x11
	u8 CenterOffsetY // loc=0x12
	u8 CenterOffsetZ // loc=0x13
	u8 AnimationSelect // loc=0x14
	u8 AnimationSelectUpdate // loc=0x15
	u8 PaletteIndex // loc=0x16
	bool8 InteractionLocked // loc=0x17
	bool8 ChatTriggered // loc=0x18
	u8 TerminateScript_19 // loc=0x19 more like a return value than a state value
	u8 Undetected_1a // loc=0x1a
	u8 Undetected_1b // loc=0x1b
	u8 TextScriptIndex // loc=0x1c
	u8 Unk_1d // loc=0x1d
	u8 Unk_1e // loc=0x1e
	u8 TerminateScript_1f // loc=0x1f
	u16 Timer // loc=0x20
	u16 Timer_22 // loc=0x22
	u0 Coords // loc=0x24
	u16 X // loc=0x24 size 4
	u16 X16 // loc=0x26
	u16 Y // loc=0x28 size 4
	u16 Y16 // loc=0x2a
	u16 Z // loc=0x2c size 4
	u16 Z16 // loc=0x2e
	u32 NextX // loc=0x30
	u32 NextY // loc=0x34
	u32 NextZ // loc=0x38
	u16 NPCSprite // loc=0x3c
	u16 NPCSpriteUpdate // loc=0x3e
	u32 DeltaX // loc=0x40
	union
		u32 DeltaY // loc=0x44
		u32 DeltaZ // loc=0x48
	nextu
		u32 HopDelta // loc=0x44
		u32 HopDeltaCompounded // loc=0x48
	endu
	ptr AnimationScriptPtr // loc=0x4c
	u32 Unk_50 // loc=0x50
	u32 Unk_54 // loc=0x54
	u32 Unk_58 // loc=0x58
	ptr UnkNPCScriptPtr_5c // loc=0x5c
	flags32 UnkFlags_60 // loc=0x60
		struct_const OW_NPC_UNK_FLAGS_60_DISABLE_INTERACTION, 0x1
		struct_const OW_NPC_UNK_FLAGS_60_FACE_PLAYER_WHEN_INTERACTED, 0x2
		struct_const OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION, 0x4
		struct_const OW_NPC_UNK_FLAGS_60_SPRITE_MIRRORED, 0x8
		struct_const OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION_0x10, 0x10
		struct_const OW_NPC_UNK_FLAGS_60_0x20, 0x20
		struct_const OW_NPC_UNK_FLAGS_60_0x40, 0x40
		struct_const OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80, 0x80
		struct_const OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x100, 0x100
		struct_const OW_NPC_UNK_FLAGS_60_0x200, 0x200
		struct_const OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400, 0x400
		struct_const OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x800, 0x800
		struct_const OW_NPC_UNK_FLAGS_60_0x1000, 0x1000

	u32 LayerPriorityOverride // loc=0x64
	u32 HiddenOAMPieces // loc=0x68
	u32 HiddenOAMPiecesUpdate // loc=0x6c
	u32 Unk_70 // loc=0x70
	u32 Unk_74 // loc=0x74
	u32 NPCSpriteCategory // loc=0x78
	u32 Undetected_7c // loc=0x7c
	union
		u8 Unk_80 // loc=0x80 read internally as u32
		u8 MovementDirectionReload // loc=0x81
		u8 MovementSpeedReload // loc=0x82
		u8 MovementDistanceReload // loc=0x83
	nextu
		u32 CutsceneVarIndexToWaitFor // loc=0x80
		u32 CutsceneVarValueToWaitFor // loc=0x84
	nextu
		u32 MysteryDataId // loc=0x80
	nextu
		u8_arr NativeFunctionVars, 12 // loc=0x80
	endu
	ptr LinkRegister // loc=0x8c
	ptr Chatbox_90 // loc=0x90
	ptr TextScriptPtr // loc=0x94
	// loc=0x98
	.space 8 // align to nearest power of 4 relative to struct
	object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0xa0
	u0 Size // loc=0xd8
	u0 End // loc=0xd8
	restore_struct_label
	.endm

	def_struct_offsets overworld_npc_object_struct, oOverworldNPCObject
