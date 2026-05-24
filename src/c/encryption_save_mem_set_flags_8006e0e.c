#include "types.h"

extern u32 eUnusedExtraToolkitPtrsOffset[];

// XOR-encrypts mem[0..size-1] in place with the current "save key"
// stored at eUnusedExtraToolkitPtrsOffset[1]. ASM uses signed `bge`
// to terminate at size == -1, so a loop count of 0 still hits index
// -1 once (and walks off the front of the buffer); callers pass
// size > 0 in practice.
//
// After encrypting, the key is also written into [1] (overwriting
// itself — looks like a NOP but mirrors the ASM precisely so writes
// land in the same order).
void encryption_save_memSetFlags_8006E0E_c(u8 *mem, s32 size)
{
    u32 key = eUnusedExtraToolkitPtrsOffset[1];
    s32 i = size - 1;
    do {
        mem[i] = (u8)(mem[i] ^ key);
        i--;
    } while (i >= 0);
    eUnusedExtraToolkitPtrsOffset[1] = key;
}
