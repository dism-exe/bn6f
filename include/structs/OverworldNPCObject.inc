
	.macro overworld_npc_object_struct, label=oOverworldNPCObject, struct_entry=label_struct_entry, struct_begin=struct_begin
	
		object_header_struct \label, \struct_entry, \struct_begin

		u8 \label, WalkingSpeed // loc=0x4
		u8 \label, WalkingTimer // loc=0x5
		u8 \label, Undetected_06 // loc=0x6
		u8 \label, Unk_07 // loc=0x7
		u8 \label, Unk_08_MainJumptableIndex // loc=0x8
		u8 \label, MovementFlag_09 // loc=0x9
		    struct_const MOVEMENT_FLAG_STOP,                        0x00
		    struct_const MOVEMENT_FLAG_DEFAULT_MOVING,              0x04
		    struct_const MOVEMENT_FLAG_STOP_ANIMATION_CONTINUES,    0x08
        /*
        Those might not be flags, since 0x0C behaves unpredictably by 0x04 and 0x08
        0x00 - No effect, it keeps setting to 0x04
        0x04 - Default, moving
        0x08 - Stop
        0x0C - Stop, with a weird location transformation for a moment.
        */
		u8 \label, MovementFlag_0a // loc=0xa
		u8 \label, Unk_0b // loc=0xb
		u8 \label, Volume // loc=0xc
		u8 \label, Unk_0d // loc=0xd
		u8 \label, Unk_0e // loc=0xe
		u8 \label, Unk_0f // loc=0xf
		u8 \label, Unk_10 // loc=0x10
		u8 \label, Unk_11 // loc=0x11
		u8 \label, Unk_12 // loc=0x12
		u8 \label, Unk_13 // loc=0x13
		u8 \label, AnimationSelect // loc=0x14
		u8 \label, AnimationSelectUpdate // loc=0x15
		u8 \label, PaletteIndex // loc=0x16
		bool8 \label, InteractionLocked // loc=0x17
		bool8 \label, ChatTriggered // loc=0x18
		u8 \label, TerminateScript_19 // loc=0x19 more like a return value than a state value
		u8 \label, Undetected_1a // loc=0x1a
		u8 \label, Undetected_1b // loc=0x1b
		u8 \label, TextScriptIndex // loc=0x1c
		u8 \label, Unk_1d // loc=0x1d
		u8 \label, Unk_1e // loc=0x1e
		u8 \label, TerminateScript_1f // loc=0x1f
		u16 \label, AnimationTimer // loc=0x20
		u16 \label, Timer_20 // loc=0x22
		u32 \label, X // loc=0x24
		u32 \label, Y // loc=0x28
		u32 \label, Z // loc=0x2c
		u32 \label, NextX // loc=0x30
		u32 \label, NextY // loc=0x34
		u32 \label, NextZ // loc=0x38
		u16 \label, NPCSprite // loc=0x3c
		u16 \label, NPCSpriteUpdate // loc=0x3e
		u32 \label, DeltaX // loc=0x40
		u32 \label, DeltaY // loc=0x44
		u32 \label, DeltaZ // loc=0x48
		ptr \label, AnimationScriptPtr // loc=0x4c
		u32 \label, Unk_50 // loc=0x50
		u32 \label, Unk_54 // loc=0x54
		u32 \label, Unk_58 // loc=0x58
		ptr \label, UnkNPCScriptPtr_5c // loc=0x5c
		u32 \label, UnkFlags_60 // loc=0x60

		u32 \label, Unk_64 // loc=0x64
		u32 \label, Flags_68 // loc=0x68
		u32 \label, Flags_68_Update // loc=0x6c
		u32 \label, Unk_70 // loc=0x70
		u32 \label, Unk_74 // loc=0x74
		u32 \label, Unk_78 // loc=0x78
		u32 \label, Undetected_7c // loc=0x7c
		u8 \label, Unk_80 // loc=0x80 read internally as u32
		u8 \label, Unk_81 // loc=0x81
		u8 \label, WalkingSpeedReload // loc=0x82
		u8 \label, WalkingTimerReload // loc=0x83
		u32 \label, Unk_84 // loc=0x84
		u32 \label, Undetected_88 // loc=0x88
		u32 \label, Undetected_8c // loc=0x8c
		ptr \label, Chatbox_90 // loc=0x90
		ptr \label, TextScriptPtr // loc=0x94
		// loc=0x98
		.space 8 // align to nearest power of 4 relative to struct
		u0 \label, SpriteData // loc=0xa0
		object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0xa0
		u0 \label, Size
		u0 \label, End // loc=0xd8
	.endm

	def_struct_offsets overworld_npc_object_struct, oOverworldNPCObject
