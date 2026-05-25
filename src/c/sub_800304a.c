#include "types.h"

/* r5 = ambient ObjectHeader*.
 *
 *   spr[Unk_15]: clear high nibble (mask 0xF0), OR in (val << 4).
 */
void sub_800304A_c(u32 val)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0u);
    spr[0x15] = (u8)((spr[0x15] & ~0xF0u) | (val << 4));
}
