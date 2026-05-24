#include "types.h"

extern u8 byte_200F461;

// Returns a single byte from EWRAM. The literal pool symbol is named
// eTimerEnable200F460+1 in the original; byte_200F461 is the same
// address with a direct symbol, exported by ewram.s.
u8 sub_8144CE0_c(void)
{
    return byte_200F461;
}
