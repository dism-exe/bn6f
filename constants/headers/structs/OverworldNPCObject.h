// Generated from include/structs/OverworldNPCObject.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_OVERWORLDNPCOBJECT_H
#define BN6F_STRUCT_OVERWORLDNPCOBJECT_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 32: unparsed: /*
//   line 33: unparsed: Those might not be flags, since 0x0C behaves unpredictably b
//   line 34: unparsed: 0x00 - No effect, it keeps setting to 0x04
//   line 35: unparsed: 0x04 - Default, moving
//   line 36: unparsed: 0x08 - Stop
//   line 37: unparsed: 0x0C - Stop, with a weird location transformation for a mome
//   line 38: unparsed: */

#define NPC_CUR_STATE_INIT 0x0
#define NPC_CUR_STATE_STANDARD 0x4
#define NPC_CUR_STATE_IN_CHATBOX 0x8
#define MOVEMENT_FLAG_STOP 0x00
#define MOVEMENT_FLAG_DEFAULT_MOVING 0x04
#define MOVEMENT_FLAG_HOP_OR_LEAP 0x08
#define MOVEMENT_FLAG_WAIT_ANIM_FRAME 0x0c
#define MOVEMENT_FLAG_CALL_NATIVE_FUNCTION 0x10
#define MOVEMENT_FLAG_WAIT_CUTSCENE_VAR 0x14
#define MOVEMENT_FLAG_WAIT_MYSTERY_DATA_TAKEN 0x18
#define OW_NPC_UNK_FLAGS_60_DISABLE_INTERACTION 0x1
#define OW_NPC_UNK_FLAGS_60_FACE_PLAYER_WHEN_INTERACTED 0x2
#define OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION 0x4
#define OW_NPC_UNK_FLAGS_60_SPRITE_MIRRORED 0x8
#define OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION_0x10 0x10
#define OW_NPC_UNK_FLAGS_60_0x20 0x20
#define OW_NPC_UNK_FLAGS_60_0x40 0x40
#define OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80 0x80
#define OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x100 0x100
#define OW_NPC_UNK_FLAGS_60_0x200 0x200
#define OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400 0x400
#define OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x800 0x800
#define OW_NPC_UNK_FLAGS_60_0x1000 0x1000

typedef struct OverworldNPCObject {
    /* nested: object_header_struct @ 0x00 — declare manually */
    union {    /* 0x00 (size 0x4) */
        struct {
            u8       MovementSpeed;    /* 0x00 */
            u8       MovementDistance;    /* 0x01 */
            u8       Undetected_06;    /* 0x02 */
            u8       Unk_07;    /* 0x03 */
        } _u0;
        struct {
            u32      MovementSpeed_MovementTimer_Undetected_06_Unk_07;    /* 0x00 */
        } _u1;
    } _union_0x0;
    u8       CurState;    /* 0x04 */
    u8       CurAction;    /* 0x05 */
    union {    /* 0x06 (size 0x2) */
        struct {
            u8       MovementFlag_0a;    /* 0x06 */
            u8       Unk_0b;    /* 0x07 */
        } _u0;
        struct {
            u16      MovementFlag_0a_Unk_0b;    /* 0x06 */
        } _u1;
    } _union_0x6;
    union {    /* 0x08 (size 0x2) */
        struct {
            u8       CollisionRadius;    /* 0x08 */
            u8       ZReach;    /* 0x09 */
        } _u0;
        struct {
            u16      CollisionRadius_ZReach;    /* 0x08 */
        } _u1;
    } _union_0x8;
    u8       MovementDirection;    /* 0x0A */
    u8       Unk_0f;    /* 0x0B */
    u8       WhichNPCScript;    /* 0x0C */
    u8       CenterOffsetX;    /* 0x0D */
    u8       CenterOffsetY;    /* 0x0E */
    u8       CenterOffsetZ;    /* 0x0F */
    u8       AnimationSelect;    /* 0x10 */
    u8       AnimationSelectUpdate;    /* 0x11 */
    u8       PaletteIndex;    /* 0x12 */
    u8       InteractionLocked;    /* 0x13 */
    u8       ChatTriggered;    /* 0x14 */
    u8       TerminateScript_19;    /* 0x15 */
    u8       Undetected_1a;    /* 0x16 */
    u8       Undetected_1b;    /* 0x17 */
    u8       TextScriptIndex;    /* 0x18 */
    u8       Unk_1d;    /* 0x19 */
    u8       Unk_1e;    /* 0x1A */
    u8       TerminateScript_1f;    /* 0x1B */
    u16      Timer;    /* 0x1C */
    u16      Timer_22;    /* 0x1E */
    /* 0x20 Coords (zero-size marker) */
    u16      X;    /* 0x20 */
    u16      X16;    /* 0x22 */
    u16      Y;    /* 0x24 */
    u16      Y16;    /* 0x26 */
    u16      Z;    /* 0x28 */
    u16      Z16;    /* 0x2A */
    u32      NextX;    /* 0x2C */
    u32      NextY;    /* 0x30 */
    u32      NextZ;    /* 0x34 */
    u16      NPCSprite;    /* 0x38 */
    u16      NPCSpriteUpdate;    /* 0x3A */
    u32      DeltaX;    /* 0x3C */
    union {    /* 0x40 (size 0x8) */
        struct {
            u32      DeltaY;    /* 0x40 */
            u32      DeltaZ;    /* 0x44 */
        } _u0;
        struct {
            u32      HopDelta;    /* 0x40 */
            u32      HopDeltaCompounded;    /* 0x44 */
        } _u1;
    } _union_0x40;
    void *   AnimationScriptPtr;    /* 0x48 */
    u32      Unk_50;    /* 0x4C */
    u32      Unk_54;    /* 0x50 */
    u32      Unk_58;    /* 0x54 */
    void *   UnkNPCScriptPtr_5c;    /* 0x58 */
    u32      UnkFlags_60;    /* 0x5C */
    u32      LayerPriorityOverride;    /* 0x60 */
    u32      HiddenOAMPieces;    /* 0x64 */
    u32      HiddenOAMPiecesUpdate;    /* 0x68 */
    u32      Unk_70;    /* 0x6C */
    u32      Unk_74;    /* 0x70 */
    u32      NPCSpriteCategory;    /* 0x74 */
    u32      Undetected_7c;    /* 0x78 */
    union {    /* 0x7C (size 0xC) */
        struct {
            u8       Unk_80;    /* 0x7C */
            u8       MovementDirectionReload;    /* 0x7D */
            u8       MovementSpeedReload;    /* 0x7E */
            u8       MovementDistanceReload;    /* 0x7F */
        } _u0;
        struct {
            u32      CutsceneVarIndexToWaitFor;    /* 0x7C */
            u32      CutsceneVarValueToWaitFor;    /* 0x80 */
        } _u1;
        struct {
            u32      MysteryDataId;    /* 0x7C */
        } _u2;
        struct {
            u8       NativeFunctionVars[0xC];    /* 0x7C */
        } _u3;
    } _union_0x7C;
    void *   LinkRegister;    /* 0x88 */
    void *   Chatbox_90;    /* 0x8C */
    void *   TextScriptPtr;    /* 0x90 */
    /* 0x94 SizeBeforeObjectSprite (zero-size marker) */
    /* nested: object_sprite_struct @ 0x94 — declare manually */
    /* 0x94 Size (zero-size marker) */
    /* 0x94 End (zero-size marker) */
} OverworldNPCObject;

#endif
