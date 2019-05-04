
	.macro player_battle_vars_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	struct_init_defs \struct_entry, \label
	struct_org 0xe
	u8 Mood // loc=0xe
	struct_org 0x2c
	u8 Transformation // loc=0x2c
	struct_org 0x64
	u0 Size // loc=0x64
	u0 End // loc=0x64
	struct_end
	.endm

	def_struct_offsets player_battle_vars_struct, oPlayerBattleVars
