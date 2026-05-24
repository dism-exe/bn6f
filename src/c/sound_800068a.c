#include "types.h"

extern u32 off_8000704[];
extern void sound_8000808_c(u32 a, u32 b, u32 c, u32 d);
extern void sub_814E87C(void);

// 2 args: r0 = sound table index, r1 = pass-through to sound_8000808.
// Passes (off_8000704[idx], r1, r10, sub_814E87C+1) to the queue.
void sound_800068A_c(u32 idx, u32 arg1)
{
    register u8 *r10p asm("r10");
    asm volatile("" : "=r"(r10p));

    sound_8000808_c(off_8000704[idx], arg1, (u32)r10p, (u32)sub_814E87C + 1u);
}
