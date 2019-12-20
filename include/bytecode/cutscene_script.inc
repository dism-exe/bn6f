	
	enum_start

	enum cs_end_for_map_reload_maybe_8037c64_cmd // 0x00
// 0x00
// end script for map reload?
	.macro cs_end_for_map_reload_maybe_8037c64
	.byte cs_end_for_map_reload_maybe_8037c64_cmd
	.endm

	enum cs_end_for_map_reload_maybe_80376dc_cmd // 0x01
// 0x01
// end script for map reload?
	.macro cs_end_for_map_reload_maybe_80376dc
	.byte cs_end_for_map_reload_maybe_80376dc_cmd
	.endm

	enum cs_pause_cmd // 0x02
// 0x02 byte1 byte2
// pause the current cutscene script for a given number of frames (up to 255)
// byte1 - memory param
// byte2 or mem - number of frames to pause
	.macro cs_pause byte1:req byte2:req
	.byte cs_pause_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum cs_long_pause_cmd // 0x03
// 0x03 byte1 hword2
// pause the current cutscene script for a given number of frames (up to 65535)
// unlike pause, this supports a longer pause time
// byte1 - memory param
// hword2 or mem - number of frames to pause
	.macro cs_long_pause byte1:req hword2:req
	.byte cs_long_pause_cmd
	.byte \byte1
	.hword \hword2
	.endm

	enum cs_wait_chatbox_cmd // 0x04
// 0x04 byte1
// wait for the chatbox to be cleared
// byte1 - mask for unknown chatbox flags
	.macro cs_wait_chatbox byte1:req
	.byte cs_wait_chatbox_cmd
	.byte \byte1
	.endm

	enum cs_wait_if_player_sprite_cur_frame_not_equal_maybe_cmd // 0x05
// 0x05 byte1
// wait script if the player sprite's current frame doesn't equal byte1
// byte1 - anim frame to compare
	.macro cs_wait_if_player_sprite_cur_frame_not_equal_maybe
	.byte cs_wait_if_player_sprite_cur_frame_not_equal_maybe_cmd
	.endm

	enum cs_nop_80377d0_cmd // 0x06
// 0x06
// functions as a nop
	.macro cs_nop_80377d0
	.byte cs_nop_80377d0_cmd
	.endm

	enum cs_wait_screen_fade_cmd // 0x07
// 0x07
// wait for screen to fade
	.macro cs_wait_screen_fade
	.byte cs_wait_screen_fade_cmd
	.endm

	enum cs_wait_camera_script_cmd // 0x08
// 0x08
// wait for cutscene camera script to finish
	.macro cs_wait_camera_script
	.byte cs_wait_camera_script_cmd
	.endm

	enum cs_wait_var_equal_cmd // 0x09
// 0x09 byte1 byte2
// wait for cutscene variable to be equal to byte2
// byte1 - cutscene variable to read from
// byte2 - value to compare cutscene variable with
	.macro cs_wait_var_equal
	.byte cs_wait_var_equal_cmd byte1:req byte2:req
	.byte \byte1
	.byte \byte2
	.endm

	enum cs_wait_cutscene_process_cmd // 0x0a
// 0x0a byte1
// wait for cutscene process to end
// byte1 - offset to cutscene script in cutscene state (which cutscene process)
	.macro cs_wait_cutscene_process byte1:req
	.byte cs_wait_cutscene_process_cmd
	.byte \byte1
	.endm

	enum cs_wait_if_eStruct200a6a0_initialized_cmd // 0x0b
// 0x0b
// wait if eStruct200a6a0 is initialized
	.macro cs_wait_if_eStruct200a6a0_initialized
	.byte cs_wait_if_eStruct200a6a0_initialized_cmd
	.endm

	enum cs_wait_if_in_pet_menu_cmd // 0x0c
// 0x0c
// wait if in the PET menu
	.macro cs_wait_if_in_pet_menu
	.byte cs_wait_if_in_pet_menu_cmd
	.endm

	enum cs_wait_if_flag_clear_cmd // 0x0d
// 0x0d hword1
// wait if the given event flag is clear
// hword1 - flag to test
	.macro cs_wait_if_flag_clear hword1:req
	.byte cs_wait_if_flag_clear_cmd
	.hword \hword1
	.endm

	enum cs_wait_if_flag_set_cmd // 0x0e
// 0x0e hword1
// wait if the given event flag is set
// hword1 - flag to test
	.macro cs_wait_if_flag_set hword1:req
	.byte cs_wait_if_flag_set_cmd \hword1
	.endm

	enum cs_wait_if_scenario_effect_state_initialized_cmd // 0x0f
// 0xf
// wait if the scenario effect state is initialized
// scenario effects are the soul weapons counter and the mr. weather comp rainbow gauge
	.macro cs_wait_if_scenario_effect_state_initialized
	.byte cs_wait_if_scenario_effect_state_initialized_cmd
	.endm

	enum cs_wait_if_eStruct2001010_initialized_cmd // 0x10
// 0x10
// wait if eStruct2001010 is initialized
// literal interpretation: [eStruct2001010]
	.macro cs_wait_if_eStruct2001010_initialized
	.byte cs_wait_if_eStruct2001010_initialized_cmd
	.endm

	enum cs_cutscene_end_cmd // 0x11
// 0x11
// end cutscene script
	.macro cs_cutscene_end
	.byte cs_cutscene_end_cmd
	.endm

	enum cs_spawn_cutscene_process_cmd // 0x12
// 0x12 byte1 word2
// spawn a new cutscene process
// byte1 - which cutscene process to spawn (cutscene state struct offset to the cutscene script pointer, e.g. oCutsceneState_CutsceneScriptPos2)
// word2 - cutscene script of the cutscene process
	.macro cs_spawn_cutscene_process byte1:req word2:req
	.byte cs_spawn_cutscene_process_cmd
	.byte \byte1
	.word \word2
	.endm

	enum cs_kill_cutscene_process_cmd // 0x13
// 0x13 byte1
// kill a cutscene process
// byte1 - cutscene script ptr struct offset to write to (which cutscene process to kill)
	.macro cs_kill_cutscene_process byte1:req
	.byte cs_kill_cutscene_process_cmd
	.byte \byte1
	.endm

	enum cs_set_cutscene_skip_script_cmd // 0x14
// 0x14 word1
// set the script to execute for when a cutscene is skipped
// word1 - script to execute
	.macro cs_set_cutscene_skip_script word1:req
	.byte cs_set_cutscene_skip_script_cmd
	.word \word1
	.endm

// helper macro
// 0x14 word1=0x0
// clear the script that is run when a cutscene is skipped
// effectively disabling cutscene skip
	.macro cs_disable_cutscene_skip_script
	.byte cs_set_cutscene_skip_script_cmd
	.word 0x0
	.endm

// shared command
	enum cs_jump_cmd // 0x15
// 0x01/0x15 destination1
// jump to another script
// destination1 - script to jump to
	.macro cs_jump destination1:req
	.byte cs_jump_cmd
	.word \destination1
	.endm

// shared command
	enum cs_jump_if_progress_in_range_cmd // 0x16
// 0x02/0x16 byte1 byte2 destination3
// jump if byte1 <= progress byte <= byte2
// byte1 - lower bound for progress byte
// byte2 - upper bound for progress byte
// destination3 - script to jump to
	.macro cs_jump_if_progress_in_range byte1:req, byte2:req, destination3:req
	.byte cs_jump_if_progress_in_range_cmd
	.byte \byte1, \byte2
	.word \destination3
	.endm

// shared command
	enum cs_jump_if_flag_set_cmd // 0x17
// 0x03/0x17 byte1 hword2 destination4
// jump if event flag in mem or immediate is set
// byte1 - memory param
// hword2 - flag to test
// destination4 - script to jump to
	.macro cs_jump_if_flag_set byte1:req, hword2:req, destination4:req
	.byte cs_jump_if_flag_set_cmd
	.byte \byte1
	.hword \hword2
	.word \destination4
	.endm

// shared command
	enum cs_jump_if_flag_range_set_cmd // 0x18
// 0x04/0x18 byte1 hword2 destination4
// jump if (all) event flags in the event flag range are set
// byte1 - number of flags to test
// hword2 - starting flag to test
// destination4 - script to jump to
	.macro cs_jump_if_flag_range_set byte1:req, hword2:req, destination4:req
	.byte cs_jump_if_flag_range_set_cmd
	.byte \byte1
	.hword \hword2
	.word \destination4
	.endm

// shared command
	enum cs_jump_if_flag_clear_cmd // 0x19
// 0x05/0x19 byte1 hword2 destination4
// jump if event flag in mem or immediate is clear
// byte1 - memory param
// hword2 - flag to test
// destination4 - script to jump to
	.macro cs_jump_if_flag_clear byte1:req, hword2:req, destination4:req
	.byte cs_jump_if_flag_clear_cmd
	.byte \byte1
	.hword \hword2
	.word \destination4
	.endm

// shared command
	enum cs_jump_if_flag_range_clear_cmd // 0x1a
// 0x06/0x1a byte1 hword2 destination4
// jump if not all event flags in the event flag range are set
// byte1 - number of flags to test
// hword2 - starting flag to test
// destination4 - script to jump to
	.macro cs_jump_if_flag_range_clear
	.byte cs_jump_if_flag_range_clear_cmd
	.byte \byte1
	.hword \hword2
	.word \destination4
	.endm

// shared command
	enum cs_jump_if_mem_equals_cmd // 0x1b
	subenum_start

	subenum cs_jump_if_byte_equals_subcmd // 0x0
// 0x07/0x1b 0x00 word2 destination6 byte10
// jump if [word2] == byte10
// word2 - pointer to read from
// destination6 - script to jump to
// byte10 - value to compare [word2] with
	.macro cs_jump_if_byte_equals word2:req destination6:req byte10:req
	.byte cs_jump_if_mem_equals_cmd
	.byte cs_jump_if_byte_equals_subcmd
	.word \word2
	.word \destination6
	.byte \byte10
	.endm

	subenum cs_jump_if_hword_equals_subcmd // 0x1
// 0x07/0x1b 0x01 word2 destination6 hword10
// jump if [word2] == hword10
// word2 - pointer to read from
// destination6 - script to jump to
// hword10 - value to compare [word2] with
	.macro cs_jump_if_hword_equals word2:req destination6:req hword10:req
	.byte cs_jump_if_mem_equals_cmd
	.byte cs_jump_if_hword_equals_subcmd
	.word \word2
	.word \destination6
	.hword \hword10
	.endm

	subenum cs_jump_if_word_equals_subcmd // 0x2
// 0x07/0x1b 0x02 word2 destination6 word10
// jump if [word2] == word10
// word2 - pointer to read from
// destination6 - script to jump to
// word10 - value to compare [word2] with
	.macro cs_jump_if_word_equals_subcmd word2:req destination6:req word10:req
	.byte cs_jump_if_mem_equals_cmd
	.byte cs_jump_if_word_equals_subcmd
	.word \word2
	.word \destination6
	.word \word10
	.endm

	enum cs_jump_if_var_equal_cmd // 0x1c
// 0x1c byte1 byte2 destination3
// jump if cutscene variable equals byte2
// byte1 - cutscene variable to read from
// byte2 - value to compare cutscene variable with
// destination3 - script to jump to
	.macro cs_jump_if_var_equal byte1:req byte2:req destination3:req
	.byte cs_jump_if_var_equal_cmd
	.byte \byte1
	.byte \byte2
	.word \destination3
	.endm

// shared command
	enum cs_jump_if_key_item_in_range_cmd // 0x1d
// 0x08/0x1d byte1 byte2 byte3 destination
// jump if the specified key item is in the given range
// i.e. byte2 <= CheckKeyItem(byte1) <= byte3
// byte1 - key item to check
// byte2 - lower bound of key item range, inclusive
// byte3 - upper bound of key item range, inclusive
// destination4 - script to jump to
	.macro cs_jump_if_key_item_in_range byte1:req byte2:req byte3:req destination4:req
	.byte cs_jump_if_key_item_in_range_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.word \destination4
	.endm

// shared command
	enum cs_jump_if_chip_count_in_range_cmd // 0x1e
// 0x09/0x1e hword1 byte3 byte4 byte5 destination6
// jump if the number of the specified chip with optional code is in the given range
// hword1 - chip to count
// byte3 - code of chip to be counted, or 0xff to ignore code
// byte4 - lower bound of chip count, inclusive
// byte5 - upper bound of chip count, inclusive
// destination6 - script to jump to
	.macro cs_jump_if_chip_count_in_range hword1:req byte3:req byte4:req byte5:req destination6:req
	.byte cs_jump_if_chip_count_in_range_cmd
	.hword \hword1
	.byte \byte3
	.byte \byte4, \byte5
	.word \destination6
	.endm

// shared command
	enum cs_jump_if_battle_result_equals_cmd // 0x1f
// 0x0a/0x1f byte1 destination2
// jump if battle result equals byte1
// byte1 - value to compare battle result with (0=won, 1=lost, 2=tie, 3=escaped)
// destination2 - script to jump to
	.macro cs_jump_if_battle_result_equals byte1:req destination2:req
	.byte cs_jump_if_battle_result_equals_cmd
	.byte \byte1
	.word \destination2
	.endm

// shared command
	enum cs_jump_if_battle_result_not_equal_cmd // 0x20
// 0xb/0x20 byte1 destination2
// jump if battle result doesn't equal byte1
// byte1 - value to compare battle result with (0=won, 1=lost, 2=tie, 3=escaped)
// destination2 - script to jump to
	.macro cs_jump_if_battle_result_not_equal byte1:req destination2:req
	.byte cs_jump_if_battle_result_not_equal_cmd
	.byte \byte1
	.word \destination2
	.endm

// shared command
	enum cs_coordinate_trigger_equals_cmd_8035afa_cmd // 0x21
// 0x0c/0x21 byte1 signedbyte2 destination3
// jump if the return value of the coordinate trigger function (sub_8031A7A) equals byte1
// sub_8031A7A returns r0, r1. if r0 == 0, r1 is used in comparison
// byte1 - byte to compare return value of sub_8031A7A
// signedbyte2 - signed offset to overworld player object coordinates
// destination3 - script to jump to
	.macro cs_coordinate_trigger_equals_cmd_8035afa byte1:req signedbyte2:req destination3:req
	.byte cs_coordinate_trigger_equals_cmd_8035afa_cmd
	.byte \byte1
	.byte \signedbyte2
	.word \destination3
	.endm

// shared command
	enum cs_coordinate_trigger_not_equal_cmd_8035b44_cmd // 0x22
// 0x0d/0x22 byte1 signedbyte2 destination3
// jump if the return value of the coordinate trigger function (sub_8031A7A) doesn't equal byte1
// sub_8031A7A returns r0, r1. if r0 == 0, r1 is used in comparison
// byte1 - byte to compare return value of sub_8031A7A
// signedbyte2 - signed offset to overworld player object coordinates
// destination3 - script to jump to
	.macro cs_coordinate_trigger_not_equal_cmd_8035b44 byte1:req signedbyte2:req destination3:req
	.byte cs_coordinate_trigger_not_equal_cmd_8035b44_cmd
	.byte \byte1
	.byte \signedbyte2
	.word \destination3
	.endm

// shared command
	enum cs_jump_if_current_navi_equals_cmd // 0x23
// 0x10/0x23 byte1 destination2
// jump if the player's current navi equals byte1
// byte1 - navi to compare the current navi with
// destination2 - script to jump to
	.macro cs_jump_if_current_navi_equals byte1:req destination2:req
	.byte cs_jump_if_current_navi_equals_cmd
	.byte \byte1
	.word \destination2
	.endm

// shared command
	enum cs_jump_if_current_navi_not_equal_cmd // 0x24
// 0x11/0x24 byte1 destination2
// jump if the player's current navi doesn't equal byte1
// byte1 - navi to compare the current navi with
// destination2 - script to jump to
	.macro cs_jump_if_current_navi_not_equal byte1:req destination2:req
	.byte cs_jump_if_current_navi_not_equal_cmd
	.byte \byte1
	.word \destination2
	.endm

	enum cs_jump_if_title_screen_icon_count_equals_cmd // 0x25
// 0x25 byte1 destination2
// jump if the title screen icon count equals byte1
// byte1 - value to compare the title screen icon count with
// destination2 - script to jump to
	.macro cs_jump_if_title_screen_icon_count_equals byte1:req destination2:req
	.byte cs_jump_if_title_screen_icon_count_equals_cmd
	.byte \byte1
	.word \destination2
	.endm

	enum cs_jump_if_title_screen_icon_count_not_equal_cmd // 0x26
// 0x26 byte1 destination2
// jump if the title screen icon count doesn't equal byte1
// byte1 - value to compare the title screen icon count with
// destination2 - script to jump to
	.macro cs_jump_if_title_screen_icon_count_not_equal byte1:req destination2:req
	.byte cs_jump_if_title_screen_icon_count_not_equal_cmd
	.byte \byte1
	.word \destination2
	.endm

// shared command
	enum cs_set_screen_fade_cmd // 0x27
// 0x1d/0x27 byte1 byte2 byte3
// set screen fade
// byte1 - memory param (base index, memory for byte3 is [eMapScriptState + byte1 + 1])
// byte2 or mem1 - argument 1 for screen fade
// byte3 or mem2 - argument 2 for screen fade
	.macro cs_set_screen_fade
	.byte cs_set_screen_fade_cmd byte1:req byte2:req byte3:req
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.endm

// shared command
	enum cs_set_game_state_16_17_cmd // 0x28
// 0x1e/0x28 byte1 byte2
// store byte1 and byte2 in eGameState_Unk_16 and eGameState_Unk_17 respectively
// byte1 - value to store to eGameState_Unk_16
// byte2 - value to store to eGameState_Unk_17
	.macro cs_set_game_state_16_17 byte1:req byte2:req
	.byte cs_set_game_state_16_17_cmd
	.byte \byte1
	.byte \byte2
	.endm

// shared command
	enum cs_set_event_flag_cmd // 0x29
// 0x1f/0x29 byte1 hword2
// set event flag
// byte1 - memory param
// hword2 or mem - event flag to set
	.macro cs_set_event_flag byte1:req hword2:req
	.byte cs_set_event_flag_cmd
	.byte \byte1
	.hword \hword2
	.endm

// shared command
	enum cs_clear_event_flag_cmd // 0x2a
// 0x20/0x2a byte1 hword2
// clear event flag
// byte1 - memory param
// hword2 or mem - event flag to clear
	.macro cs_clear_event_flag byte1:req hword2:req
	.byte cs_clear_event_flag_cmd
	.byte \byte1
	.hword \hword2
	.endm

// shared command
	enum cs_set_event_flag_range_cmd // 0x2b
// 0x21/0x2b byte1 hword2
// set byte1 event flags starting at the event flag hword2
// event flags set are in the range [hword2, hword2+byte1) (interval notation)
// byte1 - number of event flags to set
// hword2 - starting event flag
	.macro cs_set_event_flag_range byte1:req hword2:req
	.byte cs_set_event_flag_range_cmd
	.byte \byte1
	.hword \hword2
	.endm

// shared command
	enum cs_clear_event_flag_range_cmd // 0x2c
// 0x22/0x2c byte1 hword2
// clear byte1 event flags starting at the event flag hword2
// event flags cleared are in the range [hword2, hword2+byte1) (interval notation)
// byte1 - number of event flags to clear
// hword2 - starting event flag
	.macro cs_clear_event_flag_range byte1:req hword2:req
	.byte cs_clear_event_flag_range_cmd
	.byte \byte1
	.hword \hword2
	.endm

// shared command
	enum cs_set_event_flag_list_cmd // 0x2d
// 0x23/0x2d word1
// set the list of event flags at word1, terminated by (presumably) -1
// word1 - list of event flags to set, terminated by a negative number (presumably -1)
	.macro cs_set_event_flag_list word1:req
	.byte cs_set_event_flag_list_cmd
	.word \word1
	.endm

// shared command
	enum cs_clear_event_flag_list_cmd // 0x2e
// 0x24/0x2e word1
// clear the list of event flags at word1, terminated by (presumably) -1
// word1 - list of event flags to clear, terminated by a negative number (presumably -1)
	.macro cs_clear_event_flag_list word1:req
	.byte cs_clear_event_flag_list_cmd
	.word \word1
	.endm

// shared command
	enum cs_write_byte_cmd // 0x2f
// 0x27/0x2f word1 byte5
// write byte5 to the memory at word1
// [word1] = byte5
// word1 - pointer to write to
// byte5 - value to write
	.macro cs_write_byte word1:req byte5:req
	.byte cs_write_byte_cmd
	.word \word1
	.byte \byte5
	.endm

// shared command
	enum cs_write_hword_cmd // 0x30
// 0x28/0x30 word1 hword5
// write hword5 to the memory at word1
// [word1] = hword5
// word1 - pointer to write to
// hword5 - value to write
	.macro cs_write_hword word1:req hword5:req
	.byte cs_write_hword_cmd
	.word \word1
	.hword \hword5
	.endm

// shared command
	enum cs_write_word_cmd // 0x31
// 0x29/0x31 word1 word5
// write word5 to the memory at word1
// [word1] = word5
// word1 - pointer to write to
// word5 - value to write
	.macro cs_write_word word1:req word5:req
	.byte cs_write_word_cmd
	.word \word1
	.word \word5
	.endm

// shared command
	enum cs_write_gamestate_byte_cmd // 0x32
// 0x2a/0x32 byte1 byte2
// write byte2 to the eGameState field byte1
// [eGameState + byte1] = byte2
// byte1 - eGameState field to write to
// byte2 - value to write
	.macro cs_write_gamestate_byte byte1:req byte2:req
	.byte cs_write_gamestate_byte_cmd
	.byte \byte1
	.byte \byte2
	.endm

// shared command
	enum cs_write_eStruct2001c04_byte_cmd // 0x33
// 0x2b/0x33 byte1 byte2
// write byte2 to the eStruct2001c04 field byte1
// [eStruct2001c04 + byte1] = byte2
// byte1 - eStruct2001c04 field to write to
// byte2 - value to write
	.macro cs_write_eStruct2001c04_byte byte1:req byte2:req
	.byte cs_write_eStruct2001c04_byte_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum cs_write_byte_to_extended_var_plus_param_cmd // 0x34
// 0x34 byte1 byte2 byte3
// literal interpretation:
// [[eCutsceneState_owMapObjectPtrs_44+byte1*4]+byte2] = byte3
// may not actually be ow map object ptrs, but not sure
	.macro cs_write_byte_to_extended_var_plus_param byte1:req byte2:req byte3:req
	.byte cs_write_byte_to_extended_var_plus_param_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.endm

	enum cs_set_var_cmd // 0x35
// 0x35 byte1 byte2
// set a cutscene variable with a given value
// literal interpretation: [eCutsceneState+byte1] = byte2
// byte1 - variable to modify
// byte2 - new value of variable
	.macro cs_set_var byte1:req byte2:req
	.byte cs_set_var_cmd
	.byte \byte1
	.byte \byte2
	.endm

// shared command
	enum cs_call_sub_8001B1C_cmd // 0x36
// 0x2c/0x36 word1
// call LoadGFXAnim(r0=word1)
// word1 - argument to LoadGFXAnim
	.macro cs_call_sub_8001B1C word1:req
	.byte cs_call_sub_8001B1C_cmd
	.word \word1
	.endm

// shared command
	enum cs_call_sub_8001B1C_multiple_cmd // 0x37
// 0x2d/0x37 word1
// do LoadGFXAnims(r0=word1)
// r0 is a list of pointers for LoadGFXAnim, terminated by negative
	.macro cs_call_sub_8001B1C_multiple word1:req
	.byte cs_call_sub_8001B1C_multiple_cmd
	.word \word1
	.endm

// shared command
	enum cs_call_sub_8030A30_8035194_cmd // 0x38
// 0x2e/0x38
// call sub_8030A30, then LoadBGAnimForMapGroup
// uses map group/number as args
	.macro cs_call_sub_8030A30_8035194
	.byte cs_call_sub_8030A30_8035194_cmd
	.endm

// shared command
	enum cs_cmd_8035F6A_cmd // 0x39
// 0x2f/0x39 byte1
// if byte1 == 0xff, call TerminateGFXAnim with r0 as 0x0 to 0x11
// else, call TerminateGFXAnim with r0=byte1
	.macro cs_cmd_8035F6A byte1:req
	.byte cs_cmd_8035F6A_cmd
	.byte \byte1
	.endm

	enum cs_run_text_script_cmd // 0x3a
// 0x3a byte1 byte2
// run text script from pre-loaded text archive with the given index
// byte1 - memory param
// byte2 or mem - text script to run
// the length of the command is 2 if from mem, otherwise 3
	.macro cs_run_text_script byte1:req byte2:req
	.byte cs_run_text_script_cmd
	.byte \byte1
	.if \byte1 != 0xff
	.byte \byte2
	.endif
	.endm

	enum cs_chatbox_cmd_8037a70_cmd // 0x3b
// 0x3b
// unknown chatbox command
// ex. called after getting a chip from the numbertrader
	.macro cs_chatbox_cmd_8037a70
	.byte cs_chatbox_cmd_8037a70_cmd
	.endm

	enum cs_set_or_clear_chatbox_flags_cmd // 0x3c
	subenum_start

	subenum cs_set_chatbox_flags_subcmd // 0x0
// 0x3c 0x0 byte2
// set chatbox flags
// byte2 - flags to set or clear
	.macro cs_set_chatbox_flags byte2:req
	.byte cs_set_or_clear_chatbox_flags_cmd
	.byte cs_set_chatbox_flags_subcmd
	.byte \byte2
	.endm

	subenum cs_clear_chatbox_flags_subcmd // 0x0
// 0x3c 0x1 byte2
// set or clear chatbox flags
// byte1 - operation type (0 = set, 1 = clear)
// byte2 - flags to set or clear
	.macro cs_clear_chatbox_flags byte2:req
	.byte cs_set_or_clear_chatbox_flags_cmd
	.byte cs_clear_chatbox_flags_subcmd
	.byte \byte2
	.endm

	enum cs_switch_case_from_chatbox_flags_bit0_to_2_cmd // 0x3d
// 0x3d destination1 destination5 destination9 ... (up to 8 destinations)
// perform a switch case depending on the value of chatbox flags (eFlags2009F38)
// 0 jumps to destination1, 1 jumps to destination5, 2 jumps to destination9...
// destinationX - script to jump to
// the length of this command is unknown, but the max length should be 33
	.macro cs_switch_case_from_chatbox_flags_bit0_to_2 destination1:req destination5:req destination9:req, destination13:req, destination17:req, destination21:req, destination25:req, destination29:req
	.byte cs_switch_case_from_chatbox_flags_bit0_to_2_cmd
	.word \destination1
	.word \destination5
	.word \destination9
	.word \destination13
	.word \destination17
	.word \destination21
	.word \destination25
	.word \destination29
	.endm

	enum cs_decomp_text_archive_cmd // 0x3e
// 0x3e word1
// store text archive pointer
// the text archive may be compressed
// word1 - text archive pointer. bit 31 indicates if it is compressed
	.macro cs_decomp_text_archive word1:req
	.byte cs_decomp_text_archive_cmd
	.word \word1
	.endm

	enum cs_ow_player_sprite_special_cmd // 0x3f
// 0x3f byte1
// call sprite related special
// byte1 - special to call (multiple of 4)
	.macro cs_ow_player_sprite_special byte1:req
	.byte cs_ow_player_sprite_special_cmd
	.byte \byte1
	.endm

	enum cs_ow_player_sprite_special_with_arg_cmd // 0x40
// 0x40 byte1 byte2 byte3
// call sprite related special with one parameter
// byte1 - special to call (multiple of 4)
// byte2 - memory param
// byte3 or mem - argument to special
	.macro cs_ow_player_sprite_special_with_arg byte1:req byte2:req byte3:req
	.byte cs_ow_player_sprite_special_with_arg_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.endm

	enum cs_ow_player_coord_special_cmd // 0x41
// 0x41 byte1 byte2 byte3 signedhword4 signedhword6 signedhword8
// run ow player coordinate related special for a given number of frames
// byte1 - special to run (multiple of 4). if this special is 8 or higher, then the cutscene script process number must not be 0
// byte2 - memory param
// byte3 or mem - number of frames to run the special
// signedhword4 - x coordinate related param
// signedhword6 - y coordinate related param
// signedhword8 - z coordinate related param
// specials (full extent of what they do is unknown). coordinate writes to eStruct200ace0 are copied to player coordinates in another function:
// 0x0 - indirectly set player coords through eStruct200ace0
// 0x4 - copy player coords to player next coords, write hword params to player coords, then indirectly set player coords through eStruct200ace0
// 0x8 - add hword params to the player coords at eStruct200ace0
// 0xc - copy player coords to player next coords, offset player coords by hword params, then add hword params to the player coords at eStruct200ace0
	.macro cs_ow_player_coord_special byte1:req byte2:req byte3:req signedhword4:req signedhword6:req signedhword8:req
	.byte cs_ow_player_coord_special_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.hword \signedhword4
	.hword \signedhword6
	.hword \signedhword8
	.endm

	enum cs_move_player_in_facing_direction_cmd // 0x42
// 0x42 byte1 byte2 signedhword3
// move player in facing direction
// the movement is done as if the player was moving the player character themselves
// does not work if the cutscene process number is 0
// byte1 - memory param
// byte2 or mem - number of frames to move player
// signedhword3 - movement speed of player
	.macro cs_move_player_in_facing_direction byte1:req byte2:req signedhword3:req
	.byte cs_move_player_in_facing_direction_cmd
	.byte \byte1
	.byte \byte2
	.hword \signedhword3
	.endm

	enum cs_ow_player_cmd_8037cc4_cmd // 0x43
// 0x43 byte1 byte2
// unknown ow player related command
// literal interpretation: write byte2 or mem to eStruct200ace0_Unk_1a if eStruct200ace0_fixOWPlayerAnim_15 is nonzero
// byte1 - memory param
// byte2 or mem - loaded to r0 when owPlayer_809e218 is called
	.macro cs_ow_player_cmd_8037cc4 byte1:req byte2:req
	.byte cs_ow_player_cmd_8037cc4_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum cs_write_S200ace0_unk_20_cmd // 0x44
// 0x44 word1
// literal interpretation: [eStruct200ace0_Unk_20] = word1
	.macro cs_write_S200ace0_unk_20 word1:req
	.byte cs_write_S200ace0_unk_20_cmd
	.word \word1
	.endm

	enum cs_transform_player_navi_sprite_cmd // 0x45
	subenum_start

	subenum cs_set_custom_player_navi_sprite_transform_subcmd // 0x0
// 0x45 0x0 byte2 byte3 byte4
// set a custom transform to the player navi sprite
// byte2 - horizontal compress value
// byte3 - vertical compress value
// byte4 - rotation value
	.macro cs_set_custom_player_navi_sprite_transform byte2:req byte3:req byte4:req
	.byte cs_transform_player_navi_sprite_cmd
	.byte cs_set_custom_player_navi_sprite_transform_subcmd
	.byte \byte2
	.byte \byte3
	.byte \byte4
	.endm

	subenum cs_set_default_player_navi_sprite_transform_subcmd // 0x1
// 0x45 0x1
// set the default transform (0x40, 0x40, 0x0) to the player navi sprite
	.macro cs_set_default_player_navi_sprite_transform byte2:req byte3:req byte4:req
	.byte cs_transform_player_navi_sprite_cmd
	.byte cs_set_default_player_navi_sprite_transform_subcmd
	.endm

	subenum cs_set_offset_player_navi_sprite_transform_subcmd // 0x2
// 0x45 0x2 byte2 signedbyte3 signedbyte4 signedbyte5
// add offsets to player navi sprite transform values for a given number of frames
// byte2 - number of frames
// signedbyte3 - horizontal compress offset
// signedbyte4 - vertical compress offset
// signedbyte5 - rotation offset
	.macro cs_set_offset_player_navi_sprite_transform byte2:req signedbyte3:req signedbyte4:req signedbyte5:req
	.byte cs_transform_player_navi_sprite_cmd
	.byte cs_set_offset_player_navi_sprite_transform_subcmd
	.byte \byte2
	.byte \signedbyte3
	.byte \signedbyte4
	.byte \signedbyte5
	.endm

	enum cs_set_ow_player_navi_color_shader_cmd // 0x46
	subenum_start

	subenum cs_set_custom_ow_player_navi_color_shader_subcmd // 0x0
// 0x46 0x0 hword2
// set a custom overworld player navi color shader
// hword2 - new color shader as 15bit RGB
	.macro cs_set_custom_ow_player_navi_color_shader hword2:req
	.byte cs_set_ow_player_navi_color_shader_cmd
	.byte cs_set_custom_ow_player_navi_color_shader_cmd
	.hword \hword2
	.endm

	subenum cs_set_default_ow_player_navi_color_shader_subcmd // 0x1
// 0x46 0x1
// set the default overworld player navi color shader (0)
	.macro cs_set_default_ow_player_navi_color_shader
	.byte cs_set_ow_player_navi_color_shader_cmd
	.byte cs_set_default_ow_player_navi_color_shader_subcmd
	.endm

	enum cs_write_or_offset_ow_player_fixed_anim_select_8037dac_cmd // 0x47
	subenum_start

	subenum cs_write_ow_player_fixed_anim_select_8037dac_subcmd // 0x0
// 0x47 byte1 byte2 byte3
// modify the overworld player's animation
// byte1 - modify type. 0=write, 1=add anim to facing direction and write
// byte2 - memory param
// byte3 or mem - base overworld player anim
	.macro cs_write_ow_player_fixed_anim_select_8037dac byte2:req byte3:req
	.byte cs_write_or_offset_ow_player_fixed_anim_select_8037dac_cmd
	.byte cs_write_ow_player_fixed_anim_select_8037dac_subcmd
	.byte \byte2
	.byte \byte3
	.endm

	subenum cs_offset_ow_player_fixed_anim_select_8037dac_subcmd // 0x1
	.macro cs_offset_ow_player_fixed_anim_select_8037dac
	.byte cs_write_or_offset_ow_player_fixed_anim_select_8037dac_cmd
	.byte cs_offset_ow_player_fixed_anim_select_8037dac_subcmd
	.byte \byte2
	.byte \byte3
	.endm

	enum cs_set_player_coords_anim_facing_as_npc_cmd // 0x48
// 0x48 byte1 byte2
// set the player coordinates and animation to the given npc, and set the player facing direction
// byte1 - index of the npc to copy coords and anim from
// byte2 - new facing direction of the player
	.macro cs_set_player_coords_anim_facing_as_npc byte1:req byte2:req
	.byte cs_set_player_coords_anim_facing_as_npc_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum cs_spawn_free_ow_map_object_specials_cmd // 0x49
	subenum_start
// 0x49 byte1 ...
// run special related to spawning or freeing OW map objects
// subcommands documented below
// byte1 - upper nybble is subcommand to run (multiple of 1)
//       - lower nybble is index of array of map objects spawned by these subcommands

	subenum cs_spawn_ow_map_object_subcmd // 0x0
// 0x49 0x0X byte2 hword3 hword5 hword7 word9
// spawn overworld map object
// byte1 lower nybble - index of cutscene state map object ptrs to store the new map object
// byte2 - overworld map object index
// hword3 - map object x coordinate
// hword5 - map object y coordinate
// hword7 - map object z coordinate
// word9 - unknown param (written to field oOverworldMapObject_Unk_04)
	.macro cs_spawn_ow_map_object nybble1:req byte2:req hword3:req hword5:req hword7:req word9:req
	.byte cs_spawn_free_ow_map_object_specials_cmd
	nybble cs_spawn_ow_map_object_subcmd, nybble1
	.byte \byte2
	.hword \hword3
	.hword \hword5
	.hword \hword7
	.word \word9
	.endm

	subenum cs_spawn_ow_map_object_rel_to_ow_player_subcmd // 0x1
// 0x49 0x1X byte2 signedhword3 signedhword5 signedhword7 word9
// spawn overworld map object relative to overworld player
// byte1 lower nybble - index of cutscene state map object ptrs to store the new map object
// byte2 - overworld map object index
// signedhword3 - map object x coordinate offset to player
// signedhword5 - map object y coordinate offset to player
// signedhword7 - map object z coordinate offset to player
// word9 - unknown param (written to field oOverworldMapObject_Unk_04)
	.macro cs_spawn_ow_map_object_rel_to_ow_player nybble1:req byte2:req hword3:req hword5:req hword7:req word9:req
	.byte cs_spawn_free_ow_map_object_specials_cmd
	nybble cs_spawn_ow_map_object_rel_to_ow_player_subcmd, nybble1
	.byte \byte2
	.hword \hword3
	.hword \hword5
	.hword \hword7
	.word \word9
	.endm

	subenum cs_spawn_ow_map_object_rel_to_ow_npc_subcmd // 0x2
// 0x49 0x2X byte2 byte3 signedhword4 signedhword6 signedhword8 word10
// spawn overworld map object relative to overworld npc
// byte1 lower nybble - index of cutscene state map object ptrs to store the new map object
// byte2 - overworld npc object to read coordinates from
// byte3 - overworld map object index
// signedhword4 - map object x coordinate offset to npc
// signedhword6 - map object y coordinate offset to npc
// signedhword8 - map object z coordinate offset to npc
// word10 - unknown param (written to field oOverworldMapObject_Unk_04)
	.macro cs_spawn_ow_map_object_rel_to_ow_npc nybble1:req byte2:req byte3:req hword4:req hword6:req hword8:req word10:req
	.byte cs_spawn_free_ow_map_object_specials_cmd
	nybble cs_spawn_ow_map_object_rel_to_ow_npc_subcmd, nybble1
	.byte \byte2
	.byte \byte3
	.hword \hword4
	.hword \hword6
	.hword \hword8
	.word \word10
	.endm

	subenum cs_free_ow_map_object_subcmd // 0x3
// 0x49 0x3X
// free overworld map object created via a cutscene
// byte1 lower nybble - which map object to free, from the list of cutscene state map object ptrs
	.macro cs_free_ow_map_object nybble1:req
	.byte cs_spawn_free_ow_map_object_specials_cmd
	nybble cs_free_ow_map_object_subcmd, nybble1
	.endm

	subenum cs_free_all_ow_map_objects_subcmd // 0x4
// 0x49 0x40
// free all overworld map objects created via a cutscene
	.macro cs_free_all_ow_map_objects
	.byte cs_spawn_free_ow_map_object_specials_cmd
	nybble cs_free_all_ow_map_objects_subcmd, 0
	.endm

	enum cs_spawn_or_free_ow_map_or_npc_objects_cmd // 0x4a
	subenum_start

	subenum cs_spawn_objects_from_list_subcmd // 0x0
// 0x4a 0x0 word2
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
	.macro cs_spawn_objects_from_list word2:req
	.byte cs_spawn_or_free_ow_map_or_npc_objects_cmd
	.byte cs_spawn_objects_from_list_subcmd
	.word \word2
	.endm

	subenum cs_free_all_objects_of_types_subcmd // 0x1
// 0x4a 0x1 byte2
// free all objects of specified types
// byte2 - bitfield of objects to free
// see constants/constants.inc for object type flags
	.macro cs_free_all_objects_of_types byte2:req
	.byte cs_spawn_or_free_ow_map_or_npc_objects_cmd
	.byte cs_free_all_objects_of_types_subcmd
	.byte \byte2
	.endm

	subenum cs_spawn_ow_npc_objects_from_list_subcmd // 0x2
// 0x4a 0x2 word2
// free all npc objects, then spawn npc objects from a list. terminated by 0xff
// struct format: word0
// word0 - animation script pointer
	.macro cs_spawn_ow_npc_objects_from_list word2:req
	.byte cs_spawn_or_free_ow_map_or_npc_objects_cmd
	.byte cs_spawn_ow_npc_objects_from_list_subcmd
	.byte \word2
	.endm

	subenum cs_spawn_ow_npc_objects_from_map_subcmd // 0x3
// 0x4a 0x3
// spawn npc objects for the current map
	.macro cs_spawn_ow_npc_objects_from_map
	.byte cs_spawn_or_free_ow_map_or_npc_objects_cmd
	.byte cs_spawn_ow_npc_objects_from_map_subcmd
	.endm

	subenum cs_spawn_ow_map_objects_from_map_subcmd // 0x4
// 0x4a 0x4
// spawn map objects for the current map
	.macro cs_spawn_ow_map_objects_from_map
	.byte cs_spawn_or_free_ow_map_or_npc_objects_cmd
	.byte cs_spawn_ow_map_objects_from_map_subcmd
	.endm

	subenum cs_free_all_ow_npc_objects_if_different_map_subcmd // 0x5
// 0x4a 0x5
// free npc objects if the last map npc objects were spawned is different than the current map
	.macro cs_free_all_ow_npc_objects_if_different_map
	.byte cs_spawn_or_free_ow_map_or_npc_objects_cmd
	.byte cs_free_all_ow_npc_objects_if_different_map_subcmd
	.endm

	enum cs_call_native_with_return_value_cmd // 0x4b
// 0x4b word1
// call native function. if the return flags are nonzero, then wait
// word1 - native function to call
	.macro cs_call_native_with_return_value word1:req
	.byte cs_call_native_with_return_value_cmd
	.word \word1
	.endm

	enum cs_warp_cmd_8038040_cmd // 0x4c
// the following commands are related to warping
// 0x4c &0x40
// literal interpretation: call warp_8005f32 and warp_setSubsystemIndexTo0x10AndOthers_8005f00
	.macro cs_warp_cmd_8038040_0
	.byte cs_warp_cmd_8038040_cmd
	.byte 0x40
	.endm

// 0x4c &0x20 word2
// literal interpretation: [eCutsceneState_Unk_34] = word2
// word2 - warp related pointer
	.macro cs_warp_cmd_8038040_1 word2:req
	.byte cs_warp_cmd_8038040_cmd
	.byte 0x20
	.word \word2
	.endm

// 0x4c !&0x60 byte2 word3
// literal interpretation:
// if bit7 of byte1 is set, word3 = [eCutsceneState_Unk_34]
// if bit0 of byte1 is set:
// call warp_setSubsystemIndexTo0x10AndOthers_8005f00 with r0=word3, r1=0, r2=byte2
// else:
// call warp_setSubsystemIndexTo0x14AndOthers_8005f14 with r0=word3, r1=0, r2=byte2
	.macro cs_warp_cmd_8038040_2 byte1:req byte2:req word3:req
	.byte cs_warp_cmd_8038040_cmd
	.byte \byte1
	.byte \byte2
	.word \word3
	.endm

// shared command
	enum cs_play_sound_cmd // 0x4d
// 0x30/0x4d hword1
// play sound
// hword1 - sound to play
	.macro cs_play_sound hword1:req
	.byte cs_play_sound_cmd
	.hword \hword1
	.endm

// shared command
	enum cs_play_music_cmd // 0x4e
// 0x31/0x4e hword1
// play music
// hword1 - music to play. if this is negative, then play the current map music
	.macro cs_play_music hword1:req
	.byte cs_play_music_cmd
	.hword \hword1
	.endm

// shared command
	enum cs_sound_cmd_80380ea_cmd // 0x4f
// 0x32/0x4f hword1 byte3 byte4
// call sound_80006A2 with r0=hword1, r1=byte3, r2=byte4
	.macro cs_sound_cmd_80380ea hword1:req byte3:req byte4:req
	.byte cs_sound_cmd_80380ea_cmd
	.hword \hword1
	.byte \byte3
	.byte \byte4
	.endm

// shared command
	enum cs_sound_cmd_803810e_cmd // 0x50
// 0x33/0x50 byte1 byte2
// call sound_800068A with r0=byte1, r1=byte2 then do [eGameState_BGMusicIndicator] = 0x63
	.macro cs_sound_cmd_803810e byte1:req byte2:req
	.byte cs_sound_cmd_803810e_cmd
	.byte \byte1
	.byte \byte2
	.endm

// shared command
	enum cs_stop_sound_cmd // 0x51
// 0x34/0x51
// stop any sounds
	.macro cs_stop_sound
	.byte cs_stop_sound_cmd
	.endm

// shared command
	enum cs_give_or_take_item_cmd // 0x52
	subenum_start

	subenum cs_give_item_subcmd // 0x0
// 0x35/0x52 0x0 byte2 byte3
// give items
// byte2 - item to give
// byte3 - quantity of item
	.macro cs_give_item byte2:req byte3:req
	.byte cs_give_or_take_item_cmd
	.byte cs_give_item_subcmd
	.byte \byte2
	.byte \byte3
	.endm

	subenum cs_take_item_subcmd // 0x1
// 0x35/0x52 byte1 byte2 byte3
// take items
// byte2 - item to take
// byte3 - quantity of item
	.macro cs_take_item byte2:req byte3:req
	.byte cs_give_or_take_item_cmd
	.byte cs_take_item_subcmd
	.byte \byte2
	.byte \byte3
	.endm

// shared command
	enum cs_do_pet_effect_cmd // 0x53
// 0x36/0x53 byte1 byte2
// trigger a PET overworld effect
// byte1 - memory param
// byte2 or mem - PET overworld effect to trigger
	.macro cs_do_pet_effect byte1:req byte2:req
	.byte cs_do_pet_effect_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum cs_run_or_stop_cutscene_camera_script_cmd // 0x54
	subenum_start

	subenum cs_run_cutscene_camera_script_subcmd // 0x0
// 0x54 0x0 word1
// set cutscene camera script
// word1 - cutscene camera script pointer
	.macro cs_run_cutscene_camera_script word1:req
	.byte cs_run_or_stop_cutscene_camera_script_cmd
	.byte cs_run_cutscene_camera_script_subcmd
	.word \word1
	.endm

	subenum cs_stop_cutscene_camera_script_subcmd // 0x1
// 0x54 0x1
// stop cutscene camera script
	.macro cs_stop_cutscene_camera_script
	.byte cs_run_or_stop_cutscene_camera_script_cmd
	.byte cs_stop_cutscene_camera_script_subcmd
	.endm

	enum cs_start_fixed_battle_cmd // 0x55
// 0x55 hword1
// start a fixed battle (i.e. a non-random encounter battle)
// hword1 - battle index
	.macro cs_start_fixed_battle hword1:req
	.byte cs_start_fixed_battle_cmd
	.hword \hword1
	.endm

	enum cs_start_random_battle_cmd // 0x56
// 0x56
// start a random battle
	.macro cs_start_random_battle
	.byte cs_start_random_battle_cmd
	.endm

	enum_skip 1 // 0x57

// shared command
	enum cs_init_eStruct200a6a0_cmd // 0x58
// 0x38/0x58 word1 word5 word9
// call Initialize_eStruct200a6a0 with r0=word1, r1=word5, r2=word9
	.macro cs_init_eStruct200a6a0 word1:req word5:req word9:req
	.byte cs_init_eStruct200a6a0_cmd
	.word \word1
	.word \word5
	.word \word9
	.endm

// shared command
	enum cs_run_eStruct200a6a0_callback_cmd // 0x59
// 0x39/0x59
// call run_eStruct200a6a0_Callback_8002484
	.macro cs_run_eStruct200a6a0_callback
	.byte cs_run_eStruct200a6a0_callback_cmd
	.endm

	enum cs_do_camera_shake_cmd // 0x5a
// 0x5a byte1 byte2 byte3
// do a camera shake effect
// byte1 - shake type
// byte2 - shake timer
// byte3 - unused
	.macro cs_do_camera_shake byte1:req byte2:req byte3:req
	.byte cs_do_camera_shake_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.endm

	enum cs_nop_8038246_cmd // 0x5b
// 0x5b byte1
// functions as a nop
// byte1 - unused
	.macro cs_nop_8038246 byte1:req
	.byte cs_nop_8038246_cmd
	.byte \byte1
	.endm

	enum cs_nop_8038256_cmd // 0x5c
// 0x5c
// functions as a nop
	.macro cs_nop_8038256
	.byte cs_nop_8038256_cmd
	.endm

	enum cs_nop_803825e_cmd // 0x5d
// 0x5d
// functions as a nop
	.macro cs_nop_803825e
	.byte cs_nop_803825e_cmd
	.endm

	enum cs_nop_8038266_cmd // 0x5e
// 0x5e
// functions as a nop
	.macro cs_nop_8038266
	.byte cs_nop_8038266_cmd
	.endm

	enum cs_call_sub_8001974_cmd // 0x5f
// 0x5f
// call SetDummyBGScrollCallbacks
	.macro cs_call_sub_8001974
	.byte cs_call_sub_8001974_cmd
	.endm

// shared command
	enum cs_init_scenario_effect_cmd // 0x60
// 0x3b/0x60 byte1
// init scenario effect
// byte1 - scenario effect to initialize (0=soul weapons counter, 1=mr. weather comp rainbow gauge)
	.macro cs_init_scenario_effect byte1:req
	.byte cs_init_scenario_effect_cmd
	.byte \byte1
	.endm

// shared command
	enum cs_end_scenario_effect_cmd // 0x61
// 0x3c/0x61
// end scenario effect
	.macro cs_end_scenario_effect
	.byte cs_end_scenario_effect_cmd
	.endm

// shared command
	enum cs_init_minigame_effect_cmd // 0x62
// 0x3d/0x62 byte1
// init minigame effect
// byte1 - minigame effect to initialize (0=AquaMan, 1=SlashMan, 2=TenguMan, 3=ElecMan, 4=EraseMan, 5=GroundMan).
	.macro cs_init_minigame_effect byte1:req
	.byte cs_init_minigame_effect_cmd
	.byte \byte1
	.endm

// shared command
	enum cs_end_minigame_effect_cmd // 0x63
// 0x3e/0x63
// end minigame effect
	.macro cs_end_minigame_effect
	.byte cs_end_minigame_effect_cmd
	.endm

	enum_skip 3 // 0x64, 0x65, 0x66

// shared command
	enum cs_add_bbs_message_range_cmd // 0x67
// 0x41/0x67 hword1 byte3
// add the range of bbs messages specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting bbs message flag
// byte3 - number of bbs messages to add
	.macro cs_add_bbs_message_range hword1:req byte3:req
	.byte cs_add_bbs_message_range_cmd
	.hword \hword1
	.byte \byte3
	.endm

	enum cs_encryption_cmd_80382de_cmd // 0x68
// 0x68 hword1
// call encryption_8006e70 with r0=hword1
	.macro cs_encryption_cmd_80382de hword1:req
	.byte cs_encryption_cmd_80382de_cmd
	.hword \hword1
	.endm

	enum cs_navi_cmd_80340f6_cmd // 0x69
// 0x69
// call navi_80340F6
	.macro cs_navi_cmd_80340f6
	.byte cs_navi_cmd_80340f6_cmd
	.endm

	enum cs_change_navi_maybe_80382fe_cmd // 0x6a
// 0x6a byte1
// change the player navi?
// byte1 - navi to switch to
	.macro cs_change_navi_maybe_80382fe byte1:req
	.byte cs_change_navi_maybe_80382fe_cmd
	.byte \byte1
	.endm

// shared command
	enum cs_add_mail_range_cmd // 0x6b
// 0x42/0x6b hword1 byte3
// add the range of mails specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting mail flag
// byte3 - number of mails to add
	.macro cs_add_mail_range hword1:req byte3:req
	.byte cs_add_mail_range_cmd
	.hword \hword1
	.byte \byte3
	.endm

// shared command
	enum cs_cmd_8038346_cmd // 0x6c
// 0x43/0x6c word1 word5
// call sub_80356F8 with r0=word1 and r1=word5
	.macro cs_cmd_8038346 word1:req word5:req
	.byte cs_cmd_8038346_cmd
	.word \word1
	.word \word5
	.endm

	enum_skip 2 // 0x6d, 0x6e

	enum cs_give_or_take_zenny_cmd // 0x6f
	subenum_start

	subenum cs_give_zenny_subcmd // 0x0
// 0x6f 0x00 hword2
// give zenny
// hword2 - amount to give
	.macro cs_give_zenny hword2:req
	.byte cs_give_or_take_zenny_cmd
	.byte cs_give_zenny_subcmd
	.hword \hword2
	.endm

	subenum cs_take_zenny_subcmd // 0x1
// 0x6f 0x01 hword2
// take zenny
// hword2 - amount to take
	.macro cs_take_zenny hword2:req
	.byte cs_give_or_take_zenny_cmd
	.byte cs_take_zenny_subcmd
	.hword \hword2
	.endm

	enum cs_give_or_take_bugfrags_cmd // 0x70
	subenum_start

	subenum cs_give_bugfrags_subcmd // 0x0
// 0x70 0x00 hword2
// give bugfrags
// hword2 - amount to give
	.macro cs_give_bugfrags hword2:req
	.byte cs_give_or_take_bugfrags_cmd
	.byte cs_give_bugfrags_subcmd
	.hword \hword2
	.endm

	subenum cs_take_bugfrags_subcmd // 0x1
// 0x70 0x01 hword2
// take bugfrags
// hword2 - amount to take
	.macro cs_take_bugfrags hword2:req
	.byte cs_give_or_take_bugfrags_cmd
	.byte cs_take_bugfrags_subcmd
	.hword \hword2
	.endm

	enum_skip 2 // 0x71, 0x72

	enum cs_give_or_take_chips_cmd // 0x73
	subenum_start

	subenum cs_give_chips_subcmd // 0x0
// 0x73 0x00 hword2 byte4 byte5
// give chips
// hword2 - chip to give
// byte4 - chip code
// byte5 - quantity of chips
	.macro cs_give_chips hword2:req byte4:req byte5:req
	.byte cs_give_or_take_chips_cmd
	.byte cs_give_chips_subcmd
	.hword \hword2
	.byte \byte4
	.byte \byte5
	.endm

	subenum cs_take_chips_subcmd // 0x1
// 0x73 0x01 hword2 byte4 byte5
// take chips
// hword2 - chip to take
// byte4 - chip code
// byte5 - quantity of chips
	.macro cs_take_chips hword2:req byte4:req byte5:req
	.byte cs_give_or_take_chips_cmd
	.byte cs_take_chips_subcmd
	.hword \hword2
	.byte \byte4
	.byte \byte5
	.endm

	enum cs_give_or_take_navicust_programs_cmd // 0x74
	subenum_start

	subenum cs_give_navicust_programs_subcmd // 0x0
// 0x74 0x00 hword2 byte4 byte5
// give navicust programs
// hword2 - navicust program to give
// byte4 - color of the navicust program
// byte5 - quantity of the navicust program
	.macro cs_give_navicust_programs hword2:req byte4:req byte5:req
	.byte cs_give_or_take_navicust_programs_cmd
	.byte cs_give_navicust_programs_subcmd
	.hword \hword2
	.byte \byte4
	.byte \byte5
	.endm

	subenum cs_take_navicust_programs_subcmd // 0x1
// 0x74 0x01 hword2 byte4 byte5
// take navicust programs
// hword2 - navicust program to take
// byte4 - color of the navicust program
// byte5 - quantity of the navicust program
	.macro cs_take_navicust_programs hword2:req byte4:req byte5:req
	.byte cs_give_or_take_navicust_programs_cmd
	.byte cs_take_navicust_programs_subcmd
	.hword \hword2
	.byte \byte4
	.byte \byte5
	.endm

	enum cs_cutscene_run_or_end_secondary_continuous_map_script_cmd // 0x75
	subenum_start

	subenum cs_cutscene_run_secondary_continuous_map_script_subcmd // 0x0
// 0x75 0x0 word2
// set the secondary continuous map script pointer
// word2 - map script pointer to set the secondary continuous map script pointer to
	.macro cs_cutscene_run_secondary_continuous_map_script word2:req
	.byte cs_cutscene_run_or_end_secondary_continuous_map_script_cmd
	.byte cs_cutscene_run_secondary_continuous_map_script_subcmd
	.word \word2
	.endm

	subenum cs_cutscene_end_secondary_continuous_map_script_subcmd // 0x0
// 0x75 0x1
// end execution of the secondary continuous map script pointer
	.macro cs_cutscene_end_secondary_continuous_map_script
	.byte cs_cutscene_run_or_end_secondary_continuous_map_script_cmd
	.byte cs_cutscene_end_secondary_continuous_map_script_subcmd
	.endm

	enum cs_store_or_load_game_progress_buffer_maybe_803843c_cmd // 0x76
	subenum_start

	subenum cs_store_game_progress_buffer_maybe_803843c_subcmd // 0x0
// 0x76 0x00 byte2
// store the current game progress to a buffer
// byte2 - index of the buffer to use
	.macro cs_store_game_progress_buffer_maybe_803843c byte2:req
	.byte cs_store_or_load_game_progress_buffer_maybe_803843c_cmd
	.byte cs_store_game_progress_buffer_maybe_803843c_subcmd
	.byte \byte2
	.endm

	subenum cs_load_game_progress_buffer_maybe_803843c_subcmd // 0x1
// 0x76 0x01 byte2
// load the current game progress from a buffer
// byte2 - index of the buffer to use
	.macro cs_load_game_progress_buffer_maybe_803843c byte2:req
	.byte cs_store_or_load_game_progress_buffer_maybe_803843c_cmd
	.byte cs_load_game_progress_buffer_maybe_803843c_subcmd
	.byte \byte2
	.endm

	enum cs_flag_cmd_8038466_cmd // 0x77
// 0x77 byte1
// literal interpretation:
// if byte1 == 0:
// call testSetClearFlags_803553c
// else:
// call clearSetFlags_80355a8
	.macro cs_flag_cmd_8038466 byte1:req
	.byte cs_flag_cmd_8038466_cmd
	.byte \byte1
	.endm

// shared command
	enum cs_add_request_range_cmd // 0x78
// 0x44/0x78
// add the range of bbs requests specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting bbs request flag
// byte3 - number of bbs requests to add
	.macro cs_add_request_range hword1:req byte3:req
	.byte cs_add_request_range_cmd
	.hword \hword1
	.byte \byte3
	.endm

// shared command
	enum cs_rush_food_cmd_80384A8_cmd // 0x79
// 0x45/0x79 unused1to3 destination4
// appears to be "jump_if_has_rush_food_and_a_pressed"
// but it isn't triggered when using a piece of rush food
// unused1to3 - unused
// destination4 - script to jump to
	.macro cs_rush_food_cmd_80384A8 destination4:req
	.byte cs_rush_food_cmd_80384A8_cmd
	.byte 0, 0, 0
	.word \destination4
	.endm

	enum cs_set_beast_out_counter_to_3_cmd // 0x7a
// 0x7a
// set beast out counter to 3
	.macro cs_set_beast_out_counter_to_3
	.byte cs_set_beast_out_counter_to_3_cmd
	.endm

	enum cs_jump_if_req_bbs_master_rank_cmd // 0x7b
// 0x7b unused1to3 destination4
// jump if the player is master rank for the request bbs
// unused1to3 - unused
// destination4 - script to jump to
	.macro cs_jump_if_req_bbs_master_rank destination4:req
	.byte cs_jump_if_req_bbs_master_rank_cmd
	.byte 0, 0, 0
	.word \destination4
	.endm

	enum cs_if_in_real_world_jump_else_jump_cmd // 0x7c
// 0x7c unused1to3 destination4 destination8
// jump to another script depending on whether the player is in the real world or on the internet
// unused1to3 - unused
// destination4 - script to jump to if in the real world
// destination8 - script to jump to if on the internet
	.macro cs_if_in_real_world_jump_else_jump destination4:req, destination8:req
	.byte cs_if_in_real_world_jump_else_jump_cmd
	.byte 0, 0, 0
	.word \destination4
	.word \destination8
	.endm

