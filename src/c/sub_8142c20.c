#include "types.h"

/* Count entries in the 20-entry, 8-stride table at 0x02006670 whose
 * byte +6 equals `match` and whose hword +4 is non-zero.  The
 * trailing `tst r0, r0` in the original is a no-op (sets flags for
 * the immediate caller — there are no flag-dependent callers). */
u32 sub_8142C20_c(u32 match)
{
    u8 *p;
    u32 count;
    s32 i;

    p = (u8 *) 0x02006670u;
    count = 0u;
    for (i = 0; i < 0x14; i++) {
        if (*(u16 *)(p + 4) != 0u && p[6] == (u8)match) count++;
        p += 8u;
    }
    return count;
}
