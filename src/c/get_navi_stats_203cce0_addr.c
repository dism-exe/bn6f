#include "EWRAM.h"

u32 GetNaviStats203CCE0Addr_c(u32 idx)
{
    return 0x0203CCE0u + idx * 100u;
}
