#include "types.h"

/* r5 = ambient ObjectHeader*.
 *
 *   - sprite[Unk_16]: clear bits 2..3, OR in (val << 2)
 *   - sprite[Unk_03]: OR in 0x40
 */
void sub_800302A_c(u32 val)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0u);
    spr[0x16] = (u8)((spr[0x16] & ~0xCu) | (val << 2));
    spr[0x03] = (u8)(spr[0x03] | 0x40u);
}
