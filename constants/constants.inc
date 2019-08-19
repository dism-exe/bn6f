	.include "constants/gba_constants.inc"
	.include "constants/GameAreas.inc"
	.include "constants/SoundOffsets.inc"
	.include "constants/ewram_flags.inc"
	.include "constants/iwram_end_locations.inc" // will be removed later
	.include "constants/battle_constants.inc"

	enum_start
	enum OVERWORLD_PLAYER_OBJECT // 0x0
	enum T1_BATTLE_OBJECT // 0x1
	enum OVERWORLD_NPC_OBJECT // 0x2
	enum T3_BATTLE_OBJECT // 0x3
	enum T4_BATTLE_OBJECT // 0x4
	enum OVERWORLD_MAP_OBJECT // 0x5

	.equiv OVERWORLD_PLAYER_OBJECT_F, 1 << OVERWORLD_PLAYER_OBJECT
	.equiv T1_BATTLE_OBJECT_F, 1 << T1_BATTLE_OBJECT
	.equiv OVERWORLD_NPC_OBJECT_F, 1 << OVERWORLD_NPC_OBJECT
	.equiv T3_BATTLE_OBJECT_F, 1 << T3_BATTLE_OBJECT
	.equiv T4_BATTLE_OBJECT_F, 1 << T4_BATTLE_OBJECT
	.equiv OVERWORLD_MAP_OBJECT_F, 1 << OVERWORLD_MAP_OBJECT
	
	.equiv NUM_OVERWORLD_NPC_OBJECTS, 0x10
	.equiv NUM_T1_BATTLE_OBJECTS, 0x20
	.equiv NUM_T3_BATTLE_OBJECTS, 0x20
	.equiv NUM_T4_BATTLE_OBJECTS, 0x20
	.equiv NUM_OVERWORLD_MAP_OBJECTS, 0x38

	.equiv REAL_WORLD_MAP_GROUP_START, 0x00
	.equiv INTERNET_MAP_GROUP_START, 0x80
	.equiv UNKNOWN_MAP_GROUP_START, 0xf0

	enum_start 1
	enum BLUE_MYSTERY_DATA   // 1
	enum UNK_MYSTERY_DATA_2  // 2
	enum PURPLE_MYSTERY_DATA // 3
	enum UNK_MYSTERY_DATA_4  // 4
	enum GREEN_MYSTERY_DATA  // 5
	enum UNK_MYSTERY_DATA_6  // 6

	.equiv NULL, 0
	.equiv TRUE, 1
	.equiv FALSE, 0
	.equiv timer_2000000, 0x2000000
