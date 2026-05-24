#include "types.h"

extern u32 dword_200AC1C;
extern u32 fiveWordArr200B4B0[];

// Adds an entry to the 5-word-record GFX transfer queue at
// fiveWordArr200B4B0. Returns early if the queue is full (0x60 entries).
// `type` (in r3) selects a jumptable constant for the fieldC slot:
//   type == 0 -> 0x84000000  (DMA mode marker)
//   otherwise -> 0xFFFFFFFF  (sentinel)
//
// Entered via:
//   * QueueEightWordAlignedGFXTransfer (sets type=4 via prelude)
//   * loc_8000ACA (direct bl from 4 callers passing arbitrary type)
void QueueEightWordAlignedGFXTransfer_c(u32 src, u32 dst, u32 size, u32 type)
{
    u32 count;
    u32 *entry;
    u32 fieldC;

    count = dword_200AC1C;
    if (count >= 0x60u) {
        return;
    }
    dword_200AC1C = count + 1u;

    entry = &fiveWordArr200B4B0[count * 5u];
    entry[0] = src;
    entry[1] = dst;
    entry[2] = size;
    entry[4] = type;

    fieldC = (type == 0u) ? 0x84000000u : 0xFFFFFFFFu;
    entry[3] = fieldC;
}
