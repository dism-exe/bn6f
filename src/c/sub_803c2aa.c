#include "EWRAM.h"

extern void CopyBytes_c(const u8 *src, u8 *dst, u32 count);

/* 4-way dispatcher copying fixed EWRAM regions into caller-supplied
   buffers:
     CopyBytes(dst0, 0x0200A400, 32)
     CopyBytes(dst1, 0x0200A420, 32)
     CopyBytes(dst2, 0x0200A3A0, 16)
     CopyBytes(dst3, 0x0200A3B0, 16)
   Note the source/dest order: the ASM passes the caller's buffer
   as `src` (r0) and the EWRAM table as `dst` (r1) — so this is
   actually a *write back* into those EWRAM regions. */
void sub_803C2AA_c(u8 *src0, u8 *src1, u8 *src2, u8 *src3)
{
    CopyBytes_c(src0, (u8 *) 0x0200A400u, 32u);
    CopyBytes_c(src1, (u8 *) 0x0200A420u, 32u);
    CopyBytes_c(src2, (u8 *) 0x0200A3A0u, 16u);
    CopyBytes_c(src3, (u8 *) 0x0200A3B0u, 16u);
}
