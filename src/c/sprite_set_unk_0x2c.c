#include "types.h"

// r5 = ambient ObjectHeader*; r0 = u32 stored at sprite Unk_2c.
void sprite_setUnk0x2c_c(u32 val)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0);
    *(u32 *)(spr + 0x2c) = val;
}
