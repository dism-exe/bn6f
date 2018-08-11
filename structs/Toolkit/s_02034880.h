#ifndef S_02034880_H
#define S_02034880_H

#include "../inttypes.h"

typedef struct {
	u8 unk_00;     // loc=0x0 CONFLICT u32
	u8 unk_01;     // loc=0x1
	u8 unk_02;     // loc=0x2 CONFLICT u16
	u8 unk_03;     // loc=0x3
	u8 unk_04;     // loc=0x4 CONFLICT u16
	u8 unk_05;     // loc=0x5
	u8 unk_06;     // loc=0x6
	u8 unk_07;     // loc=0x7
	u8 unk_08;     // loc=0x8
	u8 unk_09;     // loc=0x9
	u8 unk_0A;     // loc=0xA
	u8 unk_0B;     // loc=0xB
		u8 pad_0C[0x01];
	u8 unk_0D;     // loc=0xD
	u8 unk_0E;     // loc=0xE
	u8 unk_0F;     // loc=0xF
	u8 unk_10;     // loc=0x10
	u8 unk_11;     // loc=0x11
	u8 unk_12;     // loc=0x12 CONFLICT u16
	u8 unk_13;     // loc=0x13
	u8 unk_14;     // loc=0x14
	u8 unk_15;     // loc=0x15
	u8 unk_16;     // loc=0x16
	u8 unk_17;     // loc=0x17
	u8 unk_18;     // loc=0x18
	u8 unk_19;     // loc=0x19
	u8 unk_1A;     // loc=0x1A
	u8 unk_1B;     // loc=0x1B
	u8 unk_1C;     // loc=0x1C
	u8 unk_1D;     // loc=0x1D
	u8 unk_1E;     // loc=0x1E
	u8 unk_1F;     // loc=0x1F
		u8 pad_20[0x08];
	u16 unk_28;    // loc=0x28
		u8 pad_2A[0x08];
	u16 unk_32;    // loc=0x32
	u16 unk_34;    // loc=0x34
	u16 unk_36;    // loc=0x36
		u8 pad_38[0x02];
	u16 unk_3A;    // loc=0x3A
	u32 unk_3C;    // loc=0x3C
	u32 unk_40;    // loc=0x40
	u8 unk_44;     // loc=0x44
	u8 unk_45;     // loc=0x45
		u8 pad_46[0x06];
	u16 unk_4C;    // loc=0x4C
		u8 pad_4E[0x06];
	u16 unk_54;    // loc=0x54
	u16 unk_56;    // loc=0x56
		u8 pad_58[0x04];
	u32 unk_5C;    // loc=0x5C
	u32 unk_60;    // loc=0x60
	u32 unk_64;    // loc=0x64
		u8 pad_68[0x18];
	u32 unk_80;    // loc=0x80
		u8 pad_84[0x0C];
	u32 unk_90;    // loc=0x90
	// size=0x94
}s_02034880;

#endif /* S_02034880_H */
