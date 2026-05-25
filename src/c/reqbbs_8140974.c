#include "EWRAM.h"

/* Returns sReqBBS_GUI[0x0F]. */
u32 reqBBS_8140974_c(void)
{
    return ((u8 *) sReqBBS_GUI)[0x0F];
}
