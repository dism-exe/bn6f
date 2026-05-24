#include "types.h"

// r10 = Toolkit*. Returns key & Joypad.Pressed. Flag-wrapped so callers
// can do `bl ...; beq/bne ...`.
// Toolkit.JoypadPtr = 0x04; Joypad.Pressed = 0x02 (halfword).
u32 IsButtonPressed_impl(u32 key)
{
    register u8 *r10p asm("r10");
    u8 *jp;
    asm volatile("" : "=r"(r10p));

    jp = *(u8 **)(r10p + 0x04);
    return key & (u32)(*(u16 *)(jp + 0x02));
}

DECOMP_FLAG_WRAPPER(IsButtonPressed_c, IsButtonPressed_impl)
