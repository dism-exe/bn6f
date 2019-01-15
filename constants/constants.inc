	.include "constants/gba_constants.inc"
	.include "constants/iwram_end_locations.inc" // will be removed later

	enum_start
	enum OVERWORLD_PLAYER_OBJECT
	enum T1_BATTLE_OBJECT
	enum OVERWORLD_NPC_OBJECT
	enum T3_BATTLE_OBJECT
	enum T4_BATTLE_OBJECT
	enum OVERWORLD_MAP_OBJECT

	.equ NUM_OVERWORLD_NPC_OBJECTS, 0x10
	.equ NUM_T1_BATTLE_OBJECTS, 0x20
	.equ NUM_T3_BATTLE_OBJECTS, 0x20
	.equ NUM_T4_BATTLE_OBJECTS, 0x20
	.equ NUM_OVERWORLD_MAP_OBJECTS, 0x38
