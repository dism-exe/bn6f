	.ifndef CONSTANTS_INC
	.set CONSTANTS_INC, 0

	.include "constants/gba_constants.inc"
	.include "constants/enums/enums.inc"
	.include "constants/iwram_end_locations.inc" // will be removed later

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

	.equiv NUM_GFX_ANIMS, 0x12

    // pointers to compressed data have this flag set
    .equiv COMPRESSED_PTR_FLAG, 0x80000000

	enum_start 1 // type: enum MysteryDataState
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

	enum_start // type: enum Navi
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

	enum_start // type: enum ElemType
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

	enum_start
	enum MAP_GROUP_TRANSITION_TYPE_SAME_MAP_GROUP_TYPE // 0x0
	enum MAP_GROUP_TRANSITION_TYPE_INTERNET_TO_REAL_WORLD // 0x1
	enum MAP_GROUP_TRANSITION_TYPE_REAL_WORLD_TO_INTERNET // 0x2

	enum_start
	enum TF_NONE // 0x0
	enum TF_HEATCROSS // 0x1
	enum TF_ELECCROSS // 0x2
	enum TF_SLASHCROSS // 0x3
	enum TF_ERASECROSS // 0x4
	enum TF_CHARGECROSS // 0x5
	enum TF_SPOUTCROSS // 0x6
	enum TF_TOMAHAWKCROSS // 0x7
	enum TF_TENGUCROSS // 0x8
	enum TF_GROUNDCROSS // 0x9
	enum TF_DUSTCROSS // 0xa
	enum TF_GREGARBEAST // 0xb
	enum TF_FALZARBEAST // 0xc
	enum TF_HEATBEAST // 0xd
	enum TF_ELECBEAST // 0xe
	enum TF_SLASHBEAST // 0xf
	enum TF_ERASEBEAST // 0x10
	enum TF_CHARGEBEAST // 0x11
	enum TF_SPOUTBEAST // 0x12
	enum TF_TOMAHAWKBEAST // 0x13
	enum TF_TENGUBEAST // 0x14
	enum TF_GROUNDBEAST // 0x15
	enum TF_DUSTBEAST // 0x16
	enum TF_GREGARBEASTOVER // 0x17
	enum TF_FALZARBEASTOVER // 0x18

	enum_start
	enum CHIP_ELEM_FIRE // 0x0
	enum CHIP_ELEM_AQUA // 0x1
	enum CHIP_ELEM_ELEC // 0x2
	enum CHIP_ELEM_WOOD // 0x3
	enum CHIP_ELEM_PLUS // 0x4
	enum CHIP_ELEM_SWORD // 0x5
	enum CHIP_ELEM_CURSOR // 0x6
	enum CHIP_ELEM_OBSTACLE // 0x7
	enum CHIP_ELEM_WIND // 0x8
	enum CHIP_ELEM_BREAK // 0x9
	enum CHIP_ELEM_NONE // 0xa

	.endif // CONSTANTS_INC
