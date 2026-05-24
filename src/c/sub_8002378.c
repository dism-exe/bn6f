#include "types.h"

extern u8 ePalette20097a0[];

// 5-arg custom convention: r0=a0, r1=a1, r2=a2, r3=idx, r4=a4. Use
// the r3-safe trampoline (need to preserve r3=idx through the call)
// and the `register asm("r4")` extension to read the 5th in-register
// arg.
void sub_8002378_c(u32 a0, u32 a1, u32 a2, u32 idx)
{
    register u32 a4 asm("r4");
    u8 *p;
    u8 active;

    asm volatile("" : "=r"(a4));

    p = &ePalette20097a0[idx * 12];
    active = 0;
    if (a1 != 0 && a2 != 0) {
        p[1] = (u8)a0;
        *(u32 *)(p + 4) = a1;
        p[2] = (u8)a2;
        *(u32 *)(p + 8) = a4;
        active = 1;
    }
    p[0] = active;
}
