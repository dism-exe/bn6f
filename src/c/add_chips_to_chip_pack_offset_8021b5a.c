#include "types.h"

// Returns r3 (status) and mutates *p (byte at the offset). r1 is unused
// by the body. Status: 0 = added, 1 = already at cap (99), 2 = clamped
// to 99 from add.
u32 addChipsToChipPackOffset_8021b5a_c(u8 *p, u32 r1, u32 add_qty)
{
    u8 v = *p;
    u32 status;

    (void)r1;
    if (v == 99u) {
        status = 1u;
    } else {
        v = (u8)(v + (u8)add_qty);
        if (v <= 99u) {
            status = 0u;
        } else {
            v = 99u;
            status = 2u;
        }
    }
    *p = v;
    return status;
}
