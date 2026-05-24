// Generated from include/structs/StartScreen.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_STARTSCREEN_H
#define BN6F_STRUCT_STARTSCREEN_H

#include "types.h"

typedef struct StartScreen {
    /* 0x00 Unk_00 (zero-size marker) */
    u8       JumpTableOff_00;    /* 0x00 */
    u8       JumpTableOff_01;    /* 0x01 */
    u8       Unk_02;    /* 0x02 */
    u8       Unk_03;    /* 0x03 */
    u16      LogoShowTimer;    /* 0x04 */
    u8       Unk_06;    /* 0x06 */
    u8       Unk_07;    /* 0x07 */
    u8       CurrCursorPos;    /* 0x08 */
    u8       NumChoices;    /* 0x09 */
    u16      AchievmentFlags;    /* 0x0A */
    u8       Unk_0C;    /* 0x0C */
    u8       Und_0D;    /* 0x0D */
    u8       Unk_0E;    /* 0x0E */
    u8       Unk_0F;    /* 0x0F */
    u8       _pad_0x10[0x10];
    /* 0x20 Size (zero-size marker) */
} StartScreen;

#endif
