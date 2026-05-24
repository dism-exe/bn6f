#include "EWRAM.h"

extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

// Wipes the EventFlags bitfield (630 halfwords = 0x4EC bytes).
void sub_802F0C4_c(void)
{
    ZeroFillByHalfword_c((u16 *)eToolkit->EventFlagsPtr, 0x4EC);
}
