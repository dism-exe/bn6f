#include "types.h"

extern u8 byte_8047DA0[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);
extern void CopyBytes_c(const u8 *src, u8 *dst, u32 count);

// r10 = ambient Toolkit*. First zero 0xE80 bytes of ShopDataPtr, then
// for each active 8-byte record in byte_8047DA0 (byte[1] != 0), copy the
// whole 8 bytes through CopyBytes. Iterates 0xE80/8 = 464 records.
void copy_8048C68_c(void)
{
    register u8 *r10p asm("r10");
    u8 *src;
    u8 *dst;
    s32 remaining;
    asm volatile("" : "=r"(r10p));

    ZeroFillByWord_c((u32 *)*(u8 **)(r10p + 0x54), 0xE80);

    src = byte_8047DA0;
    dst = *(u8 **)(r10p + 0x54);
    remaining = 0xE80;
    while (1) {
        remaining -= 8;
        if (remaining < 0) {
            return;
        }
        if (src[1] != 0) {
            CopyBytes_c(src, dst, 8);
        }
        src += 8;
        dst += 8;
    }
}
