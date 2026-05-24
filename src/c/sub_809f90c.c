#include "types.h"

extern u8 byte_2000210[];
extern u32 TestEventFlag_c(u32 flag);

// If EVENT_1708 (= 0x1708) is set, return. Otherwise clear
// byte_2000210[0] and *(u32 *)(byte_2000210 + 8).
void sub_809F90C_c(void)
{
    if (TestEventFlag_c(0x1708u) != 0u) {
        return;
    }
    byte_2000210[0] = 0;
    *(u32 *)(byte_2000210 + 8) = 0u;
}
