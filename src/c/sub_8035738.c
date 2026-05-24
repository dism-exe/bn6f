#include "types.h"

extern u32 dword_2000DC0[];

// Walk up to 0x20 8-byte entries at dword_2000DC0. For each entry whose
// field-at-+4 is nonzero, decrement field-at-+0; if that field was
// already 0 (decrement goes negative), bail out of the entire loop.
void sub_8035738_c(void)
{
    u8 *p;
    u32 i;
    s32 v;

    p = (u8 *)dword_2000DC0;
    for (i = 0; i < 0x20u; i++) {
        if (*(u32 *)(p + 4) != 0u) {
            v = *(s32 *)p - 1;
            if (v < 0) {
                return;
            }
            *(s32 *)p = v;
        }
        p += 8;
    }
}
