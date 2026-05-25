#include "EWRAM.h"

void sub_800B460_c(void)
{
    *(u32 *) 0x0203F4A0u = 0u;
    *(u32 *) 0x0203F5A0u = 0u;
}
