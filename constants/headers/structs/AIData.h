// Generated from include/structs/AIData.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_AIDATA_H
#define BN6F_STRUCT_AIDATA_H

#include "types.h"

#define ACTOR_TYPE_VIRUS 0x00
#define ACTOR_TYPE_NAVI 0x01
#define ACTOR_TYPE_PLAYER 0x02

typedef struct AIData {
    u8       ActorType;    /* 0x00 */
    u8       AIIndex;    /* 0x01 */
    u8       Unk_02;    /* 0x02 */
    u8       Unk_03;    /* 0x03 */
    u8       Unk_04;    /* 0x04 */
    u8       APwrAtk;    /* 0x05 */
    u8       BButton;    /* 0x06 */
    u8       BPwrAtk;    /* 0x07 */
    u8       BLeftAbility;    /* 0x08 */
    u8       Unk_09;    /* 0x09 */
    u8       Unk_0a;    /* 0x0A */
    u8       Unk_0b;    /* 0x0B */
    u8       Unk_0c;    /* 0x0C */
    u8       Unk_0d;    /* 0x0D */
    u8       Unk_0e;    /* 0x0E */
    u8       Unk_0f;    /* 0x0F */
    u8       Unk_10;    /* 0x10 */
    u8       BeastOutAPwrAtk;    /* 0x11 */
    u8       Unk_12;    /* 0x12 */
    u8       Unk_13;    /* 0x13 */
    u8       Unk_15;    /* 0x14 */
    u8       Version_16;    /* 0x15 */
    u8       Version_17;    /* 0x16 */
    u8       Unk_18;    /* 0x17 */
    u8       ChipLockoutTimer;    /* 0x18 */
    u8       Unk_1a;    /* 0x19 */
    u8       PwrAtkCurChargeTime;    /* 0x1A */
    u8       Unk_1c;    /* 0x1B */
    u8       PwrAtkState;    /* 0x1C */
    u8       PwrAtkButton;    /* 0x1D */
    u8       _pad_0x1E[0x2];
    u16      TotalDamageTaken;    /* 0x20 */
    u16      JoypadHeld;    /* 0x22 */
    u16      JoypadPressed;    /* 0x24 */
    u16      JoypadUp;    /* 0x26 */
    u16      JoypadReleased;    /* 0x28 */
    u16      Unk_2a;    /* 0x2A */
    u16      Unk_2c;    /* 0x2C */
    u16      Unk_2e;    /* 0x2E */
    u16      Unk_30;    /* 0x30 */
    u16      Unk_32;    /* 0x32 */
    u16      Anger;    /* 0x34 */
    u16      Unk_36;    /* 0x36 */
    u16      Unk_38;    /* 0x38 */
    u16      Unk_3a;    /* 0x3A */
    u16      Unk_3c;    /* 0x3C */
    u8       _pad_0x3E[0x2];
    u32      Unk_40;    /* 0x40 */
    u32      Unk_44;    /* 0x44 */
    u32      Unk_48;    /* 0x48 */
    u32      Unk_4c;    /* 0x4C */
    u32      Unk_50;    /* 0x50 */
    u32      Unk_54;    /* 0x54 */
    u32      Unk_58;    /* 0x58 */
    void *   Unk_5c;    /* 0x5C */
    u32      Unk_60;    /* 0x60 */
    u8       _pad_0x64[0x4];
    u32      Unk_68;    /* 0x68 */
    u32      Unk_6c;    /* 0x6C */
    u32      Unk_70;    /* 0x70 */
    u32      Unk_74;    /* 0x74 */
    void *   Unk_78;    /* 0x78 */
    u32      Unk_7c;    /* 0x7C */
    /* 0x80 AIState (zero-size marker) */
    u8       _pad_0x80[0x20];
    u8       AttackVars[0x50];    /* 0xA0 */
    u8       _pad_0xF0[0x10];
    /* 0x100 Size (zero-size marker) */
    /* 0x100 End (zero-size marker) */
    u8       Unk_00;    /* 0x100 */
    u8       Unk_01;    /* 0x101 */
    u8       Unk_02_at_0x102;    /* 0x102 */
    u8       Unk_03_at_0x103;    /* 0x103 */
    u8       Unk_04_at_0x104;    /* 0x104 */
    u8       Unk_05;    /* 0x105 */
    u8       Unk_06;    /* 0x106 */
    u8       Unk_07;    /* 0x107 */
    u16      Unk_08;    /* 0x108 */
    u8       Unk_0c_at_0x10A;    /* 0x10A */
    u8       Unk_0d_at_0x10B;    /* 0x10B */
    u8       Unk_0e_at_0x10C;    /* 0x10C */
    u8       Unk_0f_at_0x10D;    /* 0x10D */
    /* 0x20 Size (zero-size marker) */
    /* 0x20 End (zero-size marker) */
    u8       Unk_00_at_0x20;    /* 0x20 */
    u8       Unk_01_at_0x21;    /* 0x21 */
    u8       Unk_02_at_0x22;    /* 0x22 */
    u8       Unk_03_at_0x23;    /* 0x23 */
    u8       Unk_04_at_0x24;    /* 0x24 */
    u8       Unk_05_at_0x25;    /* 0x25 */
    u16      AttackBoost;    /* 0x26 */
    u16      Damage;    /* 0x28 */
    u16      Unk_0a_at_0x2A;    /* 0x2A */
    u8       Unk_0c_at_0x2C;    /* 0x2C */
    u8       Unk_0d_at_0x2D;    /* 0x2D */
    u8       Unk_0e_at_0x2E;    /* 0x2E */
    u8       Unk_0f_at_0x2F;    /* 0x2F */
    u16      Unk_10_at_0x30;    /* 0x30 */
    u16      Unk_12_at_0x32;    /* 0x32 */
    u16      Unk_14;    /* 0x34 */
    u8       Unk_16;    /* 0x36 */
    u8       Unk_17;    /* 0x37 */
    u16      Unk_18_at_0x38;    /* 0x38 */
    u8       Unk_1a_at_0x3A;    /* 0x3A */
    u8       Unk_1b;    /* 0x3B */
    u8       Unk_1c_at_0x3C;    /* 0x3C */
    u8       Unk_1d;    /* 0x3D */
    u8       Unk_1e;    /* 0x3E */
    u32      Unk_28;    /* 0x28 */
    u32      Unk_2c_at_0x2C;    /* 0x2C */
    u16      Unk_30_at_0x30;    /* 0x30 */
    u16      Unk_32_at_0x32;    /* 0x32 */
    u16      Unk_34;    /* 0x34 */
    u16      Unk_36_at_0x36;    /* 0x36 */
    u32      Unk_38_at_0x38;    /* 0x38 */
    u32      Unk_3c_at_0x3C;    /* 0x3C */
    u32      Unk_40_at_0x40;    /* 0x40 */
    u32      Unk_44_at_0x44;    /* 0x44 */
    u8       _pad_0x48[0x8];
    /* 0x50 Size (zero-size marker) */
    /* 0x50 End (zero-size marker) */
} AIData;

#endif
