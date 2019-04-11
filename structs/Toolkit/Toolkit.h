#ifndef STRUCT_TOOLKIT_H
#define STRUCT_TOOLKIT_H


#include "../inttypes.h"
#include "Joystick.h"
#include "MenuControl.h"
#include "s_rendering_0200AC40.h"
#include "GameState.h"
#include "s_0200A480.h"
#include "s_02034880.h"
#include "s_02011C50.h"
#include "Camera.h"
#include "../ChatBoxPropreties.h"

/**
 * This table is essential in game. It is always available in R10,
 * and hosts important other structures the game accesses.
 * Always accessible. Seems to be the toolkit to everything else.
 Table:
 	0x020093B0: 0200A480 0200A270 0200AC40 02009980
	0x020093C0: 02011C50 02011BB0 02034880 0200F3A0
	0x020093D0: 02009740 0200A210 030025C0 02009CD0
	0x020093E0: 020384F0 02009A30 0200A220 02001B80
	0x020093F0: 02001C04 02001C88 02002178 02002230
	0x02009400: 02003134 020032C8 0200414C 02004190
	0x02009410: 0200431C 02004330 02004334 02004338
	0x02009420: 02004348 020047CC 02004A8C 02004C20
	0x02009430: 02004E24 02005028 02005030 02005038
	0x02009440: 4F4DD170 00000000 00000000 00000000
 */
typedef struct{
	// 0200A480
	u8 *jo_gameSubsysSel;          // loc=0x0
	// 0200A270
	Joystick *joystick;                // loc=0x4
	// 0200AC40
	s_rendering_0200AC40 *sRender_08;                // loc=0x8
	// 02009980
	Camera *camera;                // loc=0xC
	// 02011C50
	s_02011C50 *s_2011C50;                // loc=0x10
	// 02011BB0
	void *unk_2011BB0;                // loc=0x14
	// 02034880
	s_02034880 *eBattleState;     // loc=0x18
	// 0200F3A0
	void *unk_200F3A0;                // loc=0x1C
	// 02009740
	void *unk_2009740;                // loc=0x20
	// 0200A210
	u16 *currFrame;                // loc=0x24
	// 030025C0
	void *gfx_30025C0;                // loc=0x28
	// 02009CD0
	ChatBoxPropreties *chatbox;  // loc=0x2C
	// 020384F0
	void *eCollisionData;                // loc=0x30
	// 02009A30
	MenuControl *submenu;                // loc=0x34
	// 0200A220
	void *unk_200A220;                // loc=0x38
	// 02001B80
	GameState *gamestate;          // loc=0x3C
	// 02001C04
	void *unk_2001C04;                // loc=0x40

	// 02001C88
	/*
	bot dog disappeared while zeroing this
	Array of flags seems to be involved with different gamestate
	conditionals
	Each entry is 32 bytes.
	Entry 0x16:
		flags 0x2e3
		1<<2 - Makes Navi Icon visible next to PET.
					 HP Becomes 0/0
		1<<7 - activates when pressing L, jacking in,
				   and talking to objects (but not NPCs?)
					 Otherwise, it's constantly cleared
					 when chats are inactive

	*/
	u8 *eEventFlags;                // loc=0x44
	/*
	Involved w/ chip data. When changed, and modifying folder,
	It says you have damaged chip data and freezes...
	*/
	// 02002178
	void *sChip_2002178;         // loc=0x48
	// 02002230
	void *unk_2002230;           // loc=0x4C
	// 02003134
	void *unk_2003134;                // loc=0x50
	// 020032C8
	void *unk_20032C8;                // loc=0x54
	// 0200414C
	void *unk_200414C;                // loc=0x58
	// 02004190
	void *unk_2004190;                // loc=0x5C
	// 0200431C
	void *unk_200431C;                // loc=0x60
	// 02004330
	void *unk_2004330;                // loc=0x64
	// 02004334
	void *unk_2004334;                // loc=0x68
	// 02004338
	void *unk_2004338;                // loc=0x6C
	// 02004348
	void *unk_2004348;                // loc=0x70
	// 020047CC
	void *unk_20047CC;                // loc=0x74
	// 02004A8C
	void *unk_2004A8C;                // loc=0x78
	// 02004C20
	void *unk_2004C20;                // loc=0x7C
	// 02004E24
	void *unk_2004E24;                // loc=0x80
	/*
	First Word of this is Protected Zennies. change it, and your money is gone.
	*/
	// 02005028
	void *unk_2005028;                // loc=0x84
	// 02005030
	void *unk_2005030;                // loc=0x88
	// 02005038
	void *unk_2005038;                // loc=0x8C
	// 4F4DD170
	u32 unk_90;             // loc=0x90
	// size=0x94
}Toolkit;

#endif /* STRUCT_TOOLKIT_H */
