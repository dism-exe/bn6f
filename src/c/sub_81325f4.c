#include "EWRAM.h"

/* ROM byte LUT at 0x08132600 (sibling of sub_81325E4). */
u32 sub_81325F4_c(u32 idx)
{
    return ((u8 *) 0x08132600u)[idx];
}
