#include "EWRAM.h"

extern u8 byte_8001618[];

// Indexes an 8-byte record out of byte_8001618 and copies it to
// RenderInfo+4 / RenderInfo+8.
void sub_80015FC_c(u32 idx)
{
    u32 *src = (u32 *)&byte_8001618[idx * 8];
    u32 *dst = (u32 *)((u8 *)eToolkit->RenderInfoPtr + 4);
    dst[0] = src[0];
    dst[1] = src[1];
}
