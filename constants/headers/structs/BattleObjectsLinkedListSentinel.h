// Generated from include/structs/BattleObject.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_BATTLEOBJECTSLINKEDLISTSENTINEL_H
#define BN6F_STRUCT_BATTLEOBJECTSLINKEDLISTSENTINEL_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 8: unparsed: u0 Size
//   line 139: unparsed: u32 XVelocity,
//   line 140: unparsed: u32 YVelocity,
//   line 141: unparsed: u32 ZVelocity,
//   line 147: unparsed: u8_arr ExtraVars, \extra_vars_size

#define CUR_STATE_INITIALIZE 0x00
#define CUR_STATE_UPDATE 0x04
#define CUR_STATE_DESTROY 0x08
#define DAMAGE_DOUBLE 0x8000
#define DAMAGE_PARALYZE 0x4000
#define DAMAGE_UNINSTALL 0x2000
#define DAMAGE_ERASECROSS_SKULL_HIT 0x1000
#define DAMAGE_NOTHING 0x0800

typedef struct BattleObjectsLinkedListSentinel {
    void *   Prev;    /* 0x00 */
    void *   Next;    /* 0x04 */
    /* nested: battle_object_linked_list_struct @ 0x08 — declare manually */
    /* nested: object_header_struct @ 0x08 — declare manually */
    union {    /* 0x08 (size 0x4) */
        struct {
            u32      Params;    /* 0x08 */
        } _u0;
        struct {
            u8       Param1;    /* 0x08 */
            u8       Param2;    /* 0x09 */
            u8       Param3;    /* 0x0A */
            u8       Param4;    /* 0x0B */
        } _u1;
    } _union_0x8;
    union {    /* 0x0C (size 0x4) */
        struct {
            u8       CurState;    /* 0x0C */
            u8       CurAction;    /* 0x0D */
            u8       CurPhase;    /* 0x0E */
            u8       PhaseInitialized;    /* 0x0F */
        } _u0;
        struct {
            u16      CurState_CurAction;    /* 0x0C */
            u16      CurPhaseAndPhaseInitialized;    /* 0x0E */
        } _u1;
        struct {
            u32      CurStateActionPhaseAndPhaseInitialized;    /* 0x0C */
        } _u2;
    } _union_0xC;
    u8       Unk_0c;    /* 0x10 */
    u8       Unk_0d;    /* 0x11 */
    u8       Element;    /* 0x12 */
    u8       Unk_0f;    /* 0x13 */
    union {    /* 0x14 (size 0x2) */
        struct {
            u8       CurAnim;    /* 0x14 */
            u8       CurAnimCopy;    /* 0x15 */
        } _u0;
        struct {
            u16      CurAnimAndCurAnimCopy;    /* 0x14 */
        } _u1;
    } _union_0x14;
    union {    /* 0x16 (size 0x2) */
        struct {
            u8       PanelX;    /* 0x16 */
            u8       PanelY;    /* 0x17 */
        } _u0;
        struct {
            u16      PanelXY;    /* 0x16 */
        } _u1;
    } _union_0x16;
    union {    /* 0x18 (size 0x2) */
        struct {
            u8       FuturePanelX;    /* 0x18 */
            u8       FuturePanelY;    /* 0x19 */
        } _u0;
        struct {
            u16      FuturePanelXY;    /* 0x18 */
        } _u1;
    } _union_0x18;
    union {    /* 0x1A (size 0x2) */
        struct {
            u8       Alliance;    /* 0x1A */
            u8       DirectionFlip;    /* 0x1B */
        } _u0;
        struct {
            u16      AllianceAndDirectionFlip;    /* 0x1A */
        } _u1;
    } _union_0x1A;
    u8       PreventAnim;    /* 0x1C */
    u8       Unk_19;    /* 0x1D */
    u8       ChipsHeld;    /* 0x1E */
    u8       Unk_1b;    /* 0x1F */
    u8       Unk_1c;    /* 0x20 */
    u8       Unk_1d;    /* 0x21 */
    union {    /* 0x22 (size 0x2) */
        struct {
            u8       Unk_1e;    /* 0x22 */
            u8       Unk_1f;    /* 0x23 */
        } _u0;
        struct {
            u16      Unk_1e_Unk_1f;    /* 0x22 */
        } _u1;
    } _union_0x22;
    union {    /* 0x24 (size 0x4) */
        struct {
            u16      Timer;    /* 0x24 */
            u16      Timer2;    /* 0x26 */
        } _u0;
        struct {
            u32      TimerAndTimer2;    /* 0x24 */
        } _u1;
    } _union_0x24;
    u16      HP;    /* 0x28 */
    u16      MaxHP;    /* 0x2A */
    union {    /* 0x2C (size 0x4) */
        struct {
            u16      NameID;    /* 0x2C */
            u16      Chip;    /* 0x2E */
        } _u0;
        struct {
            u32      NameIDAndChip;    /* 0x2C */
        } _u1;
    } _union_0x2C;
    union {    /* 0x30 (size 0x4) */
        struct {
            u16      Damage;    /* 0x30 */
            u16      StaminaDamageCounterDisabler;    /* 0x32 */
        } _u0;
        struct {
            u32      DamageAndStaminaDamageCounterDisabler;    /* 0x30 */
        } _u1;
    } _union_0x30;
    u16      Unk_30;    /* 0x34 */
    u16      Unk_32;    /* 0x36 */
    /* 0x38 Coords (zero-size marker) */
    u16      X;    /* 0x38 */
    u16      X16;    /* 0x3A */
    u16      Y;    /* 0x3C */
    u16      Y16;    /* 0x3E */
    /* 0x40 Z_3c (zero-size marker) */
    u16      Z;    /* 0x40 */
    u16      Z16;    /* 0x42 */
    void *   RelatedObject1Ptr;    /* 0x44 */
    void *   RelatedObject2Ptr;    /* 0x48 */
    void *   CollisionDataPtr;    /* 0x4C */
    void *   AIDataPtr;    /* 0x50 */
    u32      Unk_5c;    /* 0x54 */
    /* 0x58 SizeWithoutSpriteDataAndLinkedList (zero-size marker) */
    /* nested: object_sprite_struct @ 0x58 — declare manually */
    /* 0x58 SizeWithoutLinkedList (zero-size marker) */
    /* 0x58 End (zero-size marker) */
    /* nested: battle_object_struct @ 0x58 — declare manually */
    /* nested: battle_object_struct @ 0x58 — declare manually */
    /* nested: battle_object_struct @ 0x58 — declare manually */
} BattleObjectsLinkedListSentinel;

#endif
