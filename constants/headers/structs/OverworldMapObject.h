// Generated from include/structs/OverworldMapObject.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_OVERWORLDMAPOBJECT_H
#define BN6F_STRUCT_OVERWORLDMAPOBJECT_H

#include "types.h"

typedef struct OverworldMapObject {
    /* nested: object_header_struct @ 0x00 — declare manually */
    u32      ObjectID;    /* 0x00 */
    u32      Unk_08;    /* 0x04 */
    /* 0x08 Coords (zero-size marker) */
    s32      X;    /* 0x08 */
    s32      Y;    /* 0x0C */
    s32      Z;    /* 0x10 */
    u8       _pad_0x14[0x2C];
    /* nested: object_sprite_struct @ 0x40 — declare manually */
    /* 0x40 Size (zero-size marker) */
    /* 0x40 End (zero-size marker) */
} OverworldMapObject;

#endif
