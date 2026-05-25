#include "EWRAM.h"

/* If byte at eS200BC50+7 != 0 then return 0x214 else return 0x2b. */
u32 sub_813D924_c(void)
{
    if (*(u8 *) 0x0200BC57u) {
        return 0x214u;
    }
    return 0x2bu;
}
