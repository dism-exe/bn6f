#include "EWRAM.h"

extern void SetEventFlag_c(u32 flag);

/* reqBBS request appender, sibling of addMail_802f238.

   Each "request" event flag lives in a numbered bucket of 64
   consecutive flags starting at 0x1B60.  We keep two parallel
   arrays in EWRAM:

     reqBBS_requestEntries_list (0x02000290) — bucket-relative
        u8 slot values, packed 64 entries per bucket.
     reqBBS_num_requests_sent   (0x020065B0) — running per-bucket
        counter, one u32 per bucket (so the entries_list[bucket][cnt]
        slot for a given flag is unambiguous).

   Steps for a new flag:
     - SetEventFlag(flag)
     - SetEventFlag(flag - 0x1B60 + 0x1BA0)   (paired "seen" namespace)
     - bucket = (flag - 0x1B60) >> 6           (which 64-flag block)
     - slot   = (flag - 0x1B60) & 0x3F         (offset within block)
     - cnt    = num_requests_sent[bucket]
     - entries_list[bucket * 64 + cnt] = slot
     - num_requests_sent[bucket]++ */
void reqBBS_addRequest_813F9A0_c(u32 flag)
{
    u32 rel    = flag - 0x1B60u;
    u32 bucket = rel >> 6;
    u32 slot   = rel & 0x3Fu;
    u8  *arr   = reqBBS_requestEntries_list + (bucket << 6);
    u32 *cnt   = (u32 *)(reqBBS_num_requests_sent + bucket * 4u);

    SetEventFlag_c(flag);
    SetEventFlag_c(rel + 0x1BA0u);

    arr[*cnt] = (u8)slot;
    (*cnt)++;
}
