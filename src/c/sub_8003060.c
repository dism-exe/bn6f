#include "types.h"

/* r5 = ambient ObjectHeader*; store `val` as a byte at sprite +0xa. */
void sub_8003060_c(u32 val)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    asm volatile("" : "=r"(r5p));
    spr = r5p + (r5p[2] & 0xF0u);
    spr[0xa] = (u8)val;
}
