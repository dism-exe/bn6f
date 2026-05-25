#include "EWRAM.h"

extern u32 GetPositiveSignedRNG_c(void);

/* Random element from a per-idx 7-hword table at 0x080211A0
   (stride 16).  Reads the entry at index `rng & 0x0E` (i.e.,
   even slots 0..14). */
u32 sub_80DA9FE_c(u32 idx)
{
    u16 *row = (u16 *)(0x080211A0u + (idx << 4));
    u32 rng = GetPositiveSignedRNG_c() & 0x0Eu;
    return *(u16 *)((u8 *)row + rng);
}
