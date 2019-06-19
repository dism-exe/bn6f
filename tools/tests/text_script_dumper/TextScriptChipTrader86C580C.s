	text_script_start unk_0
	text_script_rel_pointers 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14
	text_script_rel_pointers 15, 16, 17, 17, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28
	text_script_rel_pointers 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 43
	text_script_rel_pointers 43, 43, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56
	text_script_rel_pointers 57
	text_script 0, scr_0
	ts_msg_open
	.string "It's a Chip Trader.\n"
	.string "Insert 3 BtlChips?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x5, 0xFF
	ts_start_chip_trader 0x3, 0x1
	ts_key_wait 0x0
	ts_end
	text_script 1, scr_1
	ts_check_flag 0x1D, 0x17, 0xFF, 0x14
	ts_check_navi_all 0xFF, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0xFF
	ts_msg_open
	ts_mugshot_show 0x37
	.string "Lan,you have less\n"
	.string "than 3 chips in your\n"
	.string "Pack."
	ts_key_wait 0x0
	ts_end
	text_script 2, scr_2
	ts_check_flag 0x1D, 0x17, 0xFF, 0x1E
	ts_check_navi_all 0xFF, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0xFF
	ts_msg_open
	ts_text_speed 0x0
	ts_mugshot_show 0x37
	.string "Add these 3?\n"
	ts_position_option_from_center 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_end
	text_script 3, scr_3
	ts_msg_open
	.string "OK!\n"
	ts_sound_disable_text_sfx
	ts_sound_play00 0xD5, 0x0
	.string "Click-k-k-k...THUNK!"
	ts_sound_enable_text_sfx
	ts_key_wait 0x0
	ts_clear_msg
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	ts_flag_set 0xF5, 0x0
	ts_position_text 0x5B, 0x6C, 0x3
	ts_position_arrow 0xE2, 0x8D
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear 0xF5, 0x0
	ts_wait 0x6, 0x0
	ts_position_text 0x33, 0x6C, 0x3
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x5, 0xFF
	ts_start_chip_trader 0x3, 0x4
	ts_key_wait 0x0
	ts_end
	ts_check_flag 0x1D, 0x17, 0xFF, 0x15
	ts_check_navi_all 0xFF, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "have less than 3\n"
	.string "chips in your Pack!"
	text_script 4, scr_4
	ts_key_wait 0x0
	ts_end
	ts_end
	ts_msg_open
	.string "Chip Trader Special!\n"
	.string "Insert 10 BtlChips?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xB, 0xFF
	ts_start_chip_trader 0xA, 0x7
	ts_key_wait 0x0
	ts_end
	ts_check_flag 0x1D, 0x17, 0xFF, 0x16
	ts_check_navi_all 0xFF, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you have less\n"
	.string "than 10 chips\n"
	.string "in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_check_flag 0x1D, 0x17, 0xFF, 0x1F
	ts_check_navi_all 0xFF, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0xFF
	ts_msg_open
	ts_text_speed 0x0
	ts_mugshot_show 0x37
	.string "Add these 10?\n"
	ts_position_option_from_center 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end
	ts_msg_open
	.string "OK!\n"
	ts_sound_disable_text_sfx
	ts_sound_play00 0xD5, 0x0
	.string "Click-k-k-k...THUNK!"
	ts_sound_enable_text_sfx
	ts_key_wait 0x0
	ts_clear_msg
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	ts_flag_set 0xF5, 0x0
	ts_position_text 0x5B, 0x6C, 0x3
	ts_position_arrow 0xE2, 0x8D
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear 0xF5, 0x0
	ts_wait 0x6, 0x0
	ts_position_text 0x33, 0x6C, 0x3
	.string "Try again?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xB, 0xFF
	ts_start_chip_trader 0xA, 0xA
	ts_key_wait 0x0
	ts_end
	ts_check_flag 0x1D, 0x17, 0xFF, 0x17
	ts_check_navi_all 0xFF, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "have less than 10\n"
	.string "chips in your Pack!"
	ts_key_wait 0x0
	ts_end
	ts_end
	ts_msg_open
	.string "A BugFrag Trader."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Insert 10 BugFrags?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x11, 0xFF
	text_script 5, scr_5
	ts_start_chip_trader 0x1, 0xD
	ts_wait_hold 0x0, 0x0
	ts_check_flag 0x1D, 0x17, 0xFF, 0x18
	ts_check_navi_all 0xFF, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you don't have\n"
	.string "10 BugFrags!"
	ts_key_wait 0x0
	ts_end
	ts_msg_open_quick
	ts_print_current_navi 0x0
	.string "handed over\n"
	.string "the BugFrags!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_flag_set 0xF6, 0x0
	ts_wait 0x3C, 0x0
	.string "With a powerful howl\n"
	.string "the ChipData is\n"
	.string "revealed!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	ts_flag_set 0xF5, 0x0
	ts_position_text 0x5B, 0x6C, 0x3
	ts_position_arrow 0xE2, 0x8D
	ts_print_current_navi 0x0
	.string "got:\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear 0xF5, 0x0
	ts_wait 0x6, 0x0
	ts_position_text 0x33, 0x6C, 0x3
	.string "Try again?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x11, 0xFF
	ts_start_chip_trader 0x1, 0x10
	ts_wait_hold 0x0, 0x0
	ts_check_flag 0x1D, 0x17, 0xFF, 0x19
	ts_check_navi_all 0xFF, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Too bad,Lan. We\n"
	.string "don't have 10\n"
	.string "BugFrags!"
	ts_key_wait 0x0
	text_script 6, scr_6
	ts_msg_close
	ts_wait_hold 0x0, 0x0
	ts_msg_close
	ts_wait_hold 0x0, 0x0
	ts_msg_open
	.string "You don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "You don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_msg_open
	.string "You don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "You don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_msg_open
	.string "We don't have 10\n"
	text_script 7, scr_7
	.string "BugFrags!"
	ts_key_wait 0x0
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	ts_msg_open
	.string "You don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_msg_open
	.string "You don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_msg_open
	.string "We don't have 10\n"
	text_script 8, scr_8
	.string "BugFrags!"
	ts_key_wait 0x0
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	ts_msg_open
	ts_text_speed 0x0
	.string "Add these 3?\n"
	ts_position_option_from_center 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	text_script 9, scr_9
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end
	ts_msg_open
	ts_text_speed 0x0
	.string "Add these 10?\n"
	ts_position_option_from_center 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	text_script 10, scr_10
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end
	ts_msg_open
	ts_text_speed 0x0
	.string "Add these 3?\n"
	ts_position_option_from_center 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	text_script 11, scr_11
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end
	ts_msg_open
	ts_text_speed 0x0
	.string "Add these 3?\n"
	ts_position_option_from_center 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	text_script 12, scr_12
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_msg_open
	ts_text_speed 0x0
	.string "Add these 10?\n"
	ts_position_option_from_center 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	text_script 13, scr_13
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end
	ts_msg_open
	ts_text_speed 0x0
	.string "Add these 10?\n"
	ts_position_option_from_center 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	text_script 14, scr_14
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_msg_open
	.string "We don't have 10\n"
	text_script 15, scr_15
	.string "BugFrags!"
	ts_key_wait 0x0
	ts_end
	ts_msg_open
	.string "We don't have 10\n"
	text_script 16, scr_16
	.string "BugFrags!"
	ts_key_wait 0x0
	ts_end
	ts_clear_msg
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	ts_clear_msg
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	ts_msg_open
	.string "You don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_msg_open
	.string "You don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait 0x0
	ts_end
	ts_mugshot_show 0x35
	ts_msg_open
	.string "I am Otenko."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have traveled the\n"
	.string "depths of space."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have arrived to\n"
	.string "exchange your\n"
	.string "Crossover Points!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Add your points?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	text_script 17, scr_17
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x35
	ts_msg_open_quick
	.string "Add your points?\n"
	ts_space 0x8
	ts_option 0x1, 0x0, 0x0
	ts_space 0x1
	ts_menu_option_crossover_trader 0x0
	.string "1"
	ts_space_px 0x1
	ts_menu_option_crossover_trader 0x1
	.string "0\n"
	.string "(U/D:Change points)"
	ts_flag_set 0x25, 0x17
	ts_menu_select_crossover_trader
	ts_wait_hold 0x0, 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x35
	ts_msg_open_quick
	.string "Very well.\n"
	.string "Come again!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Sun will rise\n"
	.string "tomorrow!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x35
	ts_msg_open_quick
	ts_print_buffer03 0x82, 0x1
	.string " points?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x35
	ts_msg_open_quick
	.string "You don't have\n"
	.string "enough points!"
	ts_key_wait 0x0
	ts_end
	ts_msg_open_quick
	ts_flag_set 0xF6, 0x0
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	ts_flag_set 0xF5, 0x0
	ts_position_text 0x5B, 0x6C, 0x3
	ts_position_arrow 0xE2, 0x8D
	ts_print_current_navi 0x0
	.string "got:\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear 0xF5, 0x0
	ts_wait 0x6, 0x0
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	text_script 18, scr_18
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_msg_open_quick
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	ts_print_current_navi 0x0
	.string "got:\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	text_script 19, scr_19
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_msg_open_quick
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	ts_print_current_navi 0x0
	.string "got:\n"
	ts_print_buffer03 0x0, 0x3
	.string " BugFrags!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	text_script 20, scr_20
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_msg_open_quick
	ts_flag_set 0xF6, 0x0
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	ts_flag_set 0xF5, 0x0
	ts_position_text 0x5B, 0x6C, 0x3
	ts_position_arrow 0xE2, 0x8D
	.string "ProtoMan got:\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear 0xF5, 0x0
	ts_wait 0x6, 0x0
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_msg_open_quick
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	.string "ProtoMan got a\n"
	.string "SubChip:\n"
	.string "\""
	ts_print_item 0x0, 0x1
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	text_script 21, scr_21
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_msg_open_quick
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	.string "ProtoMan got:\n"
	ts_print_buffer03 0x81, 0x1
	.string " BugFrags!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	text_script 22, scr_22
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_msg_open_quick
	ts_flag_set 0xF6, 0x0
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	ts_flag_set 0xF5, 0x0
	ts_position_text 0x5B, 0x6C, 0x3
	ts_position_arrow 0xE2, 0x8D
	.string "Colonel got:\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear 0xF5, 0x0
	ts_wait 0x6, 0x0
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_msg_open_quick
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	.string "Colonel got a\n"
	.string "SubChip:\n"
	.string "\""
	ts_print_item 0x0, 0x1
	.string "\"!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	ts_msg_open_quick
	ts_control_lock
	ts_wait 0x3C, 0x0
	ts_control_unlock
	ts_player_animate_scene 0x18
	ts_sound_play00 0x73, 0x0
	.string "Colonel got:\n"
	ts_print_buffer03 0x81, 0x1
	.string " BugFrags!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text 0x33, 0x6C, 0x3
	ts_mugshot_show 0x35
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold 0x0, 0x0
	.string " "
	ts_clear_msg
	.string " ボ$"
	.balign 4, 0
0xfd6
