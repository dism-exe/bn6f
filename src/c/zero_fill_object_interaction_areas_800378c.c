#include "types.h"

extern u32 eOWObjectInteractionAreas[];
extern u32 eNumOWObjectInteractionAreas;
extern void ZeroFillByWord_c(u32 *mem, u32 byte_count);

void ZeroFillObjectInteractionAreas_800378C_c(void)
{
    ZeroFillByWord_c(eOWObjectInteractionAreas, 0x280);
    eNumOWObjectInteractionAreas = 0;
}
