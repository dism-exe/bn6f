#ifndef CHIP_DATA_H
#define CHIP_DATA_H

#include "../inttypes.h"

typedef struct {
	u8 unk_00;     // loc=0x0
	u8 unk_01;     // loc=0x1
	u8 unk_02;     // loc=0x2
	u8 unk_03;     // loc=0x3
	u8 unk_04;     // loc=0x4
	u8 unk_05;     // loc=0x5
	u8 unk_06;     // loc=0x6
  /*
    00 - Fire
    01 - Water
    02 - Elec
    03 - Grass
    04 - +/-
    05 - Sword
    06 - Cursor
    07 - Cube
    08 - Air
    09 - Iron
    0A - None
    0B, 0C - Fire again, then glitchy gfx
  */
	u8 elemIdx;     // loc=0x7
	u8 size_MB;     // loc=0x8
	u8 unk_09;     // loc=0x9
	u8 unk_0A;     // loc=0xA
	u8 unk_0B;     // loc=0xB
	u8 unk_0C;     // loc=0xC
		u8 pad_0D[0x03];
	u32 unk_10;    // loc=0x10
	u8 unk_14;     // loc=0x14
	u8 unk_15;     // loc=0x15
	u8 unk_16;     // loc=0x16
		u8 pad_17[0x01];
	u16 unk_18;    // loc=0x18
	u16 unk_1A;    // loc=0x1A
	u16 unk_1C;    // loc=0x1C
		u8 pad_1E[0x01];
	u8 unk_1F;     // loc=0x1F
	void *unk_20;    // loc=0x20
	void *unk_24;    // loc=0x24
	void *unk_28;    // loc=0x28
	// size=0x2C
}ChipData;

#endif // CHIP_DATA_H
