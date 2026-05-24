#include "types.h"

extern u16 word_800B128[];
extern void encryption_applyPack_8006e70_c(u32 idx);

// Walks a zero-terminated u16 array at word_800B128; calls
// encryption_applyPack_8006e70 with each id.
void sub_800B110_c(void)
{
    u16 *p = word_800B128;
    while (*p != 0u) {
        encryption_applyPack_8006e70_c((u32)*p);
        p++;
    }
}
