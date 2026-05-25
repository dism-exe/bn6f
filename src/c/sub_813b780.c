#include "EWRAM.h"

/* Returns 0x0813944C + idx * 16  — index into a ROM struct table. */
u32 sub_813B780_c(u32 idx)
{
    return 0x0813944Cu + idx * 16u;
}
