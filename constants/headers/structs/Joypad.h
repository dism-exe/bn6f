// Generated from include/structs/Joypad.inc by tools/struct_inc_to_h.py.
// DO NOT EDIT by hand — re-run the script after changing the .inc.

#ifndef BN6F_STRUCT_JOYPAD_H
#define BN6F_STRUCT_JOYPAD_H

#include "types.h"

typedef struct Joypad {
    u16      Held;    /* 0x00 */
    u16      Pressed;    /* 0x02 */
    u16      LowSensitivityHeld;    /* 0x04 */
    u16      Held2;    /* 0x06 */
    u8       AHeldTimer;    /* 0x08 */
    u8       BHeldTimer;    /* 0x09 */
    u8       SelectHeldTimer;    /* 0x0A */
    u8       StartHeldTimer;    /* 0x0B */
    u8       RightHeldTimer;    /* 0x0C */
    u8       LeftHeldTimer;    /* 0x0D */
    u8       UpHeldTimer;    /* 0x0E */
    u8       DownHeldTimer;    /* 0x0F */
    u8       RHeldTimer;    /* 0x10 */
    u8       LHeldTimer;    /* 0x11 */
    u8       Undetected_12;    /* 0x12 */
    u8       LowSensitivityTimer;    /* 0x13 */
    /* 0x14 Size (zero-size marker) */
} Joypad;

#endif
