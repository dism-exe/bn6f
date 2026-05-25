#include "EWRAM.h"

extern void CopyWords_c(const u32 *src, u32 *dst, u32 byte_count);

/* Caller already has src in r0; we just plug in the dst (0x0200AF60)
   and the 16-byte length. */
void copyBattleSettingsTo_200AF60_c(const u32 *src)
{
    CopyWords_c(src, (u32 *) 0x0200AF60u, 16u);
}
