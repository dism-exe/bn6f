#include "EWRAM.h"

void sub_80C4090_c(u32 *p)
{
    if (p) p[30] = 1u;  /* offset 0x78 = 30 words */
}
