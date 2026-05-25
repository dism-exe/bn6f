#include "types.h"

/* r5 = ambient ObjectHeader*; store `val` as a hword at sprite +8
 * and zero the u32 at sprite +0x24. */
void sub_800306C_c(u32 val)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    asm volatile("" : "=r"(r5p));
    spr = r5p + (r5p[2] & 0xF0u);
    *(u16 *)(spr + 8) = (u16)val;
    *(u32 *)(spr + 0x24) = 0u;
}
