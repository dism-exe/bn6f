#include "EWRAM.h"

/* Returns address of NaviStats slot for navi index r0.  Table base
   is 0x0203CE00, slot stride is 100 bytes. */
u32 GetBattleNaviStatsAddr_c(u32 idx)
{
    return 0x0203CE00u + idx * 100u;
}
