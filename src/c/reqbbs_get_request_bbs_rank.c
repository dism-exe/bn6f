#include "EWRAM.h"

/* Returns sReqBBS_GUI[0x0E] (the BBSRank byte at offset 0x0E). */
u32 reqBBS_getRequestBBSRank_c(void)
{
    return ((u8 *) sReqBBS_GUI)[0x0E];
}
