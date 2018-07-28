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


// Acceses (TODO: MMBN6F)
/*
name=s_02005780, size=0x80
0800461E::08004640 u8(0x30+0x00), 0800461E::08004658 u8(0x30+0x01), 0809E570::0809E574 u8(0x30+0x08),
0809E5E2::0809E5E4 u8(0x30+0x18), 0809EBDC::0809EBDE u8(0x30+0x19), 0809EBDC::0809EBE4 u32(0x30+0x4C),
0809EBDC::0809EBF2 u32(0x30+0x4C), 0809EE6C::0809EE70 u8(0x30+0x09), 0809EE6C::0809EE74 u16(0x30+0x0A),
0809EE6C::0809EE78 u16(0x30+0x20), 0809F51E::0809F522 u8(0x30+0x19), 0809E5E2::0809E5F6 u8(0x30+0x09),
0809E6C8::0809E6CA u16(0x30+0x20), 0809E6C8::0809E6CE u16(0x30+0x20), 0809F516::0809F51A u8(0x30+0x19),
0809EBF8::0809EBFA u8(0x30+0x1F), 08002F5A?::08002F5C u8(0x30+0x02), 0809E5E2::0809E60E u16(0x30+0x3C),
0809E5E2::0809E610 u16(0x30+0x3E), 0809E5E2::0809E648 u8(0x30+0x14), 0809E5E2::0809E64A u8(0x30+0x15),
080026C4::080026C6 u8(0x30+0x02), 0809E5E2::0809E65C u8(0x30+0x16), 08002D80?::08002D80 u8(0x30+0x02),
0809E5E2::0809E66E u8(0x30+0x0E), 0809E5E2::0809E670 u8(0x30+0x0F), 0809E5E2::0809E672 u8(0x30+0x14),
0809E5E2::0809E674 u8(0x30+0x15), 0809E5E2::0809E676 u16(0x30+0x3C), 0809E5E2::0809E678 u16(0x30+0x3E),
0809F526::0809F52A u8(0x30+0x00), 0809F526::0809F53E u32(0x30+0x24), 0809F526::0809F542 u8(0x30+0x11),
0809F526::0809F548 u32(0x30+0x28), 0809F526::0809F54C u8(0x30+0x12), 0809F526::0809F552 u8(0x30+0x17),
0809F526::0809F56A u32(0x30+0x2C), 0809F526::0809F56E u8(0x30+0x13), 0809F526::0809F578 u16(0x30+0x0C),
08031686?::080316FA u16(0x54+0x02), 08031686?::080316FE u16(0x54+0x06), 08031686?::0803171A u16(0x54+0x02),
08031686?::0803171E u16(0x54+0x06), 080318B0::080318DE u16(0x54+0x0A), 08002E14?::08002E14 u8(0x30+0x02),
0800467C::0800468C u8(0x30+0x00), 030061E8::030061EE u8(0x30+0x00), 030061E8::030061F6 u8(0x30+0x02),
0300631C::03006336 u32(0x54+0x08), 0300631C::0300633E u32(0x54+0x00), 0300631C::03006346 u32(0x54+0x04),
0300631C::0300636A u32(0x54+0x08), 03006028::0300602A u8(0x30+0x02), 0813F3C0::0813F3C8 u8(0x0D),
0813F3C0::0813F3CC u8(0x0E), 0813F3C0::0813F3D0 u8(0x0F), 0813F3C0::0813F3E0 u8(0x0D),
0813F3C0::0813F3E4 u8(0x0E), 0813F3C0::0813F3E8 u8(0x0F), 0813F3C0::0813F3EE u8(0x04),
0813F3C0::0813F3F8 u32(0x28), 0813F404::0813F412 u8(0x00), 0813F474::0813F4B8 u8(0x08),
0813F474::0813F4BA u16(0x20), 0813F474::0813F4BC u16(0x24), 0813F474::0813F4BE u16(0x26),
0813F474::0813F4C0 u8(0x09), 0813F474::0813F4C2 u8(0x0B), 0813FE54::0813FE60 u32(0x28),
0813FE54::0813FE66 u16(0x1E), 0813FE54::0813FE74 u8(0x00), 08140604::08140606 u16(0x1E),
08140604::08140612 u32(0x28), 0813FE54::0813FE84 u32(0x28), 0813FE54::0813FE8A u16(0x1E),
0813FE54::0813FEA6 u8(0x05), 0813FEB0::0813FEC4 u32(0x28), 0813F964::0813F966 u8(0x04),
0813F474::0813F4D4 u16(0x24), 0813FEEC::0813FEF0 u32(0x28), 0813F474::0813F4FC u16(0x1E),
0813F474::0813F502 u8(0x05), 0813F474::0813F51C u8(0x00), 0813F474::0813F520 u8(0x08),
081404E8::081404EA u16(0x24), 081404E8::081404EC u16(0x20), 081404E8::081404F4 u32(0x28),
0813F550::0813F56A u16(0x20), 0813F550::0813F56C u16(0x22), 0813F550::0813F56E u16(0x24),
0813F550::0813F570 u16(0x26), 081406FC::08140700 u16(0x1E), 081406FC::08140734 u16(0x1E),
081406FC::08140742 u8(0x05), 081406FC::08140778 u8(0x05), 0813F8F0::0813F8FA u16(0x24),
0813F8F0::0813F904 u16(0x1E), 0813F8F0::0813F90A u8(0x00), 0813F8F0::0813F924 u16(0x20),
0813F8F0::0813F92A u8(0x09), 0813F8F0::0813F92E u8(0x00), 0813F8F0::0813F934 u8(0x09),
0814004C::0814004E u16(0x24), 0814004C::0814005E u32(0x28), 081401C8::081401CA u16(0x24),
081401C8::081401CE u32(0x28), 0814024C::0814024E u16(0x24), 0814024C::08140252 u32(0x28),
0813F8F0::0813F94C u16(0x1E), 0813F8F0::0813F94E u16(0x24), 08140688::0814068A u8(0x09),
08140688::0814069E u16(0x20), 08140688::081406AC u8(0x09), 08140688::081406BC u8(0x09),
08140358::0814036E u16(0x1E), 0811F7F8::0811F81C u16(0x1E), 0811F7F8::0811F824 u16(0x20),
0811F7F8::0811F82A u16(0x24), 0811F7F8::0811F8D6 u16(0x20), 0811F7F8::0811F8FE u16(0x20),
0811F7F8::0811F904 u16(0x24), 08140358::0814039E u8(0x0B), 0811F7F8::0811F8B6 u16(0x1E),
0811F7F8::0811F8E0 u16(0x24), 08140414::08140418 u8(0x00), 08140414::0814043E u8(0x08),
08140798::0814079E u8(0x0E), 08140414::0814045C u8(0x0D), 08140414::08140464 u8(0x0E),
0813FA54::0813FA88 u8(0x00), 0813FAB0::0813FAD8 u8(0x08), 0813FAB0::0813FADC u8(0x08),
0813FAB0::0813FAE8 u8(0x0F), 0813FAB0::0813FB00 u8(0x00), 0813FB24::0813FB78 u8(0x00),
0813FB24::0813FB84 u8(0x08), 0813FC30::0813FC58 u8(0x08), 0813FC30::0813FC5C u8(0x08),
0813FC30::0813FC62 u8(0x00), 081403C0::081403C4 u8(0x00), 081403C0::081403EA u8(0x08),
0813F754::0813F788 u8(0x00), 0813F5EC::0813F614 u8(0x08), 0813F5EC::0813F618 u8(0x08),
0813F5EC::0813F624 u16(0x24), 0813F5EC::0813F626 u16(0x20), 0813F5EC::0813F62A u32(0x28),
0813F5EC::0813F646 u8(0x00), 081408C8::081408CA u16(0x24), 081408C8::081408CC u16(0x20),
0813F65C::0813F680 u16(0x24), 0813F65C::0813F682 u16(0x20), 0813F65C::0813F688 u32(0x28),
0813F65C::0813F6AA u16(0x24), 0813F65C::0813F6AC u16(0x20), 0813F65C::0813F6CC u8(0x00),
0813FC8C::0813FCBA u8(0x00), 0813FD14::0813FD42 u8(0x00), 0813FD14::0813FD4E u8(0x08),
0813F6F8::0813F720 u8(0x08), 0813F6F8::0813F724 u8(0x08), 0813F6F8::0813F72A u8(0x00),
081403A8::081403B4 u8(0x00), 0813F590::0813F5A4 u8(0x05), 0813F590::0813F5A6 u32(0x28),
Falzar Accesses*/

#endif // s_02005780_H
