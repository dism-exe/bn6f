#include "EWRAM.h"

/* Returns 0x080984C8 + idx * 20.  Used to address a fixed table
   inside ROM. */
u32 sub_80355DE_c(u32 idx)
{
    return 0x080984C8u + idx * 20u;
}
