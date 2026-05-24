#include "types.h"

extern u8 reqBBS_requestEntriesList[];
extern u32 reqBBS_numRequestsSent;
extern u32 unk_2000770;

extern void ByteFill_c(u8 *dst, u32 byte_count, u8 byte);
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void reqBBS_initMemory_813F9DA_c(void)
{
    ByteFill_c(reqBBS_requestEntriesList, 0x80, 0x80);
    ZeroFillByWord_c(&reqBBS_numRequestsSent, 4);
    ZeroFillByWord_c(&unk_2000770, 4);
}
