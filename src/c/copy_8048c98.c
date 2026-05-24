#include "types.h"

extern u8 byte_8047DA0[];

// r10 = ambient Toolkit*. Copy "active" 8-byte records from byte_8047DA0
// into ShopDataPtr (Toolkit offset 0x54), one record at a time over a
// 0xE80-byte window (464 records). A record's byte[1] gates whether the
// fields are copied; otherwise that slot is skipped (left at whatever
// the destination already held).
void copy_8048C98_c(void)
{
    register u8 *r10p asm("r10");
    u8 *src;
    u8 *dst;
    s32 remaining;
    asm volatile("" : "=r"(r10p));

    src = byte_8047DA0;
    dst = *(u8 **)(r10p + 0x54);
    remaining = 0xE80;
    while (1) {
        remaining -= 8;
        if (remaining < 0) {
            return;
        }
        if (src[1] != 0) {
            dst[0] = src[0];
            *(u16 *)(dst + 2) = *(u16 *)(src + 2);
            dst[4] = src[4];
            *(u16 *)(dst + 6) = *(u16 *)(src + 6);
        }
        src += 8;
        dst += 8;
    }
}
