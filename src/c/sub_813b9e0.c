#include "types.h"

extern u32 *off_813B9F0[];   // 1-entry table: { (u32*)byte_813B1EC }

// Treats off_813B9F0 as a pointer table and returns table[idx].
// In practice only idx == 0 is in-bounds; higher indices read past
// the 1-entry table.
u32 sub_813B9E0_c(u32 idx)
{
    return (u32)off_813B9F0[idx];
}
