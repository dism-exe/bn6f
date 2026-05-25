#include "EWRAM.h"

#define ePETMenuData_Byte5 (*(u8 *) 0x0200DF25)

void SetPETMenuDataFlag_c(u32 mask)
{
    ePETMenuData_Byte5 |= (u8)mask;
}

void ClearPETMenuDataFlag_c(u32 mask)
{
    ePETMenuData_Byte5 &= (u8)~mask;
}
