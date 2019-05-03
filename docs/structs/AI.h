#ifndef STRUCTS_AI_H
#define STRUCTS_AI_H
#include "inttypes.h"

typedef struct {
  /*
  0x00 - Virus
  0x01 - Navi
  0x02 - Player
  */
	u8 naviVirusIndicator;		// loc=0x0
	u8 AI_index;				  // loc=0x1
	u8 unk_02;					// loc=0x2
	u8 unk_03;					// loc=0x3
		u8 pad_04[0x05];
	u8 unk_09;					// loc=0x9
		u8 pad_0A[0x02];
	u8 unk_0C;					// loc=0xC
		u8 pad_0D[0x01];
	u8 unk_0E;					// loc=0xE
		u8 pad_0F[0x03];
	u8 unk_12;					// loc=0x12
		u8 pad_13[0x03];
  /*
  Version/Level
  */
	u8 level;					 // loc=0x16
  /*
  Also Version/Level?? TODO: investigate off 0x16 and 0x17
  */
	u8 level2;					// loc=0x17
		u8 pad_18[0x01];
	u8 unk_19;					// loc=0x19
	u8 unk_1A;					// loc=0x1A
	u8 unk_1B;					// loc=0x1B
		u8 pad_1C[0x01];
	u8 unk_1D;					// loc=0x1D
	u8 unk_1E;					// loc=0x1E
		u8 pad_1F[0x01];
	u16 totalDamageReceived;	  // loc=0x20
	u16 keysHeld;				 // loc=0x22
	u16 keysDown;				 // loc=0x24
	u16 keysUp;				   // loc=0x26
	u16 prevKeysHeld;			 // loc=0x28
		u8 pad_2A[0x08];
	u16 unk_32;				   // loc=0x32
  /*
  anger bool
  */
	u16 isAngry;				  // loc=0x34
	u16 unk_36;				   // loc=0x36
	u16 unk_38;				   // loc=0x38
		u8 pad_3A[0x02];
	u16 unk_3C;				   // loc=0x3C
		u8 pad_3E[0x02];
	u32 unk_40;				   // loc=0x40
	u32 unk_44;				   // loc=0x44
	u32 unk_48;				   // loc=0x48
		u8 pad_4C[0x08];
	u32 unk_54;				   // loc=0x54
		u8 pad_58[0x08];
	u32 unk_60;				   // loc=0x60
		u8 pad_64[0x04];
	u32 unk_68;				   // loc=0x68
		u8 pad_6C[0x08];
	u32 unk_74;				   // loc=0x74
	u32 unk_78;				   // loc=0x78
	u32 unk_7C;				   // loc=0x7C
  /*
  [Size] 0x20
  Start of AI state (0x20 bytes)
  0x82	u8	?
  0x84	u8	?
  0x85	u8	?
  0x86	u8	?
  0x87	u8	?
  */
	u8 AI_state[0x20];			// loc=0x80 size=0x20
  /*
  [Size] 0x50
  start of attack variable region (0x50 bytes)
  0xA1	u8	?
  0xA2	u8	?
  0xA3	u8	?
  0xA8	u16   ?
  0xAA	u16   ?
  0xAC	u8	?
  0xAD	u8	?
  0xAE	u8	?
  0xAF	u8	?
  0xB0	u16   ?
  0xB2	u16   ?
  0xB6	u8	?
  0xB7	u8	?
  0xB8	u16   ?
  0xBA	u8	?
  0xBB	u8	?
  0xBC	u8	?
  0xBD	u8	?
  0xBE	u16   ?
  0xC8	u32   ?
  0xCC	u32   ?
  0xD0	u32   ?
  0xD4	u32   ?
  0xD8	u32   ?
  0xDC	u32   ?
  */
	u8 attackVarRegion[0x50];	 // loc=0xA0 size=0x50
		u8 pad_F0[0x10];
	// size=0x100
}AI;

#endif // STRUCTS_AI_H
