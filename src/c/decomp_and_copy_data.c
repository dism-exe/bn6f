#include "types.h"

extern void CopyBytes_c(const u8 *src, u8 *dst, u32 count);
extern void CopyHalfwords_c(const u16 *src, u16 *dst, u32 count);
extern void CopyWords_c(const u32 *src, u32 *dst, u32 size);
extern void CopyByEightWords_c(const u32 *src, u32 *dst, u32 size);

// Walks an array of (src/flags, dst, size_or_extra) 12-byte tuples
// terminated by a zero src entry. For each entry:
//   - If src has bit 0 set, treat the rest as a compressed LZ77 ref:
//     SWI 0x11 unpacks into entry[2] (the "dest"); then if entry[1]
//     (a secondary dest) is non-null, copy the decompressed body
//     (post-header) there using the size dispatch below.
//   - Otherwise plain (src, dst=entry[1], size=entry[2]) copy.
//
// Size dispatch (on the byte count):
//   - bit 0 set            -> CopyBytes
//   - bit 1 set (no 0)     -> CopyHalfwords
//   - any of bits 2..4 set -> CopyWords
//   - else (>= 32 + 8-aligned) -> CopyByEightWords
static void copy_by_size(const u8 *src, u8 *dst, u32 size)
{
    if (size & 1u) {
        CopyBytes_c(src, dst, size);
    } else if (size & 3u) {
        CopyHalfwords_c((const u16 *)src, (u16 *)dst, size);
    } else if (size & 0x1Fu) {
        CopyWords_c((const u32 *)src, (u32 *)dst, size);
    } else {
        CopyByEightWords_c((const u32 *)src, (u32 *)dst, size);
    }
}

void decompAndCopyData_c(u32 *entries)
{
    while (*entries != 0u) {
        u32 src_raw = *entries;
        u32 dst_raw;
        u32 size;
        if (src_raw & 0x80000000u) {
            // Compressed ref
            u8 *decomp_buf = (u8 *)entries[2];
            u32 src_addr = src_raw & 0x7FFFFFFFu;
            register u32 r0_ asm("r0") = src_addr;
            register u32 r1_ asm("r1") = (u32)decomp_buf;
            asm volatile("swi 0x11" : "+r"(r0_), "+r"(r1_) :: "r3", "cc");

            dst_raw = entries[1];
            if (dst_raw != 0u) {
                u32 hdr = *(u32 *)decomp_buf;
                size = (hdr >> 8) - 4u;
                copy_by_size(decomp_buf + 4, (u8 *)dst_raw, size);
            }
        } else {
            copy_by_size((const u8 *)src_raw, (u8 *)entries[1], entries[2]);
        }
        entries += 3;
    }
}
