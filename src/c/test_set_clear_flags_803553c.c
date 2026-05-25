#include "EWRAM.h"

extern u32  clearSetFlags_80355a8_c(void);
extern u32  TestEventFlag_c(u32 flag);
extern void SetEventFlag_c(u32 flag);
extern void ClearEventFlag_c(u32 flag);

/* Five copy-on-set rules followed by a single clear, with a
   bookkeeping pass at the top.  The ASM uses the
   `TestEventFlagFromImmediate(high, low)` form throughout — we
   inline the (high << 8) | low packing because there's no C
   helper for the FromImmediate variants. */
u32 testSetClearFlags_803553c_c(void)
{
    clearSetFlags_80355a8_c();

    if (TestEventFlag_c(0x067Bu)) SetEventFlag_c(0x0682u);
    if (TestEventFlag_c(0x0856u)) SetEventFlag_c(0x085Fu);
    if (TestEventFlag_c(0x0A44u)) SetEventFlag_c(0x0ABAu);
    if (TestEventFlag_c(0x0C6Du)) SetEventFlag_c(0x0CDCu);
    if (TestEventFlag_c(0x0CA7u)) SetEventFlag_c(0x0CE0u);

    ClearEventFlag_c(0x0120u);
    return 0u;
}
