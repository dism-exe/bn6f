#include "types.h"

extern u8 byte_2001130[];
extern u8 byte_80AA01C[];
extern void CopyBytes_c(const u8 *src, u8 *dst, u32 byte_count);

// Copies 0x10 bytes from byte_80AA01C[idx*16] to byte_2001130; returns 0.
u32 sub_80AA004_c(u32 idx)
{
    CopyBytes_c(&byte_80AA01C[idx * 16], byte_2001130, 0x10);
    return 0;
}
