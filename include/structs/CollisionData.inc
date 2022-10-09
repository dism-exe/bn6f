	.macro ObjectFlags1 field:req // type: enum ObjectFlags1
		enum32 \field
		struct_const OBJECT_FLAGS_GUARD,                  0x00000001
		struct_const OBJECT_FLAGS_INVIS,                  0x00000002
		struct_const OBJECT_FLAGS_UNK_4,                  0x00000004
		struct_const OBJECT_FLAGS_INVULNERABLE,           0x00000008
		struct_const OBJECT_FLAGS_AIRSHOE,                0x00000010
		struct_const OBJECT_FLAGS_FLOATSHOE,              0x00000020
		struct_const OBJECT_FLAGS_CANNOT_SLIDE,           0x00000040
		struct_const OBJECT_FLAGS_UNK_8,                  0x00000080
		struct_const OBJECT_FLAGS_DEAD,                   0x00000100
		struct_const OBJECT_FLAGS_FLASHING,               0x00000200
		struct_const OBJECT_FLAGS_FLINCHING,              0x00000400
		struct_const OBJECT_FLAGS_PARALYZED,              0x00000800
		struct_const OBJECT_FLAGS_SLIDING,                0x00001000
		struct_const OBJECT_FLAGS_BLIND,                  0x00002000
		struct_const OBJECT_FLAGS_IMMOBILIZED,            0x00004000
		struct_const OBJECT_FLAGS_CONFUSED,               0x00008000
		struct_const OBJECT_FLAGS_FROZEN,                 0x00010000
		struct_const OBJECT_FLAGS_SUPERARMOR,             0x00020000
		struct_const OBJECT_FLAGS_UNDERSHIRT,             0x00040000
		struct_const OBJECT_FLAGS_MOVE_COMPLETE,          0x00080000
		struct_const OBJECT_FLAGS_DRAG,                   0x00100000
		struct_const OBJECT_FLAGS_ANGER,                  0x00200000
		struct_const OBJECT_FLAGS_USING_ACTION,           0x00400000
		struct_const OBJECT_FLAGS_UNK_24,                 0x00800000
		struct_const OBJECT_FLAGS_UNK_25,                 0x01000000
		struct_const OBJECT_FLAGS_AFFECTED_BY_ICE,        0x02000000
		struct_const OBJECT_FLAGS_UNK_26,                 0x04000000
		struct_const OBJECT_FLAGS_UNAFFECTED_BY_POISON,   0x08000000
		struct_const OBJECT_FLAGS_UNK_28,                 0x10000000
		struct_const OBJECT_FLAGS_UNK_29,                 0x20000000
		struct_const OBJECT_FLAGS_UNK_30,                 0x40000000
		struct_const OBJECT_FLAGS_UNK_31,                 0x80000000
		struct_const OBJECT_FLAGS_BUBBLED,                0x80000000
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

	u16 Unk_8e // loc=0x8e
	u16 Unk_90 // loc=0x90
	u16 Unk_92 // loc=0x92

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
