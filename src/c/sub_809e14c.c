#include "EWRAM.h"

extern u32  sub_809E462_c(void);
extern void SetEventFlag_c(u32 flag);

/* If sub_809E462 returns 0 (the "can act" gate), write `r0` byte
   into OWPlayer +2 and set EVENT 0x1719 (FromImmediate 23,25).
   Otherwise just write `r0` byte into OWPlayer +28. */
void sub_809E14C_c(u32 val)
{
    u8 *p = (u8 *) 0x0200ACE0u;
    if (sub_809E462_c() == 0u) {
        p[2] = (u8)val;
        SetEventFlag_c(0x1719u);
    } else {
        p[28] = (u8)val;
    }
}
