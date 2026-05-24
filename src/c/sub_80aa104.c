#include "types.h"

extern u8 byte_20018B0[];
extern u8 byte_80AA11C[];
extern void CopyBytes_c(const u8 *src, u8 *dst, u32 byte_count);

u32 sub_80AA104_c(u32 idx)
{
    CopyBytes_c(&byte_80AA11C[idx * 8], byte_20018B0, 8);
    return 0;
}
