#include "types.h"

#define eToolkit_EventFlagsPtr (*(u16 **)0x020093F4u)

extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

void sub_802F0C4_c(void)
{
    ZeroFillByHalfword_c(eToolkit_EventFlagsPtr, 0x4EC);  // 630 * 2 bytes
}
