
	enum_start

	enum ms_end_cmd // 0x00
// 0x00
// return from script
	.macro ms_end
	.byte ms_end_cmd
	.endm

// shared command
	enum ms_jump_cmd // 0x01
// 0x01/0x15 destination1
// jump to another script
// destination1 - script to jump to
	.macro ms_jump destination1:req
	.byte ms_jump_cmd
	.word \destination1
	.endm

// shared command
	enum ms_jump_if_progress_in_range_cmd // 0x02
// 0x02/0x16 byte1 byte2 destination3
// jump if byte1 <= progress byte <= byte2
// byte1 - lower bound for progress byte
// byte2 - upper bound for progress byte
// destination3 - script to jump to
	.macro ms_jump_if_progress_in_range byte1:req, byte2:req, destination3:req
	.byte ms_jump_if_progress_in_range_cmd
	.byte \byte1, \byte2
	.word \destination3
	.endm

// shared command
	enum ms_jump_if_flag_set_cmd // 0x03
// 0x03/0x17 byte1 hword2 destination4
// jump if event flag in mem or immediate is set
// byte1 - memory param
// hword2 - flag to test
// destination4 - script to jump to
	.macro ms_jump_if_flag_set byte1:req, hword2:req, destination4:req
	.byte ms_jump_if_flag_set_cmd
	.byte \byte1
	.hword \hword2
	.word \destination4
	.endm

// shared command
	enum ms_jump_if_flag_range_set_cmd // 0x04
// 0x04/0x18 byte1 hword2 destination4
// jump if (all) event flags in the event flag range are set
// byte1 - number of flags to test
// hword2 - starting flag to test
// destination4 - script to jump to
	.macro ms_jump_if_flag_range_set byte1:req, hword2:req, destination4:req
	.byte ms_jump_if_flag_range_set_cmd
	.byte \byte1
	.hword \hword2
	.word \destination4
	.endm

// shared command
	enum ms_jump_if_flag_clear_cmd // 0x05
// 0x05/0x19 byte1 hword2 destination4
// jump if event flag in mem or immediate is clear
// byte1 - memory param
// hword2 - flag to test
// destination4 - script to jump to
	.macro ms_jump_if_flag_clear byte1:req, hword2:req, destination4:req
	.byte ms_jump_if_flag_clear_cmd
	.byte \byte1
	.hword \hword2
	.word \destination4
	.endm

// shared command
	enum ms_jump_if_flag_range_clear_cmd // 0x06
// 0x06/0x1a byte1 hword2 destination4
// jump if not all event flags in the event flag range are set
// byte1 - number of flags to test
// hword2 - starting flag to test
// destination4 - script to jump to
	.macro ms_jump_if_flag_range_clear
	.byte ms_jump_if_flag_range_clear_cmd
	.byte \byte1
	.hword \hword2
	.word \destination4
	.endm

// shared command
	enum ms_jump_if_mem_equals_cmd // 0x07
	subenum_start

	subenum ms_jump_if_byte_equals_subcmd // 0x0
// 0x07/0x1b 0x00 word2 destination6 byte10
// jump if [word2] == byte10
// word2 - pointer to read from
// destination6 - script to jump to
// byte10 - value to compare [word2] with
	.macro ms_jump_if_byte_equals word2:req destination6:req byte10:req
	.byte ms_jump_if_mem_equals_cmd
	.byte ms_jump_if_byte_equals_subcmd
	.word \word2
	.word \destination6
	.byte \byte10
	.endm

	subenum ms_jump_if_hword_equals_subcmd // 0x1
// 0x07/0x1b 0x01 word2 destination6 hword10
// jump if [word2] == hword10
// word2 - pointer to read from
// destination6 - script to jump to
// hword10 - value to compare [word2] with
	.macro ms_jump_if_hword_equals word2:req destination6:req hword10:req
	.byte ms_jump_if_mem_equals_cmd
	.byte ms_jump_if_hword_equals_subcmd
	.word \word2
	.word \destination6
	.hword \hword10
	.endm

	subenum ms_jump_if_word_equals_subcmd // 0x2
// 0x07/0x1b 0x02 word2 destination6 word10
// jump if [word2] == word10
// word2 - pointer to read from
// destination6 - script to jump to
// word10 - value to compare [word2] with
	.macro ms_jump_if_word_equals_subcmd word2:req destination6:req word10:req
	.byte ms_jump_if_mem_equals_cmd
	.byte ms_jump_if_word_equals_subcmd
	.word \word2
	.word \destination6
	.word \word10
	.endm

// shared command
	enum ms_jump_if_key_item_in_range_cmd // 0x08
// 0x08/0x1d byte1 byte2 byte3 destination
// jump if the specified key item is in the given range
// i.e. byte2 <= CheckKeyItem(byte1) <= byte3
// byte1 - key item to check
// byte2 - lower bound of key item range, inclusive
// byte3 - upper bound of key item range, inclusive
// destination4 - script to jump to
	.macro ms_jump_if_key_item_in_range byte1:req byte2:req byte3:req destination4:req
	.byte ms_jump_if_key_item_in_range_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.word \destination4
	.endm

// shared command
	enum ms_jump_if_chip_count_in_range_cmd // 0x09
// 0x09/0x1e hword1 byte3 byte4 byte5 destination6
// jump if the number of the specified chip with optional code is in the given range
// hword1 - chip to count
// byte3 - code of chip to be counted, or 0xff to ignore code
// byte4 - lower bound of chip count, inclusive
// byte5 - upper bound of chip count, inclusive
// destination6 - script to jump to
	.macro ms_jump_if_chip_count_in_range hword1:req byte3:req byte4:req byte5:req destination6:req
	.byte ms_jump_if_chip_count_in_range_cmd
	.hword \hword1
	.byte \byte3
	.byte \byte4, \byte5
	.word \destination6
	.endm

// shared command
	enum ms_jump_if_battle_result_equals_cmd // 0x0a
// 0x0a/0x1f byte1 destination2
// jump if battle result equals byte1
// byte1 - value to compare battle result with (0=won, 1=lost, 2=tie, 3=escaped)
// destination2 - script to jump to
	.macro ms_jump_if_battle_result_equals byte1:req destination2:req
	.byte ms_jump_if_battle_result_equals_cmd
	.byte \byte1
	.word \destination2
	.endm

// shared command
	enum ms_jump_if_battle_result_not_equal_cmd // 0x0b
// 0xb/0x20 byte1 destination2
// jump if battle result doesn't equal byte1
// byte1 - value to compare battle result with (0=won, 1=lost, 2=tie, 3=escaped)
// destination2 - script to jump to
	.macro ms_jump_if_battle_result_not_equal byte1:req destination2:req
	.byte ms_jump_if_battle_result_not_equal_cmd
	.byte \byte1
	.word \destination2
	.endm

// shared command
	enum ms_coordinate_trigger_equals_cmd_8035afa_cmd // 0x0c
// 0x0c/0x21 byte1 signedbyte2 destination3
// jump if the return value of the coordinate trigger function (sub_8031A7A) equals byte1
// sub_8031A7A returns r0, r1. if r0 == 0, r1 is used in comparison
// byte1 - byte to compare return value of sub_8031A7A
// signedbyte2 - signed offset to overworld player object coordinates
// destination3 - script to jump to
	.macro ms_coordinate_trigger_equals_cmd_8035afa byte1:req signedbyte2:req destination3:req
	.byte ms_coordinate_trigger_equals_cmd_8035afa_cmd
	.byte \byte1
	.byte \signedbyte2
	.word \destination3
	.endm

// shared command
	enum ms_coordinate_trigger_not_equal_cmd_8035b44_cmd // 0x0d
// 0x0d/0x22 byte1 signedbyte2 destination3
// jump if the return value of the coordinate trigger function (sub_8031A7A) doesn't equal byte1
// sub_8031A7A returns r0, r1. if r0 == 0, r1 is used in comparison
// byte1 - byte to compare return value of sub_8031A7A
// signedbyte2 - signed offset to overworld player object coordinates
// destination3 - script to jump to
	.macro ms_coordinate_trigger_not_equal_cmd_8035b44 byte1:req signedbyte2:req destination3:req
	.byte ms_coordinate_trigger_not_equal_cmd_8035b44_cmd
	.byte \byte1
	.byte \signedbyte2
	.word \destination3
	.endm

	enum ms_jump_if_game_state_0e_equals_cmd // 0x0e
// 0x0e byte1 destination2
// jump if byte1 == [eGameState_CoordInteractionValue]
// byte1 - byte to compare [eGameState_CoordInteractionValue] with
// destination2 - script to jump to
	.macro ms_jump_if_game_state_0e_equals byte1:req destination2:req
	.byte ms_jump_if_game_state_0e_equals_cmd
	.byte \byte1
	.word \destination2
	.endm

	enum ms_jump_if_game_state_0e_not_equals_cmd // 0x0f
// 0x0f byte1 destination2
// jump if byte1 != [eGameStateUnk_0e]
// byte1 - byte to compare [eGameState_CoordInteractionValue] with
// destination2 - script to jump to
	.macro ms_jump_if_game_state_0e_not_equals byte1:req destination2:req
	.byte ms_jump_if_game_state_0e_not_equals_cmd
	.byte \byte1
	.word \destination2
	.endm

// shared command
	enum ms_jump_if_current_navi_equals_cmd // 0x10
// 0x10/0x23 byte1 destination2
// jump if the player's current navi equals byte1
// byte1 - navi to compare the current navi with
// destination2 - script to jump to
	.macro ms_jump_if_current_navi_equals byte1:req destination2:req
	.byte ms_jump_if_current_navi_equals_cmd
	.byte \byte1
	.word \destination2
	.endm

// shared command
	enum ms_jump_if_current_navi_not_equal_cmd // 0x11
// 0x11/0x24 byte1 destination2
// jump if the player's current navi doesn't equal byte1
// byte1 - navi to compare the current navi with
// destination2 - script to jump to
	.macro ms_jump_if_current_navi_not_equal byte1:req destination2:req
	.byte ms_jump_if_current_navi_not_equal_cmd
	.byte \byte1
	.word \destination2
	.endm

	enum ms_jump_if_player_z_equals_cmd // 0x12
// 0x12 signedhword1 destination2
// jump if the the player's z coordinate equals signedhword1
// signedhword1 - z coordinate to compare the player's z coordinate with
// destination2 - script to jump to
	.macro ms_jump_if_player_z_equals signedhword1:req destination2:req
	.byte ms_jump_if_player_z_equals_cmd
	.hword \signedhword1
	.word \destination2
	.endm

	enum ms_jump_if_player_z_not_equals_cmd // 0x13
// 0x13 signedhword1 destination2
// jump if the the player's z coordinate does not equal signedhword1
// signedhword1 - z coordinate to compare the player's z coordinate with
// destination2 - script to jump to
	.macro ms_jump_if_player_z_not_equals signedhword1:req destination2:req
	.byte ms_jump_if_player_z_not_equals_cmd
	.hword \signedhword1
	.word \destination2
	.endm

	enum ms_jump_if_game_state_44_equals_cmd // 0x14
// 0x14 hword1 destination2
// jump if hword1 equals eGameState_Unk_44
// hword1 - value to compare eGameState_Unk_44 with
// destination2 - script to jump to
	.macro ms_jump_if_game_state_44_equals hword1:req destination2:req
	.byte ms_jump_if_game_state_44_equals_cmd
	.hword \hword1
	.word \destination2
	.endm

	enum ms_jump_if_game_state_44_not_equals_cmd // 0x15
// 0x15 hword1 destination2
// jump if hword1 doesn't equal eGameState_Unk_44
// hword1 - value to compare eGameState_Unk_44 with
// destination2 - script to jump to
	.macro ms_jump_if_game_state_44_not_equals hword1:req destination2:req
	.byte ms_jump_if_game_state_44_not_equals_cmd
	.hword \hword1
	.word \destination2
	.endm

	enum ms_jump_if_map_group_compare_last_map_group_cmd // 0x16
	subenum_start

	subenum ms_jump_if_map_group_not_equal_last_map_group_subcmd // 0x0
// 0x16 0x00 destination2
// jump if the current map group does not equal the last map group
// destination2 - script to jump to
	.macro ms_jump_if_map_group_not_equal_last_map_group destination2:req
	.byte ms_jump_if_map_group_compare_last_map_group_cmd
	.byte ms_jump_if_map_group_not_equal_last_map_group_subcmd
	.word \destination2
	.endm

	subenum ms_jump_if_map_group_equals_last_map_group_subcmd // 0x1
// 0x16 0x01 destination2
// jump if the current map group equals the last map group
// destination2 - script to jump to
	.macro ms_jump_if_map_group_equals_last_map_group destination2:req
	.byte ms_jump_if_map_group_compare_last_map_group_cmd
	.byte ms_jump_if_map_group_not_equal_last_map_group_subcmd
	.word \destination2
	.endm

	enum ms_switch_case_from_navi_stats_4c_cmd // 0x17
// 0x17 destination1 destination5 destination9
// jumptable, using [eNaviStats + 0x4c] as the base index
// default is destination1
// destination1 - script to jump to if [eNaviStats + 0x4c] is not 1 or 2
// destination5 - script to jump to if [eNaviStats + 0x4c] is 1
// destination9 - script to jump to if [eNaviStats + 0x4c] is 2
	.macro ms_switch_case_from_navi_stats_4c destination1:req destination5:req destination9:req
	.byte ms_switch_case_from_navi_stats_4c_cmd
	.word \destination1
	.word \destination5
	.word \destination9
	.endm

	enum ms_cmd_8035cd6_cmd // 0x18
// 0x18 byte1 destination2
// jump if byte1 == sub_800B734()
// sub_800B734 performs a summation on the 12 halfwords at word_2000FA0
//  returns 0 if the summation is greater than 0x2a30
//  returns 1 if 0x1c20 < summation <= 0x2a30
//  else returns 2
// byte1 - value to compare the return value of sub_800B734 with
// destination2 - script to jump to
	.macro ms_cmd_8035cd6 byte1:req destination2:req
	.byte ms_cmd_8035cd6_cmd
	.byte \byte1
	.word \destination2
	.endm

	enum ms_cmd_8035cf8_cmd // 0x19
// 0x19 byte1 destination2
// jump if byte1 != sub_800B734()
// sub_800B734 performs a summation on the 12 halfwords at word_2000FA0
//  returns 0 if the summation is greater than 0x2a30
//  returns 1 if 0x1c20 < summation <= 0x2a30
//  else returns 2
// byte1 - value to compare the return value of sub_800B734 with
// destination2 - script to jump to
	.macro ms_cmd_8035cf8 byte1:req destination2:req
	.byte ms_cmd_8035cf8_cmd
	.byte \byte1
	.word \destination2
	.endm

	enum ms_jump_if_fade_active_cmd // 0x1a
// 0x1a destination1
// jump if the screen is fading
// destination1 - script to jump to
	.macro ms_jump_if_fade_active destination1:req
	.byte ms_jump_if_fade_active_cmd
	.word \destination1
	.endm

	enum ms_jump_if_eStruct200a6a0_initialized_cmd // 0x1b
// 0x1b destination1
// jump if [eStruct200a6a0] != 0
// destination1 - script to jump to
	.macro ms_jump_if_eStruct200a6a0_initialized destination1:req
	.byte ms_jump_if_eStruct200a6a0_initialized_cmd
	.word \destination1
	.endm

	enum ms_jump_if_in_pet_menu_cmd // 0x1c
// 0x1c destination1
// jump if the PET menu or a submenu is open (ePETMenuData+5)
// destination1 - script to jump to
	.macro ms_jump_if_in_pet_menu destination1:req
	.byte ms_jump_if_in_pet_menu_cmd
	.word \destination1
	.endm

// shared command
	enum ms_set_screen_fade_cmd // 0x1d
// 0x1d/0x27 byte1 byte2 byte3
// set screen fade
// byte1 - memory param (base index, memory for byte3 is [eMapScriptState + byte1 + 1])
// byte2 or mem1 - argument 1 for screen fade
// byte3 or mem2 - argument 2 for screen fade
	.macro ms_set_screen_fade
	.byte ms_set_screen_fade_cmd byte1:req byte2:req byte3:req
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.endm

// shared command
	enum ms_set_game_state_16_17_cmd // 0x1e
// 0x1e/0x28 byte1 byte2
// store byte1 and byte2 in eGameState_Unk_16 and eGameState_Unk_17 respectively
// byte1 - value to store to eGameState_Unk_16
// byte2 - value to store to eGameState_Unk_17
	.macro ms_set_game_state_16_17 byte1:req byte2:req
	.byte ms_set_game_state_16_17_cmd
	.byte \byte1
	.byte \byte2
	.endm

// shared command
	enum ms_set_event_flag_cmd // 0x1f
// 0x1f/0x29 byte1 hword2
// set event flag
// byte1 - memory param
// hword2 or mem - event flag to set
	.macro ms_set_event_flag byte1:req hword2:req
	.byte ms_set_event_flag_cmd
	.byte \byte1
	.hword \hword2
	.endm

// shared command
	enum ms_clear_event_flag_cmd // 0x20
// 0x20/0x2a byte1 hword2
// clear event flag
// byte1 - memory param
// hword2 or mem - event flag to clear
	.macro ms_clear_event_flag byte1:req hword2:req
	.byte ms_clear_event_flag_cmd
	.byte \byte1
	.hword \hword2
	.endm

// shared command
	enum ms_set_event_flag_range_cmd // 0x21
// 0x21/0x2b byte1 hword2
// set byte1 event flags starting at the event flag hword2
// event flags set are in the range [hword2, hword2+byte1) (interval notation)
// byte1 - number of event flags to set
// hword2 - starting event flag
	.macro ms_set_event_flag_range byte1:req hword2:req
	.byte ms_set_event_flag_range_cmd
	.byte \byte1
	.hword \hword2
	.endm

// shared command
	enum ms_clear_event_flag_range_cmd // 0x22
// 0x22/0x2c byte1 hword2
// clear byte1 event flags starting at the event flag hword2
// event flags cleared are in the range [hword2, hword2+byte1) (interval notation)
// byte1 - number of event flags to clear
// hword2 - starting event flag
	.macro ms_clear_event_flag_range byte1:req hword2:req
	.byte ms_clear_event_flag_range_cmd
	.byte \byte1
	.hword \hword2
	.endm

// shared command
	enum ms_set_event_flag_list_cmd // 0x23
// 0x23/0x2d word1
// set the list of event flags at word1, terminated by (presumably) -1
// word1 - list of event flags to set, terminated by a negative number (presumably -1)
	.macro ms_set_event_flag_list word1:req
	.byte ms_set_event_flag_list_cmd
	.word \word1
	.endm

// shared command
	enum ms_clear_event_flag_list_cmd // 0x24
// 0x24/0x2e word1
// clear the list of event flags at word1, terminated by (presumably) -1
// word1 - list of event flags to clear, terminated by a negative number (presumably -1)
	.macro ms_clear_event_flag_list word1:req
	.byte ms_clear_event_flag_list_cmd
	.word \word1
	.endm

	enum ms_call_native_function_cmd // 0x25
// 0x25 word1 word5
// call the native function word1 with word5 in r0
// word1 - native function to call
// word5 - parameter to native function
	.macro ms_call_native_function word1:req word5:req
	.byte ms_call_native_function_cmd
	.word \word1
	.word \word5
	.endm

	enum ms_start_cutscene_cmd // 0x26
// 0x26 word1 word5
// start a cutscene
// word1 - cutscene script to start
// word5 - cutscene parameter
	.macro ms_start_cutscene word1:req word5:req
	.byte ms_start_cutscene_cmd
	.word \word1
	.word \word5
	.endm

// shared command
	enum ms_write_byte_cmd // 0x27
// 0x27/0x2f word1 byte5
// write byte5 to the memory at word1
// [word1] = byte5
// word1 - pointer to write to
// byte5 - value to write
	.macro ms_write_byte word1:req byte5:req
	.byte ms_write_byte_cmd
	.word \word1
	.byte \byte5
	.endm

// shared command
	enum ms_write_hword_cmd // 0x28
// 0x28/0x30 word1 hword5
// write hword5 to the memory at word1
// [word1] = hword5
// word1 - pointer to write to
// hword5 - value to write
	.macro ms_write_hword word1:req hword5:req
	.byte ms_write_hword_cmd
	.word \word1
	.hword \hword5
	.endm

// shared command
	enum ms_write_word_cmd // 0x29
// 0x29/0x31 word1 word5
// write word5 to the memory at word1
// [word1] = word5
// word1 - pointer to write to
// word5 - value to write
	.macro ms_write_word word1:req word5:req
	.byte ms_write_word_cmd
	.word \word1
	.word \word5
	.endm

// shared command
	enum ms_write_gamestate_byte_cmd // 0x2a
// 0x2a/0x32 byte1 byte2
// write byte2 to the eGameState field byte1
// [eGameState + byte1] = byte2
// byte1 - eGameState field to write to
// byte2 - value to write
	.macro ms_write_gamestate_byte byte1:req byte2:req
	.byte ms_write_gamestate_byte_cmd
	.byte \byte1
	.byte \byte2
	.endm

// shared command
	enum ms_write_eStruct2001c04_byte_cmd // 0x2b
// 0x2b/0x33 byte1 byte2
// write byte2 to the eStruct2001c04 field byte1
// [eStruct2001c04 + byte1] = byte2
// byte1 - eStruct2001c04 field to write to
// byte2 - value to write
	.macro ms_write_eStruct2001c04_byte byte1:req byte2:req
	.byte ms_write_eStruct2001c04_byte_cmd
	.byte \byte1
	.byte \byte2
	.endm

// shared command
	enum ms_call_sub_8001B1C_cmd // 0x2c
// 0x2c/0x36 word1
// call LoadGFXAnim(r0=word1)
// word1 - argument to LoadGFXAnim
	.macro ms_call_sub_8001B1C word1:req
	.byte ms_call_sub_8001B1C_cmd
	.word \word1
	.endm

// shared command
	enum ms_call_sub_8001B1C_multiple_cmd // 0x2d
// 0x2d/0x37 word1
// do LoadGFXAnims(r0=word1)
// r0 is a list of pointers for LoadGFXAnim, terminated by negative
	.macro ms_call_sub_8001B1C_multiple word1:req
	.byte ms_call_sub_8001B1C_multiple_cmd
	.word \word1
	.endm

// shared command
	enum ms_call_sub_8030A30_8035194_cmd // 0x2e
// 0x2e/0x38
// call sub_8030A30, then LoadBGAnimForMapGroup
// uses map group/number as args
	.macro ms_call_sub_8030A30_8035194
	.byte ms_call_sub_8030A30_8035194_cmd
	.endm

// shared command
	enum ms_cmd_8035F6A_cmd // 0x2f
// 0x2f/0x39 byte1
// if byte1 == 0xff, call TerminateGFXAnim with r0 as 0x0 to 0x11
// else, call TerminateGFXAnim with r0=byte1
	.macro ms_cmd_8035F6A byte1:req
	.byte ms_cmd_8035F6A_cmd
	.byte \byte1
	.endm

// shared command
	enum ms_play_sound_cmd // 0x30
// 0x30/0x4d hword1
// play sound
// hword1 - sound to play
	.macro ms_play_sound hword1:req
	.byte ms_play_sound_cmd
	.hword \hword1
	.endm

// shared command
	enum ms_play_music_cmd // 0x31
// 0x31/0x4e hword1
// play music
// hword1 - music to play. if this is negative, then play the current map music
	.macro ms_play_music hword1:req
	.byte ms_play_music_cmd
	.hword \hword1
	.endm

// shared command
	enum ms_sound_cmd_80380ea_cmd // 0x32
// 0x32/0x4f hword1 byte3 byte4
// call sound_80006A2 with r0=hword1, r1=byte3, r2=byte4
	.macro ms_sound_cmd_80380ea hword1:req byte3:req byte4:req
	.byte ms_sound_cmd_80380ea_cmd
	.hword \hword1
	.byte \byte3
	.byte \byte4
	.endm

// shared command
	enum ms_sound_cmd_803810e_cmd // 0x33
// 0x33/0x50 byte1 byte2
// call sound_800068A with r0=byte1, r1=byte2 then do [eGameState_BGMusicIndicator] = 0x63
	.macro ms_sound_cmd_803810e byte1:req byte2:req
	.byte ms_sound_cmd_803810e_cmd
	.byte \byte1
	.byte \byte2
	.endm

// shared command
	enum ms_stop_sound_cmd // 0x34
// 0x34/0x51
// stop any sounds
	.macro ms_stop_sound
	.byte ms_stop_sound_cmd
	.endm

// shared command
	enum ms_give_or_take_item_cmd // 0x35
	subenum_start

	subenum ms_give_item_subcmd // 0x0
// 0x35/0x52 0x0 byte2 byte3
// give or take an item
// byte1 - operation type (0=give, 1=take)
// byte2 - item to give or take
// byte3 - quantity of item
	.macro ms_give_item byte2:req byte3:req
	.byte ms_give_or_take_item_cmd
	.byte ms_give_item_subcmd
	.byte \byte2
	.byte \byte3
	.endm

	subenum ms_take_item_subcmd // 0x1
// 0x35/0x52 byte1 byte2 byte3
// give or take an item
// byte1 - operation type (0=give, 1=take)
// byte2 - item to give or take
// byte3 - quantity of item
	.macro ms_take_item byte2:req byte3:req
	.byte ms_give_or_take_item_cmd
	.byte ms_take_item_subcmd
	.byte \byte2
	.byte \byte3
	.endm

// shared command
	enum ms_do_pet_effect_cmd // 0x36
// 0x36/0x53 byte1 byte2
// trigger a PET overworld effect
// byte1 - memory param
// byte2 or mem - PET overworld effect to trigger
	.macro ms_do_pet_effect byte1:req byte2:req
	.byte ms_do_pet_effect_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum_skip 1 // 0x37

// shared command
	enum ms_init_eStruct200a6a0_cmd // 0x38
// 0x38/0x58 word1 word5 word9
// call Initialize_eStruct200a6a0 with r0=word1, r1=word5, r2=word9
	.macro ms_init_eStruct200a6a0 word1:req word5:req word9:req
	.byte ms_init_eStruct200a6a0_cmd
	.word \word1
	.word \word5
	.word \word9
	.endm

// shared command
	enum ms_run_eStruct200a6a0_callback_cmd // 0x39
// 0x39/0x59
// call run_eStruct200a6a0_Callback_8002484
	.macro ms_run_eStruct200a6a0_callback
	.byte ms_run_eStruct200a6a0_callback_cmd
	.endm

	enum ms_run_or_end_secondary_continuous_map_script_cmd // 0x3a
	subenum_start

	subenum ms_run_secondary_continuous_map_script_subcmd // 0x0
// 0x3a 0x0 word2
// set the secondary continuous map script pointer
// word2 - map script pointer to set the secondary continuous map script pointer to
	.macro ms_run_secondary_continuous_map_script word2:req
	.byte ms_run_or_end_secondary_continuous_map_script_cmd
	.byte ms_run_secondary_continuous_map_script_subcmd
	.word \word2
	.endm

	subenum ms_end_secondary_continuous_map_script_subcmd // 0x1
// 0x3a 0x1
// end execution of the secondary continuous map script pointer
	.macro ms_run_or_end_secondary_continuous_map_script
	.byte ms_run_or_end_secondary_continuous_map_script_cmd
	.byte ms_end_secondary_continuous_map_script_subcmd
	.endm

// shared command
	enum ms_init_scenario_effect_cmd // 0x3b
// 0x3b/0x60 byte1
// init scenario effect
// byte1 - scenario effect to initialize (0=soul weapons counter, 1=mr. weather comp rainbow gauge)
	.macro ms_init_scenario_effect byte1:req
	.byte ms_init_scenario_effect_cmd
	.byte \byte1
	.endm

// shared command
	enum ms_end_scenario_effect_cmd // 0x3c
// 0x3c/0x61
// end scenario effect
	.macro ms_end_scenario_effect
	.byte ms_end_scenario_effect_cmd
	.endm

// shared command
	enum ms_init_minigame_effect_cmd // 0x3d
// 0x3d/0x62 byte1
// init minigame effect
// byte1 - minigame effect to initialize (0=AquaMan, 1=SlashMan, 2=TenguMan, 3=ElecMan, 4=EraseMan, 5=GroundMan).
	.macro ms_init_minigame_effect byte1:req
	.byte ms_init_minigame_effect_cmd
	.byte \byte1
	.endm

// shared command
	enum ms_end_minigame_effect_cmd // 0x3e
// 0x3e/0x63
// end minigame effect
	.macro ms_end_minigame_effect
	.byte ms_end_minigame_effect_cmd
	.endm

	enum_skip 1

	enum ms_spawn_or_free_objects_cmd // 0x40
	subenum_start

	subenum ms_spawn_objects_subcmd // 0x0
// 0x40 0x0 word2
// spawn objects from list
// word2 - list of structs corresponding to which objects to spawn and params
// list terminated by 0xff
// struct format: byte0 byte1 word4 word8 word0xc word0x10
// byte0 - object type
// byte1 - object index
// word4 - x coordinate
// word8 - y coordinate
// word0xc - z coordinate
// word0x10 - param (written to field 0x4)
	.macro ms_spawn_objects word2:req
	.byte ms_spawn_or_free_objects_cmd
	.byte ms_spawn_objects_subcmd
	.word \word2
	.endm

	subenum ms_free_objects_subcmd // 0x1
// 0x40 0x01 byte2
// free all objects of specified types
// byte2 - bitfield of objects to free
// see constants/constants.inc for object type flags
	.macro ms_spawn_or_free_objects byte2:req
	.byte ms_spawn_or_free_objects_cmd
	.byte ms_free_objects_subcmd
	.byte \byte2
	.endm

// shared command
	enum ms_add_bbs_message_range_cmd // 0x41
// 0x41/0x67 hword1 byte3
// add the range of bbs messages specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting bbs message flag
// byte3 - number of bbs messages to add
	.macro ms_add_bbs_message_range hword1:req byte3:req
	.byte ms_add_bbs_message_range_cmd
	.hword \hword1
	.byte \byte3
	.endm

// shared command
	enum ms_add_mail_range_cmd // 0x42
// 0x42/0x6b hword1 byte3
// add the range of mails specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting mail flag
// byte3 - number of mails to add
	.macro ms_add_mail_range hword1:req byte3:req
	.byte ms_add_mail_range_cmd
	.hword \hword1
	.byte \byte3
	.endm

// shared command
	enum ms_cmd_8038346_cmd // 0x43
// 0x43/0x6c word1 word5
// call sub_80356F8 with r0=word1 and r1=word5
	.macro ms_cmd_8038346 word1:req word5:req
	.byte ms_cmd_8038346_cmd
	.word \word1
	.word \word5
	.endm

// shared command
	enum ms_add_request_range_cmd // 0x44
// 0x44/0x78
// add the range of bbs requests specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting bbs request flag
// byte3 - number of bbs requests to add
	.macro ms_add_request_range hword1:req byte3:req
	.byte ms_add_request_range_cmd
	.hword \hword1
	.byte \byte3
	.endm

// shared command
	enum ms_rush_food_cmd_80384A8_cmd // 0x45
// 0x45/0x79 unused1to3 destination4
// appears to be "jump_if_has_rush_food_and_a_pressed"
// but it isn't triggered when using a piece of rush food
// unused1to3 - unused
// destination4 - script to jump to
	.macro ms_rush_food_cmd_80384A8 destination4:req
	.byte ms_rush_food_cmd_80384A8_cmd
	.byte 0, 0, 0
	.word \destination4
	.endm

