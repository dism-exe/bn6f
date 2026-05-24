#include "types.h"

// r10 = ambient Toolkit*. Writes byte r0 to Camera.Unk_03 and word r1 to
// Camera.Unk_14. Toolkit.CameraPtr is at offset 0xC.
void camera_writeUnk03_14_80301b2_c(u32 v03, u32 v14)
{
    register u8 *r10p asm("r10");
    u8 *cam;
    asm volatile("" : "=r"(r10p));

    cam = *(u8 **)(r10p + 0xC);
    cam[3] = (u8)v03;
    *(u32 *)(cam + 0x14) = v14;
}
