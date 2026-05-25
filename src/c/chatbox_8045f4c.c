#include "EWRAM.h"

/* Returns low 3 bits of the u32 chatbox-flag word at 0x02009F38. */
u32 chatbox_8045F4C_c(void)
{
    return *(u32 *) 0x02009F38u & 7u;
}
