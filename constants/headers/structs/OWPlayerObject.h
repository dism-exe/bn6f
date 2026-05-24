// Generated from include/structs/OverworldPlayerObject.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_OWPLAYEROBJECT_H
#define BN6F_STRUCT_OWPLAYEROBJECT_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 69: unparsed: object_header_struct \struct_entry, \set_struct_start_addres

typedef struct OWPlayerObject {
    /* nested: object_header_struct @ 0x00 — declare manually */
    u8       Unk_04;    /* 0x00 */
    u8       _pad_0x01[0x6];
    u8       Unk_07;    /* 0x07 */
    u8       Unk_08;    /* 0x08 */
    u8       JumptableIndex_09;    /* 0x09 */
    u8       Unk_0a;    /* 0x0A */
    u8       Unk_0b;    /* 0x0B */
    u8       wallCollision_0c;    /* 0x0C */
    u8       Unk_0d;    /* 0x0D */
    u8       Unk_0e;    /* 0x0E */
    u8       Unk_0f;    /* 0x0F */
    u8       FacingDirection;    /* 0x10 */
    u8       Unk_11;    /* 0x11 */
    u8       _pad_0x12[0x1];
    u8       Unk_13;    /* 0x13 */
    u8       AnimationSelect;    /* 0x14 */
    u8       AnimationSelectUpdate;    /* 0x15 */
    u8       LayerIndexOverride;    /* 0x16 */
    u8       InteractionLocked;    /* 0x17 */
    u16      Unk_18;    /* 0x18 */
    u8       _pad_0x1A[0x2];
    /* 0x1C Coords (zero-size marker) */
    u32      X;    /* 0x1C */
    u32      Y;    /* 0x20 */
    u32      Z;    /* 0x24 */
    u32      NextX;    /* 0x28 */
    u32      NextY;    /* 0x2C */
    u32      NextZ;    /* 0x30 */
    u32      Unk_34;    /* 0x34 */
    u32      Unk_38;    /* 0x38 */
    u32      Unk_3c;    /* 0x3C */
    u32      Unk_40;    /* 0x40 */
    u32      Unk_44;    /* 0x44 */
    u32      Unk_48;    /* 0x48 */
    u16      Unk_4c;    /* 0x4C */
    u8       _pad_0x4E[0x2];
    u32      Unk_50;    /* 0x50 */
    u8       _pad_0x54[0x4];
    u32      interactedNPCObject_58;    /* 0x58 */
    u8       _pad_0x5C[0x16];
    u16      Unk_72;    /* 0x72 */
    u16      Unk_74;    /* 0x74 */
    u16      Unk_76;    /* 0x76 */
    u8       _pad_0x78[0x18];
    /* nested: object_sprite_struct @ 0x90 — declare manually */
    /* 0x90 Size (zero-size marker) */
    u8       WalkingSpeed;    /* 0x90 */
    u8       WalkingTimer;    /* 0x91 */
    u8       Undetected_06;    /* 0x92 */
    u8       Unk_07_at_0x93;    /* 0x93 */
    u8       Unk_08_MainJumptableIndex;    /* 0x94 */
    u8       MovementFlag_09;    /* 0x95 */
    u8       MovementFlag_0a;    /* 0x96 */
    u8       Unk_0b_at_0x97;    /* 0x97 */
    u8       Unk_0c;    /* 0x98 */
    u8       Unk_0d_at_0x99;    /* 0x99 */
    u8       Unk_0e_at_0x9A;    /* 0x9A */
    u8       Unk_0f_at_0x9B;    /* 0x9B */
    u8       Unk_10;    /* 0x9C */
    u8       Unk_11_at_0x9D;    /* 0x9D */
    u8       Unk_12;    /* 0x9E */
    u8       Unk_13_at_0x9F;    /* 0x9F */
    u8       AnimationSelect_at_0xA0;    /* 0xA0 */
    u8       AnimationSelectUpdate_at_0xA1;    /* 0xA1 */
    u8       PaletteIndex;    /* 0xA2 */
    u8       InteractionLocked_at_0xA3;    /* 0xA3 */
    u8       ChatTriggered;    /* 0xA4 */
    u8       TerminateScript_19;    /* 0xA5 */
    u8       Undetected_1a;    /* 0xA6 */
    u8       Undetected_1b;    /* 0xA7 */
    u8       TextScriptIndex;    /* 0xA8 */
    u8       Unk_1d;    /* 0xA9 */
    u8       Unk_1e;    /* 0xAA */
    u8       TerminateScript_1f;    /* 0xAB */
    u16      AnimationTimer;    /* 0xAC */
    u16      Timer_20;    /* 0xAE */
    u32      X_at_0xB0;    /* 0xB0 */
    u32      Y_at_0xB4;    /* 0xB4 */
    u32      Z_at_0xB8;    /* 0xB8 */
    u32      NextX_at_0xBC;    /* 0xBC */
    u32      NextY_at_0xC0;    /* 0xC0 */
    u32      NextZ_at_0xC4;    /* 0xC4 */
    u16      NPCSprite;    /* 0xC8 */
    u16      NPCSpriteUpdate;    /* 0xCA */
    u32      DeltaX;    /* 0xCC */
    u32      DeltaY;    /* 0xD0 */
    u32      DeltaZ;    /* 0xD4 */
    void *   AnimationScriptPtr;    /* 0xD8 */
    u32      Unk_50_at_0xDC;    /* 0xDC */
    u32      Unk_54;    /* 0xE0 */
    u32      Unk_58;    /* 0xE4 */
    void *   UnkNPCScriptPtr_5c;    /* 0xE8 */
    u32      UnkFlags_60;    /* 0xEC */
    u32      Unk_64;    /* 0xF0 */
    u32      Flags_68;    /* 0xF4 */
    u32      Flags_68_Update;    /* 0xF8 */
    u32      Unk_70;    /* 0xFC */
    u32      Unk_74_at_0x100;    /* 0x100 */
    u32      Unk_78;    /* 0x104 */
    u32      Undetected_7c;    /* 0x108 */
    u8       Unk_80;    /* 0x10C */
    u8       Unk_81;    /* 0x10D */
    u8       WalkingSpeedReload;    /* 0x10E */
    u8       WalkingTimerReload;    /* 0x10F */
    u32      Unk_84;    /* 0x110 */
    u32      Undetected_88;    /* 0x114 */
    u32      Undetected_8c;    /* 0x118 */
    void *   Chatbox_90;    /* 0x11C */
    void *   TextScriptPtr;    /* 0x120 */
    /* 0x124 SpriteData (zero-size marker) */
    /* nested: object_sprite_struct @ 0x124 — declare manually */
    /* 0x124 Size (zero-size marker) */
    /* 0x124 End (zero-size marker) */
} OWPlayerObject;

#endif
