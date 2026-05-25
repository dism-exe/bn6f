#include "types.h"

/* r5 = ambient BO*.  Variant of sub_810F090:
 *
 *   - if BO.CurAction == 0xb, no-op.
 *   - else sum the 5 u16s at CollisionData[+0x82..+0x8a]; if
 *     non-zero, set ExtraVars[0] (word at +0x60) = 1.
 */
void sub_81129EE_c(void)
{
    register u8 *r5p asm("r5");
    u8 *bo;
    u8 *cd;
    u32 sum;

    asm volatile("" : "=r"(r5p));
    bo = r5p;

    if (bo[0x9] == 0xbu) return;

    cd = *(u8 **)(bo + 0x54);
    sum  = *(u16 *)(cd + 0x82);
    sum += *(u16 *)(cd + 0x84);
    sum += *(u16 *)(cd + 0x86);
    sum += *(u16 *)(cd + 0x88);
    sum += *(u16 *)(cd + 0x8a);
    if (sum == 0u) return;
    *(u32 *)(bo + 0x60) = 1u;
}
