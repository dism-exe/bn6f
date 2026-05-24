#include "types.h"

extern u8 *off_80329A8[];   // real-world group → MapBGDescriptor*
extern u8 *off_8032F6C[];   // real-world group → callback-3-tuple*
extern u8 *off_80329C4[];   // internet group → MapBGDescriptor* (nullable)
extern u8 *off_8032F88[];   // internet group → callback-3-tuple* (nullable)
extern u8 eMapTilesState200be70[];
extern u8 eDecompBuffer2013A00[];

#define INTERNET_MAP_GROUP_START 0x80
#define MAP_BG_DESC_SIZE 12u            // 3 ptrs (the .inc Size marker is misleading)
#define CALLBACK_TUPLE_SIZE 12u

// Look up the per-(group,number) MapBGDescriptor + callback tuple,
// then write all of MapTilesState200be70's fields.
//
// MapTilesState200be70 layout:
//   0x00 MapWidth, 0x01 MapHeight
//   0x08 MapBGDescriptorPtr
//   0x0C Unk_0c (= eDecompBuffer2013A00)
//   0x10 PalettePtr, 0x14 TilesetPtr
//   0x18/1C/20 UnkCallback_18/1c/20
// MapBGDescriptor: TilesetPtr=0, PalettePtr=4, TilemapPtr=8.
// MapBGTilemapHeader: Width=0, Height=1.
//
// Original pushes r8/r9/r12 for preservation; r12 is APCS-scratch so
// the C version is fine without that — verify will catch it if not.
void initMapTilesState_803037c_c(u32 map_group, u32 map_number)
{
    u8 **bg_table;
    u8 **cb_table;
    u8 *bg_entry;
    u8 *cb_entry;
    u8 *tilemap;

    if (map_group >= INTERNET_MAP_GROUP_START) {
        bg_table = off_80329C4;
        cb_table = off_8032F88;
        map_group -= INTERNET_MAP_GROUP_START;
    } else {
        bg_table = off_80329A8;
        cb_table = off_8032F6C;
    }

    bg_entry = bg_table[map_group] + map_number * MAP_BG_DESC_SIZE;
    cb_entry = cb_table[map_group] + map_number * CALLBACK_TUPLE_SIZE;

    *(u8 **)(eMapTilesState200be70 + 0x08) = bg_entry;  // MapBGDescriptorPtr

    *(u32 *)(eMapTilesState200be70 + 0x18) = *(u32 *)(cb_entry + 0);
    *(u32 *)(eMapTilesState200be70 + 0x1C) = *(u32 *)(cb_entry + 4);
    *(u32 *)(eMapTilesState200be70 + 0x20) = *(u32 *)(cb_entry + 8);

    tilemap = *(u8 **)(bg_entry + 8);                    // TilemapPtr
    eMapTilesState200be70[0x00] = tilemap[0];            // MapWidth
    eMapTilesState200be70[0x01] = tilemap[1];            // MapHeight

    *(u8 **)(eMapTilesState200be70 + 0x10) = *(u8 **)(bg_entry + 4);  // PalettePtr
    *(u8 **)(eMapTilesState200be70 + 0x14) = *(u8 **)(bg_entry + 0);  // TilesetPtr
    *(u8 **)(eMapTilesState200be70 + 0x0C) = eDecompBuffer2013A00;
}
