	.ifndef CONSTANTS_INC
	.set CONSTANTS_INC, 0

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

	.equiv NUM_S20094C0_STRUCTS, 0x12

    // pointers to compressed data have this flag set
    .equiv COMPRESSED_PTR_FLAG, 0x80000000

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

	enum_start
	enum OW_UP // 0
	enum OW_UP_RIGHT // 1
	enum OW_RIGHT // 2
	enum OW_DOWN_RIGHT // 3
	enum OW_DOWN // 4
	enum OW_DOWN_LEFT // 5
	enum OW_LEFT // 6
	enum OW_UP_LEFT // 7

	enum_start
	enum NAVI_MEGAMAN // 0
	enum NAVI_HEATMAN // 1
	enum NAVI_ELECMAN // 2
	enum NAVI_SLASHMAN // 3
	enum NAVI_ERASEMAN // 4
	enum NAVI_CHARGEMAN // 5
	enum NAVI_SPOUTMAN // 6
	enum NAVI_TOMAHAWKMAN // 7
	enum NAVI_TENGUMAN // 8
	enum NAVI_GROUNDMAN // 9
	enum NAVI_DUSTMAN // 10
	enum NAVI_PROTOMAN // 11

	enum_start
	enum ELEM_NULL // 0x00
	enum ELEM_HEAT // 0x01
	enum ELEM_AQUA // 0x02
	enum ELEM_ELEC // 0x03
	enum ELEM_WOOD // 0x04

	enum_start 4
	flag_enum ELEM_BREAK  // 0x10
	flag_enum ELEM_WIND   // 0x20
	flag_enum ELEM_CURSOR // 0x40
	flag_enum ELEM_SWORD  // 0x80

	.endif // CONSTANTS_INC
