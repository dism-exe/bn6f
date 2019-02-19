
	.macro battle_object_linked_list_struct label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	\struct_entry \label\()_Prev, 4
	\struct_entry \label\()_Next, 4
	.space 8
	\struct_entry \label\()_Size
	.endm

	def_struct_offsets battle_object_linked_list_struct, oBattleObjectsLinkedListSentinel
	def_struct_offsets battle_object_linked_list_struct, oBattleObjectsLinkedListStart
	def_struct_offsets battle_object_linked_list_struct, oUnkBattleObjectLinkedList

	.macro battle_object_struct label:req, struct_entry=label_struct_entry, struct_begin=struct_begin, extra_vars_size=0

	battle_object_linked_list_struct \label\()_LinkedList, \struct_entry, \struct_begin

	object_header_struct \label, \struct_entry, \struct_begin

	\struct_entry \label\()_Params    // loc=0x4
	\struct_entry \label\()_Param1, 1 // loc=0x4
	\struct_entry \label\()_Param2, 1 // loc=0x5
	\struct_entry \label\()_Param3, 1 // loc=0x6
	\struct_entry \label\()_Param4, 1 // loc=0x7
	\struct_entry \label\()_CurStateActionPhaseAndPhaseInitialized // loc=0x8
	\struct_entry \label\()_CurState, 1 // loc=0x8
	\struct_entry \label\()_CurAction, 1 // loc=0x9
	\struct_entry \label\()_CurPhaseAndPhaseInitialized // loc=0xa
	\struct_entry \label\()_CurPhase, 1 // loc=0xa
	\struct_entry \label\()_PhaseInitialized, 1 // loc=0xb
	\struct_entry \label\()_Unk_0c, 1 // loc=0xc
	\struct_entry \label\()_Unk_0d, 1 // loc=0xd
	\struct_entry \label\()_Element, 1 // loc=0xe
	\struct_entry \label\()_Unk_0f, 1 // loc=0xf
	\struct_entry \label\()_CurAnimAndCurAnimCopy // loc=0x10
	\struct_entry \label\()_CurAnim, 1 // loc=0x10
	\struct_entry \label\()_CurAnimCopy, 1 // loc=0x11
	\struct_entry \label\()_PanelXY // loc=0x12
	\struct_entry \label\()_PanelX, 1 // loc=0x12
	\struct_entry \label\()_PanelY, 1 // loc=0x13
	\struct_entry \label\()_FuturePanelX, 1 // loc=0x14
	\struct_entry \label\()_FuturePanelY, 1 // loc=0x15
	\struct_entry \label\()_AllianceAndDirectionFlip // loc=0x16
	\struct_entry \label\()_Alliance, 1 // loc=0x16
	\struct_entry \label\()_DirectionFlip, 1 // loc=0x17
	\struct_entry \label\()_PreventAnim, 1 // loc=0x18
	\struct_entry \label\()_Unk_19, 1 // loc=0x19
	\struct_entry \label\()_ChipsHeld, 1 // loc=0x1a
	\struct_entry \label\()_Unk_1b, 1 // loc=0x1b
	\struct_entry \label\()_Unk_1c, 1 // loc=0x1c
	\struct_entry \label\()_Unk_1d, 1 // loc=0x1d
	\struct_entry \label\()_Unk_1e, 1 // loc=0x1e
	\struct_entry \label\()_Unk_1f, 1 // loc=0x1f
	\struct_entry \label\()_Timer, 2 // loc=0x20
	\struct_entry \label\()_Timer2, 2 // loc=0x22
	\struct_entry \label\()_HP, 2 // loc=0x24
	\struct_entry \label\()_MaxHP, 2 // loc=0x26
	\struct_entry \label\()_NameID, 2 // loc=0x28
	\struct_entry \label\()_Chip, 2 // loc=0x2a
	// also includes flags
	\struct_entry \label\()_DamageAndStaminaDamageCounterDisabler // loc=0x2c
	\struct_entry \label\()_Damage, 2 // loc=0x2c
	// ???
	\struct_entry \label\()_StaminaDamageCounterDisabler, 2  // loc=0x2e
	\struct_entry \label\()_Unk_30, 4 // loc=0x30
	\struct_entry \label\()_X, 2 // loc=0x34 size 4
	\struct_entry \label\()_X16, 2 // loc=0x36
	\struct_entry \label\()_Y, 2 // loc=0x38 size 4
	\struct_entry \label\()_Y16, 2 // loc=0x3a
	\struct_entry \label\()_Z, 2 // loc=0x3c size 4
	\struct_entry \label\()_Z16, 2 // loc=0x3e
	\struct_entry \label\()_XVelocity, 4 // loc=0x40
	\struct_entry \label\()_YVelocity, 4 // loc=0x44
	\struct_entry \label\()_ZVelocity, 4 // loc=0x48
	\struct_entry \label\()_RelatedObject1Ptr, 4 // loc=0x4c
	\struct_entry \label\()_RelatedObject2Ptr, 4 // loc=0x50
	\struct_entry \label\()_CollisionDataPtr, 4 // loc=0x54
	\struct_entry \label\()_AIDataPtr, 4 // loc=0x58
	\struct_entry \label\()_Unk_5c, 4 // loc=0x5c
	\struct_entry \label\()_ExtraVars, \extra_vars_size // loc=0x60, 44 for t1 and t3, 28 for t4
	\struct_entry \label\()_SizeWithoutSpriteDataAndLinkedList // loc=0x8c OR 0x7c
	.space 4
	\struct_entry \label\()_SpriteData // loc=0x90
	object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0x90 OR 0x80
	\struct_entry \label\()_SizeWithoutLinkedList
	\struct_entry \label\()_End // loc=0xd8 OR 0xc8
	.endm

	// hacking size values for now until I can figure out this mess of how battle object structs are defined
	battle_object_struct oBattleObject, offset_struct_entry, offset_struct_begin
	.set oBattleObject_Size, oBattleObject_SizeWithoutLinkedList + oBattleObject_LinkedList_Size

	battle_object_struct oT1BattleObject, offset_struct_entry, offset_struct_begin, 0x2c
	.set oT1BattleObject_Size, oT1BattleObject_SizeWithoutLinkedList + oT1BattleObject_LinkedList_Size

	battle_object_struct oT3BattleObject, offset_struct_entry, offset_struct_begin, 0x2c
	.set oT3BattleObject_Size, oT3BattleObject_SizeWithoutLinkedList + oT3BattleObject_LinkedList_Size

	battle_object_struct oT4BattleObject, offset_struct_entry, offset_struct_begin, 0x1c
	.set oT4BattleObject_Size, oT4BattleObject_SizeWithoutLinkedList + oT4BattleObject_LinkedList_Size

	.macro t1_battle_object_struct label:req
	battle_object_struct \label, label_struct_entry, struct_begin, 0x2c
	// maybe define offsets here as well?
	.endm

	.macro t3_battle_object_struct label:req, linked_list_before_space
	battle_object_struct \label, label_struct_entry, struct_begin, 0x2c
	// maybe define offsets here as well?
	.endm

	.macro t4_battle_object_struct label:req, linked_list_before_space
	battle_object_struct \label, label_struct_entry, struct_begin, 0x1c
	.endm
