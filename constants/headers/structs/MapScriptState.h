// Generated from include/structs/MapScriptState.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_MAPSCRIPTSTATE_H
#define BN6F_STRUCT_MAPSCRIPTSTATE_H

#include "types.h"

typedef struct MapScriptState {
    u8       Unk_00[0x8];    /* 0x00 */
    void *   OnInitMapScriptPtr;    /* 0x08 */
    void *   ContinuousMapScriptPtr;    /* 0x0C */
    void *   SecondaryContinuousMapScriptPtr;    /* 0x10 */
    /* 0x14 Size (zero-size marker) */
} MapScriptState;

#endif
