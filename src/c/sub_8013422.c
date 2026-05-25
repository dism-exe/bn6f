#include "EWRAM.h"

extern void initNaviStats_WithDefaultStatsMaybe_8013438_c(u8 *stats);

/* Resolves the navi-stats slot for `idx` (at 0x0203CE00 + idx*100)
   and forwards it to the initializer. */
void sub_8013422_c(u32 idx)
{
    initNaviStats_WithDefaultStatsMaybe_8013438_c(
        (u8 *)(0x0203CE00u + idx * 100u));
}
