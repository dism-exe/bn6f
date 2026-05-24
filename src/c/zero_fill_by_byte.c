#include "types.h"

// Zero-fill specialization of ByteFill (backwards byte fill with 0).
// Original ASM: `sub r1, #1; strb r2, [r0,r1]; bne loop` — note it
// undershoots if called with count=0 (writes at offset -1, infinite
// loop). We preserve that behavior; callers must pass count > 0.
//
// Args: r0=dst, r1=byte_count.
void ZeroFillByByte_c(u8 *dst, u32 byte_count)
{
    do {
        byte_count--;
        dst[byte_count] = 0;
    } while (byte_count != 0);
}
