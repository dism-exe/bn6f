
	.macro battle_state_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin
	struct_org 0x1
	\struct_entry \label\()_Unk_01, 1 // loc=0x1
	struct_org 0x4
	\struct_entry \label\()_Unk_04, 1 // loc=0x4
	\struct_entry \label\()_Unk_05, 1 // loc=0x5
	struct_org 0x7
	\struct_entry \label\()_Unk_07, 1 // loc=0x7
	struct_org 0xb
	\struct_entry \label\()_Unk_0b, 1 // loc=0xb
	.space 0x1
	\struct_entry \label\()_Unk_0d, 1 // loc=0xd
	\struct_entry \label\()_Unk_0e, 1 // loc=0xe
	struct_org 0x12
	\struct_entry \label\()_Unk_12, 1 // loc=0x12
	\struct_entry \label\()_Unk_13, 1 // loc=0x13
	struct_org 0x16
	\struct_entry \label\()_Unk_16, 1 // loc=0x16
	struct_org 0x1a
	\struct_entry \label\()_Unk_1a, 1 // loc=0x1a
	struct_org 0x1c
	\struct_entry \label\()_Unk_1c, 1 // loc=0x1c
	\struct_entry \label\()_Unk_1d, 1 // loc=0x1d
	struct_org 0x32
	\struct_entry \label\()_Unk_32, 2 // loc=0x32
	struct_org 0x36
	\struct_entry \label\()_Unk_36, 2 // loc=0x36
	struct_org 0x3a
	\struct_entry \label\()_Unk_3a, 2 // loc=0x3a
	\struct_entry \label\()_Unk_3c, 4 // loc=0x3c
	\struct_entry \label\()_Unk_40, 4 // loc=0x40
	struct_org 0x5c
	\struct_entry \label\()_Unk_5c, 1 // loc=0x5c
	struct_org 0xf0
	\struct_entry \label\()_Size // loc=0xf0
	.endm

	def_struct_offsets battle_state_struct, oBattleState
