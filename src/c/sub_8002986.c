#include "types.h"

extern u8 byte_200DCA0[];

// Linear scan: for i in 0..12, if (u16)*(byte_200DCA0 + 4 + i*2) == key,
// return (u32)*(byte_200DCA0 + 0x1C + i*4). Otherwise return 0.
u32 sub_8002986_c(u32 key)
{
    u32 i;
    u16 *keys = (u16 *)(byte_200DCA0 + 4);
    u32 *vals = (u32 *)(byte_200DCA0 + 0x1C);

    for (i = 0u; i < 12u; i++) {
        if (keys[i] == (u16)key) {
            return vals[i];
        }
    }
    return 0u;
}
