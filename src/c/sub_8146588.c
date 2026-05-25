#include "EWRAM.h"

/* Five constant stores spanning a few EWRAM regions. */
void sub_8146588_c(void)
{
    *(u8  *) 0x0200FE80u = 0u;
    *(u8  *) 0x02010160u = 32u;
    *(u8  *) 0x0200FFE4u = 1u;
    *(u8  *) 0x02010164u = 1u;
    *(u16 *) 0x0200FE50u = 240u;
}
