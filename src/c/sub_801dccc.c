#include "types.h"

/* r5 = ambient BattleObject*.  Search the 4-entry, 0x14-stride table
 * at 0x0203EB50: find the entry whose byte +0 has bit 0 set and whose
 * u32 +0xc equals `bo`; on hit, write `a` to +4 and `b` to +5 and
 * return 0.  Returns 1 if no entry matches. */
u32 sub_801DCCC_c(u32 a, u32 b)
{
    register u8 *r5p asm("r5");
    u8 *bo;
    u8 *p;
    s32 n;

    asm volatile("" : "=r"(r5p));
    bo = r5p;

    p = (u8 *) 0x0203EB50u;
    n = 4;
    do {
        if ((p[0] & 1u) != 0u && *(u8 **)(p + 0xc) == bo) {
            p[4] = (u8)a;
            p[5] = (u8)b;
            return 0u;
        }
        p += 0x14u;
        n--;
    } while (n != 0);
    return 1u;
}
