// Generated from include/structs/BattleState.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_BATTLESTATE_H
#define BN6F_STRUCT_BATTLESTATE_H

#include "types.h"

#define BATTLE_STATE_UNK_11_FLAG_UNK_BIT_00 0x01
#define BATTLE_STATE_UNK_11_FLAG_UNK_BIT_01 0x02
#define BATTLE_STATE_UNK_11_FLAG_UNK_BIT_02 0x04
#define BATTLE_STATE_UNK_11_FLAG_UNK_BIT_03 0x08
#define BATTLE_STATE_UNK_11_FLAG_UNK_BIT_04 0x10
#define BATTLE_STATE_UNK_11_FLAG_UNK_BIT_05 0x20
#define BATTLE_STATE_UNK_11_FLAG_UNK_BIT_06 0x40
#define BATTLE_STATE_UNK_11_FLAG_UNK_BIT_07 0x80

typedef struct BattleState {
    u8       Index_00;    /* 0x00 */
    u8       Index_01;    /* 0x01 */
    union {    /* 0x02 (size 0x2) */
        struct {
            u8       Unk_02;    /* 0x02 */
            u8       Unk_03;    /* 0x03 */
        } _u0;
        struct {
            u16      Unk_02_03;    /* 0x02 */
        } _u1;
    } _union_0x2;
    union {    /* 0x04 (size 0x2) */
        struct {
            u8       Unk_04;    /* 0x04 */
            u8       Unk_05;    /* 0x05 */
        } _u0;
        struct {
            u16      Unk_04_05;    /* 0x04 */
        } _u1;
    } _union_0x4;
    u8       BattleField;    /* 0x06 */
    u8       Unk_07;    /* 0x07 */
    u8       Unk_08;    /* 0x08 */
    u8       _pad_0x09[0x1];
    u8       Unk_0a;    /* 0x0A */
    u8       Unk_0b;    /* 0x0B */
    u8       _pad_0x0C[0x1];
    u8       Unk_0d;    /* 0x0D */
    u8       Unk_0e;    /* 0x0E */
    u8       BattleType;    /* 0x0F */
    u8       Unk_10;    /* 0x10 */
    u8       Unk_11;    /* 0x11 */
    union {    /* 0x12 (size 0x2) */
        struct {
            u8       Unk_12;    /* 0x12 */
            u8       Unk_13;    /* 0x13 */
        } _u0;
        struct {
            u16      Unk_12_13;    /* 0x12 */
        } _u1;
    } _union_0x12;
    u8       Unk_14;    /* 0x14 */
    u8       Unk_15;    /* 0x15 */
    u8       Unk_16;    /* 0x16 */
    u8       Unk_17;    /* 0x17 */
    u8       Unk_18;    /* 0x18 */
    u8       Unk_19;    /* 0x19 */
    u8       Unk_1a;    /* 0x1A */
    u8       Unk_1b;    /* 0x1B */
    u8       Unk_1c;    /* 0x1C */
    u8       Unk_1d;    /* 0x1D */
    u8       Unk_1e;    /* 0x1E */
    u8       Unk_1f;    /* 0x1F */
    u16      Unk_20;    /* 0x20 */
    u8       _pad_0x22[0x6];
    u16      Unk_28;    /* 0x28 */
    u8       _pad_0x2A[0x8];
    u16      Unk_32;    /* 0x32 */
    u16      Unk_34;    /* 0x34 */
    u16      Unk_36;    /* 0x36 */
    u16      Unk_38;    /* 0x38 */
    u16      Unk_3a;    /* 0x3A */
    u32      BattleSettings;    /* 0x3C */
    u32      Unk_40;    /* 0x40 */
    u8       Unk_44;    /* 0x44 */
    u8       Unk_45;    /* 0x45 */
    u8       _pad_0x46[0x16];
    u32      Unk_5c;    /* 0x5C */
    u32      Unk_60;    /* 0x60 */
    u32      Unk_64;    /* 0x64 */
    u8       _pad_0x68[0x18];
    /* 0x80 AliveBattleActors (zero-size marker) */
    u8       AlivePlayerActors[0x10];    /* 0x80 */
    u8       AliveOpponentActors[0x10];    /* 0x90 */
    /* 0xA0 Unk_a0 (zero-size marker) */
    u8       _pad_0xA0[0x20];
    /* 0xC0 Unk_c0 (zero-size marker) */
    u8       _pad_0xC0[0x10];
    /* 0xD0 BattleActors (zero-size marker) */
    u8       PlayerActors[0x10];    /* 0xD0 */
    u8       OpponentActors[0x10];    /* 0xE0 */
    /* 0xF0 Size (zero-size marker) */
} BattleState;

#endif
