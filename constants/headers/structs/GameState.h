// Generated from include/structs/GameState.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_GAMESTATE_H
#define BN6F_STRUCT_GAMESTATE_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 79: unparsed: u0 Size

typedef struct GameState {
    u8       SubsystemIndex;    /* 0x00 */
    u8       CurPETNavi;    /* 0x01 */
    u8       Unk_02;    /* 0x02 */
    u8       Unk_03;    /* 0x03 */
    union {    /* 0x04 (size 0x2) */
        struct {
            u8       MapGroup;    /* 0x04 */
            u8       MapNumber;    /* 0x05 */
        } _u0;
        struct {
            u16      MapId;    /* 0x04 */
        } _u1;
    } _union_0x4;
    u8       GameProgress;    /* 0x06 */
    u8       Unk_07;    /* 0x07 */
    u8       Unk_08;    /* 0x08 */
    u8       Unk_09;    /* 0x09 */
    u8       BattlePaused;    /* 0x0A */
    u8       Unk_0b;    /* 0x0B */
    u8       LastMapGroup;    /* 0x0C */
    u8       LastMapNumber;    /* 0x0D */
    u8       CoordInteractionValue;    /* 0x0E */
    u8       BGMusicIndicator;    /* 0x0F */
    u8       Unk_10;    /* 0x10 */
    u8       Unk_11;    /* 0x11 */
    u8       Unk_12;    /* 0x12 */
    u8       Unk_13;    /* 0x13 */
    u8       Unk_14;    /* 0x14 */
    u8       Unk_15;    /* 0x15 */
    u8       EnterMapFadeParam1;    /* 0x16 */
    u8       EnterMapFadeParam2;    /* 0x17 */
    void *   OverworldPlayerObjectPtr;    /* 0x18 */
    void *   CurBattleDataPtr;    /* 0x1C */
    void *   Ptr_20;    /* 0x20 */
    u32      PlayerX;    /* 0x24 */
    u32      PlayerY;    /* 0x28 */
    u32      PlayerZ;    /* 0x2C */
    u32      FacingDirectionAfterWarp;    /* 0x30 */
    /* 0x34 SavedRealWorldCoords_FacingDirection_MapId (zero-size marker) */
    u32      SavedRealWorldX;    /* 0x34 */
    u32      SavedRealWorldY;    /* 0x38 */
    u32      SavedRealWorldZ;    /* 0x3C */
    u32      SavedRealWorldFacingDirection;    /* 0x40 */
    u32      SavedRealWorldMapId;    /* 0x44 */
    /* 0x48 SavedInternetCoords_FacingDirection_MapId (zero-size marker) */
    u32      SavedInternetX;    /* 0x48 */
    u32      SavedInternetY;    /* 0x4C */
    u32      SavedInternetZ;    /* 0x50 */
    u32      SavedInternetFacingDirection;    /* 0x54 */
    u32      SavedInternetMapId;    /* 0x58 */
    u32      ProtectedZenny;    /* 0x5C */
    u32      ProtectedBugfrags;    /* 0x60 */
    u32      Unk_64;    /* 0x64 */
    u32      Unk_68;    /* 0x68 */
    u32      Unk_6c;    /* 0x6C */
    u32      Unk_70;    /* 0x70 */
    u32      Unk_74;    /* 0x74 */
    u32      Unk_78;    /* 0x78 */
    u32      Unk_7c;    /* 0x7C */
} GameState;

#endif
