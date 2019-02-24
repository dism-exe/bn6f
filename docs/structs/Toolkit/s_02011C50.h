#ifndef S_02011C50_H
#define S_02011C50_H

#include "../inttypes.h"

/*
	init: sub_8036E90
	Size: 0x90 (sub_8036E90)
*/
typedef struct {
		u8 pad_00[0x04];
	u8 unk_04;     // loc=0x4 CONFLICT u32
	u8 unk_05;     // loc=0x5
		u8 pad_06[0x06];
	u8 unk_0C;     // loc=0xC
	u8 unk_0D;     // loc=0xD
		u8 pad_0E[0x02];
	u8 unk_10;     // loc=0x10
		u8 pad_11[0x01];
	u8 unk_12;     // loc=0x12
		u8 pad_13[0x09];
	// changes when a script plays
 	void *ptr_1C;    // loc=0x1C
	void *ptr_20;    // loc=0x20
	void *ptr_24;    // loc=0x24
	void *ptr_28;    // loc=0x28
	u32 unk_2C;    // loc=0x2C
	void *ptr_30;    // loc=0x30
	void *ptr_34;    // loc=0x34
	u32 unk_38;    // loc=0x38
	u32 unk_3C;    // loc=0x3C
	u32 unk_40;    // loc=0x40
	u32 unk_44;    // loc=0x44
	u32 unk_48;    // loc=0x48
	u32 unk_4C;    // loc=0x4C
	u32 unk_50;    // loc=0x50
	u32 unk_54;    // loc=0x54
	u32 unk_58;    // loc=0x58
	u32 unk_5C;    // loc=0x5C
	u32 unk_60;    // loc=0x60
	u32 unk_64;    // loc=0x64
	u32 unk_68;    // loc=0x68
	u32 unk_6C;    // loc=0x6C
		u8 pad_70[0x20];
	// size=0x90
}s_02011C50;

#endif // S_02011C50_H
