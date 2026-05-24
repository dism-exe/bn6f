// Generated from include/structs/NaviStats.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_NAVISTATS_H
#define BN6F_STRUCT_NAVISTATS_H

#include "types.h"

typedef struct NaviStats {
    u8       _pad_0x00[0x1];
    u8       Attack;    /* 0x01 */
    u8       Speed;    /* 0x02 */
    u8       Charge;    /* 0x03 */
    u8       BButton;    /* 0x04 */
    u8       BPwrAtk;    /* 0x05 */
    u8       FstBarr;    /* 0x06 */
    u8       BLeftAbility;    /* 0x07 */
    u8       _pad_0x08[0x1];
    u8       RegUP;    /* 0x09 */
    u8       CustomLevel;    /* 0x0A */
    u8       MegaLevel;    /* 0x0B */
    u8       GigaLevel;    /* 0x0C */
    u8       _pad_0x0D[0x1];
    u8       Mood;    /* 0x0E */
    u8       _pad_0x0F[0xA];
    u8       CustHPBug;    /* 0x19 */
    u8       _pad_0x1A[0x1];
    u8       FloatShoes;    /* 0x1B */
    u8       AirShoes;    /* 0x1C */
    u8       UnderShirt;    /* 0x1D */
    u8       _pad_0x1E[0x3];
    u8       BeastOutCounter;    /* 0x21 */
    u8       _pad_0x22[0x1];
    u8       SuperArmor;    /* 0x23 */
    u8       EmotionBug;    /* 0x24 */
    u8       Humor;    /* 0x25 */
    u8       _pad_0x26[0x3];
    u8       NaviIndex;    /* 0x29 */
    u8       _pad_0x2A[0x2];
    u8       Transformation;    /* 0x2C */
    u8       _pad_0x2D[0x1];
    u8       Folder1Reg;    /* 0x2E */
    u8       Folder2Reg;    /* 0x2F */
    u8       _pad_0x30[0x1];
    u8       ProcessingBug;    /* 0x31 */
    u8       _pad_0x32[0x3];
    u8       SlipRun;    /* 0x35 */
    u8       _pad_0x36[0x8];
    u16      MaxBaseHP;    /* 0x3E */
    u16      CurHP;    /* 0x40 */
    u16      MaxHP;    /* 0x42 */
    u8       _pad_0x44[0x8];
    u8       Unk_4c;    /* 0x4C */
    u8       _pad_0x4D[0x2];
    u8       Unk_4f;    /* 0x4F */
    u16      ChipRecovery;    /* 0x50 */
    u8       _pad_0x52[0x4];
    u8       Folder1Tag1;    /* 0x56 */
    u8       Folder1Tag2;    /* 0x57 */
    u8       Folder2Tag1;    /* 0x58 */
    u8       Folder2Tag2;    /* 0x59 */
    u8       _pad_0x5A[0x5];
    u8       Poem;    /* 0x5F */
    u8       _pad_0x60[0x3];
    u8       TurnsUntilCustBugActivates;    /* 0x63 */
    /* 0x64 Size (zero-size marker) */
    /* 0x64 End (zero-size marker) */
} NaviStats;

#endif
