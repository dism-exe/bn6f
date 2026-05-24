#include "types.h"

// r5 = ambient ObjectSprite* (within an ObjectHeader). Initialises
// the sprite block: Unk_18 = arg + 4, Unk_28 = 0xFFFFFFFF, Unk_15/16
// = 8, every other Unk field = 0.
void sprite_initialize_c(u32 src_ptr)
{
    register u8 *r5p asm("r5");
    asm volatile("" : "=r"(r5p));

    *(u32 *)(r5p + 0x18) = src_ptr + 4u;
    r5p[0x03] = 0;
    r5p[0x00] = 0;
    *(u32 *)(r5p + 0x24) = 0u;
    r5p[0x04] = 0;
    *(u16 *)(r5p + 0x0A) = 0;
    *(u16 *)(r5p + 0x06) = 0;
    *(u32 *)(r5p + 0x2C) = 0u;
    *(u16 *)(r5p + 0x10) = 0;
    *(u16 *)(r5p + 0x12) = 0;
    r5p[0x14] = 0;
    r5p[0x05] = 0;
    *(u32 *)(r5p + 0x30) = 0u;
    *(u32 *)(r5p + 0x34) = 0u;
    *(u32 *)(r5p + 0x28) = 0xFFFFFFFFu;
    r5p[0x15] = 8;
    *(u16 *)(r5p + 0x16) = 8;
}
