#include "EWRAM.h"

/* Initialises the +0x7C u32 of 8 slots at 0x02034080 (stride 0x100)
   with a walking 1-bit pattern starting at 0x80000000 and right-
   shifting each iteration.  Also zeros the u32 at 0x0203F6A0. */
void sub_800ED00_c(void)
{
    u32 i, mask = 0x80000000u;
    for (i = 0; i < 8u; i++) {
        *(u32 *)(0x02034080u + i * 0x100u + 0x7Cu) = mask;
        mask >>= 1;
    }
    *(u32 *) 0x0203F6A0u = 0u;
}
