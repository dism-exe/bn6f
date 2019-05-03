#ifndef STRUCTS_JOYSTICK_H
#define STRUCTS_JOYSTICK_H

#include "../inttypes.h"

typedef struct {
	/*
	Default: 0xFC00
	The flags in IRQ hold for this as well, the state would be 0xFC00|Flags where Flags
	are the flags of the held keys.
	*/
	u16 keyState;			// loc=0x0
	/*
	These fire whenever these buttons are pressed
	0x0001	A
	0x0002	B
	0x0004	SELECT
	0x0008	START
	0x0010	Right
	0x0020 	Left
	0x0040	Up
	0x0080	Down
	0x0100	R
	0x0200	L
	*/
	u16 IRQ;				 // loc=0x2
	/*
	This only updates when the keystate changes, but then immediately returns
	to its default state 0xFC00
	*/
	u16 keyPress;			// loc=0x4
	u16 keyState_dup;		// loc=0x6
	/*
	counts from 0x00 -> 0x10 max
	*/
	u8 A_holdTimer;		  // loc=0x8
	u8 B_holdTimer;		  // loc=0x9
	u8 Select_holdTimer;	 // loc=0xA
	u8 Start_holdTimer;	  // loc=0xB
	u8 Right_holdTimer;	  // loc=0xC
	u8 Left_holdTimer;	   // loc=0xD
	u8 Up_holdTimer;		 // loc=0xE
	u8 Down_holdTimer;	   // loc=0xF
	u8 L_holdTimer;		  // loc=0x10
	u8 R_holdTimer;		  // loc=0x11
		u8 pad_12[0x01];
	/*
	Counts from 0x00 to 0x04
	*/
	u8 Counter;			  // loc=0x13
	u32 unk_14;			  // loc=0x14
	// size=0x18
}Joystick;

#endif // STRUCTS_JOYSTICK_H
