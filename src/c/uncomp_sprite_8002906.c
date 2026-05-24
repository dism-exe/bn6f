#include "types.h"

extern u8 byte_200DCA0[];
extern u8 *SpritePointersList[];

#define DECOMP_LIMIT 0x2040000u
#define MAX_SPRITES  0xCu

// Walks a SpriteLoadData[] array (terminated by SpriteTypeOffset
// == 0xFF). For each entry, looks up the LZ77-compressed sprite
// from SpritePointersList[type_offset][index], unpacks it into
// the next slot of the sprite decompression area, and records the
// (type<<8|index, dest_offset+4) pair into byte_200DCA0[+0x4 +
// count*2] / [+0x1C + count*4]. Returns TRUE on completion or
// FALSE if either the decompressed buffer would overflow
// 0x2040000 or the per-slot count would exceed 0xC.
//
// LZ77 size: header word's upper 24 bits = decompressed size.
u32 uncompSprite_8002906_c(u8 *sprite_load_data)
{
    u32 cur_off = *(u32 *)(byte_200DCA0 + 0x4C);

    while (1) {
        u8 type_off = sprite_load_data[0];
        u8 index;
        u8 *raw;
        u8 *decomp_src;
        u32 decomp_size;
        u32 packed_key;
        u32 count;

        if (type_off == 0xFFu) {
            return 1u;  // TRUE
        }

        // type_off is already a RAW byte offset into SpritePointersList
        // (already pre-multiplied by 4 — entries are 4 bytes); orig does
        // `ldr r2, [r4, r0]` not `ldr r2, [r4, r0, lsl #2]`.
        index = sprite_load_data[1];
        raw = *(u8 **)(*(u8 **)((u8 *)SpritePointersList + type_off) + index * 4);
        decomp_src = (u8 *)((u32)raw & 0x7FFFFFFFu);
        decomp_size = *(u32 *)decomp_src >> 8;
        packed_key = ((u32)type_off << 8) | (u32)index;

        if ((cur_off + decomp_size) >= DECOMP_LIMIT) {
            return 0u;  // FALSE
        }
        count = byte_200DCA0[0];
        if (count >= MAX_SPRITES) {
            return 0u;
        }

        *(u16 *)(byte_200DCA0 + 4 + count * 2) = (u16)packed_key;
        *(u32 *)(byte_200DCA0 + 0x1C + count * 4) = cur_off + 4u;
        byte_200DCA0[0] = (u8)(count + 1u);

        {
            // The orig pushes r1,r2,r4-r6 across the swi, so SWI 0x11
            // clobbers those plus r3. Declare them so GCC reloads anything
            // it had stashed there.
            register u32 r0_ asm("r0") = (u32)decomp_src;
            register u32 r1_ asm("r1") = cur_off;
            asm volatile("swi 0x11" : "+r"(r0_), "+r"(r1_)
                         :: "r2", "r3", "r4", "r5", "r6", "memory", "cc");
        }

        cur_off += decomp_size;
        *(u32 *)(byte_200DCA0 + 0x4C) = cur_off;
        sprite_load_data += 2;
    }
}
