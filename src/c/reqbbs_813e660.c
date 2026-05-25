#include "EWRAM.h"

extern void reqBBS_addBBSMessage_813e5dc_c(u32 flag);

/* For each of the 6 base flags in byte_813E68C (0x17A0, 0x17E0,
   0x1820, 0x1860, 0x18A0, 0x18E0), call reqBBS_addBBSMessage
   with base + offset for offset in 0..30 — adding 6 * 31 = 186
   BBS-message slots in total. */
void reqBBS_813E660_c(void)
{
    u32 *bases = (u32 *) 0x0813E68Cu;
    u32 bi, oi;
    for (bi = 0; bi < 6u; bi++) {
        u32 base = bases[bi];
        for (oi = 0; oi < 31u; oi++) {
            reqBBS_addBBSMessage_813e5dc_c(base + oi);
        }
    }
}
