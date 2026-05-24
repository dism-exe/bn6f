#include "types.h"

extern u16 word_200AD04[];

void sub_803F500_c(void)
{
    // word_200AD06 (= word_200AD04 + 1 halfword) = 0xB4
    word_200AD04[1] = 0xB4;
}
