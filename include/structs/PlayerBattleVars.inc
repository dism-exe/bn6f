
	.macro player_battle_vars_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin

	\struct_begin \label
	struct_org 0xe
	\struct_entry \label\()_Karma, 1 // loc=0xe
	struct_org 0x2c
	\struct_entry \label\()_PlayerForm, 1 // loc=0x2c
	struct_org 0x64
	\struct_entry \label\()_Size // loc=0x64
	\struct_entry \label\()_End // loc=0x64
	.endm

	def_struct_offsets player_battle_vars_struct, oPlayerBattleVars
