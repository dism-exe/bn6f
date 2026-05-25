#include "types.h"

/* r5 = ambient BO*.  If any of the 5 u16s at CollisionData[+0x82..
 * +0x8a] are non-zero AND ExtraVars[0] (word at +0x60) isn't 2, set
 * ExtraVars[1] (word at +0x64) = 1. */
void sub_810F090_c(void)
{
    register u8 *r5p asm("r5");
    u8 *bo;
    u8 *cd;
    u32 sum;

    asm volatile("" : "=r"(r5p));
    bo = r5p;

    cd = *(u8 **)(bo + 0x54);
    sum  = *(u16 *)(cd + 0x82);
    sum += *(u16 *)(cd + 0x84);
    sum += *(u16 *)(cd + 0x86);
    sum += *(u16 *)(cd + 0x88);
    sum += *(u16 *)(cd + 0x8a);
    if (sum == 0u) return;
    if (*(u32 *)(bo + 0x60) == 2u) return;
    *(u32 *)(bo + 0x64) = 1u;
}
