
	.macro ai_data_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin

	\struct_begin
	\struct_entry \label\()_ActorType, 1 // loc=0x0
	\struct_entry \label\()_AIIndex, 1 // loc=0x1
	\struct_entry \label\()_Unk_02, 1 // loc=0x2
	\struct_entry \label\()_Unk_03, 1 // loc=0x3
	struct_org 0xe
	\struct_entry \label\()_Unk_0e, 1 // loc=0xe
	struct_org 0x16
	\struct_entry \label\()_Version_16, 1 // loc=0x16
	\struct_entry \label\()_Version_17, 1 // loc=0x17
	\struct_entry \label\()_Unk_18, 1 // loc=0x18
	\struct_entry \label\()_Unk_19, 1 // loc=0x19
	struct_org 0x20
	\struct_entry \label\()_TotalDamageTaken, 2 // loc=0x20
	\struct_entry \label\()_JoypadHeld, 2 // loc=0x22
	\struct_entry \label\()_JoypadDown, 2 // loc=0x24
	\struct_entry \label\()_JoypadUp, 2 // loc=0x26
	\struct_entry \label\()_JoypadReleased, 2 // loc=0x28
	struct_org 0x34
	\struct_entry \label\()_Anger // loc=0x34
	struct_org 0x80
	\struct_entry \label\()_AIState // loc=0x80
	struct_org 0xa0
	\struct_entry \label\()_AttackVarRegion, 0x50 // loc=0xa0
	\struct_entry \label\()_Size // loc=0x100
	\struct_entry \label\()_End // loc=0x100
	.endm

	def_struct_offsets ai_data_struct, oAIData
