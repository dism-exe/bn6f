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

// Accesses (TODO: MMBN6F)
/*
	name=structure, size=0x98
	0809E01C::0809E024 u32(0x50), 0800461E::08004640 u8(0x00), 0800461E::08004658 u8(0x01),
	0809E570::0809E574 u8(0x08), 0809E5E2::0809E5E4 u8(0x18), 0809EBDC::0809EBDE u8(0x19),
	0809EBDC::0809EBE4 u32(0x4C), 0809EBDC::0809EBF2 u32(0x4C), 0809EE6C::0809EE70 u8(0x09),
	0809EE6C::0809EE74 u16(0x0A), 0809EE6C::0809EE78 u16(0x20), 0809F51E::0809F522 u8(0x19),
	0809E5E2::0809E5F6 u8(0x09), 0809E6C8::0809E6CA u16(0x20), 0809E6C8::0809E6CE u16(0x20),
	0809F516::0809F51A u8(0x19), 0809EBF8::0809EBFA u8(0x1F), 0809EBF8::0809EC00 u32(0x5C),
	0809E5E2::0809E600 u32(0x60), 08002F5A?::08002F5C u8(0x02), 0809E5E2::0809E60E u16(0x3C),
	0809E5E2::0809E610 u16(0x3E), 0809E5E2::0809E648 u8(0x14), 0809E5E2::0809E64A u8(0x15),
	080026C4::080026C6 u8(0x02), 0809E5E2::0809E65C u8(0x16), 08002D80?::08002D80 u8(0x02),
	0809E5E2::0809E662 u32(0x68), 0809E5E2::0809E664 u32(0x6C), 0809E5E2::0809E66E u8(0x0E),
	0809E5E2::0809E670 u8(0x0F), 0809E5E2::0809E672 u8(0x14), 0809E5E2::0809E674 u8(0x15),
	0809E5E2::0809E676 u16(0x3C), 0809E5E2::0809E678 u16(0x3E), 0809E5E2::0809E67A u32(0x68),
	0809E5E2::0809E67C u32(0x6C), 0809F526::0809F528 u32(0x60), 0809F526::0809F52A u8(0x00),
	0809F526::0809F53E u32(0x24), 0809F526::0809F542 u8(0x11), 0809F526::0809F548 u32(0x28),
	0809F526::0809F54C u8(0x12), 0809F526::0809F552 u8(0x17), 0809F526::0809F56A u32(0x2C),
	0809F526::0809F56E u8(0x13), 0809F526::0809F578 u16(0x0C), 0809F526::0809F59A u32(0x50),
	0809F526::0809F59C u32(0x58), 0809E5E2::0809E682 u32(0x64), 08031686?::080316FA u16(0x24+0x02),
	08031686?::080316FE u16(0x24+0x06), 08031686?::0803171A u16(0x24+0x02), 08031686?::0803171E u16(0x24+0x06),
	08002E14?::08002E14 u8(0x02), 0809E5E2::0809E694 u32(0x60), 0800467C::0800468C u8(0x00),
	030061E8::030061EE u8(0x00), 030061E8::030061F6 u8(0x02), 0300631C::03006336 u32(0x24+0x08),
	0300631C::0300633E u32(0x24+0x00), 0300631C::03006346 u32(0x24+0x04), 0300631C::0300636A u32(0x24+0x08),
	03006028::0300602A u8(0x02), 0809F68C::0809F694 u32(0x50), 0809F68C::0809F69A u32(0x50),
	080037F4::08003862 u32(0x58+0x00), 080037F4::08003866 u32(0x58+0x00), 080037F4::08003836 u32(0x58+0x00),
	080037F4::0800383A u32(0x58+0x00), 08004602::08004608 u8(0x03), 08004602::08004616 u8(0x00),
	08002D52::08002D54 u8(0x02), 080045C0::080045EE u8(0x00), 080045C0::080045F2 u8(0x01),
	080045C0::080045F4 u32(0x24), 080045C0::080045F6 u32(0x28), 080045C0::080045F8 u32(0x2C),
	080045C0::080045FA u32(0x04), 08030A8C::08030A9C u8(0x10), 08030A8C::08030A9E u32(0x60),
	0809E590::0809E592 u32(0x60), 0809F506::0809F508 u32(0x4C), 0809F506::0809F50C u8(0x19),
	0809F506::0809F50E u8(0x18), 0809F506::0809F510 u8(0x1F), 0809F506::0809F512 u32(0x5C),
	0809E590::0809E59A u32(0x68), 0809E590::0809E59C u32(0x6C), 0809E590::0809E59E u8(0x0E),
	0809E590::0809E5A0 u8(0x0F), 0809E590::0809E5A2 u8(0x17), 0809E590::0809E5A4 u8(0x07),
	0809E590::0809E5A6 u8(0x16), 0809E590::0809E5A8 u32(0x60), 0809E590::0809E5AA u32(0x64),
	0809E590::0809E5AC u32(0x50), 0809E590::0809E5AE u32(0x54), 0809E590::0809E5B0 u32(0x58),
	0809E590::0809E5B2 u8(0x11), 0809E590::0809E5B4 u8(0x12), 0809E590::0809E5B6 u8(0x13),
	0809E590::0809E5BA u16(0x3C), 0809E590::0809E5BC u16(0x3E), 0809E590::0809E5BE u8(0x14),
	0809E590::0809E5C0 u8(0x15), 0809E590::0809E5C4 u8(0x08), 0809E590::0809E5C8 u8(0x0C),
	0809E590::0809E5CC u8(0x0D), 080026E4::080026E6 u8(0x00), 080026E4::080026EC u8(0x00),
	080026E4::080026EE u8(0x02), 080026A4::080026A6 u8(0x02), 0809EE12?::0809EE14 u8(0x00),
	0809EF00?::0809EF02 u16(0x3C), 0809EF00?::0809EF06 u8(0x16), 0809EF00?::0809EF08 u32(0x68),
	0809EF00?::0809EF2C u32(0x78), 0809EF00?::0809EF2E u32(0x60), 0809EF00?::0809EF34 u32(0x60),
	0809F3C0::0809F3C4 u8(0x1C), 0809F3C0::0809F3C8 u32(0x60), 0809F3C0::0809F3CC u32(0x60),
	0809F3C0::0809F3D2 u32(0x94), 0809EEB6::0809EEC0 u32(0x24), 0809EEB6::0809EECA u32(0x28),
	0809EEB6::0809EED4 u32(0x2C), 0809EEF8?::0809EEFA u8(0x14), 0809F1C6::0809F1CC u32(0x8C),
	0809E5E2::0809E61A u32(0x78), 0809E5E2::0809E624 u32(0x60), 08002F90?::08002F90 u8(0x02),
	0809E5E2::0809E646 u8(0x15), 08002DA4?::08002DA4 u8(0x02), 080037F4::08003862 u32(0x50+0x00),
	080037F4::08003866 u32(0x50+0x00), 080037F4::08003836 u32(0x50+0x00), 080037F4::0800383A u32(0x50+0x00),
	0809E01C::0809E02C u32(0x60), 0809D7A8::0809D7B8 u8(0x17), 0809D7A8::0809D7C0 u8(0x18),
	0809F5FC::0809F5FE u8(0x09), 0809F5FC::0809F600 u8(0x1D), 0809F5FC::0809F602 u8(0x0A),
	0809F5FC::0809F604 u8(0x1E), 0809F5FC::0809F608 u8(0x08), 0809F5FC::0809F60C u8(0x09),
	0809F5FC::0809F60E u16(0x0A), 0809D7C8::0809D7CC u8(0x0A), 0809EADA::0809EADE u8(0x09),
	0809EB04::0809EB08 u8(0x0A), 0809EB20::0809EB22 u32(0x60), 0809EB20::0809EB32 u32(0x28),
	0809EB20::0809EB38 u32(0x24), 0809EB20::0809EB54 u32(0x60), 0809EB20::0809EB9A u32(0x94),
	0809EB20::0809EB9C u8(0x1C), 0809EB20::0809EBAC u8(0x0A), 0809EADA::0809EAEE u32(0x60),
	0809ED94::0809ED98 u8(0x00), 080318B0::080318DE u16(0x24+0x0A), 0809F018?::0809F01E u16(0x3C),
	0809F018?::0809F022 u32(0x78), 0809F018?::0809F024 u32(0x60), 0809F018?::0809F02A u32(0x60),

Falzar: Chaud*/

// Function Accesses (TODO: MMBN6F)
/*
	03006028 030061E8 0300631C 080026A4 080026C4
	080026E4 08002D52 08002D80? 08002DA4? 08002E14?
	08002F5A? 08002F90? 080037F4 080045C0 08004602
	0800461E 0800467C 08030A8C 08031686? 080318B0
	0809D7A8 0809D7C8 0809E01C 0809E570 0809E590
	0809E5E2 0809E6C8 0809EADA 0809EB04 0809EB20
	0809EBDC 0809EBF8 0809ED94 0809EE12? 0809EE6C
	0809EEB6 0809EEF8? 0809EF00? 0809F018? 0809F1C6
	0809F3C0 0809F506 0809F516 0809F51E 0809F526
	0809F5FC 0809F68C
*/

#endif // NPC_H
