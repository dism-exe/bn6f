#include "types.h"

extern void sub_80028C0_c(u32 idx);

// Thin wrapper that calls sub_80028C0(1). The original ASM block
// also contained a dead-code loop (loc_8003EA6) past the `pop {pc}`
// and before the literal pool — unreachable, kept in the trampoline
// pad. The shared pool (T3BattleObjectJumptable et al) is retained
// by wrap_decomp because external callers reference its labels.
void sub_8003E98_c(void)
{
    sub_80028C0_c(1u);
}
