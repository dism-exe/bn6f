#include "EWRAM.h"

/* ROM byte LUT at 0x08043CA4; this just returns byte_8043CA4[idx]. */
u32 chatbox_8045ED0_c(u32 idx)
{
    return ((u8 *) 0x08043CA4u)[idx];
}
