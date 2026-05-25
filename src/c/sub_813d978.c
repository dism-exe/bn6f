#include "EWRAM.h"

extern void sub_813D934_c(u32 arg);

/* `*(u16 *)(eS200BC50+8) = 9; sub_813D934(0);` */
void sub_813D978_c(void)
{
    *(u16 *) 0x0200BC58u = 9u;
    sub_813D934_c(0u);
}
