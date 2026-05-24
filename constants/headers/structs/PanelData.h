// Generated from include/structs/PanelData.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_PANELDATA_H
#define BN6F_STRUCT_PANELDATA_H

#include "types.h"

typedef struct PanelData {
    u8       Visible;    /* 0x00 */
    u8       Unk_01;    /* 0x01 */
    u8       Type;    /* 0x02 */
    u8       Alliance;    /* 0x03 */
    u8       Unk_04;    /* 0x04 */
    u8       _pad_0x05[0x1];
    u8       Animation;    /* 0x06 */
    u8       Unk_07;    /* 0x07 */
    u8       Unk_08;    /* 0x08 */
    u8       Unk_09;    /* 0x09 */
    u8       _pad_0x0A[0x3];
    u8       Unk_0d;    /* 0x0D */
    u8       _pad_0x0E[0x2];
    u16      Unk_10;    /* 0x10 */
    u16      Unk_12;    /* 0x12 */
    u32      Flags;    /* 0x14 */
    u32      Unk_18;    /* 0x18 */
    void *   ReserverObjectPtr;    /* 0x1C */
    /* 0x20 Size (zero-size marker) */
    /* 0x20 End (zero-size marker) */
} PanelData;

#endif
