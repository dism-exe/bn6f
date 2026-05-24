// Generated from include/structs/ReqBBSGui.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_REQBBSGUI_H
#define BN6F_STRUCT_REQBBSGUI_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 20: unparsed: /*
//   line 21: unparsed: This is an index? to an array that determines the total poin
//   line 22: unparsed: "Points: XX/YY".
//   line 23: unparsed: array = [10, 25, 35, 75, 75]
//   line 24: unparsed: */

typedef struct ReqBBSGui {
    u8       SubsystemJumpTableOffset;    /* 0x00 */
    u8       _pad_0x01[0x3];
    u8       Unk_04;    /* 0x04 */
    u8       NumNewRequests;    /* 0x05 */
    u8       Und_06;    /* 0x06 */
    u8       Und_07;    /* 0x07 */
    u8       AnimationTimer0;    /* 0x08 */
    u8       AnimationTimer1;    /* 0x09 */
    u8       Und_0A;    /* 0x0A */
    u8       UnkState_0B;    /* 0x0B */
    u8       Und_0C;    /* 0x0C */
    u8       NumPoints;    /* 0x0D */
    u8       TotalPointsIdx;    /* 0x0E */
    u8       Unk_0F;    /* 0x0F */
    u8       _pad_0x10[0xE];
    u16      TotalNewRequests;    /* 0x1E */
    u16      CursorPos;    /* 0x20 */
    u16      CursorPosUpdate;    /* 0x22 */
    u16      PagePos;    /* 0x24 */
    u16      PagePosUpdate;    /* 0x26 */
    void *   TwoTextRelatedPointers;    /* 0x28 */
    /* 0x2C Size (zero-size marker) */
} ReqBBSGui;

#endif
