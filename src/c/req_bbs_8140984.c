#include "types.h"

extern u8 eReqBBSGui[];

void reqBBS_8140984_c(void)
{
    eReqBBSGui[0xD] = 0;
    eReqBBSGui[0xE] = 0;
    eReqBBSGui[0xF] = 0;
}
