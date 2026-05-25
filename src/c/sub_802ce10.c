#include "types.h"

/* r5 = ambient BattleObject*.
 *
 *   p = 0x0203CFB0 (friend half) or +0xC (enemy half), chosen by
 *       BO.Alliance.
 *
 *   - If BO is the "tracked" object (p[8] points at it), return
 *     dmg + p[2] (running running total — note the hword is *not*
 *     written back; the value lives only in the return register).
 *   - Otherwise: if dmg > p[0] (current max) update p[0] = dmg, and
 *     return dmg unchanged.
 */
u32 sub_802CE10_c(u32 dmg)
{
    register u8 *r5p asm("r5");
    u8 *bo;
    u8 *p;
    u16 max_v;

    asm volatile("" : "=r"(r5p));
    bo = r5p;

    p = (u8 *) 0x0203CFB0u;
    if (bo[0x16] != 0u) p += 0xCu;

    if (bo == *(u8 **)(p + 8)) {
        return dmg + (u32) *(u16 *)(p + 2);
    }
    max_v = *(u16 *)p;
    if (dmg > (u32)max_v) {
        *(u16 *)p = (u16)dmg;
    }
    return dmg;
}
