	.macro ai_data_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct AIData
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	enum8 ActorType // loc=0x0
		struct_const ACTOR_TYPE_VIRUS, 0x00
		struct_const ACTOR_TYPE_NAVI, 0x01
		struct_const ACTOR_TYPE_PLAYER, 0x02
	u8 AIIndex // loc=0x1
	u8 Unk_02 // loc=0x2
	u8 Unk_03 // loc=0x3
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	u8 Unk_06 // loc=0x6
	u8 BPwrAtk // loc=0x7
	u8 Unk_08 // loc=0x8
	u8 Unk_09 // loc=0x9
	u8 Unk_0a // loc=0xa
	u8 Unk_0b // loc=0xb
	u8 Unk_0c // loc=0xc
	u8 Unk_0d // loc=0xd
	u8 Unk_0e // loc=0xe
	u8 Unk_0f // loc=0xf
	u8 Unk_10 // loc=0x10
	u8 Unk_11 // loc=0x11
	u8 Unk_12 // loc=0x12
	u8 Unk_13 // loc=0x13
	.space 0x1
	u8 Unk_15 // loc=0x15
	u8 Version_16 // loc=0x16
	u8 Version_17 // loc=0x17
	u8 Unk_18 // loc=0x18
	u8 ChipLockoutTimer // loc=0x19
	u8 Unk_1a // loc=0x1a
	u8 Unk_1b // loc=0x1b
	u8 Unk_1c // loc=0x1c
	u8 PwrAtkState // loc=0x1d
	u8 PwrAtkButton // loc=0x1e
	struct_org 0x20
	u16 TotalDamageTaken // loc=0x20
	u16 JoypadHeld // loc=0x22
	u16 JoypadPressed // loc=0x24
	u16 JoypadUp // loc=0x26
	u16 JoypadReleased // loc=0x28
	u16 Unk_2a // loc=0x2a
	u16 Unk_2c // loc=0x2c
	u16 Unk_2e // loc=0x2e
	u16 Unk_30 // loc=0x30
	u16 Unk_32 // loc=0x32
	// bool16???
	u16 Anger // loc=0x34
	u16 Unk_36 // loc=0x36
	u16 Unk_38 // loc=0x38
	u16 Unk_3a // loc=0x3a
	u16 Unk_3c // loc=0x3c
	struct_org 0x40
	u32 Unk_40 // loc=0x40
	u32 Unk_44 // loc=0x44
	u32 Unk_48 // loc=0x48
	u32 Unk_4c // loc=0x4c
	u32 Unk_50 // loc=0x50
	u32 Unk_54 // loc=0x54
	u32 Unk_58 // loc=0x58
	u32 Unk_5c // loc=0x5c
	u32 Unk_60 // loc=0x60
	struct_org 0x68
	u32 Unk_68 // loc=0x68
	u32 Unk_6c // loc=0x6c
	u32 Unk_70 // loc=0x70
	u32 Unk_74 // loc=0x74
	u32 Unk_78 // loc=0x78
	u32 Unk_7c // loc=0x7c
	u0 AIState // loc=0x80
	struct_org 0xa0
	u8_arr AttackVars, 0x50 // loc=0xa0
	struct_org 0x100
	u0 Size // loc=0x100
	u0 End // loc=0x100
	restore_struct_label
	.endm

// ai state and ai attack vars might be swapped
	.macro ai_state_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct AIState
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u8 Unk_00 // loc=0x0
	u8 Unk_01 // loc=0x1
	u8 Unk_02 // loc=0x2
	u8 Unk_03 // loc=0x3
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	u8 Unk_06 // loc=0x6
	u8 Unk_07 // loc=0x7
	u16 Unk_08 // loc=0x8
	.space 0x2
	u8 Unk_0c // loc=0xc
	u8 Unk_0d // loc=0xd
	u8 Unk_0e // loc=0xe
	u8 Unk_0f // loc=0xf
	struct_org 0x20
	u0 Size // loc=0x20
	u0 End // loc=0x20
	restore_struct_label
	.endm

	.macro ai_attack_vars_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct AIAttackVars
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u8 Unk_00 // loc=0x0
	u8 Unk_01 // loc=0x1
	u8 Unk_02 // loc=0x2
	u8 Unk_03 // loc=0x3
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	u16 AttackBoost // loc=0x6
	u16 Damage // loc=0x8
	u16 Unk_0a // loc=0xa
	u8 Unk_0c // loc=0xc
	u8 Unk_0d // loc=0xd
	u8 Unk_0e // loc=0xe
	u8 Unk_0f // loc=0xf
	u16 Unk_10 // loc=0x10
	u16 Unk_12 // loc=0x12
	u16 Unk_14 // loc=0x14
	u8 Unk_16 // loc=0x16
	u8 Unk_17 // loc=0x17
	u16 Unk_18 // loc=0x18
	u8 Unk_1a // loc=0x1a
	u8 Unk_1b // loc=0x1b
	u8 Unk_1c // loc=0x1c
	u8 Unk_1d // loc=0x1d
	u8 Unk_1e // loc=0x1e
	struct_org 0x28
	u32 Unk_28 // loc=0x28
	u32 Unk_2c // loc=0x2c
	u16 Unk_30 // loc=0x30 // also size 4
	u16 Unk_32 // loc=0x32
	u16 Unk_34 // loc=0x34 // also size 4
	u16 Unk_36 // loc=0x36
	u32 Unk_38 // loc=0x38
	u32 Unk_3c // loc=0x3c
	u32 Unk_40 // loc=0x40
	u32 Unk_44 // loc=0x44
	struct_org 0x50
	u0 Size // loc=0x50
	u0 End // loc=0x50
	restore_struct_label
	.endm

	def_struct_offsets ai_data_struct, oAIData
	def_struct_offsets ai_state_struct, oAIState
	def_struct_offsets ai_attack_vars_struct, oAIAttackVars
