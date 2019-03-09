	.include "constants/gba_constants.inc"
	.include "constants/GameAreas.inc"
	.include "constants/SoundOffsets.inc"
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

	enum_start 1
	enum BLUE_MYSTERY_DATA   // 1
	enum UNK_MYSTERY_DATA_2  // 2
	enum PURPLE_MYSTERY_DATA // 3
	enum UNK_MYSTERY_DATA_4  // 4
	enum GREEN_MYSTERY_DATA  // 5
	enum UNK_MYSTERY_DATA_6  // 6

	// text script
	enum_start 0xE5
	enum TEXTSCRIPT_E5_NOP							// ()
	enum TEXTSCRIPT_E6_END							// ()
	enum TEXTSCRIPT_E7_BUTTONHALT	    	// (mode)
	enum TEXTSCRIPT_E8_MSGBOX						// (mode, [XX, YY])
	enum TEXTSCRIPT_E9_NEWLINE          // ()
	enum TEXTSCRIPT_EA_FLAG             //
	enum TEXTSCRIPT_EB_OPTION           //
	enum TEXTSCRIPT_EC_LABEL            //
	enum TEXTSCRIPT_ED_SELECT           //
	enum TEXTSCRIPT_EE_PAUSE            //
	enum TEXTSCRIPT_EF_CHECKFLAG        //
	enum TEXTSCRIPT_F0_JUMP             //
	enum TEXTSCRIPT_F1_TEXTSPEED        //
	enum TEXTSCRIPT_F2_CLEARMSGBOX      //
	enum TEXTSCRIPT_F3_CONTROL          //
	enum TEXTSCRIPT_F4_UNK              //
	enum TEXTSCRIPT_F5_MUGSHOT          //
	enum TEXTSCRIPT_F6_TEXTCOLOR        //
	enum TEXTSCRIPT_F7_MOVEBOX          //
	enum TEXTSCRIPT_F8_PLAYERANIMATION	//
	enum TEXTSCRIPT_F9_STOREBYTE        //
	enum TEXTSCRIPT_FA_PRINT            //
	enum TEXTSCRIPT_FB_SPECIAL          //
	enum TEXTSCRIPT_FC_INTERFACE        //
	enum TEXTSCRIPT_FD_SOUND            //
	enum TEXTSCRIPT_FE_NUMBERINPUT      //
	enum TEXTSCRIPT_FF_COPYTEXT         //

	.equiv NULL, 0
	.equiv timer_2000000, 0x2000000
