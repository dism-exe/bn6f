// Generated from include/structs/GFXAnimState.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_GFXANIMSTATE_H
#define BN6F_STRUCT_GFXANIMSTATE_H

#include "types.h"

typedef struct GFXAnimState {
    u8       IsActive;    /* 0x00 */
    u8       Index;    /* 0x01 */
    u16      Timer;    /* 0x02 */
    u32      LoopAddress;    /* 0x04 */
    u32      CommandPos;    /* 0x08 */
    u32      Param0;    /* 0x0C */
    u32      Param1;    /* 0x10 */
    union {    /* 0x14 (size 0x4) */
        struct {
            u8       Command;    /* 0x14 */
            u8       IndexRedundant;    /* 0x15 */
            u8       Param2;    /* 0x16 */
            u8       Param3;    /* 0x17 */
        } _u0;
        struct {
            u32      Command_Param2to3;    /* 0x14 */
        } _u1;
    } _union_0x14;
    /* 0x18 Size (zero-size marker) */
    /* 0x18 End (zero-size marker) */
} GFXAnimState;

#endif
