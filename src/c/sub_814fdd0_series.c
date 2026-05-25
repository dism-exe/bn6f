#include "EWRAM.h"

/* Script byte-readers.  Each takes a context block in r1 whose +0x40
   field is a u8 stream pointer.  They read 1 byte from the stream,
   store it at a specific field on the context block, then advance
   the stream by one byte.  r0 is an unrelated arg passed by the
   script engine and ignored. */

#define BYTE_READER(name, off)                                   \
    void name(u32 _r0, u8 *ctx)                                  \
    {                                                            \
        u8 *stream = *(u8 **)(ctx + 0x40);                       \
        ctx[off] = *stream;                                      \
        *(u8 **)(ctx + 0x40) = stream + 1;                       \
        (void)_r0;                                               \
    }

BYTE_READER(sub_814FDD0_c, 0x24)
BYTE_READER(sub_814FDE4_c, 0x2C)
BYTE_READER(sub_814FDF8_c, 0x2D)
BYTE_READER(sub_814FE0C_c, 0x2E)
BYTE_READER(sub_814FE20_c, 0x2F)
BYTE_READER(sub_814FE34_c, 0x1E)
BYTE_READER(sub_814FE40_c, 0x1F)
BYTE_READER(sub_814FE4C_c, 0x26)
BYTE_READER(sub_814FE60_c, 0x27)
