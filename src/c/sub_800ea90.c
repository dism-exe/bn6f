#include "types.h"

/* r5 = ambient BattleObject*.  Halve-and-redistribute over the 6
 * u16s at CollisionData[+0x82..+0x8d]:
 *
 *     orig = CollisionData[+0x80]
 *     for each slot at +0x82..+0x8c:
 *         v = (CollisionData[slot] + 1) >> 1   (round-up halve)
 *         CollisionData[slot] = v
 *         orig -= v
 *     CollisionData[+0x80] = orig
 *
 * Returns 1 if the remaining `orig` equals the original (no slots
 * had non-zero rounded-halves), else 0.
 */
u32 sub_800EA90_c(void)
{
    register u8 *r5p asm("r5");
    u8 *cd;
    u16 orig;
    u16 left;
    u32 off;

    asm volatile("" : "=r"(r5p));
    cd = *(u8 **)(r5p + 0x54);
    orig = *(u16 *)(cd + 0x80);
    left = orig;
    for (off = 0x82u; off != 0x8cu; off += 2u) {
        u16 v = (u16)((*(u16 *)(cd + off) + 1u) >> 1);
        *(u16 *)(cd + off) = v;
        left = (u16)(left - v);
    }
    *(u16 *)(cd + 0x80) = left;
    return (left == orig) ? 1u : 0u;
}
