
	.macro collision_data_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
        \struct_begin \label
        struct_init_defs \struct_entry, \label
        u8 \label, Enabled // loc=0x0
        u8 \label, Region // loc=0x1
        u8 \label, PrimaryElement // loc=0x2
        u8 \label, Unk_03 // loc=0x3
        u8 \label, Alliance // loc=0x4
        u8 \label, Flip // loc=0x5
        u8 \label, Unk_06 // loc=0x6
        u8 \label, StaminaDamageCounterDisabler // loc=0x7
        u8 \label, PoisonPanelTimer // loc=0x8
        u8 \label, HitEffect // loc=0x9
        u0 \label, PanelXY // loc=0xa
        u8 \label, PanelX // loc=0xa
        u8 \label, PanelY // loc=0xb
        u8 \label, Direction // loc=0xc
        u8 \label, CounterTimer // loc=0xd
        u8 \label, HitModifierBase // loc=0xe
        u8 \label, HitModifierFinal // loc=0xf
        u8 \label, StatusEffectBase // loc=0x10
        u8 \label, StatusEffectFinal // loc=0x11
        u16 \label, Bugs // loc=0x12
        u8 \label, Unk_14 // loc=0x14
        u8 \label, Unk_15 // loc=0x15
        u8 \label, Unk_16 // loc=0x16
        u8 \label, Unk_17 // loc=0x17
        u8 \label, SecondaryElementWeakness // loc=0x18
        u8 \label, SecondaryElement // loc=0x19
        u0 \label, Unk_1a_1b // loc=0x1a
        u8 \label, Unk_1a // loc=0x1a
        u8 \label, Unk_1b // loc=0x1b
        u16 \label, Unk_1c // loc=0x1c
        u16 \label, Unk_1e // loc=0x1e
        u16 \label, Unk_20 // loc=0x20
        u16 \label, Unk_22 // loc=0x22
        u16 \label, Unk_24 // loc=0x24
        u16 \label, Unk_26 // loc=0x26
        u16 \label, Unk_28 // loc=0x28
        u16 \label, Unk_2a // loc=0x2a
        u16 \label, Unk_2c // loc=0x2c
        u16 \label, SelfDamage // loc=0x2e
        u32 \label, SelfCollisionTypeFlags // loc=0x30
        u32 \label, TargetCollisionTypeFlags // loc=0x34
        u32 \label, ParentObjectPtr // loc=0x38
        u32 \label, ObjectFlags1 // loc=0x3c
        u32 \label, ObjectFlags2 // loc=0x40
        u32 \label, CollisionIndexBit // loc=0x44
        u32 \label, Unk_48 // loc=0x48
        struct_org 0x54
        u32 \label, Unk_54 // loc=0x54
        u32 \label, Unk_58 // loc=0x58
        struct_org 0x60
        //u32 \label, Unk_5c // loc=0x5c
        u32 \label, Unk_60 // loc=0x60
        u32 \label, Unk_64 // loc=0x64
        u32 \label, Unk_68 // loc=0x68
        u32 \label, Unk_6c // loc=0x6c*/
        u32 \label, FlagsFromCollision // loc=0x70
        u8 \label, ExclamationIndicator // loc=0x74
        u8 \label, DamageMultiplier // loc=0x75
        u8 \label, DamageElements // loc=0x76
        struct_org 0x7c
        // u32 \label, Unk_78 // loc=0x78
        u32 \label, Unk_7c // loc=0x7c
        u16 \label, FinalDamage // loc=0x80
        u16 \label, PanelDamage1 // loc=0x82
        u16 \label, PanelDamage2 // loc=0x84
        u16 \label, PanelDamage3 // loc=0x86
        u16 \label, PanelDamage4 // loc=0x88
        u16 \label, PanelDamage5 // loc=0x8a
        u16 \label, PanelDamage6 // loc=0x8c
        struct_org 0xa4
        u32 \label, InflictedBugs // loc=0xa4
        u0 \label, Size // loc=0xa8
	.endm

	def_struct_offsets collision_data_struct, oCollisionData
