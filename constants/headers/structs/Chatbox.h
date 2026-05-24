// Generated from include/structs/Chatbox.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_CHATBOX_H
#define BN6F_STRUCT_CHATBOX_H

#include "types.h"

// Parser warnings — review the source .inc:
//   line 64: unknown field type `TextScriptArchivePtr`
//   line 68: unparsed: u0 Und_3C_32

#define FLAGS_3E_UNK_0001 0x0001
#define FLAGS_3E_MUGSHOT_ACTIVE 0x0002
#define FLAGS_3E_UNK_0004 0x0004
#define FLAGS_3E_UNK_0008 0x0008
#define FLAGS_3E_UNK_0010 0x0010
#define FLAGS_3E_UNK_0020 0x0020
#define FLAGS_3E_UNK_0040 0x0040
#define FLAGS_3E_UNK_0080 0x0080
#define FLAGS_3E_HIDE_CHATBOX 0x0100
#define FLAGS_3E_UNK_0200 0x0200
#define FLAGS_3E_UNK_0400 0x0400
#define FLAGS_3E_UNK_0800 0x0800
#define FLAGS_3E_UNK_1000 0x1000

typedef struct Chatbox {
    u8       Visible;    /* 0x00 */
    u8       TextScriptIdx;    /* 0x01 */
    u8       CurrLine;    /* 0x02 */
    u8       Unk_03;    /* 0x03 */
    u8       TextScriptState_04;    /* 0x04 */
    u8       Unk_05;    /* 0x05 */
    u8       Und_06;    /* 0x06 */
    u8       MugshotPaletteIdx;    /* 0x07 */
    u8       TextScriptPrintSpeed;    /* 0x08 */
    u8       CharInPrint;    /* 0x09 */
    u8       Unk_0A;    /* 0x0A */
    u8       Unk_0B;    /* 0x0B */
    union {    /* 0x0C (size 0x2) */
        struct {
            u8       BoxY;    /* 0x0C */
            u8       BoxX;    /* 0x0D */
        } _u0;
        struct {
            u16      BoxYX;    /* 0x0C */
        } _u1;
    } _union_0xC;
    u8       Unk_0E;    /* 0x0E */
    u8       BoxGfxLoadState_0F;    /* 0x0F */
    u8       OpenState_10;    /* 0x10 */
    u8       JumpTableOffset_11;    /* 0x11 */
    u8       Unk_12;    /* 0x12 */
    u8       ChoiceCursorPos;    /* 0x13 */
    u8       Unk_14;    /* 0x14 */
    u8       Unk_15;    /* 0x15 */
    u8       Unk_16;    /* 0x16 */
    u8       Unk_17;    /* 0x17 */
    u8       TextScriptCharIdx;    /* 0x18 */
    u8       Unk_19;    /* 0x19 */
    u8       CursorIdx;    /* 0x1A */
    u8       Unk_1B;    /* 0x1B */
    u8       CurTileXBlockPos;    /* 0x1C */
    u8       CurTileYBlockPos;    /* 0x1D */
    u8       CurTileWidth16;    /* 0x1E */
    u8       CurTileHeight16;    /* 0x1F */
    u16      Und_20;    /* 0x20 */
    u16      JoypadHeld;    /* 0x22 */
    u16      JoypadDown;    /* 0x24 */
    u16      JoypadUp;    /* 0x26 */
    u16      JoypadReleased;    /* 0x28 */
    u8       _pad_0x2A[0x2];
    void *   TextScriptCursorPtr;    /* 0x2C */
    void *   CurrTextScriptPtr;    /* 0x30 */
    u32      Unk_38;    /* 0x34 */
    u8       Und_3C;    /* 0x38 */
    u8       Unk_3D;    /* 0x39 */
    u16      flags_3E;    /* 0x3A */
    u32      MugshotColorFilter_40;    /* 0x3C */
    u32      Unk_44;    /* 0x40 */
    u32      Und_48;    /* 0x44 */
    u32      Unk_4C;    /* 0x48 */
    u32      Unk_50;    /* 0x4C */
    u32      Unk_54;    /* 0x50 */
    u32      Unk_58;    /* 0x54 */
    u8       _pad_0x58[0xC];
    u16      Unk_64;    /* 0x64 */
    u16      Und_66;    /* 0x66 */
    u16      Unk_68;    /* 0x68 */
    u16      Unk_6A;    /* 0x6A */
    u16      Unk_6C;    /* 0x6C */
    u16      Unk_6E;    /* 0x6E */
    u32      Unk_70;    /* 0x70 */
    u32      Unk_74;    /* 0x74 */
    u32      Unk_78;    /* 0x78 */
    u32      Unk_7C;    /* 0x7C */
    u8       Unk_80;    /* 0x80 */
    u8       _pad_0x81[0x3];
    u32      Unk_84;    /* 0x84 */
    u32      Unk_88;    /* 0x88 */
    u32      Und_8C;    /* 0x8C */
    u32      Unk_90;    /* 0x90 */
    u8       Unk_94;    /* 0x94 */
    u8       _pad_0x95[0x7];
    u8       Unk_9c;    /* 0x9C */
    u8       _pad_0x9D[0x193];
    /* 0x230 Size (zero-size marker) */
} Chatbox;

#endif
