#ifndef NPC_H
#define NPC_H
#include "inttypes.h"

/**
 * Description:
 * This structure represents NPC overworld parameters, as well as other components such as script.
 * The absolute addresses in memory of this object are not static to every NPC in the game.
 * Length: 0x98
 */
typedef struct {
	/*
	[0x0Z] <invisCollSwitch>
	This seems to hold 4 states. All others are repeated. 00 through 04
	covers all cases of INVISIBLE = TRUE/FALSE and COLLIDABLE = TRUE/FALSE!
	*/
	u8 invisCollSwitch;          // loc=0x0
	u8 unk_01;                   // loc=0x1
	u8 objTypeSpriteOff;         // loc=0x2
	u8 unk_03;                   // loc=0x3
	/*
	Setting this to 0 will freeze the game.
	*/
	u8 walkingSpeed;             // loc=0x4
	/*
	This is set to a value and is decreased every step. When it reaches 0,
	the object stops moving and changes direction before it's set again.
	*/
	u8 walkingTimer;             // loc=0x5
		u8 pad_06[0x01];
	/*
	is found to be set to 0 in 2 functions, but not much else is known.
	*/
	u8 unk_07;                   // loc=0x7
	/*
	[0x000Z] <convTrigger>
	// Z = 8: Trigger a certain conversation
	// Many other values just crash?
	end
	*/
	u8 contTrigger;              // loc=0x8
	/*
	0x00 - Stop
	0x04 - Default, moving
	0x08 - Stop, animation continues
	*/
	u8 walkingFlag_09;           // loc=0x9
	/*
	Those might not be flags, since 0x0C behaves unpredictably by 0x04 and 0x08
	0x00 - No effect, it keeps setting to 0x04
	0x04 - Default, moving
	0x08 - Stop
	0x0C - Stop, with a weird location transformation for a moment.
	*/
	u8 walkingFlag_0A;           // loc=0xA
		u8 pad_0B[0x01];
	/*
	[0xAA] <volume>
	This specifies the width of the collision walls, in two components parallel and anti-parallel to
	the streets in the game.
	Interacting anywhere within the region triggers NPC interaction
	*/
	u8 volume;                   // loc=0xC
	u8 unk_0D;                   // loc=0xD
	/*
	0x00 - Transformation ceases, but walking animation continues. loc_05 continues decrementing.
			 When it is reset, this changes and the NPC changes direction
	0x01 - Transform towards positive direction?
	0x05 - Transform towards negative direction?
	*/
	u8 walkingConfig;            // loc=0xE
	/*
	READ-ONLY duplicate of 0x0E
	*/
	u8 RO_walkingConfig;         // loc=0xF
	u8 unk_10;                   // loc=0x10
	/*
	unk = npc->x + ((char)npc->unk_11 << 16);
	this and loc_12 are involved with x,y somehow.
	*/
	u8 unk_11;                   // loc=0x11
	/*
	unk = npc->y + ((char)npc->unk_12 << 16);
	Setting this to 0x07 makes character pass through you?
	Incremently, they get closer and closer to passing through you too!
	*/
	u8 unk_12;                   // loc=0x12
	/*
	Setting this to some value makes NPC pass through you.
	*/
	u8 unk_13;                   // loc=0x13
	/*
	[0X0Z] <facingDirection>
	X not sure, but it is always identical or close to Z. It might be a flag.
	Z determines direction of NPC based on 2<<n-1
	*/
	u8 animationSelect;          // loc=0x14
	u8 RO_AnimationSel;          // loc=0x15
	u8 palleteIndx;              // loc=0x16
	/*
	If 0, interacting with the NPC initiates chat.
	Otherwise, player freezes until it's 0.
	*/
	u8 bInteractionLocked;        // loc=0x17
	/*
	If 1, chat activates. The NPC doesn't stop animating.
	Otherwise, nothing happens.
	*/
	u8 bChatTriggered;            // loc=0x18
	/*
	Activates a timer at npc->loc_20 that represents a timer for which the current animation state
	is active.
	*/
	u8 bAnimationTimerActive;    // loc=0x19
		u8 pad_1A[0x02];
	/*
	This is the offset of loc_94
	It's a halfword offset
	*/
	u8 scriptArrayOffset;        // loc=0x1C
	/*
	npc->walkingFlag = npc->unk_1D;
	*/
	u8 unk_1D;                   // loc=0x1D
	/*
	npc->walkingFlag2 = npc->unk_1E;
	*/
	u8 unk_1E;                   // loc=0x1E
	/*
	Activates timer at loc_22
	*/
	u8 bTimerActive;             // loc=0x1F
	u16 animationTimer;          // loc=0x20
	/*
	The purpose of this timer is unknown.
	Could be an extra timer for more sophisticated animations?
	*/
	u16 timer;                   // loc=0x22
	u32 x;                       // loc=0x24
	u32 y;                       // loc=0x28
	u32 z;                       // loc=0x2C
	/*
	Current coordinates, these are always updated with absolute coordinates.
	They may also be used for calculational purposes and for animating.
	Absolute coordinates are also updated by them.
	When a transformation happens, these may be used to calculate the next move, and then they are stored.
	*/
	u32 nextX;                   // loc=0x30
	u32 nextY;                   // loc=0x34
	u32 nextZ;                   // loc=0x38
	u16 NPCSelect;               // loc=0x3C
	u16 RO_NPCSelect;            // loc=0x3E
	/*
	npc->nextX += npc->unk_40;
	These values are constantly updated and affect how the animation progresses in one frame.
	*/
	s32 deltaX;                  // loc=0x40
	s32 deltaY;                  // loc=0x44
	s32 deltaZ;                  // loc=0x48
	u32 *animationData;          // loc=0x4C
	/*
	[0x0000000Z] (TODO: MMBN6F)
	For any Z, a certain conversation is triggered
	Value constantly written to unless PET is open, for example
	<0800385C> breaks whenever you talk to a character hmm..
	*/
	u32 IRQ_50;                  // loc=0x50
	/*
	0x00000001 - May trigger some conversation. The Interaction is detected. The NPC faces you.
	*/
	u32 IRQ_54;                  // loc=0x54
	u32 IRQ_58;                  // loc=0x58
	/*
	Those are very dangerous, anything you overwrite totally freezes the game.
	Then suddenly... an address pops out?!
	*/
	u32 IRQ_5C;                  // loc=0x5C
	/*
	Flags! 0xUUUUU_0bXcUU_UUUs_osta
	a(0x001): !activate. 1 = interaction w/ NPC is disabled.
	t(0x002): !turn. 1 = disabled. NPC won't turn when you interact.
	s(0x004): !solid. 1 = Can walk through NPC.
	o(0x008): orientation. 0 = Facing direction parallel to Lan's old house. 1 = perpendicular
	s(0x010): also solid. No other effects observed.
	c(0x400): conversation select of some sort.
	X(0x800): If c, This enters a weird state where game
	pauses for a while until a conversation is reached...
	Unknown. Dangerous.
	*/
	u32 flags_60;                // loc=0x60
	/*
	Configuration State?
	Can make character pallete complete white, or change conversation, or change their z depth???
	*/
	u32 unk_64;                  // loc=0x64
	u32 flags_68;                // loc=0x68
	u32 RO_flags_68;             // loc=0x6C
	u32 unk_70;                  // loc=0x70
	u32 unk_74;                  // loc=0x74
	u32 unk_78;                  // loc=0x78
		u8 pad_7C[0x05];
	u8 unk_81;                   // loc=0x81
	u8 unk_82;                   // loc=0x82
	u8 unk_83;                   // loc=0x83
		u8 pad_84[0x08];
	u32 unk_8C;                  // loc=0x8C
		u8 pad_90[0x04];
	/*
	this array determines the script to be run for some type of NPCs
	Hypothetical number of entries: 8*6 + 5 = 53
	*/
	u16 *scriptArray;            // loc=0x94
	// size=0x98
}NPC;

/**
 * Enum for flConfig. The meanings of different bits.
 */
typedef enum{
	nACTIVATE = 0x001, nTURN = 0x002, nSOLID = 0x004,
	SCRIPT_SELECT = 0x400, UNK_800 = 0x800
}NPC_FLCFG;

#endif // NPC_H
