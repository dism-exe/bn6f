    .macro ObjectFlags1 field:req // type: enum ObjectFlags1
        enum32 \field
		struct_const OBJECT_FLAGS_GUARD,                  0x0000001
		struct_const OBJECT_FLAGS_UNK_2,                  0x0000002
		struct_const OBJECT_FLAGS_UNK_4,                  0x0000004
		struct_const OBJECT_FLAGS_INVULNERABLE,           0x0000008
		struct_const OBJECT_FLAGS_AIRSHOE,                0x0000010
		struct_const OBJECT_FLAGS_FLOATSHOE,              0x0000020
		struct_const OBJECT_FLAGS_CURRENTLY_MOVING,       0x0000040
		struct_const OBJECT_FLAGS_PARALYZED,              0x0000800
		struct_const OBJECT_FLAGS_IMMOBILIZED_BIT,        14
		struct_const OBJECT_FLAGS_FROZEN_BIT,             16
		struct_const OBJECT_FLAGS_SUPERARMOR_BIT,         17
		struct_const OBJECT_FLAGS_UNDERSHIRT,             0x0040000
		struct_const OBJECT_FLAGS_CURRENTLY_MOVING_1_BIT, 19
		struct_const OBJECT_FLAGS_UNK_BIT_20_BIT,         20
		struct_const OBJECT_FLAGS_UNK_BIT_21_BIT,         21
		struct_const OBJECT_FLAGS_UNK_BIT_22_BIT,         22
		struct_const OBJECT_FLAGS_AFFECTED_BY_ICE,        0x2000000
		struct_const OBJECT_FLAGS_UNAFFECTED_BY_POISON,   0x8000000
    .endm

	.macro collision_data_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct CollisionData
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	bool8 Enabled // loc=0x0
	u8 Region // loc=0x1
	u8 PrimaryElement // loc=0x2
	u8 Unk_03 // loc=0x3
	
	union
	u8 Alliance // loc=0x4
	u8 Flip // loc=0x5
	nextu
	u16 AllianceAndDirectionFlip // loc=0x4
	endu

	u8 Barrier // loc=0x6 // barrier
	u8 StaminaDamageCounterDisabler // loc=0x7
	u8 PoisonPanelTimer // loc=0x8
	u8 HitEffect // loc=0x9

	union
	u8 PanelX // loc=0xa
	u8 PanelY // loc=0xb
	nextu
	u16 PanelXY // loc=0xa
	endu
	
    u8 Direction // loc=0xc
	u8 CounterTimer // loc=0xd
	u8 HitModifierBase // loc=0xe
	u8 HitModifierFinal // loc=0xf
	u8 StatusEffectBase // loc=0x10
	u8 StatusEffectFinal // loc=0x11
	u16 Bugs // loc=0x12
	u8 Unk_14 // loc=0x14
	u8 Unk_15 // loc=0x15
	u8 Unk_16 // loc=0x16
	u8 Unk_17 // loc=0x17
	u8 SecondaryElementWeakness // loc=0x18
	u8 SecondaryElement // loc=0x19
	
    union
	u8 Unk_1a // loc=0x1a
	u8 Unk_1b // loc=0x1b
	nextu
	u16 Unk_1a_1b // loc=0x1a
	endu
	
    u16 Unk_1c // loc=0x1c
	u16 Unk_1e // loc=0x1e
	u16 Unk_20 // loc=0x20
	u16 Unk_22 // loc=0x22
	u16 Unk_24 // loc=0x24
	u16 Unk_26 // loc=0x26
	u16 Unk_28 // loc=0x28
	u16 Unk_2a // loc=0x2a
	u16 Unk_2c // loc=0x2c
	u16 SelfDamage // loc=0x2e
	u32 SelfCollisionTypeFlags // loc=0x30
	u32 TargetCollisionTypeFlags // loc=0x34
	u32 ParentObjectPtr // loc=0x38
	ObjectFlags1 ObjectFlags1 // loc=0x3c
	flags32 ObjectFlags2 // loc=0x40
	u32 CollisionIndexBit // loc=0x44
	u32 Unk_48 // loc=0x48
	struct_org 0x54	
	u32 Unk_54 // loc=0x54
	u32 Unk_58 // loc=0x58
	struct_org 0x60
	//u32 Unk_5c // loc=0x5c
	u32 Unk_60 // loc=0x60
	u32 Unk_64 // loc=0x64
	u32 Unk_68 // loc=0x68
	u32 Unk_6c // loc=0x6c
	flags32 FlagsFromCollision // loc=0x70
	u8 ExclamationIndicator // loc=0x74
	u8 DamageMultiplier // loc=0x75
	u8 DamageElements // loc=0x76
	u8 Unk_77 // loc=0x77
	u32 Unk_78 // loc=0x78
	u32 Unk_7c // loc=0x7c
	u16 FinalDamage // loc=0x80
	union
	u16 PanelDamage1 // loc=0x82
	u16 PanelDamage2 // loc=0x84
	nextu
	u32 PanelDamage1and2 // misaligned // loc=0x82
	endu

	union
	u16 PanelDamage3 // loc=0x86
	u16 PanelDamage4 // loc=0x88
	nextu
	u16 PanelDamage3and4 // misaligned // loc=0x86
	endu

	union
	u16 PanelDamage5 // loc=0x8a
	u16 PanelDamage6 // loc=0x8c
	nextu
	u32 PanelDamage5and6 // misaligned // loc=0x8a
	endu

	struct_org 0x94
	u0 PrimaryElementDamages // loc=0x94
	u16 NullElementDamage // loc=0x94
	u16 HeatElementDamage // loc=0x96
	u16 AquaElementDamage // loc=0x98
	u16 ElecElementDamage // loc=0x9a
	u16 WoodElementDamage // loc=0x9c
	struct_org 0xa0
	u32 Unk_a0 // loc=0xa0
	u32 InflictedBugs // loc=0xa4
	u0 Size // loc=0xa8
	u0 End // loc=0xa8
	restore_struct_label
	.endm

	def_struct_offsets collision_data_struct, oCollisionData
