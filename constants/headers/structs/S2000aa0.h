// Generated from include/structs/S2000aa0.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_S2000AA0_H
#define BN6F_STRUCT_S2000AA0_H

#include "types.h"

#define DEFAULT_OW_PLAYER_NAVI_HORIZONTAL_COMPRESS 0x40
#define DEFAULT_OW_PLAYER_NAVI_VERTICAL_COMPRESS 0x40
#define DEFAULT_OW_PLAYER_NAVI_ROTATION 0

typedef struct S2000aa0 {
    u8       OWPlayerNaviHorizontalCompress;    /* 0x00 */
    u8       OWPlayerNaviVerticalCompress;    /* 0x01 */
    u8       OWPlayerNaviRotation;    /* 0x02 */
    u8       Unk_03;    /* 0x03 */
    u8       Sprite_04;    /* 0x04 */
    u8       OWPlayerNaviPaletteIndex;    /* 0x05 */
    u16      OWPlayerNaviColorShader;    /* 0x06 */
    u8       _pad_0x08[0x14];
    /* 0x1C Size (zero-size marker) */
} S2000aa0;

#endif
