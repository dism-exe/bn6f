// Generated from include/structs/CutsceneState.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_CUTSCENESTATE_H
#define BN6F_STRUCT_CUTSCENESTATE_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 41: unknown field type `TextScriptArchivePtr`

#define CUTSCENE_SCRIPT_UNK_MAGIC_SCRIPT_VALUE_0x1 0x1
#define CUTSCENE_FLAG_SCRIPT_1_PAUSED 0x0
#define CUTSCENE_FLAG_SCRIPT_2_PAUSED 0x1
#define CUTSCENE_FLAG_SCRIPT_3_PAUSED 0x2
#define CUTSCENE_FLAG_SCRIPT_4_PAUSED 0x3
#define CUTSCENE_FLAG_SCRIPT_1_PAUSED_LONG 0x4
#define CUTSCENE_FLAG_SCRIPT_2_PAUSED_LONG 0x5
#define CUTSCENE_FLAG_SCRIPT_3_PAUSED_LONG 0x6
#define CUTSCENE_FLAG_SCRIPT_4_PAUSED_LONG 0x7
#define CUTSCENE_FLAG_8 0x8
#define CUTSCENE_FLAG_9 0x9

typedef struct CutsceneState {
    u8       _pad_0x00[0x4];
    u8       Unk_04;    /* 0x04 */
    u8       Unk_05;    /* 0x05 */
    u8       Unk_06;    /* 0x06 */
    u8       Unk_07;    /* 0x07 */
    /* 0x08 Unk_08 (zero-size marker) */
    u8       _pad_0x08[0x4];
    u8       CutsceneScript1PauseTimer;    /* 0x0C */
    u8       CutsceneScript2PauseTimer;    /* 0x0D */
    u8       CutsceneScript3PauseTimer;    /* 0x0E */
    u8       CutsceneScript4PauseTimer;    /* 0x0F */
    u8       OWPlayerCoordSpecialTimer;    /* 0x10 */
    u8       TransformPlayerNaviSpriteTimer;    /* 0x11 */
    u8       WhichCutsceneScript;    /* 0x12 */
    u8       CutsceneCameraScriptActive;    /* 0x13 */
    u16      CutsceneScript1LongPauseTimer;    /* 0x14 */
    u16      CutsceneScript2LongPauseTimer;    /* 0x16 */
    u16      CutsceneScript3LongPauseTimer;    /* 0x18 */
    u16      CutsceneScript4LongPauseTimer;    /* 0x1A */
    void *   CutsceneScriptPos;    /* 0x1C */
    void *   CutsceneScriptPos2;    /* 0x20 */
    void *   CutsceneScriptPos3;    /* 0x24 */
    void *   CutsceneScriptPos4;    /* 0x28 */
    u32      CutsceneFlags;    /* 0x2C */
    void *   Unk_34;    /* 0x30 */
    void *   CutsceneScriptAfterCutsceneSkip;    /* 0x34 */
    void *   CutsceneCameraScriptPtr;    /* 0x38 */
    void *   originalCutsceneScriptPos_40;    /* 0x3C */
    u8       owMapObjectPtrs_44[0x2C];    /* 0x40 */
    /* 0x6C owMapObjectPtrsEnd_70 (zero-size marker) */
    u8       _pad_0x6C[0x24];
    /* 0x90 Size (zero-size marker) */
} CutsceneState;

#endif
