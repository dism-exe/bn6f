// Generated from include/structs/MapTilesState200be70.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_MAPTILESSTATE200BE70_H
#define BN6F_STRUCT_MAPTILESSTATE200BE70_H

#include "types.h"

typedef struct MapTilesState200be70 {
    u8       MapWidth;    /* 0x00 */
    u8       MapHeight;    /* 0x01 */
    u8       _pad_0x02[0x2];
    u16      Unk_04;    /* 0x04 */
    u16      Unk_06;    /* 0x06 */
    u32      MapBGDescriptorPtr;    /* 0x08 */
    u32      Unk_0c;    /* 0x0C */
    u32      PalettePtr;    /* 0x10 */
    u32      TilesetPtr;    /* 0x14 */
    u32      UnkCallback_18;    /* 0x18 */
    u32      UnkCallback_1c;    /* 0x1C */
    u32      UnkCallback_20;    /* 0x20 */
    /* 0x24 Size (zero-size marker) */
} MapTilesState200be70;

#endif
