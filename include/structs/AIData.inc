
	.macro ai_data_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
        \struct_begin \label
        struct_init_defs \struct_entry, \label
        u8 \label, ActorType // loc=0x0
        u8 \label, AIIndex // loc=0x1
        u8 \label, Unk_02 // loc=0x2
        u8 \label, Unk_03 // loc=0x3
        u8 \label, Unk_04 // loc=0x4
        u8 \label, Unk_05 // loc=0x5
        u8 \label, Unk_06 // loc=0x6
        u8 \label, Unk_07 // loc=0x7
        u8 \label, Unk_08 // loc=0x8
        u8 \label, Unk_09 // loc=0x9
        struct_org 0xb
        u8 \label, Unk_0b // loc=0xb
        u8 \label, Unk_0c // loc=0xc
        u8 \label, Unk_0d // loc=0xd
        u8 \label, Unk_0e // loc=0xe
        u8 \label, Unk_0f // loc=0xf
        u8 \label, Unk_10 // loc=0x10
        u8 \label, Unk_11 // loc=0x11
        u8 \label, Unk_12 // loc=0x12
        u8 \label, Unk_13 // loc=0x13
        .space 0x1
        u8 \label, Unk_15 // loc=0x15
        u8 \label, Version_16 // loc=0x16
        u8 \label, Version_17 // loc=0x17
        u8 \label, Unk_18 // loc=0x18
        u8 \label, Unk_19 // loc=0x19
        u8 \label, Unk_1a // loc=0x1a
        u8 \label, Unk_1b // loc=0x1b
        u8 \label, Unk_1c // loc=0x1c
        u8 \label, Unk_1d // loc=0x1d
        u8 \label, Unk_1e // loc=0x1e
        struct_org 0x20
        u16 \label, TotalDamageTaken // loc=0x20
        u16 \label, JoypadHeld // loc=0x22
        u16 \label, JoypadDown // loc=0x24
        u16 \label, JoypadUp // loc=0x26
        u16 \label, JoypadReleased // loc=0x28
        struct_org 0x2c
        u16 \label, Unk_2c // loc=0x2c
        struct_org 0x32
        u16 \label, Unk_32 // loc=0x32
        u16 \label, Anger // loc=0x34
        u16 \label, Unk_36 // loc=0x36
        u16 \label, Unk_38 // loc=0x38
        u16 \label, Unk_3a // loc=0x3a
        u16 \label, Unk_3c // loc=0x3c
        struct_org 0x40
        u32 \label, Unk_40 // loc=0x40
        u32 \label, Unk_44 // loc=0x44
        u32 \label, Unk_48 // loc=0x48
        u32 \label, Unk_4c // loc=0x4c
        u32 \label, Unk_50 // loc=0x50
        u32 \label, Unk_54 // loc=0x54
        u32 \label, Unk_58 // loc=0x58
        u32 \label, Unk_5c // loc=0x5c
        u32 \label, Unk_60 // loc=0x60
        struct_org 0x68
        u32 \label, Unk_68 // loc=0x68
        u32 \label, Unk_6c // loc=0x6c
        u32 \label, Unk_70 // loc=0x70
        u32 \label, Unk_74 // loc=0x74
        u32 \label, Unk_78 // loc=0x78
        u32 \label, Unk_7c // loc=0x7c
        u0 \label, AIState // loc=0x80
        struct_org 0xa0
        u8_arr \label, AttackVars, 0x50 // loc=0xa0
        u0 \label, Size // loc=0x100
        u0 \label, End // loc=0x100
	.endm

// ai state and ai attack vars might be swapped
	.macro ai_state_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
        \struct_begin \label
        struct_init_defs \struct_entry, \label
        u8 \label, Unk_00 // loc=0x0
        u8 \label, Unk_01 // loc=0x1
        u8 \label, Unk_02 // loc=0x2
        u8 \label, Unk_03 // loc=0x3
        u8 \label, Unk_04 // loc=0x4
        u8 \label, Unk_05 // loc=0x5
        u8 \label, Unk_06 // loc=0x6
        u8 \label, Unk_07 // loc=0x7
        u16 \label, Unk_08 // loc=0x8
        .space 0x2
        u8 \label, Unk_0c // loc=0xc
        u8 \label, Unk_0d // loc=0xd
        u8 \label, Unk_0e // loc=0xe
        u8 \label, Unk_0f // loc=0xf
        struct_org 0x20
        u0 \label, Size // loc=0x20
        u0 \label, End // loc=0x20
	.endm

	.macro ai_attack_vars_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
        \struct_begin \label
        struct_init_defs \struct_entry, \label
        u8 \label, Unk_00 // loc=0x0
        u8 \label, Unk_01 // loc=0x1
        u8 \label, Unk_02 // loc=0x2
        u8 \label, Unk_03 // loc=0x3
        u8 \label, Unk_04 // loc=0x4
        u8 \label, Unk_05 // loc=0x5
        u16 \label, Unk_06 // loc=0x6
        u16 \label, Unk_08 // loc=0x8
        u16 \label, Unk_0a // loc=0xa
        u8 \label, Unk_0c // loc=0xc
        u8 \label, Unk_0d // loc=0xd
        u8 \label, Unk_0e // loc=0xe
        u8 \label, Unk_0f // loc=0xf
        u16 \label, Unk_10 // loc=0x10
        u16 \label, Unk_12 // loc=0x12
        u16 \label, Unk_14 // loc=0x14
        u8 \label, Unk_16 // loc=0x16
        u8 \label, Unk_17 // loc=0x17
        u16 \label, Unk_18 // loc=0x18
        u8 \label, Unk_1a // loc=0x1a
        u8 \label, Unk_1b // loc=0x1b
        u8 \label, Unk_1c // loc=0x1c
        u8 \label, Unk_1d // loc=0x1d
        u8 \label, Unk_1e // loc=0x1e
        struct_org 0x28
        u32 \label, Unk_28 // loc=0x28
        u32 \label, Unk_2c // loc=0x2c
        u16 \label, Unk_30 // loc=0x30 // also size 4
        u16 \label, Unk_32 // loc=0x32
        u16 \label, Unk_34 // loc=0x34 // also size 4
        u16 \label, Unk_36 // loc=0x36
        u32 \label, Unk_38 // loc=0x38
        u32 \label, Unk_3c // loc=0x3c
        u32 \label, Unk_40 // loc=0x40
        u32 \label, Unk_44 // loc=0x44
        struct_org 0x50
        u0 \label, Size // loc=0x50
        u0 \label, End // loc=0x50
	.endm

	def_struct_offsets ai_data_struct, oAIData
	def_struct_offsets ai_state_struct, oAIState
	def_struct_offsets ai_attack_vars_struct, oAIAttackVars
