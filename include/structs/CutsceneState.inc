
	.macro cutscene_state_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin
	struct_init_defs \struct_entry, \label
	struct_org 0x4
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	u8 Unk_06 // loc=0x6
	u8 Unk_07 // loc=0x7
	struct_org 0x12
	u8 Unk_12 // loc=0x12
	struct_org 0x1c
	ptr CutsceneScriptPos // loc=0x1c
	ptr Unk_20 // loc=0x20
	ptr Unk_24 // loc=0x24
	ptr Unk_28 // loc=0x28
	struct_org 0x30
	ptr Unk_30 // loc=0x30
	ptr Unk_34 // loc=0x34
	struct_org 0x40
	ptr originalCutsceneScriptPos_40 // loc=0x40
	struct_org 0x90
	u0 Size // loc=0x90
	struct_end
	.endm

	def_struct_offsets cutscene_state_struct, oCutsceneState
