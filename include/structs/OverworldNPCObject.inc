
	.macro overworld_npc_object_struct, label=oOverworldNPCObject, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
		set_struct_label \struct_entry, \label
		object_header_struct \label, \struct_entry, \set_struct_start_address

		u8 WalkingSpeed // loc=0x4
		u8 WalkingTimer // loc=0x5
		u8 Undetected_06 // loc=0x6
		u8 Unk_07 // loc=0x7
		u8 Unk_08_MainJumptableIndex // loc=0x8
		u8 MovementFlag_09 // loc=0x9
			struct_const MOVEMENT_FLAG_STOP,                      0x00
			struct_const MOVEMENT_FLAG_DEFAULT_MOVING,            0x04
			struct_const MOVEMENT_FLAG_STOP_ANIMATION_CONTINUES,  0x08
		/*
		Those might not be flags, since 0x0C behaves unpredictably by 0x04 and 0x08
		0x00 - No effect, it keeps setting to 0x04
		0x04 - Default, moving
		0x08 - Stop
		0x0C - Stop, with a weird location transformation for a moment.
		*/
		u8 MovementFlag_0a // loc=0xa
		u8 Unk_0b // loc=0xb
		u8 Volume // loc=0xc
		u8 Unk_0d // loc=0xd
		u8 Unk_0e // loc=0xe
		u8 Unk_0f // loc=0xf
		u8 Unk_10 // loc=0x10
		u8 Unk_11 // loc=0x11
		u8 Unk_12 // loc=0x12
		u8 Unk_13 // loc=0x13
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
		u16 AnimationTimer // loc=0x20
		u16 Timer_20 // loc=0x22
		u32 X // loc=0x24
		u32 Y // loc=0x28
		u32 Z // loc=0x2c
		u32 NextX // loc=0x30
		u32 NextY // loc=0x34
		u32 NextZ // loc=0x38
		u16 NPCSprite // loc=0x3c
		u16 NPCSpriteUpdate // loc=0x3e
		u32 DeltaX // loc=0x40
		u32 DeltaY // loc=0x44
		u32 DeltaZ // loc=0x48
		ptr AnimationScriptPtr // loc=0x4c
		u32 Unk_50 // loc=0x50
		u32 Unk_54 // loc=0x54
		u32 Unk_58 // loc=0x58
		ptr UnkNPCScriptPtr_5c // loc=0x5c
		u32 UnkFlags_60 // loc=0x60

		u32 Unk_64 // loc=0x64
		u32 Flags_68 // loc=0x68
		u32 Flags_68_Update // loc=0x6c
		u32 Unk_70 // loc=0x70
		u32 Unk_74 // loc=0x74
		u32 Unk_78 // loc=0x78
		u32 Undetected_7c // loc=0x7c
		u8 Unk_80 // loc=0x80 read internally as u32
		u8 Unk_81 // loc=0x81
		u8 WalkingSpeedReload // loc=0x82
		u8 WalkingTimerReload // loc=0x83
		u32 Unk_84 // loc=0x84
		u32 Undetected_88 // loc=0x88
		u32 Undetected_8c // loc=0x8c
		ptr Chatbox_90 // loc=0x90
		ptr TextScriptPtr // loc=0x94
		// loc=0x98
		.space 8 // align to nearest power of 4 relative to struct
		object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0xa0
		u0 Size
		u0 End // loc=0xd8
		restore_struct_label
	.endm

	def_struct_offsets overworld_npc_object_struct, oOverworldNPCObject
