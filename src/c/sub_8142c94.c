#include "EWRAM.h"

extern void QueueEightWordAlignedGFXTransfer_c(u32 src, u32 dst, u32 size, u32 type);

/* QueueEightWordAlignedGFXTransfer(0x08619730, 0x06006C00, 0x420, ?type from r3). */
void sub_8142C94_c(u32 type)
{
    QueueEightWordAlignedGFXTransfer_c(
        0x08619730u, 0x06006C00u, 0x420u, type);
}
