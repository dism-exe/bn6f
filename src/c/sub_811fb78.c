#include "types.h"

// eToolkit_S2001c04_Ptr at toolkit + 0x40 -> 0x020093F0
#define eToolkit_S2001c04_Ptr (*(u8 **)0x020093F0u)

// Sets S2001c04.byte[6] = 0.
void sub_811FB78_c(void)
{
    eToolkit_S2001c04_Ptr[6] = 0;
}
