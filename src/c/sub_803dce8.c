#include "types.h"

extern u32 eLinkState[];
extern u8  off_803DC78[];  // table of 16-byte records: [u32, u32, u32, u8, 3 pad]
extern void ZeroFillByByte_c(u8 *dst, u32 byte_count);

// 4-arg function (r0..r3 all in use): r0=fill_target, r1=table_idx,
// r2=byte_53, r3=byte_52. r3-safe trampoline required.
void sub_803DCE8_c(u32 r0, u32 r1, u32 r2, u32 r3)
{
    u8 *ls = (u8 *)eLinkState;
    u8 *entry = &off_803DC78[r1 << 4];

    *(u32 *)(ls + 0x20) = r0;
    *(u32 *)(ls + 0x24) = r0;
    ls[0x03] = (u8)r2;
    ls[0x02] = (u8)r3;

    *(u32 *)(ls + 0x34) = *(u32 *)(entry + 0);
    *(u32 *)(ls + 0x38) = *(u32 *)(entry + 4);
    *(u32 *)(ls + 0x3C) = *(u32 *)(entry + 8);
    {
        u8 b = entry[12];
        ls[0x00] = b;
        ls[0x01] = b;
    }
    ls[0x05] = 0;
    ls[0x08] = 0;
    *(u16 *)(ls + 0x18) = 0;
    *(u16 *)(ls + 0x10) = 0xFFFFu;
    *(u16 *)(ls + 0x12) = 0xFFFFu;
    *(u16 *)(ls + 0x14) = 0xFFFFu;
    *(u16 *)(ls + 0x16) = 0xFFFFu;

    ZeroFillByByte_c((u8 *)*(u32 *)(ls + 0x38), *(u32 *)(ls + 0x24));
    ZeroFillByByte_c((u8 *)*(u32 *)(ls + 0x3C), *(u32 *)(ls + 0x24));
}
