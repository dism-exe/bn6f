#include "EWRAM.h"

extern u32 GetRNG_c(void);

#define ekey (*(u32 *) 0x02001064u)

/* Roll a fresh non-zero (inverted) RNG value as the new key. */
void encryption_8006e26_c(void)
{
    u32 k;
    do {
        k = ~GetRNG_c();
    } while (k == 0u);
    ekey = k;
}

/* XOR-decrypt `len` bytes of `buf` with the current key, then write
   the key back to its slot (a no-op since we hold it in a temp). */
void encryption_8006df6_c(u8 *buf, u32 len)
{
    u32 key = ekey;
    s32 i;

    for (i = (s32)len - 1; i >= 0; i--) {
        buf[i] ^= (u8)key;
    }
    ekey = key;
}
