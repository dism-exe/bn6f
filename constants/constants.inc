	.include "constants/gba_constants.inc"
	.include "constants/iwram_end_locations.inc" // will be removed later

	enum_start
	enum OVERWORLD_PLAYER_OBJECT
	enum T1_BATTLE_OBJECT
	enum OVERWORLD_NPC_OBJECT
	enum T3_BATTLE_OBJECT
	enum T4_BATTLE_OBJECT
	enum OVERWORLD_MAP_OBJECT

	.equiv NUM_OVERWORLD_NPC_OBJECTS, 0x10
	.equiv NUM_T1_BATTLE_OBJECTS, 0x20
	.equiv NUM_T3_BATTLE_OBJECTS, 0x20
	.equiv NUM_T4_BATTLE_OBJECTS, 0x20
	.equiv NUM_OVERWORLD_MAP_OBJECTS, 0x38

	.equiv REAL_WORLD_MAP_GROUP_START, 0x00
	.equiv INTERNET_MAP_GROUP_START, 0x80
	.equiv UNKNOWN_MAP_GROUP_START, 0xf0
