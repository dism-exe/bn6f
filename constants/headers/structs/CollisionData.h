// Generated from include/structs/CollisionData.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_COLLISIONDATA_H
#define BN6F_STRUCT_COLLISIONDATA_H

#include "types.h"

typedef struct CollisionData {
    u8       Enabled;    /* 0x00 */
    u8       Region;    /* 0x01 */
    u8       PrimaryElement;    /* 0x02 */
    u8       Unk_03;    /* 0x03 */
    union {    /* 0x04 (size 0x2) */
        struct {
            u8       Alliance;    /* 0x04 */
            u8       Flip;    /* 0x05 */
        } _u0;
        struct {
            u16      AllianceAndDirectionFlip;    /* 0x04 */
        } _u1;
    } _union_0x4;
    u8       Barrier;    /* 0x06 */
    u8       StaminaDamageCounterDisabler;    /* 0x07 */
    u8       PoisonPanelTimer;    /* 0x08 */
    u8       HitEffect;    /* 0x09 */
    union {    /* 0x0A (size 0x2) */
        struct {
            u8       PanelX;    /* 0x0A */
            u8       PanelY;    /* 0x0B */
        } _u0;
        struct {
            u16      PanelXY;    /* 0x0A */
        } _u1;
    } _union_0xA;
    u8       Direction;    /* 0x0C */
    u8       CounterTimer;    /* 0x0D */
    u8       HitModifierBase;    /* 0x0E */
    u8       HitModifierFinal;    /* 0x0F */
    u8       StatusEffectBase;    /* 0x10 */
    u8       StatusEffectFinal;    /* 0x11 */
    u16      Bugs;    /* 0x12 */
    u8       Unk_14;    /* 0x14 */
    u8       Unk_15;    /* 0x15 */
    u8       Unk_16;    /* 0x16 */
    u8       Unk_17;    /* 0x17 */
    u8       SecondaryElementWeakness;    /* 0x18 */
    u8       SecondaryElement;    /* 0x19 */
    union {    /* 0x1A (size 0x2) */
        struct {
            u8       Unk_1a;    /* 0x1A */
            u8       Unk_1b;    /* 0x1B */
        } _u0;
        struct {
            u16      Unk_1a_1b;    /* 0x1A */
        } _u1;
    } _union_0x1A;
    u16      Unk_1c;    /* 0x1C */
    u16      Unk_1e;    /* 0x1E */
    u16      BlindTimer;    /* 0x20 */
    u16      Unk_22;    /* 0x22 */
    u16      FlashingInvisTimer;    /* 0x24 */
    u16      Unk_26;    /* 0x26 */
    u16      Unk_28;    /* 0x28 */
    u16      Unk_2a;    /* 0x2A */
    u16      Unk_2c;    /* 0x2C */
    u16      SelfDamage;    /* 0x2E */
    u32      SelfCollisionTypeFlags;    /* 0x30 */
    u32      TargetCollisionTypeFlags;    /* 0x34 */
    u32      ParentObjectPtr;    /* 0x38 */
    u32      ObjectFlags1;    /* 0x3C */
    u32      ObjectFlags2;    /* 0x40 */
    u32      CollisionIndexBit;    /* 0x44 */
    u32      Unk_48;    /* 0x48 */
    u8       _pad_0x4C[0x8];
    u32      Unk_54;    /* 0x54 */
    u32      Unk_58;    /* 0x58 */
    u8       _pad_0x5C[0x4];
    u32      Unk_60;    /* 0x60 */
    u32      Unk_64;    /* 0x64 */
    u32      Unk_68;    /* 0x68 */
    u32      Unk_6c;    /* 0x6C */
    u32      FlagsFromCollision;    /* 0x70 */
    u8       ExclamationIndicator;    /* 0x74 */
    u8       DamageMultiplier;    /* 0x75 */
    u8       DamageElements;    /* 0x76 */
    u8       Unk_77;    /* 0x77 */
    u32      Unk_78;    /* 0x78 */
    u32      Unk_7c;    /* 0x7C */
    u16      FinalDamage;    /* 0x80 */
    union {    /* 0x82 (size 0x4) */
        struct {
            u16      PanelDamage1;    /* 0x82 */
            u16      PanelDamage2;    /* 0x84 */
        } _u0;
        struct {
            u32      PanelDamage1and2;    /* 0x82 */
        } _u1;
    } _union_0x82;
    union {    /* 0x86 (size 0x4) */
        struct {
            u16      PanelDamage3;    /* 0x86 */
            u16      PanelDamage4;    /* 0x88 */
        } _u0;
        struct {
            u16      PanelDamage3and4;    /* 0x86 */
        } _u1;
    } _union_0x86;
    union {    /* 0x8A (size 0x4) */
        struct {
            u16      PanelDamage5;    /* 0x8A */
            u16      PanelDamage6;    /* 0x8C */
        } _u0;
        struct {
            u32      PanelDamage5and6;    /* 0x8A */
        } _u1;
    } _union_0x8A;
    u16      Unk_8e;    /* 0x8E */
    u16      Unk_90;    /* 0x90 */
    u16      Unk_92;    /* 0x92 */
    /* 0x94 PrimaryElementDamages (zero-size marker) */
    u16      NullElementDamage;    /* 0x94 */
    u16      HeatElementDamage;    /* 0x96 */
    u16      AquaElementDamage;    /* 0x98 */
    u16      ElecElementDamage;    /* 0x9A */
    u16      WoodElementDamage;    /* 0x9C */
    u8       _pad_0x9E[0x2];
    u32      Unk_a0;    /* 0xA0 */
    u32      InflictedBugs;    /* 0xA4 */
    /* 0xA8 Size (zero-size marker) */
    /* 0xA8 End (zero-size marker) */
} CollisionData;

#endif
