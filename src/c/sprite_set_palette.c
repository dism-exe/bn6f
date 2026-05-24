#include "types.h"

// r5 = ambient ObjectHeader*; r0 = palette byte to write at sprite Unk_04.
void sprite_setPalette_c(u8 pal)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0);
    spr[4] = pal;
}
