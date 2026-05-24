#include "types.h"

extern u8 byte_2001400[];
extern u32 unk_2000FC0[];
extern void SetEventFlag_c(u32 flag);

// r0 = message id in [0x17A0, 0x19A0). Sets two event flags (the id
// itself, and id - 0x17A0 + 0x19A0), then appends (id & 0x3F) into a
// per-row buffer inside byte_2001400, with the per-row count tracked
// in unk_2000FC0.
void reqBBS_addBBSMessage_813e5dc_c(u32 id)
{
    u32 orig_id;
    u32 row_off;
    u32 count_idx;
    u32 count;

    SetEventFlag_c(id);
    SetEventFlag_c(id - 0x17A0u + 0x19A0u);

    orig_id = id - 0x17A0u;
    row_off = orig_id & ~0x3Fu;
    count_idx = orig_id >> 6;
    count = unk_2000FC0[count_idx];
    byte_2001400[row_off + count] = (u8)(orig_id & 0x3Fu);
    unk_2000FC0[count_idx] = count + 1u;
}
