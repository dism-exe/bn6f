#ifndef S_02009980_H
#define S_02009980_H

#include "../inttypes.h"

typedef struct {
	u8 unk_02;                     // loc=0x2
	bool_t cameraPlayerLocked;     // loc=0x3 size=0x-1
		u8 pad_02[0x02];
	u16 unk_04;                    // loc=0x4
	u16 unk_06;                    // loc=0x6
	u16 unk_08;                    // loc=0x8
	u16 unk_0A;                    // loc=0xA
	u16 unk_0C;                    // loc=0xC
	u16 unk_0E;                    // loc=0xE
	u16 unk_10;                    // loc=0x10
		u8 pad_12[0x02];
	u32 unk_14;                    // loc=0x14
	u32 unk_18;                    // loc=0x18
	u32 unk_1C;                    // loc=0x1C
	u32 unk_20;                    // loc=0x20
	u32 unk_24;                    // loc=0x24
	u32 unk_28;                    // loc=0x28
	u32 unk_2C;                    // loc=0x2C
	u32 unk_30;                    // loc=0x30
	u32 unk_34;                    // loc=0x34
	u32 unk_38;                    // loc=0x38
	u32 unk_3C;                    // loc=0x3C
	u32 unk_40;                    // loc=0x40
	u32 unk_44;                    // loc=0x44
	u32 unk_48;                    // loc=0x48
	u8 unk_4C;                     // loc=0x4C
		u8 pad_4D[0x03];
	u8 unk_50;                     // loc=0x50
	u8 unk_51;                     // loc=0x51
	u8 unk_52;                     // loc=0x52
	u8 unk_53;                     // loc=0x53
		u8 pad_54[0x01];
	u8 unk_55;                     // loc=0x55
		u8 pad_56[0x02];
	u8 unk_58;                     // loc=0x58
		u8 pad_59[0x03];
	u16 unk_5C;                    // loc=0x5C
		u8 pad_5E[0x02];
	u16 unk_60;                    // loc=0x60
	u16 unk_62;                    // loc=0x62
	u16 unk_64;                    // loc=0x64
	u16 unk_66;                    // loc=0x66
	u16 unk_68;                    // loc=0x68
		u8 pad_6A[0x06];
	u32 unk_70;                    // loc=0x70
	u32 unk_74;                    // loc=0x74
		u8 pad_78[0x0C];
	u32 unk_84;                    // loc=0x84
	u32 unk_88;                    // loc=0x88
	u32 unk_8C;                    // loc=0x8C
	// size=0x90
}Camera;

#endif // S_02009980_H
