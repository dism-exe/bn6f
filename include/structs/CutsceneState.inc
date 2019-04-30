
	.macro cutscene_state_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin

	\struct_begin \label
	struct_org 0x4
	\struct_entry \label\()_Unk_04, 1 // loc=0x4
	\struct_entry \label\()_Unk_05, 1 // loc=0x5
	\struct_entry \label\()_Unk_06, 1 // loc=0x6
	\struct_entry \label\()_Unk_07, 1 // loc=0x7
	struct_org 0x12
	\struct_entry \label\()_Unk_12, 1 // loc=0x12
	struct_org 0x1c
	\struct_entry \label\()_CutsceneScriptPos, 4 // loc=0x1c
	\struct_entry \label\()_Unk_20, 4 // loc=0x20
	\struct_entry \label\()_Unk_24, 4 // loc=0x24
	\struct_entry \label\()_Unk_28, 4 // loc=0x28
	struct_org 0x30
	\struct_entry \label\()_Unk_30, 4 // loc=0x30
	\struct_entry \label\()_Unk_34, 4 // loc=0x34
	struct_org 0x40
	\struct_entry \label\()_originalCutsceneScriptPos_40, 4 // loc=0x40
	struct_org 0x90
	\struct_entry \label\()_Size // loc=0x90
	.endm

	def_struct_offsets cutscene_state_struct, oCutsceneState
