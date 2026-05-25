#include "types.h"

extern u32 GetRNG_c(void);

/* r5 = ambient BO*.  Initialise a 10-byte block at BO+0x60..+0x69:
 *
 *   +0x60..+0x63 (word) = 0
 *   +0x64 (byte) = GetRNG() & 3   // random 0..3
 *   +0x65 (byte) = PanelX
 *   +0x66 (byte) = PanelY
 *   +0x67..+0x69 (bytes) = 0
 */
void sub_8111816_c(void)
{
    register u8 *r5p asm("r5");
    u8 *bo;
    u32 r;

    asm volatile("" : "=r"(r5p));
    bo = r5p;

    *(u32 *)(bo + 0x60) = 0u;
    r = GetRNG_c();
    bo[0x64] = (u8)(r & 3u);
    bo[0x65] = bo[0x12];
    bo[0x66] = bo[0x13];
    bo[0x67] = 0u;
    bo[0x68] = 0u;
    bo[0x69] = 0u;
}
