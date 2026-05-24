#include "types.h"

#define eToolkit_CurFramePtr (*(u16 **)0x020093D4u)  // toolkit + 0x24

extern u32 GetRNG_c(void);

// Weighted random index into arr[0..count-1]. Calls GetRNG some
// frame-and-rng-dependent number of times, then picks an index whose
// cumulative byte sum first reaches a threshold derived via SWI_Div.
u32 sub_8000E3A_c(u8 *arr, u32 count)
{
    u32 rng;
    u16 frame;
    s32 iters;
    u32 r_lo;
    u32 sum;
    s32 i;
    u32 threshold;
    u32 cum;
    u32 j;

    rng = GetRNG_c();
    frame = *eToolkit_CurFramePtr;
    iters = (s32)(rng >> 30) + (s32)(frame & 3u);

    do {
        rng = GetRNG_c();
        iters--;
    } while (iters >= 0);

    r_lo = rng & 0xFFFFu;
    sum = 0;
    for (i = (s32)count - 1; i >= 0; i--) {
        sum += arr[i];
    }

    {
        register s32 div_r0 asm("r0") = (s32)r_lo;
        register s32 div_r1 asm("r1") = (s32)sum;
        asm volatile("swi 6" : "+r"(div_r0), "+r"(div_r1) :: "r3", "cc");
        threshold = (u32)div_r1 + 1u;
    }

    cum = 0;
    for (j = 0; j < count; j++) {
        cum += arr[j];
        if (cum >= threshold) {
            return j;
        }
    }
    return 0;
}
