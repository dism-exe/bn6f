#ifndef S_020364C0_H
#define S_020364C0_H

#include "inttypes.h"

typedef struct {
	/*
	jt_38 + battlemenu.unk_00 // jt @ 08026A3C (MMBN6F)
	*/
	u8 jo_00;	  // loc=0x0 CONFLICT u32
	/*
	(*(jt_37 + battlemenu.unk_01))(); // jt @ 08026AA4
	*/
	u8 jo_01;	  // loc=0x1
	/*
	(*(&jt_43 + battlemenu->unk_02))(); // jt @ 08027214
	(*(jt_44 + battlemenu->unk_02))();  // jt @ 08027724
	(*(&jt_37 + battlemenu->unk_02))(); // jt @ 08026EBC
	(*(&jt_45 + battlemenu->unk_02))(); // jt @ 08027060
	... jt @ [080272A4, 080273B8, 08027428, 08027564, 08027604, 08027A74]
	*/
	u8 jo_02;	  // loc=0x2 CONFLICT u16
	u8 unk_03;	 // loc=0x3
	u8 unk_04;	 // loc=0x4 CONFLICT u32
	u8 unk_05;	 // loc=0x5
	u8 unk_06;	 // loc=0x6
	u8 unk_07;	 // loc=0x7
	u8 unk_08;	 // loc=0x8
	u8 unk_09;	 // loc=0x9
	u8 unk_0A;	 // loc=0xA
	u8 unk_0B;	 // loc=0xB
	u8 unk_0C;	 // loc=0xC
	u8 unk_0D;	 // loc=0xD
	u8 unk_0E;	 // loc=0xE
	u8 unk_0F;	 // loc=0xF
	u8 unk_10;	 // loc=0x10 CONFLICT u16
	u8 unk_11;	 // loc=0x11
	u8 unk_12;	 // loc=0x12
	u8 unk_13;	 // loc=0x13
	u8 unk_14;	 // loc=0x14 CONFLICT u16 u32
	u8 unk_15;	 // loc=0x15
	u8 unk_16;	 // loc=0x16 CONFLICT u16
	u8 unk_17;	 // loc=0x17
	u8 unk_18;	 // loc=0x18 CONFLICT u32
	u8 unk_19;	 // loc=0x19
	u8 unk_1A;	 // loc=0x1A
	u8 unk_1B;	 // loc=0x1B
	u8 unk_1C;	 // loc=0x1C CONFLICT u32
	u8 unk_1D;	 // loc=0x1D
	u8 unk_1E;	 // loc=0x1E
	u8 unk_1F;	 // loc=0x1F
	u16 unk_20;	// loc=0x20
		u8 pad_22[0x16];
	u16 unk_38;	// loc=0x38
	u16 unk_3A;	// loc=0x3A
		u8 pad_3C[0x04];
	u32 unk_40;	// loc=0x40
	u32 unk_44;	// loc=0x44
	u8 unk_48;	 // loc=0x48
	u8 unk_49;	 // loc=0x49
	u8 unk_4A;	 // loc=0x4A
	u8 unk_4B;	 // loc=0x4B
	u8 unk_4C;	 // loc=0x4C
		u8 pad_4D[0x03];
	u8 unk_50;	 // loc=0x50
	u8 unk_51;	 // loc=0x51
	u8 unk_52;	 // loc=0x52
	u8 unk_53;	 // loc=0x53
	u8 unk_54;	 // loc=0x54
	u8 unk_55;	 // loc=0x55
	u8 unk_56;	 // loc=0x56
	u8 unk_57;	 // loc=0x57
	u8 unk_58;	 // loc=0x58
	u8 unk_59;	 // loc=0x59
		u8 pad_5A[0x06];
	// size=0x60
}BattleMenuControl;

#endif // S_020364C0_H
