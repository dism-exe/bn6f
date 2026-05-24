#include "types.h"

// r10 = Toolkit*. Pokes Warp2011bb0:
//   Unk_10 (=0x10) = 1
//   WarpIndex (=0x11) = arg1 + 1
//   WarpDataPtr (=0x14) = arg0
//   MapGroupTransitionType (=0x12) = arg2
//
// Toolkit.Warp2011bb0_Ptr = 0x14.
void sub_8005EEC_c(u32 warp_data_ptr, u32 warp_index, u8 transition_type)
{
    register u8 *r10p asm("r10");
    u8 *warp;
    asm volatile("" : "=r"(r10p));

    warp = *(u8 **)(r10p + 0x14);
    warp[0x10] = 1;
    warp[0x11] = (u8)(warp_index + 1u);
    *(u32 *)(warp + 0x14) = warp_data_ptr;
    warp[0x12] = transition_type;
}
