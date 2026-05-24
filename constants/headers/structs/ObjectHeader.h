// Generated from include/structs/ObjectHeader.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_OBJECTHEADER_H
#define BN6F_STRUCT_OBJECTHEADER_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 18: unparsed: u0 Type
//   line 19: unparsed: u8 SpriteOffset

#define OBJECT_FLAG_ACTIVE 0x01
#define OBJECT_FLAG_VISIBLE 0x02
#define OBJECT_FLAG_PAUSE_UPDATE 0x04
#define OBJECT_FLAG_STOP_SPRITE_UPDATE 0x08
#define OBJECT_FLAG_UPDATE_DURING_TIMESTOP 0x10
#define OBJECT_FLAG_UNK_20 0x20
#define OBJECT_FLAG_UNK_40 0x40
#define OBJECT_FLAG_UNK_80 0x80

typedef struct ObjectHeader {
    /* 0x00 ObjectHeader (zero-size marker) */
    u8       Flags;    /* 0x00 */
    u8       Index;    /* 0x01 */
    /* 0x02 TypeAndSpriteOffset (zero-size marker) */
    u8       ListIndex;    /* 0x02 */
} ObjectHeader;

#endif
