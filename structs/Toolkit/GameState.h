#ifndef S_02001B80_H
#define S_02001B80_H

#include "../inttypes.h"
#include "../OWPlayer.h"

typedef struct {
	/*
	bx index?
	0x00 - ?? Everything goes poof, you only see the background
	0x04 - Default state?
	0x08 - Rendering gets all distorted then CRASH BOOM
	0x0C - Only background
	0x10 - A quick disappearance occurs, then you pop out in a presumable location in the map (ACDC, mayl's house)
	0x14 - Jack in/Jack out animation. Takes you to mayl's house in either cases
	0x18 - Open PET Windows (Distorted pallete)
	0x1C - CRASH. Camera gets distorted?
	0x20 - Rendering distortion
	0x24 - Opens a different kind of folder, teleports to bus station after leaving
	0x28 - CRASH. Camera distortion
	0x2C - CRASH. Camera distortion
	0x30 - CRASH. Same thing. Everything in memory nearby zeros out?
	0x34 - Opens mail box subsystem!
	0x38 - Train Mini game
	*/
	u8 subSystemSelect;         // loc=0x0
	/*
	Seems to only be valid from 0x00 to 0x0E.
	Changing this basically modifies the navi sprie near the PET icon
	*/
	u8 PET_naviSelect;          // loc=0x1
		u8 pad_02[0x01];
	u8 unk_03;                  // loc=0x3
	/*
	TODO: MMBN6F
	This changes both the map name when accessing PET, and when accessing a submenu, you find yourself
	in that map next!!
	>= 0x80 is the internet?! It actually triggers random battles while walking in the real world TOO
	but after coming back you'd be warped to the internet
	It is used as such: v2[MapSelect] + unk_05 where v2 = (int*)&0x803385C
	803385C seems to be pointing to map data to be loaded
	*/
	u8 MapSelect;               // loc=0x4
	/*
	TODO: MMBN6F
	Seems to also be map selection related! values above 0x01 may crash? confirm
	It is used as such: v2[MapSelect] + off_05 where v2 = (int*)&0x803385C
	*/
	u8 MapSubOffset;            // loc=0x5
	/*
	Changes conversations for NPCs... Including L Message!!!
	This is a flag checked by conversation scripts, also.
	*/
	u8 gameProgress;           // loc=0x6
	u8 unk_07;                 // loc=0x7
	/*
	Seems to affect L-messages.
	> 0x03 crashes game when initiating L-msg?
	*/
	u8 unk_08;                  // loc=0x8
	u8 unk_09;                  // loc=0x9
	u8 unk_0A;                  // loc=0xA
		u8 pad_0B[0x01];
	u8 unk_0C;                  // loc=0xC
	/*
	Linked with offset 0x05 somehow? equated to it in sub_8005C04
	*/
	u8 unk_0D;                  // loc=0xD
	u8 unk_0E;                  // loc=0xE
	/*
	Changing this and entering then exiting a subsystem changes background music
	But changing it alone is not enough to trigger music change
	*/
	u8 bgMusicIndicator;        // loc=0xF
	u8 unk_10;                  // loc=0x10
	u8 unk_11;                  // loc=0x11
	u8 unk_12;                  // loc=0x12
		u8 pad_13[0x01];
	u8 unk_14;                  // loc=0x14
	u8 unk_15;                  // loc=0x15
	u8 unk_16;                  // loc=0x16
	u8 unk_17;                  // loc=0x17
	OWPlayer *player;           // loc=0x18
	/*
	This is loaded when a battle is initiated! It's otherwise NULL
	Contains current battle information!!!
	*/
	u32 *currBattleData;        // loc=0x1C
	u32 unk_20;                 // loc=0x20
	/*
	x coordinate of player in some circumstance? They don't update often though
	Seems to update when you open a subsystem, so it might be to reload the player back in when coming back
	*/
	u32 player_x;               // loc=0x24
	/*
	y coordinate of player in some circumstance? Doesn't update continuously though
	Seems to update when you open a subsystem, so it might be to reload the player back in when coming back
	*/
	u32 player_y;               // loc=0x28
	u32 unk_2C;                 // loc=0x2C
	u32 unk_30;                 // loc=0x30
	u32 unk_34;                 // loc=0x34
	u32 unk_38;                 // loc=0x38
	u32 unk_3C;                 // loc=0x3C
	u32 unk_40;                 // loc=0x40
	u32 unk_44;                 // loc=0x44
		u8 pad_48[0x14];
	/*
	Amount of money you have, but changing this triggers an ANTI-CHEATING mechanism
	setting your zennies to zero!
	*/
	u32 protected_zennies;      // loc=0x5C
	/*
	Amount of bugfrags you have, but changing this triggers an ANTI CHEAT MECHANISM!
	It sets them to zero. Boo-hoo.
	*/
	u32 protected_bugFrags;     // loc=0x60
	u32 unk_64;                 // loc=0x64
	u32 unk_68;                 // loc=0x68
	u32 unk_6C;                 // loc=0x6C
	u32 unk_70;                 // loc=0x70
		u8 pad_74[0x0C];
	// size=0x80
}GameState;

#endif /* S_02001B80_H */
