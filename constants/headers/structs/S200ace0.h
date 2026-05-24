// Generated from include/structs/S200ace0.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_S200ACE0_H
#define BN6F_STRUCT_S200ACE0_H

#include "types.h"

typedef struct S200ace0 {
    u8       _pad_0x00[0x2];
    u8       owPlayerFixedAnimationSelect_02;    /* 0x02 */
    u8       _pad_0x03[0x5];
    s32      PlayerX;    /* 0x08 */
    s32      PlayerY;    /* 0x0C */
    s32      PlayerZ;    /* 0x10 */
    u8       _pad_0x14[0x1];
    u8       fixOWPlayerAnim_15;    /* 0x15 */
    u8       _pad_0x16[0x2];
    union {    /* 0x18 (size 0x4) */
        struct {
            u16      Unk_18;    /* 0x18 */
            u16      Unk_1a;    /* 0x1A */
        } _u0;
        struct {
            u32      Unk_18_1a;    /* 0x18 */
        } _u1;
    } _union_0x18;
    u32      Unk_1c;    /* 0x1C */
    u32      Unk_20;    /* 0x20 */
    /* 0x24 Size (zero-size marker) */
} S200ace0;

#endif
