
	.macro battle_object_linked_list_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
		\set_struct_start_address \label
		set_struct_label \struct_entry, \label
		ptr Prev
		ptr Next
		.space 8
		u0 Size
		restore_struct_label
	.endm

	def_struct_offsets battle_object_linked_list_struct, oBattleObjectsLinkedListSentinel
	def_struct_offsets battle_object_linked_list_struct, oBattleObjectsLinkedListStart
	def_struct_offsets battle_object_linked_list_struct, oUnkBattleObjectLinkedList

	/*
	x, y, z, vx, vy, vz are 16.16 fixed point integers.
	upper 16 bits are the integer portion, lower are the decimal region
	x,y and z are also relative to the center of the battlefield
	*/
	.macro battle_object_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address, extra_vars_size=0
		set_struct_label \struct_entry, \label
		battle_object_linked_list_struct \label\()_LinkedList, \struct_entry, \set_struct_start_address
		object_header_struct \label, \struct_entry, \set_struct_start_address

		union
		u32 Params // loc=0x4
		nextu
		u8 Param1 // loc=0x4
		u8 Param2 // loc=0x5
		u8 Param3 // loc=0x6
		u8 Param4 // loc=0x7
		endu

		union
		u8 CurState // loc=0x8
			struct_const CUR_STATE_INITIALIZE, 0x00
			struct_const CUR_STATE_UPDATE,     0x04
			struct_const CUR_STATE_DESTROY,	   0x08
		u8 CurAction // loc=0x9
		u8 CurPhase // loc=0xa
		bool8 PhaseInitialized // loc=0xb
		nextu
		u16 CurState_CurAction // loc=0x8
		u16 CurPhaseAndPhaseInitialized // loc=0xa
		nextu
		u32 CurStateActionPhaseAndPhaseInitialized // loc=0x8
		endu

		u8 Unk_0c // loc=0xc
		u8 Unk_0d // loc=0xd
		u8 Element // loc=0xe
		u8 Unk_0f // loc=0xf

		union
		u8 CurAnim // loc=0x10
		u8 CurAnimCopy // loc=0x11
		nextu
		u16 CurAnimAndCurAnimCopy // loc=0x10
		endu

		union
		u8 PanelX // loc=0x12
		u8 PanelY // loc=0x13
		nextu
		u16 PanelXY // loc=0x12
		endu

		union
		u8 FuturePanelX // loc=0x14
		u8 FuturePanelY // loc=0x15
		nextu
		u16 FuturePanelXY // loc=0x14
		endu

		union
		// Alliance: 0 = friend, 1 = enemy
		bool8 Alliance // loc=0x16
		u8 DirectionFlip // loc=0x17
		nextu
		u16 AllianceAndDirectionFlip // loc=0x16
		endu

		u8 PreventAnim // loc=0x18
		u8 Unk_19 // loc=0x19
		u8 ChipsHeld  // loc=0x1a
		u8 Unk_1b // loc=0x1b
		u8 Unk_1c // loc=0x1c
		u8 Unk_1d // loc=0x1d

		union
		u8 Unk_1e // loc=0x1e
		u8 Unk_1f // loc=0x1f
		nextu
		u16 Unk_1e_Unk_1f // loc=0x1e
		endu

		union
		u16 Timer // loc=0x20
		u16 Timer2 // loc=0x22
		nextu
		u32 TimerAndTimer2 // loc=0x20
		endu

		u16 HP // loc=0x24
		u16 MaxHP // loc=0x26

		union
		u16 NameID // loc=0x28
		u16 Chip // loc=0x2a
		nextu
		u32 NameIDAndChip // loc=0x28
		endu

		// Damage: also includes flags. 0x7FF is damage
		// StaminaDamageCounterDisabler: ???
		union
		u16 Damage // loc=0x2c
			struct_const DAMAGE_DOUBLE,               0x8000
			struct_const DAMAGE_PARALYZE,             0x4000
			struct_const DAMAGE_UNINSTALL,            0x2000
			struct_const DAMAGE_ERASECROSS_SKULL_HIT, 0x1000
			struct_const DAMAGE_NOTHING,              0x0800
		u16 StaminaDamageCounterDisabler // loc=0x2e
		nextu
		u32 DamageAndStaminaDamageCounterDisabler // loc=0x2c
		endu

		u16 Unk_30 // loc=0x30
		u16 Unk_32 // loc=0x32
		u16 X // loc=0x34 size 4
		u16 X16 // loc=0x36
		u16 Y // loc=0x38 size 4
		u16 Y16 // loc=0x3a
		u0  Z_3c // loc=0x3c bad read?
		u16 Z // loc=0x3c size 4
		u16 Z16 // loc=0x3e
		u32 XVelocity, // loc=0x40
		u32 YVelocity, // loc=0x44
		u32 ZVelocity, // loc=0x48
		ptr RelatedObject1Ptr // loc=0x4c
		ptr RelatedObject2Ptr // loc=0x50
		ptr CollisionDataPtr // loc=0x54
		ptr AIDataPtr // loc=0x58
		u32 Unk_5c // loc=0x5c
		u8_arr ExtraVars, \extra_vars_size // loc=0x60, 44 for t1 and t3, 28 for t4
		u0 SizeWithoutSpriteDataAndLinkedList // loc=0x8c OR 0x7c
		.space 4
		object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0x90 OR 0x80
		u0 SizeWithoutLinkedList
		u0 End // loc=0xd8 OR 0xc8
		restore_struct_label
	.endm

	// hacking size values for now until I can figure out this mess of how battle object structs are defined
	battle_object_struct oBattleObject, offset_struct_entry, set_offset_struct_start_address
	.set oBattleObject_Size, oBattleObject_SizeWithoutLinkedList + oBattleObject_LinkedList_Size

	battle_object_struct oT1BattleObject, offset_struct_entry, set_offset_struct_start_address, 0x2c
	.set oT1BattleObject_Size, oT1BattleObject_SizeWithoutLinkedList + oT1BattleObject_LinkedList_Size

	battle_object_struct oT3BattleObject, offset_struct_entry, set_offset_struct_start_address, 0x2c
	.set oT3BattleObject_Size, oT3BattleObject_SizeWithoutLinkedList + oT3BattleObject_LinkedList_Size

	battle_object_struct oT4BattleObject, offset_struct_entry, set_offset_struct_start_address, 0x1c
	.set oT4BattleObject_Size, oT4BattleObject_SizeWithoutLinkedList + oT4BattleObject_LinkedList_Size

	.macro t1_battle_object_struct label:req
	battle_object_struct \label, label_struct_entry, set_struct_start_address, 0x2c
	// maybe define offsets here as well?
	.endm

	.macro t3_battle_object_struct label:req
	battle_object_struct \label, label_struct_entry, set_struct_start_address, 0x2c
	// maybe define offsets here as well?
	.endm

	.macro t4_battle_object_struct label:req
	battle_object_struct \label, label_struct_entry, set_struct_start_address, 0x1c
	.endm
