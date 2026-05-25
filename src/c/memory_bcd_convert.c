#include "EWRAM.h"

/* Convert a value in [0, 99_999_999] to 8-nibble BCD.  Values
   outside that range short-circuit to 0x99999999 (the max BCD
   representation).  Powers of 10 are walked from 10^7 down to 10^0;
   for each power, we subtract while it fits and accumulate the
   quotient into the next nibble of the result. */
u32 memory_bcdConvert_c(u32 val)
{
    static const u32 powers[8] = {
        10000000u, 1000000u, 100000u, 10000u,
        1000u, 100u, 10u, 1u,
    };
    s32 v;
    u32 result;
    u32 i;

    if ((s32)val >= (s32)0x05F5E0FFu) {
        return 0x99999999u;
    }
    v = (s32)val;
    result = 0u;
    for (i = 0u; i < 8u; i++) {
        s32 p = (s32)powers[i];
        u32 q = 0u;
        result <<= 4;
        while (v >= p) {
            v -= p;
            q++;
        }
        result |= q;
    }
    return result;
}
