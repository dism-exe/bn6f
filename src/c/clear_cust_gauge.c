#include "EWRAM.h"

extern void battle_clearFlags_c(u32 mask);

void ClearCustGauge_c(void)
{
    *(u16 *) 0x020352A0u = 0u;            /* off_801E0D8 (=0x02035280) + 0x20 */
    battle_clearFlags_c(18u);
}
