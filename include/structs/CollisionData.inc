
	.macro collision_data_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin

	\struct_begin \label
	\struct_entry \label\()_Enabled, 1 // loc=0x0
	\struct_entry \label\()_Region, 1 // loc=0x1
	\struct_entry \label\()_PrimaryElement, 1 // loc=0x2
	\struct_entry \label\()_Unk_03, 1 // loc=0x3
	\struct_entry \label\()_Alliance, 1 // loc=0x4
	\struct_entry \label\()_Flip, 1 // loc=0x5
	\struct_entry \label\()_Unk_06, 1 // loc=0x6
	\struct_entry \label\()_StaminaDamageCounterDisabler, 1 // loc=0x7
	\struct_entry \label\()_PoisonPanelTimer, 1 // loc=0x8
	\struct_entry \label\()_HitEffect, 1 // loc=0x9
	\struct_entry \label\()_PanelX, 1 // loc=0xa
	\struct_entry \label\()_PanelY, 1 // loc=0xb
	\struct_entry \label\()_Direction, 1 // loc=0xc
	\struct_entry \label\()_CounterTimer, 1 // loc=0xd
	\struct_entry \label\()_HitModifierBase, 1 // loc=0xe
	\struct_entry \label\()_HitModifierFinal, 1 // loc=0xf
	\struct_entry \label\()_StatusEffectBase, 1 // loc=0x10
	\struct_entry \label\()_StatusEffectFinal, 1 // loc=0x11
	\struct_entry \label\()_Bugs, 2 // loc=0x12
	\struct_entry \label\()_Unk_14, 1 // loc=0x14
	\struct_entry \label\()_Unk_15, 1 // loc=0x15
	\struct_entry \label\()_Unk_16, 1 // loc=0x16
	\struct_entry \label\()_Unk_17, 1 // loc=0x17
	\struct_entry \label\()_SecondaryElementWeakness, 1 // loc=0x18
	\struct_entry \label\()_SecondaryElement, 1 // loc=0x19
	\struct_entry \label\()_Unk_1a_1b // loc=0x1a
	\struct_entry \label\()_Unk_1a, 1 // loc=0x1a
	\struct_entry \label\()_Unk_1b, 1 // loc=0x1b
	\struct_entry \label\()_Unk_1c, 2 // loc=0x1c
	\struct_entry \label\()_Unk_1e, 2 // loc=0x1e
	\struct_entry \label\()_Unk_20, 2 // loc=0x20
	\struct_entry \label\()_Unk_22, 2 // loc=0x22
	\struct_entry \label\()_Unk_24, 2 // loc=0x24
	\struct_entry \label\()_Unk_26, 2 // loc=0x26
	\struct_entry \label\()_Unk_28, 2 // loc=0x28
	\struct_entry \label\()_Unk_2a, 2 // loc=0x2a
	\struct_entry \label\()_Unk_2c, 2 // loc=0x2c
	\struct_entry \label\()_SelfDamage, 2 // loc=0x2e
	\struct_entry \label\()_SelfCollisionTypeFlags, 4 // loc=0x30
	\struct_entry \label\()_TargetCollisionTypeFlags, 4 // loc=0x34
	\struct_entry \label\()_ParentObjectPtr, 4 // loc=0x38
	\struct_entry \label\()_ObjectFlags1, 4 // loc=0x3c
	\struct_entry \label\()_ObjectFlags2, 4 // loc=0x40
	\struct_entry \label\()_CollisionIndexBit, 4 // loc=0x44
	\struct_entry \label\()_Unk_48, 4 // loc=0x48
	struct_org 0x54
	\struct_entry \label\()_Unk_54, 4 // loc=0x54
	\struct_entry \label\()_Unk_58, 4 // loc=0x58
	struct_org 0x60
	//\struct_entry \label\()_Unk_5c, 4 // loc=0x5c
	\struct_entry \label\()_Unk_60, 4 // loc=0x60
	struct_org 0x68
	//\struct_entry \label\()_Unk_64, 4 // loc=0x64
	\struct_entry \label\()_Unk_68, 4 // loc=0x68
	\struct_entry \label\()_Unk_6c, 4 // loc=0x6c*/
	\struct_entry \label\()_FlagsFromCollision, 4 // loc=0x70
	\struct_entry \label\()_ExclamationIndicator, 1 // loc=0x74
	\struct_entry \label\()_DamageMultiplier, 1 // loc=0x75
	\struct_entry \label\()_DamageElements, 1 // loc=0x76
	struct_org 0x7c
	// \struct_entry \label\()_Unk_78, 4 // loc=0x78
	\struct_entry \label\()_Unk_7c, 4 // loc=0x7c
	\struct_entry \label\()_FinalDamage, 2 // loc=0x80
	\struct_entry \label\()_PanelDamage1, 2 // loc=0x82
	\struct_entry \label\()_PanelDamage2, 2 // loc=0x84
	\struct_entry \label\()_PanelDamage3, 2 // loc=0x86
	\struct_entry \label\()_PanelDamage4, 2 // loc=0x88
	\struct_entry \label\()_PanelDamage5, 2 // loc=0x8a
	\struct_entry \label\()_PanelDamage6, 2 // loc=0x8c
	struct_org 0xa4
	\struct_entry \label\()_InflictedBugs, 4 // loc=0xa4
	\struct_entry \label\()_Size // loc=0xa8
	.endm

	def_struct_offsets collision_data_struct, oCollisionData
