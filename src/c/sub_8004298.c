#include "types.h"

extern void sub_80028C0_c(u32 idx);

// Tail call into sub_80028C0(3). The function symbol owns 14 bytes
// (push/mov/bl/pop + 6 bytes of dead-prelude that flows into
// sub_80042A6, itself unreachable). Wrap clobbers the dead bytes;
// sub_80042A6 lives in its own bytes after this and stays in place
// as dead code.
void sub_8004298_c(void)
{
    sub_80028C0_c(3);
}
