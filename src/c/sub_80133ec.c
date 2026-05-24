#include "types.h"

extern u8 byte_801341B[];
extern void init_8013B4E_c(u32 structSel, u32 naviIdx);

// Calls init_8013B4E(i, byte_801341B[i]) for i in 0..7. The
// byte_801341B table is the navi-index list {0, 6, 7, 8, 9, 0xA, 0xB}.
void sub_80133EC_c(void)
{
    u32 i;
    for (i = 0u; i < 7u; i++) {
        init_8013B4E_c(i, (u32)byte_801341B[i]);
    }
}
