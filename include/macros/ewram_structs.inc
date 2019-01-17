	.include "structs/Toolkit.inc"
	.include "structs/GameState.inc"
	.include "structs/ObjectHeader.inc"
	.include "structs/ObjectSprite.inc"
	.include "structs/BattleObject.inc"
	.include "structs/OverworldPlayerObject.inc"
	.include "structs/OverworldNPCObject.inc"
	.include "structs/OverworldMapObject.inc"
	.include "structs/UnkMapScriptState_2011e60.inc"

	// ex = example of address that uses this struct
	.macro unk_ex_2011a20_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	\struct_entry \label\()_UnkPtr_00, 4 // loc=0x0
	\struct_entry \label\()_Unk_04, 2 // loc=0x4
	\struct_entry \label\()_Unk_06, 1 // loc=0x6
	\struct_entry \label\()_Unk_07, 1 // loc=0x7
	\struct_entry \label\()_Unk_08, 2 // loc=0x8
	.space 0x2
	\struct_entry \label\()_Unk_0c, 4 // loc=0xc
	\struct_entry \label\()_Unk_10, 4 // loc=0x10
	\struct_entry \label\()_Unk_14, 4 // loc=0x14
	.endm

	def_struct_offsets unk_ex_2011a20_struct, oUnk_Ex2011a20
	
	
// .macro overworld_npc_object_struct, struct_entry=label_struct_entry, struct_begin=struct_begin
