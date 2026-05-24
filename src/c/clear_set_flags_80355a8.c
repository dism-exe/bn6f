#include "types.h"

extern void ClearEventFlag_c(u32 flag);
extern void SetEventFlag_c(u32 flag);

// Clears 5 event flags and sets EVENT_120. Returns 0 (callers may
// observe r0).
u32 clearSetFlags_80355a8_c(void)
{
    ClearEventFlag_c(0x682u);    // EVENT_682
    ClearEventFlag_c(0x85Fu);    // EVENT_85F
    ClearEventFlag_c(0xABAu);    // EVENT_ABA
    ClearEventFlag_c(0xCDCu);    // EVENT_CDC
    ClearEventFlag_c(0xCE0u);    // EVENT_CE0
    SetEventFlag_c(0x120u);      // EVENT_120
    return 0u;
}
