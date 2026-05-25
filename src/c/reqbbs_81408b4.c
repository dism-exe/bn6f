#include "EWRAM.h"

extern void SetEventFlag_c(u32 flag);

/* Adds arg to the u32 at 0x0813F364 (=0x0813F34C + 24) and uses it
   as the event-flag id. */
void reqBBS_81408B4_c(u32 arg)
{
    u32 base = *(u32 *) 0x0813F364u;
    SetEventFlag_c(arg + base);
}
