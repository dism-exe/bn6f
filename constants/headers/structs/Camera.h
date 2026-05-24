// Generated from include/structs/Camera.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_CAMERA_H
#define BN6F_STRUCT_CAMERA_H

#include "types.h"

typedef struct Camera {
    u8       _pad_0x00[0x2];
    u8       Unk_02;    /* 0x02 */
    u8       Unk_03;    /* 0x03 */
    u16      Unk_04;    /* 0x04 */
    u16      Unk_06;    /* 0x06 */
    u16      Unk_08;    /* 0x08 */
    u16      Unk_0a;    /* 0x0A */
    u16      Unk_0c;    /* 0x0C */
    u16      Unk_0e;    /* 0x0E */
    u16      Unk_10;    /* 0x10 */
    u16      Unk_12;    /* 0x12 */
    u32      Unk_14;    /* 0x14 */
    u32      Unk_18;    /* 0x18 */
    u32      Unk_1c;    /* 0x1C */
    u32      Unk_20;    /* 0x20 */
    u32      Unk_24;    /* 0x24 */
    u32      Unk_28;    /* 0x28 */
    u32      Unk_2c;    /* 0x2C */
    u32      X;    /* 0x30 */
    u32      Y;    /* 0x34 */
    u32      Z;    /* 0x38 */
    u32      nextX_3c;    /* 0x3C */
    u32      nextY_40;    /* 0x40 */
    u32      nextZ_44;    /* 0x44 */
    u32      Unk_48;    /* 0x48 */
    u8       _pad_0x4C[0x4];
    /* 0x50 Size (zero-size marker) */
} Camera;

#endif
