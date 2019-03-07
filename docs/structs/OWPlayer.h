#ifndef S_02009F40_H
#define S_02009F40_H

#include "inttypes.h"


typedef struct {
	u8 invisCtrlSwitch;	 // loc=0x0
	u8 unk_01;			  // loc=0x1
	u8 unk_02;			  // loc=0x2
		u8 pad_03[0x01];
	u32 unk_04;			 // loc=0x4
	u8 contTrigger;		 // loc=0x8
	u8 walkingFlag;		 // loc=0x9
	u8 unk_0A;			  // loc=0xA
		u8 pad_0B[0x01];
	u8 collision;		   // loc=0xC
		u8 pad_0D[0x03];
	u8 unk_10;			  // loc=0x10
	u8 unk_11;			  // loc=0x11
		u8 pad_12[0x02];
	u8 animationSelect;	 // loc=0x14
	u8 ROAnimationSel;	  // loc=0x15
		u8 pad_16[0x06];
	u32 x;				  // loc=0x1C
	u32 y;				  // loc=0x20
	u32 unk_24;			 // loc=0x24
	u32 RO_x;			   // loc=0x28
	u32 RO_y;			   // loc=0x2C
		u8 pad_30[0x1C];
	u16 unk_4C;			 // loc=0x4C
		u8 pad_4E[0x08];
	u8 unk_56;			  // loc=0x56
		u8 pad_57[0x51];
	u32 *unk_A8;			// loc=0xA8
	u32 *unk_AC;			// loc=0xAC
		u8 pad_B0[0x100];
	// size=0x1B0
}OWPlayer;

/*
a new struct found at s_02009F5C due to overestimating size.
However, s_02009F5C is actually accessed through this...
It might be a struct within a struct.

Callbacks encountered in Accesses:
	0809ED38
*/

#endif /* S_02009F40_H */
