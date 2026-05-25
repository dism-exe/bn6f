#include "EWRAM.h"

/* Panel-alliance state table at 0x02034010, stride 8 bytes; field
   at +6 is the countdown timer (u16).  "Long" sets it to 0x0708
   (~30s @ 60fps); "Short" sets it to 1 (one-frame). */

void object_setPanelAllianceTimerLong_c(u32 idx)
{
    *(u16 *)(0x02034010u + idx * 8u + 6u) = 0x0708u;
}

void object_setPanelAllianceTimerShort_c(u32 idx)
{
    *(u16 *)(0x02034010u + idx * 8u + 6u) = 1u;
}
