#ifndef ROM_BATTLE_SETTINGS_H
#define ROM_BATTLE_SETTINGS_H

#include "../inttypes.h"

/**
this structure defines the battle settings for a battle.
[Instances]
Can be found through  <pCurrBattle> = 0x02001B9C
 */
typedef struct {
	u8 battlefield;                  // loc=0x0
		u8 pad_01[0x01];
	u8 music;                        // loc=0x2
	u8 battleType;                   // loc=0x3
	u8 background;                   // loc=0x4
	u8 battleNumber;                 // loc=0x5
	u8 battlefieldSidesModifier;     // loc=0x6
		u8 pad_07[0x01];
	/*
	[0xZZZZZZ] [Me to past me]: only 6 Z's?
	*/
	u32 UnknownOptionalSettings;     // loc=0x8
	u32 *pEnemySetup;                // loc=0xC
	// size=0x10
} BattleSettings;

BattleSettings x;

#endif // ROM_BATTLE_SETTINGS_H
