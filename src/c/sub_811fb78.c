#include "EWRAM.h"

// Sets S2001c04.byte[6] = 0. S2001c04 has no named field at offset 6
// in the current header — the ASM just touches the byte directly,
// and we cast through u8* to keep that direct.
void sub_811FB78_c(void)
{
    ((u8 *)eToolkit->S2001c04_Ptr)[6] = 0;
}
