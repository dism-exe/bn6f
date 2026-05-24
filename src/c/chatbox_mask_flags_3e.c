#include "types.h"

// r5 = ambient Chatbox*. Returns r0 & Chatbox.flags_3E (halfword at 0x3E).
// Flag-wrapped: callers `bl ...; beq/bne ...` get Z = (result == 0).
u32 chatbox_maskFlags_3e_impl(u32 mask)
{
    register u8 *r5p asm("r5");
    asm volatile("" : "=r"(r5p));

    return mask & (u32)(*(u16 *)(r5p + 0x3E));
}

DECOMP_FLAG_WRAPPER(chatbox_maskFlags_3e_c, chatbox_maskFlags_3e_impl)
