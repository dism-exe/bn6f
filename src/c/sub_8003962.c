#include "types.h"

extern u8 eScenarioEffectState2000780[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

// If byte[2] is zero, ZeroFillByWord the whole 0x48-byte block.
// Then unconditionally set byte[3] = 1.
void sub_8003962_c(void)
{
    if (eScenarioEffectState2000780[2] == 0) {
        ZeroFillByWord_c((u32 *)eScenarioEffectState2000780, 0x48);
    }
    eScenarioEffectState2000780[3] = 1;
}
