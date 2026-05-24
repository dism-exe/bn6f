#include "types.h"

extern void CopyWords_c(const u32 *src, u32 *dst, u32 size);
extern u64 split9BitsFromBitfield_8021AE0_c(u32 x);
extern u32 sub_8021B2A_c(u32 chip_idx, u32 search_item, u32 qty);

// r10 = ambient Toolkit*. Copies a 0x3C-byte chip-pack block from
// `src` to S_Chip_2002178_Ptr[idx*0x3C], then walks the just-copied
// block as 30 halfwords; for each, splits 9+9 bits and calls
// sub_8021B2A(low, high, 1) (= "add one chip of this code/id").
// Toolkit.S_Chip_2002178_Ptr is at 0x48.
void sub_8021AB4_c(const u32 *src, u32 idx)
{
    register u8 *r10p asm("r10");
    u8 *dst;
    u32 i;
    asm volatile("" : "=r"(r10p));

    dst = *(u8 **)(r10p + 0x48) + idx * 0x3Cu;
    CopyWords_c(src, (u32 *)dst, 0x3Cu);

    for (i = 0u; i < 0x3Cu; i += 2u) {
        u16 hword = *(u16 *)(dst + i);
        u64 split = split9BitsFromBitfield_8021AE0_c((u32)hword);
        u32 low = (u32)(split & 0xFFFFFFFFu);
        u32 high = (u32)(split >> 32);
        sub_8021B2A_c(low, high, 1u);
    }
}
