#ifndef S_0200AD10_H
#define S_0200AD10_H

#include "inttypes.h"

typedef struct {
	u8 jo_00;     // loc=0x0 CONFLICT u16
	u8 jo_01;     // loc=0x1
	u8 unk_02;     // loc=0x2
	u8 unk_03;     // loc=0x3
	u16 logoShowTimer;    // loc=0x4
	u8 unk_06;     // loc=0x6
	u8 unk_07;     // loc=0x7
	u8 currCsrPos;     // loc=0x8
	u8 numChoices;     // loc=0x9
	u16 achievmentFlags;    // loc=0xA
	u8 unk_0C;     // loc=0xC
		u8 pad_0D[0x01];
	u8 unk_0E;     // loc=0xE
	u8 unk_0F;     // loc=0xF
	// size=0x10
}StartScreen;

#endif // S_0200AD10_H
