// Generated from include/structs/CutsceneCameraInfo.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_CUTSCENECAMERAINFO_H
#define BN6F_STRUCT_CUTSCENECAMERAINFO_H

#include "types.h"

typedef struct CutsceneCameraInfo {
    void *   CutsceneCameraScriptPtr;    /* 0x00 */
    union {    /* 0x04 (size 0x4) */
        struct {
            u16      Timer;    /* 0x04 */
            u16      CommandInitialized;    /* 0x06 */
        } _u0;
        struct {
            u32      Timer_CommandInitialized;    /* 0x04 */
        } _u1;
    } _union_0x4;
    u32      OldX;    /* 0x08 */
    u32      OldY;    /* 0x0C */
    u32      OldZ;    /* 0x10 */
    u32      NewX;    /* 0x14 */
    u32      NewY;    /* 0x18 */
    u32      NewZ;    /* 0x1C */
    u32      SmoothAutoScrollDelta;    /* 0x20 */
    u32      Unk_24;    /* 0x24 */
    u8       _pad_0x28[0x18];
    /* 0x40 Size (zero-size marker) */
} CutsceneCameraInfo;

#endif
