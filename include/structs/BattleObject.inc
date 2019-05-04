


	.macro battle_object_linked_list_struct label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin \label
		struct_init_defs \struct_entry, \label
		ptr \label, Prev
		ptr \label, Next
		.space 8
		u0 \label, Size
	.endm

	def_struct_offsets battle_object_linked_list_struct, oBattleObjectsLinkedListSentinel
	def_struct_offsets battle_object_linked_list_struct, oBattleObjectsLinkedListStart
	def_struct_offsets battle_object_linked_list_struct, oUnkBattleObjectLinkedList

	/*
	x, y, z, vx, vy, vz are 16.16 fixed point integers.
	upper 16 bits are the integer portion, lower are the decimal region
	x,y and z are also relative to the center of the battlefield
	*/
	.macro battle_object_struct label:req, struct_entry=label_struct_entry, struct_begin=struct_begin, extra_vars_size=0
		battle_object_linked_list_struct \label\()_LinkedList, \struct_entry, \struct_begin
		object_header_struct \label, \struct_entry, \struct_begin

		union
		u32 \label, Params // loc=0x4
		nextu
		u8 \label, Param1 // loc=0x4
		u8 \label, Param2 // loc=0x5
		u8 \label, Param3 // loc=0x6
		u8 \label, Param4 // loc=0x7
		endu

		union
		u8 \label, CurState // loc=0x8
			struct_const CUR_STATE_INITIALIZE, 0x00
			struct_const CUR_STATE_UPDATE,     0x04
			struct_const CUR_STATE_DESTROY,	   0x08
		u8 \label, CurAction // loc=0x9
		u8 \label, CurPhase // loc=0xa
		bool8 \label, PhaseInitialized // loc=0xb
		nextu
		u16 \label, CurState_CurAction // loc=0x8
		u16 \label, CurPhaseAndPhaseInitialized // loc=0xa
		nextu
		u32 \label, CurStateActionPhaseAndPhaseInitialized // loc=0x8
		endu

		u8 \label, Unk_0c // loc=0xc
		u8 \label, Unk_0d // loc=0xd
		u8 \label, Element // loc=0xe
		u8 \label, Unk_0f // loc=0xf

		union
		u8 \label, CurAnim // loc=0x10
		u8 \label, CurAnimCopy // loc=0x11
		nextu
		u16 \label, CurAnimAndCurAnimCopy // loc=0x10
		endu

		union
		u8 \label, PanelX // loc=0x12
		u8 \label, PanelY // loc=0x13
		nextu
		u16 \label, PanelXY // loc=0x12
		endu

		union
		u8 \label, FuturePanelX // loc=0x14
		u8 \label, FuturePanelY // loc=0x15
		nextu
		u16 \label, FuturePanelXY // loc=0x14
		endu

		union
		// Alliance: 0 = friend, 1 = enemy
		bool8 \label, Alliance // loc=0x16
		u8 \label, DirectionFlip // loc=0x17
		nextu
		u16 \label, AllianceAndDirectionFlip // loc=0x16
		endu

		u8 \label, PreventAnim // loc=0x18
		u8 \label, Unk_19 // loc=0x19
		u8 \label, ChipsHeld  // loc=0x1a
		u8 \label, Unk_1b // loc=0x1b
		u8 \label, Unk_1c // loc=0x1c
		u8 \label, Unk_1d // loc=0x1d

		union
		u8 \label, Unk_1e // loc=0x1e
		u8 \label, Unk_1f // loc=0x1f
		nextu
		u16 \label, Unk_1e_Unk_1f // loc=0x1e
		endu

		union
		u16 \label, Timer // loc=0x20
		u16 \label, Timer2 // loc=0x22
		nextu
		u32 \label, TimerAndTimer2 // loc=0x20
		endu

		u16 \label, HP // loc=0x24
		u16 \label, MaxHP // loc=0x26

		union
		u16 \label, NameID // loc=0x28
		u16 \label, Chip // loc=0x2a
		nextu
		u32 \label, NameIDAndChip // loc=0x28
		endu

		// Damage: also includes flags. 0x7FF is damage
		// StaminaDamageCounterDisabler: ???
		union
		u16 \label, Damage // loc=0x2c
			struct_const DAMAGE_DOUBLE,               0x8000
			struct_const DAMAGE_PARALYZE,             0x4000
			struct_const DAMAGE_UNINSTALL,            0x2000
			struct_const DAMAGE_ERASECROSS_SKULL_HIT, 0x1000
			struct_const DAMAGE_NOTHING,              0x0800
		u16 \label, StaminaDamageCounterDisabler // loc=0x2e
		nextu
		u32 \label, DamageAndStaminaDamageCounterDisabler // loc=0x2c
		endu

		u16 \label, Unk_30 // loc=0x30
		u16 \label, Unk_32 // loc=0x32
		u16 \label, X // loc=0x34 size 4
		u16 \label, X16 // loc=0x36
		u16 \label, Y // loc=0x38 size 4
		u16 \label, Y16 // loc=0x3a
		u0  \label, Z_3c // loc=0x3c bad read?
		u16 \label, Z // loc=0x3c size 4
		u16 \label, Z16 // loc=0x3e
		u32 \label, XVelocity, // loc=0x40
		u32 \label, YVelocity, // loc=0x44
		u32 \label, ZVelocity, // loc=0x48
		ptr \label, RelatedObject1Ptr // loc=0x4c
		ptr \label, RelatedObject2Ptr // loc=0x50
		ptr \label, CollisionDataPtr // loc=0x54
		ptr \label, AIDataPtr // loc=0x58
		u32 \label, Unk_5c // loc=0x5c
		u8_arr \label, ExtraVars, \extra_vars_size // loc=0x60, 44 for t1 and t3, 28 for t4
		u0 \label, SizeWithoutSpriteDataAndLinkedList // loc=0x8c OR 0x7c
		.space 4
		u0 \label, SpriteData // loc=0x90
		object_sprite_struct \label\()_SpriteData, \struct_entry // loc=0x90 OR 0x80
		u0 \label, SizeWithoutLinkedList
		u0 \label, End // loc=0xd8 OR 0xc8
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
