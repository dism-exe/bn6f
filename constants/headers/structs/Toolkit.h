// Generated from include/structs/Toolkit.inc by tools/struct_inc_to_h.py.
// NOTE: ptr field types have been MANUALLY REFINED (Phase C of
// structs_plan.md). Re-running the generator overwrites those —
// re-apply via this file's `git log`, or wire up real override
// support in the script.

#ifndef BN6F_STRUCT_TOOLKIT_H
#define BN6F_STRUCT_TOOLKIT_H

#include "types.h"

// Forward declarations for the typed pointer fields below. Full
// definitions live in their own headers (EWRAM.h pulls them all in).
struct Joypad;
struct RenderInfo;
struct Camera;
struct CutsceneState;
struct BattleState;
struct Chatbox;
struct CollisionData;
struct SubMenu;
struct GameState;
struct S2001c04;
struct NaviStats;

typedef struct Toolkit {
    u8 *                  MainJumptableIndexPtr;    /* 0x00 */
    struct Joypad *       JoypadPtr;                /* 0x04 */
    struct RenderInfo *   RenderInfoPtr;            /* 0x08 */
    struct Camera *       CameraPtr;                /* 0x0C */
    struct CutsceneState *CutsceneStatePtr;         /* 0x10 */
    void *                Warp2011bb0_Ptr;          /* 0x14 */
    struct BattleState *  BattleStatePtr;           /* 0x18 */
    u32 *                 Unk200f3a0_Ptr;           /* 0x1C */
    u32 *                 Unk2009740_Ptr;           /* 0x20 */
    u16 *                 CurFramePtr;              /* 0x24 */
    u32 *                 iBGTileIdBlocks_Ptr;      /* 0x28 */
    struct Chatbox *      ChatboxPtr;               /* 0x2C */
    struct CollisionData *CollisionDataPtr;         /* 0x30 */
    struct SubMenu *      SubmenuPtr;               /* 0x34 */
    void *                Unk200a220_Ptr;           /* 0x38 */
    struct GameState *    GameStatePtr;             /* 0x3C */
    struct S2001c04 *     S2001c04_Ptr;             /* 0x40 */
    u8 *                  EventFlagsPtr;            /* 0x44 */
    void *                S_Chip_2002178_Ptr;       /* 0x48 */
    u32 *                 Unk2002230_Ptr;           /* 0x4C */
    void *                KeyItemsPtr;              /* 0x50 */
    void *                ShopDataPtr;              /* 0x54 */
    u32 *                 Unk200414c_Ptr;           /* 0x58 */
    u32 *                 Unk2004190_Ptr;           /* 0x5C */
    u8 *                  Unk200431c_Ptr;           /* 0x60 */
    void *                Unk2004330_Ptr;           /* 0x64 */
    u16 *                 Unk2004334_Ptr;           /* 0x68 */
    void *                Unk2004338_Ptr;           /* 0x6C */
    u32 *                 Unk2004348_Ptr;           /* 0x70 */
    struct NaviStats *    NaviStatsPtr;             /* 0x74 */
    u8 *                  Unk2004a8c_Ptr;           /* 0x78 */
    u8 *                  Unk2004c20_Ptr;           /* 0x7C */
    void *                Unk2004e24_Ptr;           /* 0x80 */
    u32 *                 Unk2005028_Ptr;           /* 0x84 */
    u32 *                 Unk2005030_Ptr;           /* 0x88 */
    void *                Unk2005038_Ptr;           /* 0x8C */
    u32                   UnusedGarbage;            /* 0x90 */
    /* 0x94 Size (zero-size marker) */
} Toolkit;

#endif
