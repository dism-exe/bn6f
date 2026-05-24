// Generated from include/structs/OWObjectInteractionArea.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_OWOBJECTINTERACTIONAREA_H
#define BN6F_STRUCT_OWOBJECTINTERACTIONAREA_H

#include "types.h"

#define OW_OBJECT_INTERACTION_AREA_FLAG_0x1 0x1
#define OW_OBJECT_INTERACTION_AREA_FLAG_0x10000 0x10000
#define OW_OBJECT_INTERACTION_AREA_FLAG_0x20000 0x20000
#define OW_OBJECT_INTERACTION_AREA_FLAG_0x40000 0x40000
#define OW_OBJECT_INTERACTION_AREA_FLAG_0x80000 0x80000
#define OW_OBJECT_INTERACTION_AREA_FLAG_0x100000 0x100000
#define OW_OBJECT_INTERACTION_AREA_FLAG_0x200000 0x200000
#define OW_OBJECT_INTERACTION_AREA_FLAG_0x400000 0x400000
#define OW_OBJECT_INTERACTION_AREA_FLAG_0x800000 0x800000

typedef struct OWObjectInteractionArea {
    union {    /* 0x00 (size 0x4) */
        struct {
            u16      X;    /* 0x00 */
            u16      Y;    /* 0x02 */
        } _u0;
        struct {
            u32      xyPacked_00;    /* 0x00 */
        } _u1;
    } _union_0x0;
    union {    /* 0x04 (size 0x4) */
        struct {
            u16      Z;    /* 0x04 */
            u8       Radius;    /* 0x06 */
            u8       ZReachAmount;    /* 0x07 */
        } _u0;
        struct {
            u32      Z_Radius_ZReachAmount;    /* 0x04 */
        } _u1;
    } _union_0x4;
    u32      Unk_08;    /* 0x08 */
    u32      Unk_0c;    /* 0x0C */
    u32      Unk_10;    /* 0x10 */
    /* 0x14 Size (zero-size marker) */
    /* 0x14 End (zero-size marker) */
} OWObjectInteractionArea;

#endif
