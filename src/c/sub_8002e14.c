#include "types.h"

// r5 = ambient ObjectHeader*; r0 = 2-bit value to splice into bits 2..3
// of sprite Unk_15.
void sub_8002E14_c(u32 val)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    u8 v;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0);
    v = spr[0x15];
    v &= ~0x0C;
    v |= (u8)((val << 2) & 0x0C);
    spr[0x15] = v;
}
