#include "EWRAM.h"

extern void reqBBS_addRequest_813F9A0_c(u32 flag);

/* Bulk-register 48 sequential reqBBS request flags starting at
   *(u32 *)0x0813FA50 (= 0x1B60).  The outer loop only iterates once
   in this build — the original ASM keeps the loop1 scaffolding,
   presumably because earlier revisions ranged over multiple bases. */
void sub_813FA24_c(void)
{
    u32 base = *(u32 *) 0x0813FA50u;
    u32 i;
    for (i = 0u; i < 48u; i++) {
        reqBBS_addRequest_813F9A0_c(base + i);
    }
}
