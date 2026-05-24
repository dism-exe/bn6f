#include "types.h"

extern void QueueEightWordAlignedGFXTransfer_c(u32 src, u32 dst, u32 size, u32 type);

// r5 = ambient ObjectHeader*. Advance the frame pointer at r5[0x24] by
// adding offset r5[0x18] to the table base read via double-indirection
// from r5[0x1c]; if unchanged, return. Otherwise queue a GFX transfer of
// (size = first word at new_ptr, src = new_ptr + 4) into VRAM at
// 0x6010000 + r5[8]*32.
void sub_8002874_c(void)
{
    register u8 *r5p asm("r5");
    u32 old_dest;
    u32 *table_ptr;
    u32 base;
    u32 off;
    u32 new_ptr;
    u32 size;
    u32 vram_dst;
    asm volatile("" : "=r"(r5p));

    old_dest = *(u32 *)(r5p + 0x24);
    table_ptr = *(u32 **)(r5p + 0x1c);
    base = *table_ptr;
    off = *(u32 *)(r5p + 0x18);
    new_ptr = base + off;

    if (new_ptr == old_dest) {
        return;
    }
    *(u32 *)(r5p + 0x24) = new_ptr;

    size = *(u32 *)new_ptr;
    vram_dst = 0x6010000u + ((u32)(*(u16 *)(r5p + 8)) << 5);
    QueueEightWordAlignedGFXTransfer_c(new_ptr + 4, vram_dst, size, 4);
}
