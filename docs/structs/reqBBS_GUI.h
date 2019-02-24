#ifndef s_02005780_H
#define s_02005780_H

#include "inttypes.h"

/*
TODO: decode this
Unlock 10 Extra Request BBS Missions - Credits to Prof.9
(Use after unlocking the other 25 missions)
22108DED 490DFED4
1FDA124F 57A3F336
361555D9 C9766D5F
9B35D881 A80AD437
7C59674A B9537534
A27EE59F D1D774C1
2EA41647 5ADEA3F3
514792F3 4AE4AE7D
B0F324B0 71DF15AD
5A11C54A F0D787A4
ECCA07FA 80DA6F4E
11D45EB0 F695F957
C2CE1023 72BC68A1
1E27D83B BBFB6923
*/

/*
This struct was found by trying to hack the BBS. It controls GUI elements related to a BBS window in
Asterland.
*/
typedef struct {
	/*
	Changing this seems to invoke different functionalities
	(*(reqBBS_jumpTable + stru_2005780.unk_00))()
	Functions
			00 - Screen flashes black for an instant
			04 - Default state
			08 - Exists reqBBS
			0C - Screen goes black, this loc_00 changes to 0x10
			10 - Strange graphical glitch occurs with the stars, and one of the requests' name
					 appears in white.
			14 - Can disable cursor based on a timer. Triggering twice seems to use two different timers.
					 This may behave identical to 24, or it may instead blink the screen constantly?
			18 - Runs the chatbox for the selected request. The lighting is glitchy, though.
			1C - Just plays the "It looks like there's a new post!" message. Lighting also goes dim.
			20 - Lighting goes dim. It stays at state 20 until changed. Cannot control anything at this state.
			24 - One trigger sets a timer to FF, another runs the timer and the cursor is disabled until it
					 reaches 0.
			28 - Plays "It looks like there's a new post!" with glitchy lighting.
			2C - Shows select message with glitchy lighting and no rank?
			30 - Shows select message with dim transparency
			34 - Lighting goes dim. Stays at state 34 and The rank appears in white.
			38 - Stays at 38, glitches stars, and displays the first request in white?
			3C - Same as state_24?
			40 - Plays "This request is already finished!" in perfect condition!
			44 - Stays at state_44. Lighting goes dim.
			0x44 was the last entry, jumpTable[17].
	*/
	u8 jto_0;                         // loc=0x0
		u8 pad_01[0x03];
	/*
	Is somehow involved with how this structure is initialized?
	The initialization function (@0813F3C0) copies a parameter to this.
	*/
	u8 unk_04;                        // loc=0x4
	/*
	This corresponds to the XX in (new = XX/YY)
	*/
	u8 numNewRequests;                // loc=0x5
		u8 pad_06[0x02];
	/*
	This timer is used by animations. It may be set to a value so it counts down,
	an animation may be triggered or stopped once it counts down to zero.
	*/
	u8 animationTimer0;               // loc=0x8
	/*
	Like loc_08, except this is more frequently used. The animation of the cursor seems to
	use this.
	*/
	u8 animationTimer1;               // loc=0x9
		u8 pad_0A[0x01];
	/*
	Seems to hold state of some kind? (TODO: MMBN6F)
	r7 from this is stored in loc_0b: sub_811F7F8(result, 8u, 0, 0);
	*/
	u8 unk_0B;                        // loc=0xB
		u8 pad_0C[0x01];
	/*
	In the select chatbox, this represents XX in "Point: XX/YY"
	*/
	u8 numPoints;                     // loc=0xD
	/*
	This is an index? to an array that determines the total points in
	"Points: XX/YY".
	 array = [10, 25, 35, 75, 75]
	*/
	u8 totalPointsIndex;              // loc=0xE
	/*
	reqBBS_difficultyEntries[stru_2005780.unk_0F]
	this value is duplicated into byte_2009D20 whenever the select chatbox
	is played
	*/
	u8 unk_0F;                        // loc=0xF
		u8 pad_10[0x0E];
	u16 totalNewRequests;             // loc=0x1E
	u16 cursorPos;                    // loc=0x20
	u16 RO_cursorPos;                 // loc=0x22
	u16 pagePos;                      // loc=0x24
	u16 RO_pagePos;                   // loc=0x26
	/*
	off_813F34C: Contains An array of two pointers?
	THERE IS MORE RELEVENT DATA RIGHT AFTER, HOWEVER!
	Address to an array of pointers containing textual data. This needs formal docs.
	*/
	void *reqBBS_textualPointers;     // loc=0x28
		u8 pad_2C[0x04];
	u8 unk_30;                        // loc=0x30
	u8 unk_31;                        // loc=0x31
	u8 unk_32;                        // loc=0x32
		u8 pad_33[0x05];
	u8 unk_38;                        // loc=0x38
	u8 unk_39;                        // loc=0x39
	u16 unk_3A;                       // loc=0x3A
	u16 unk_3C;                       // loc=0x3C
	u8 unk_3E;                        // loc=0x3E
	u8 unk_3F;                        // loc=0x3F
		u8 pad_40[0x01];
	u8 unk_41;                        // loc=0x41
	u8 unk_42;                        // loc=0x42
	u8 unk_43;                        // loc=0x43
	u8 unk_44;                        // loc=0x44
	u8 unk_45;                        // loc=0x45
	u8 unk_46;                        // loc=0x46
	u8 unk_47;                        // loc=0x47
	u8 unk_48;                        // loc=0x48
	u8 unk_49;                        // loc=0x49
		u8 pad_4A[0x05];
	u8 unk_4F;                        // loc=0x4F
	u16 unk_50;                       // loc=0x50
		u8 pad_52[0x02];
	u32 unk_54;                       // loc=0x54
	u32 unk_58;                       // loc=0x58
	u32 unk_5C;                       // loc=0x5C
		u8 pad_60[0x0C];
	u16 unk_6C;                       // loc=0x6C
	u16 unk_6E;                       // loc=0x6E
		u8 pad_70[0x0C];
	u32 unk_7C;                       // loc=0x7C
	// size=0x80
}reqBBS_GUI;

#endif // s_02005780_H
