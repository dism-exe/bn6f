#ifndef STRUCTS_COLLISION_DATA_H
#define STRUCTS_COLLISION_DATA_H

#include "inttypes.h"

typedef struct {
  /*
  Enabled/Disabled?
  */
	u8 enable;                         // loc=0x0
	u8 collisionRegion;                // loc=0x1
	u8 primaryElement;                 // loc=0x2
	u8 unk_03;                         // loc=0x3
	u8 alliance;                       // loc=0x4
	u8 flip;                           // loc=0x5
	u8 unk_06;                         // loc=0x6
	u8 staminaDmg_counterDisabler;     // loc=0x7
	u8 poisonPanelTimer;               // loc=0x8
		u8 pad_09[0x01];
	u8 panelX;                         // loc=0xA
	u8 panelY;                         // loc=0xB
	u8 direction;                      // loc=0xC
	u8 counterTimer;                   // loc=0xD
	u8 hitModifierBase;                // loc=0xE
	u8 hitModifierFinal;               // loc=0xF
	u8 statusEffectBase;               // loc=0x10
	u8 statusEffectFinal;              // loc=0x11
  /*
  TODO: Is the whole u16 on bugs?
  */
	u16 bugs;                          // loc=0x12
		u8 pad_14[0x04];
	u8 secondaryElementWeakness;       // loc=0x18
	u8 secondaryElement;               // loc=0x19
		u8 pad_1A[0x02];
	u16 unk_1C;                        // loc=0x1C
	u16 unk_1E;                        // loc=0x1E
	u16 unk_20;                        // loc=0x20
	u16 unk_22;                        // loc=0x22
	u16 unk_24;                        // loc=0x24
	u16 unk_26;                        // loc=0x26
	u16 unk_28;                        // loc=0x28
	u16 unk_2A;                        // loc=0x2A
	u16 unk_2C;                        // loc=0x2C
	u16 selfDamage;                    // loc=0x2E
	u32 selfCollisionTypeFlags;        // loc=0x30
	u32 targetCollisionTypeFlags;      // loc=0x34
	u32 *parentObject;                 // loc=0x38
  /*
  0x00000001 Guard
  0x00000008 invulnerable
  0x00000010 airshoe
  0x00000020 floatshoe
  0x00000040 currently moving
  0x00000800 paralyzed
  0x00004000 immobilized
  0x00010000 frozen
  0x00020000 superarmor
  0x00040000 undershirt
  0x00080000 currently moving
  0x02000000 affected by ice
  0x08000000 unaffected by poison
  */
	u32 objectFlags;                   // loc=0x3C
	u32 objectFlags2;                  // loc=0x40
  /*
  TODO: [Investigate] Bit? This is a u32 though.
  */
	u32 collisionIndexBit;             // loc=0x44
	u32 unk_48;                        // loc=0x48
	u32 unk_4C;                        // loc=0x4C
		u8 pad_50[0x04];
	u32 unk_54;                        // loc=0x54
		u8 pad_58[0x08];
	u32 unk_60;                        // loc=0x60
	u32 unk_64;                        // loc=0x64
	u32 unk_68;                        // loc=0x68
	u32 unk_6C;                        // loc=0x6C
  /*
  flags from a collision(bits from Collision Type list)
  */
	u32 collisionFlags;                // loc=0x70
  /*
  !! indicator. Oops, a joke in names p:
  */
	u8 factorialIndicator;             // loc=0x74
	u8 damageMultiplier;               // loc=0x75
	u8 damageElements;                 // loc=0x76
	u8 unk_77;                         // loc=0x77
	u16 unk_78;                        // loc=0x78
		u8 pad_7A[0x02];
	u32 unk_7C;                        // loc=0x7C
	u16 finalDamage;                   // loc=0x80
	u16 panelDamage1;                  // loc=0x82
	u16 panelDamage2;                  // loc=0x84
	u16 panelDamage3;                  // loc=0x86
	u16 panelDamage4;                  // loc=0x88
	u16 panelDamage5;                  // loc=0x8A
  /*
  used for poison
  */
	u16 panelDamage6;                  // loc=0x8C
	u16 unk_8E;                        // loc=0x8E
	u16 unk_90;                        // loc=0x90
	u16 unk_92;                        // loc=0x92
	u16 unk_94;                        // loc=0x94
		u8 pad_96[0x0A];
	u32 unk_A0;                        // loc=0xA0
	u8 inflictedBugs;                  // loc=0xA4
		u8 pad_A5[0x03];
	// size=0xA8
}CollisionData;

#endif // STRUCTS_COLLISION_DATA_H
