// Generated from include/structs/Warp2011bb0.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_WARP2011BB0_H
#define BN6F_STRUCT_WARP2011BB0_H

#include "types.h"

typedef struct Warp2011bb0 {
    union {    /* 0x00 (size 0x2) */
        struct {
            u8       MapGroup;    /* 0x00 */
            u8       MapNumber;    /* 0x01 */
        } _u0;
        struct {
            u16      MapId;    /* 0x00 */
        } _u1;
    } _union_0x0;
    u8       warpType_02;    /* 0x02 */
    u8       FacingDirection;    /* 0x03 */
    u32      X;    /* 0x04 */
    u32      Y;    /* 0x08 */
    u32      Z;    /* 0x0C */
    u8       Unk_10;    /* 0x10 */
    u8       WarpIndex;    /* 0x11 */
    u8       MapGroupTransitionType;    /* 0x12 */
    u8       _pad_0x13[0x1];
    void *   WarpDataPtr;    /* 0x14 */
    u8       _pad_0x18[0x8];
    /* 0x20 Size (zero-size marker) */
} Warp2011bb0;

#endif
