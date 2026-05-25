#include "EWRAM.h"

/* 2D byte table at 0x0203EAE0, rows of 16 bytes.
   sub_800AB2E sets table[row][col] = val; sub_800AB3A reads. */

#define table_203EAE0 ((u8 *) 0x0203EAE0u)

void sub_800AB2E_c(u32 row, u32 col, u32 val)
{
    table_203EAE0[row * 16u + col] = (u8)val;
}

u32 sub_800AB3A_c(u32 row, u32 col)
{
    return table_203EAE0[row * 16u + col];
}
