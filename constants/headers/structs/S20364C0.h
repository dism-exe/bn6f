// Generated from include/structs/S20364C0.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_S20364C0_H
#define BN6F_STRUCT_S20364C0_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 9: unknown field type `bool`

typedef struct S20364C0 {
    u8       JumpOffset00;    /* 0x00 */
    u8       JumpOffset01;    /* 0x01 */
    u8       Unk_03;    /* 0x02 */
    u8       Unk_04;    /* 0x03 */
    u8       Unk_05;    /* 0x04 */
    u8       Unk_06;    /* 0x05 */
    u8       ChipSelectCursorPos;    /* 0x06 */
    u8       NumChipsSelected;    /* 0x07 */
    u8       Unk_09;    /* 0x08 */
    u8       Unk_0a;    /* 0x09 */
    u8       Unk_0b;    /* 0x0A */
    u8       Unk_0c;    /* 0x0B */
    u8       Unk_0d;    /* 0x0C */
    u8       Unk_0e;    /* 0x0D */
    u8       Unk_0f;    /* 0x0E */
    u16      Unk_10;    /* 0x0F */
    u8       JumpOffset12;    /* 0x11 */
    u8       Unk_13;    /* 0x12 */
    u8       Unk_14;    /* 0x13 */
    u8       Unk_15;    /* 0x14 */
    u8       Unk_16;    /* 0x15 */
    u8       Unk_17;    /* 0x16 */
    u8       Unk_18;    /* 0x17 */
    u8       Unk_19;    /* 0x18 */
    u8       Unk_1a;    /* 0x19 */
    u8       _pad_0x1A[0x2];
    u32      Unk_1c;    /* 0x1C */
    u16      Unk_20;    /* 0x20 */
    u8       _pad_0x22[0x16];
    u16      Unk_38;    /* 0x38 */
    u16      Unk_3a;    /* 0x3A */
    u8       _pad_0x3C[0x4];
    /* 0x40 Size (zero-size marker) */
} S20364C0;

#endif
