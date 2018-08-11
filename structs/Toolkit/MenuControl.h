#ifndef S_02009A30_H
#define S_02009A30_H

#include "../inttypes.h"

/*
jt=0811F7A0, jumptable of submenu callbacks
*/
typedef struct {
	u8 unk_00;      // loc=0x0
	u8 jo_01;       // loc=0x1
	u8 unk_02;      // loc=0x2
	u8 unk_03;      // loc=0x3
		u8 pad_04[0x08];
	u8 unk_0C;      // loc=0xC
	u8 unk_0D;      // loc=0xD
	u8 unk_0E;      // loc=0xE
	u8 unk_0F;      // loc=0xF
	u8 unk_10;      // loc=0x10
	u8 unk_11;      // loc=0x11
	u8 unk_12;      // loc=0x12
	u8 unk_13;      // loc=0x13
	u8 unk_14;      // loc=0x14
	u8 unk_15;      // loc=0x15
	u8 unk_16;      // loc=0x16
	u8 unk_17;      // loc=0x17
	u8 unk_18;      // loc=0x18
		u8 pad_19[0x01];
	u8 unk_1A;      // loc=0x1A
	u8 unk_1B;      // loc=0x1B
	u8 unk_1C;      // loc=0x1C
	u8 unk_1D;      // loc=0x1D
	u8 unk_1E;      // loc=0x1E
		u8 pad_1F[0x01];
	u8 unk_20;      // loc=0x20
	u8 unk_21;      // loc=0x21
	u16 unk_22;     // loc=0x22
	u16 unk_24;     // loc=0x24
	u16 unk_26;     // loc=0x26
	u16 unk_28;     // loc=0x28
	u16 unk_2A;     // loc=0x2A
	u16 unk_2C;     // loc=0x2C
	u16 unk_2E;     // loc=0x2E
	u16 unk_30;     // loc=0x30
	u16 unk_32;     // loc=0x32
	u16 unk_34;     // loc=0x34
	u16 unk_36;     // loc=0x36
	u16 unk_38;     // loc=0x38
	u16 unk_3A;     // loc=0x3A
	u16 unk_3C;     // loc=0x3C
	u16 unk_3E;     // loc=0x3E
	u32 unk_40;     // loc=0x40
	u8 unk_44;      // loc=0x44
		u8 pad_45[0x03];
	u32 unk_48;     // loc=0x48
	u32 unk_4C;     // loc=0x4C
	// size=0x50
}MenuControl;

#endif // S_02009A30_H
