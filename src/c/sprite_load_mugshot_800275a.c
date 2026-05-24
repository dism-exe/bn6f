#include "types.h"

extern u8 *mugshotSpritePtrs[];
extern void sprite_initialize_c(u32 src_ptr);

// r5 = ambient ObjectSprite*. Calls sprite_initialize on the
// mugshot pointer for `idx`, then sets sprite Unk_16 = 0x80.
void spriteLoadMugshot_800275A_c(u32 idx)
{
    register u8 *r5p asm("r5");
    asm volatile("" : "=r"(r5p));

    sprite_initialize_c((u32)mugshotSpritePtrs[idx]);
    *(u16 *)(r5p + 0x16) = 0x80;
}
