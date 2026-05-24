// Generated from include/structs/S2001c04.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_S2001C04_H
#define BN6F_STRUCT_S2001C04_H

#include "types.h"

typedef struct S2001c04 {
    u8       _pad_0x00[0x4];
    u8       MapMusic;    /* 0x04 */
    u8       _pad_0x05[0x2];
    u8       Unk_07;    /* 0x07 */
    u8       _pad_0x08[0xA];
    u16      Unk_12;    /* 0x12 */
    u16      Unk_14;    /* 0x14 */
    u8       _pad_0x16[0x2];
    u32      GameTimeFrames;    /* 0x18 */
    u32      Unk_1c;    /* 0x1C */
    u8       _pad_0x20[0x4];
    u32      Unk_24;    /* 0x24 */
    u32      Unk_28;    /* 0x28 */
    u32      OptCurBattleDataPtr;    /* 0x2C */
    u8       _pad_0x30[0x3C];
    u8       BuildString[0x14];    /* 0x6C */
    u8       _pad_0x80[0x4];
    /* 0x84 Size (zero-size marker) */
} S2001c04;

#endif
