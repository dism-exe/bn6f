#ifndef BATTLE_H
#define BATTLE_H
#include "inttypes.h"
#include "AI.h"
#include "CollisionData.h"

/**
 * Structure obtained from sub_080182B4
 * TODO: size not complete?
 */
typedef struct {
	// size=0x3
	int pad;
}s_080182C4;

/*
Objects can have collision data and AI data
x, y, z, vx, vy, vz are 16.16 fixed point integers.
upper 16 bits are the integer portion, lower are the decimal region
x,y and z are also relative to the center of the battlefield
*/
typedef struct {
	/*
	0x01 active
	0x02 visable
	0x04 updates during pause
	0x08 Hide/Dont update sprite
	0x10 updates during timestop
	*/
	u8 objFlags;						// loc=0x0
	u8 objIndex;						// loc=0x1
	/*
	object type/sprite offset
	0x0F Object type
	0xF0 relative sprite data offset (from start of object)
	*/
	u8 objTypeSpriteOff;				// loc=0x2
	u8 objMemIndex;					 // loc=0x3
	/*
	[0x00000011] object parameters 1
	[0x00002200] object parameters 2
	[0x00330000] object parameters 3
	[0x44000000] object parameters 4
	*/
	u32 objParams;					  // loc=0x4
	/*
	current state, usually
	0 - Initialize
	4 - Update
	8 - Destroy
	*/
	u8 currState;					   // loc=0x8
	/*
	current "attack"/action (typically)
	*/
	u8 currAction;					  // loc=0x9
	/*
	current phase of "attack"/action (typically)
	*/
	u8 currPhase;					   // loc=0xA
	/*
	bool. indicates if current phase is initialized (typically)
	*/
	u8 bPhaseInitialized;			   // loc=0xB
		u8 pad_0C[0x01];
	u8 unk_0D;						  // loc=0xD
	u8 Element;						 // loc=0xE
	u8 unk_0F;						  // loc=0xF
	u8 currAnimation;				   // loc=0x10
	/*
	current animation(copy)
	*/
	u8 currAnimationCpy;				// loc=0x11
	u8 panelX;						  // loc=0x12
	u8 panelY;						  // loc=0x13
	u8 futurePanelX;					// loc=0x14
	u8 futurePanelY;					// loc=0x15
	/*
	0 = friend, 1 = enemy
	*/
	u8 Alliance;						// loc=0x16
	u8 directionFlip;				   // loc=0x17
	u8 preventAnimation;				// loc=0x18
	u8 unk_19;						  // loc=0x19
	u8 chipsHeld;					   // loc=0x1A
		u8 pad_1B[0x01];
	u8 unk_1C;						  // loc=0x1C
	u8 unk_1D;						  // loc=0x1D
		u8 pad_1E[0x01];
	u8 unk_1F;						  // loc=0x1F
	/*
	(typically) lol
	*/
	u16 Timer;						  // loc=0x20
	/*
	also typically
	*/
	u16 Timer2;						 // loc=0x22
	u16 HP;							 // loc=0x24
	u16 maxHP;						  // loc=0x26
	u16 nameID;						 // loc=0x28
	u16 chip;						   // loc=0x2A
	/*
	0x8000 - double damage
	0x4000 - paralyze
	0x2000 - Uninstall
	0x1000 - KillerCross Skull hit
	0x0800 - nothing
	0x07FF - damage
	*/
	u16 damage;						 // loc=0x2C
	u16 staminaDmg_counterDisabler;	 // loc=0x2E
	u16 unk_30;						 // loc=0x30
	u16 unk_32;						 // loc=0x32
	u32 x;							  // loc=0x34
	u32 y;							  // loc=0x38
	u32 z;							  // loc=0x3C
	/*
	X Velocity
	*/
	u32 vx;							 // loc=0x40
	/*
	Y Velocity
	*/
	u32 vy;							 // loc=0x44
	/*
	Z Velocity
	*/
	u32 vz;							 // loc=0x48
	/*
	Can either be pointer to parent or childobject1
	*/
	u32 *parent;						// loc=0x4C
	u32 *childobject2;				  // loc=0x50
	CollisionData *collisionData;	   // loc=0x54
	AI *ai;							 // loc=0x58
	u32 unk_5C;						 // loc=0x5C
	/*
	[Size] 0x2C
	(0x60 - 0x8C)
	0x60 - 0x7C - free space for object specific variables (type 4)
	0x60 - 0x8C - free space for object specific variables (type 3)
	0x60 - 0x8C - free space for object specific variables (type 1)
	*/
	u8 extraVars[0x2C];				 // loc=0x60 size=0x2C
	// size=0x8C
}Battle;

#endif /* BATTLE_H */
