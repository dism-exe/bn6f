#include "EWRAM.h"

extern void sound_8000808_c(u32 a0, u32 a1, u32 a2, u32 a3);

/* Forwards to sound_8000808 with: a0 and a2 pass-through from caller,
   a1 = byte_2010B90 (or 0xFF if that byte is 0), a3 = 0x08000823. */
void sub_800060A_c(u32 a0, u32 a1_in, u32 a2)
{
    u8 vol = *(u8 *) 0x02010B90u;
    u32 a1 = vol ? (u32)vol : 0xFFu;
    (void)a1_in;
    sound_8000808_c(a0, a1, a2, 0x08000823u);
}
