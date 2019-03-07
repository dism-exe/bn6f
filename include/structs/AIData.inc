
	.macro ai_data_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin

	\struct_begin \label
	\struct_entry \label\()_ActorType, 1 // loc=0x0
	\struct_entry \label\()_AIIndex, 1 // loc=0x1
	\struct_entry \label\()_Unk_02, 1 // loc=0x2
	\struct_entry \label\()_Unk_03, 1 // loc=0x3
	\struct_entry \label\()_Unk_04, 1 // loc=0x4
	\struct_entry \label\()_Unk_05, 1 // loc=0x5
	\struct_entry \label\()_Unk_06, 1 // loc=0x6
	\struct_entry \label\()_Unk_07, 1 // loc=0x7
	\struct_entry \label\()_Unk_08, 1 // loc=0x8
	\struct_entry \label\()_Unk_09, 1 // loc=0x9
	struct_org 0xb
	\struct_entry \label\()_Unk_0b, 1 // loc=0xb
	\struct_entry \label\()_Unk_0c, 1 // loc=0xc
	\struct_entry \label\()_Unk_0d, 1 // loc=0xd
	\struct_entry \label\()_Unk_0e, 1 // loc=0xe
	\struct_entry \label\()_Unk_0f, 1 // loc=0xf
	\struct_entry \label\()_Unk_10, 1 // loc=0x10
	\struct_entry \label\()_Unk_11, 1 // loc=0x11
	\struct_entry \label\()_Unk_12, 1 // loc=0x12
	\struct_entry \label\()_Unk_13, 1 // loc=0x13
	.space 0x1
	\struct_entry \label\()_Unk_15, 1 // loc=0x15
	\struct_entry \label\()_Version_16, 1 // loc=0x16
	\struct_entry \label\()_Version_17, 1 // loc=0x17
	\struct_entry \label\()_Unk_18, 1 // loc=0x18
	\struct_entry \label\()_Unk_19, 1 // loc=0x19
	\struct_entry \label\()_Unk_1a, 1 // loc=0x1a
	\struct_entry \label\()_Unk_1b, 1 // loc=0x1b
	\struct_entry \label\()_Unk_1c, 1 // loc=0x1c
	\struct_entry \label\()_Unk_1d, 1 // loc=0x1d
	\struct_entry \label\()_Unk_1e, 1 // loc=0x1e
	struct_org 0x20
	\struct_entry \label\()_TotalDamageTaken, 2 // loc=0x20
	\struct_entry \label\()_JoypadHeld, 2 // loc=0x22
	\struct_entry \label\()_JoypadPressed, 2 // loc=0x24
	\struct_entry \label\()_JoypadUp, 2 // loc=0x26
	\struct_entry \label\()_JoypadReleased, 2 // loc=0x28
	struct_org 0x2c
	\struct_entry \label\()_Unk_2c, 2 // loc=0x2c
	struct_org 0x32
	\struct_entry \label\()_Unk_32, 2 // loc=0x32
	\struct_entry \label\()_Anger, 2 // loc=0x34
	\struct_entry \label\()_Unk_36, 2 // loc=0x36
	\struct_entry \label\()_Unk_38, 2 // loc=0x38
	\struct_entry \label\()_Unk_3a, 2 // loc=0x3a
	\struct_entry \label\()_Unk_3c, 2 // loc=0x3c
	struct_org 0x40
	\struct_entry \label\()_Unk_40, 4 // loc=0x40
	\struct_entry \label\()_Unk_44, 4 // loc=0x44
	\struct_entry \label\()_Unk_48, 4 // loc=0x48
	\struct_entry \label\()_Unk_4c, 4 // loc=0x4c
	\struct_entry \label\()_Unk_50, 4 // loc=0x50
	\struct_entry \label\()_Unk_54, 4 // loc=0x54
	\struct_entry \label\()_Unk_58, 4 // loc=0x58
	\struct_entry \label\()_Unk_5c, 4 // loc=0x5c
	\struct_entry \label\()_Unk_60, 4 // loc=0x60
	struct_org 0x68
	\struct_entry \label\()_Unk_68, 4 // loc=0x68
	\struct_entry \label\()_Unk_6c, 4 // loc=0x6c
	\struct_entry \label\()_Unk_70, 4 // loc=0x70
	\struct_entry \label\()_Unk_74, 4 // loc=0x74
	\struct_entry \label\()_Unk_78, 4 // loc=0x78
	\struct_entry \label\()_Unk_7c, 4 // loc=0x7c
	\struct_entry \label\()_AIState // loc=0x80
	struct_org 0xa0
	\struct_entry \label\()_AttackVars, 0x50 // loc=0xa0
	\struct_entry \label\()_Size // loc=0x100
	\struct_entry \label\()_End // loc=0x100
	.endm

// ai state and ai attack vars might be swapped
	.macro ai_state_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	\struct_entry \label\()_Unk_00, 1 // loc=0x0
	\struct_entry \label\()_Unk_01, 1 // loc=0x1
	\struct_entry \label\()_Unk_02, 1 // loc=0x2
	\struct_entry \label\()_Unk_03, 1 // loc=0x3
	\struct_entry \label\()_Unk_04, 1 // loc=0x4
	\struct_entry \label\()_Unk_05, 1 // loc=0x5
	\struct_entry \label\()_Unk_06, 1 // loc=0x6
	\struct_entry \label\()_Unk_07, 1 // loc=0x7
	\struct_entry \label\()_Unk_08, 2 // loc=0x8
	.space 0x2
	\struct_entry \label\()_Unk_0c, 1 // loc=0xc
	\struct_entry \label\()_Unk_0d, 1 // loc=0xd
	\struct_entry \label\()_Unk_0e, 1 // loc=0xe
	\struct_entry \label\()_Unk_0f, 1 // loc=0xf
	struct_org 0x20
	\struct_entry \label\()_Size // loc=0x20
	\struct_entry \label\()_End // loc=0x20
	.endm

	.macro ai_attack_vars_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	\struct_entry \label\()_Unk_00, 1 // loc=0x0
	\struct_entry \label\()_Unk_01, 1 // loc=0x1
	\struct_entry \label\()_Unk_02, 1 // loc=0x2
	\struct_entry \label\()_Unk_03, 1 // loc=0x3
	\struct_entry \label\()_Unk_04, 1 // loc=0x4
	\struct_entry \label\()_Unk_05, 1 // loc=0x5
	\struct_entry \label\()_Unk_06, 2 // loc=0x6
	\struct_entry \label\()_Unk_08, 2 // loc=0x8
	\struct_entry \label\()_Unk_0a, 2 // loc=0xa
	\struct_entry \label\()_Unk_0c, 1 // loc=0xc
	\struct_entry \label\()_Unk_0d, 1 // loc=0xd
	\struct_entry \label\()_Unk_0e, 1 // loc=0xe
	\struct_entry \label\()_Unk_0f, 1 // loc=0xf
	\struct_entry \label\()_Unk_10, 2 // loc=0x10
	\struct_entry \label\()_Unk_12, 2 // loc=0x12
	\struct_entry \label\()_Unk_14, 2 // loc=0x14
	\struct_entry \label\()_Unk_16, 1 // loc=0x16
	\struct_entry \label\()_Unk_17, 1 // loc=0x17
	\struct_entry \label\()_Unk_18, 2 // loc=0x18
	\struct_entry \label\()_Unk_1a, 1 // loc=0x1a
	\struct_entry \label\()_Unk_1b, 1 // loc=0x1b
	\struct_entry \label\()_Unk_1c, 1 // loc=0x1c
	\struct_entry \label\()_Unk_1d, 1 // loc=0x1d
	\struct_entry \label\()_Unk_1e, 1 // loc=0x1e
	struct_org 0x28
	\struct_entry \label\()_Unk_28, 4 // loc=0x28
	\struct_entry \label\()_Unk_2c, 4 // loc=0x2c
	\struct_entry \label\()_Unk_30, 2 // loc=0x30 // also size 4
	\struct_entry \label\()_Unk_32, 2 // loc=0x32
	\struct_entry \label\()_Unk_34, 2 // loc=0x34 // also size 4
	\struct_entry \label\()_Unk_36, 2 // loc=0x36
	\struct_entry \label\()_Unk_38, 4 // loc=0x38
	\struct_entry \label\()_Unk_3c, 4 // loc=0x3c
	\struct_entry \label\()_Unk_40, 4 // loc=0x40
	\struct_entry \label\()_Unk_44, 4 // loc=0x44
	struct_org 0x50
	\struct_entry \label\()_Size // loc=0x50
	\struct_entry \label\()_End // loc=0x50
	.endm

	def_struct_offsets ai_data_struct, oAIData
	def_struct_offsets ai_state_struct, oAIState
	def_struct_offsets ai_attack_vars_struct, oAIAttackVars
