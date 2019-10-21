
	enum_start 0, 4

	enum ccs_set_camera_pos_cmd // 0x00
// 0x0 hword1 hword3 hword5
// set the camera position
// hword1 - x coord
// hword3 - y coord
// hword5 - z coord
	.macro ccs_set_camera_pos hword1:req hword3:req hword5:req
	.byte ccs_set_camera_pos_cmd
	.hword \hword1
	.hword \hword3
	.hword \hword5
	.endm

	enum ccs_simple_scroll_cmd // 0x04
// 0x4 hword1 hword3 hword5 hword7
// scroll the camera
// hword1 - scroll duration
// hword3 - x offset
// hword5 - y offset
// hword7 - z offset
	.macro ccs_simple_scroll hword1:req hword3:req hword5:req hword7:req
	.byte ccs_simple_scroll_cmd
	.hword \hword1
	.hword \hword3
	.hword \hword5
	.hword \hword7
	.endm

	enum ccs_end_cmd // 0x08
// 0x8
// end cutscene camera script
	.macro ccs_end
	.byte ccs_end_cmd
	.endm

	enum ccs_wait_cmd // 0x0c
// 0xc hword1
// wait a certain amount of frames
// hword1 - number of frames to wait
	.macro ccs_wait hword1:req
	.byte ccs_wait_cmd
	.hword \hword1
	.endm

	enum ccs_init_shake_effect_cmd // 0x10
// 0x10 byte1 byte2
// shake the screen
// byte1 = shake duration
// byte2 = shake intensity
	.macro ccs_init_shake_effect byte1:req byte2:req
	.byte ccs_init_shake_effect_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum ccs_auto_scroll_to_player_cmd // 0x14
// 0x14
// scroll the camera to the player automatically
// the scroll starts off fast, then progressively deaccelerates
// see CutsceneCamera_GetAutoScrollDeltaForCoord for how the scroll works
	.macro ccs_auto_scroll_to_player
	.byte ccs_auto_scroll_to_player_cmd
	.endm

	enum ccs_smooth_auto_scroll_to_pos_cmd // 0x18
// 0x18 hword1 hword3 hword5 hword7
// perform a smooth automatic scroll to the given camera position
// hword1 - new X coordinate
// hword3 - new Y coordinate
// hword5 - new Z coordinate
// hword7 - scroll time
	.macro ccs_smooth_auto_scroll_to_pos hword1:req hword3:req hword5:req hword7:req
	.byte ccs_smooth_auto_scroll_to_pos_cmd
	.hword \hword1
	.hword \hword3
	.hword \hword5
	.hword \hword7
	.endm

	enum ccs_smooth_auto_scroll_to_pos_relative_to_ow_player_cmd // 0x1c
// 0x1c hword1 hword3 hword5 hword7
// perform a smooth automatic scroll to a location relative to the player
// hword1 - relative X coordinate offset to the player
// hword3 - relative Y coordinate offset to the player
// hword5 - relative Z coordinate offset to the player
// hword7 - scroll time
	.macro ccs_smooth_auto_scroll_to_pos_relative_to_ow_player hword1:req hword3:req hword5:req hword7:req
	.byte ccs_smooth_auto_scroll_to_pos_relative_to_ow_player_cmd
	.hword \hword1
	.hword \hword3
	.hword \hword5
	.hword \hword7
	.endm

	enum ccs_smooth_auto_scroll_to_soul_weapons_cursor_cmd // 0x20
// 0x20 unused1to6 hword7
// perform a smooth automatic scroll to the soul weapon's cursor
// unused1to6 - unused
// hword7 - timer
	.macro ccs_smooth_auto_scroll_to_soul_weapons_cursor hword7:req
	.byte ccs_smooth_auto_scroll_to_soul_weapons_cursor_cmd
	.byte 0, 0, 0, 0, 0, 0
	.hword \hword7
	.endm

	enum ccs_smooth_auto_scroll_cmd_80372ec_cmd // 0x24
// 0x24 unused1to6 hword7
// perform a smooth automatic scroll to the coords at [eCutsceneState_Unk_04]+0xc
// unused1to6 - unused
// hword7 - timer
	.macro ccs_smooth_auto_scroll_cmd_80372ec hword7:req
	.byte ccs_smooth_auto_scroll_cmd_80372ec_cmd
	.byte 0, 0, 0, 0, 0, 0
	.hword \hword7
	.endm

	enum ccs_run_text_script_cmd // 0x28
// 0x28 byte1 word2
// run the text script given the arguments
// byte1 - script index
// word2 - text archive
	.macro ccs_run_text_script byte1:req word2:req
	.byte ccs_run_text_script_cmd
	.byte \byte1
	.word \word2
	.endm

	enum ccs_wait_chatbox_cmd // 0x2c
// 0x2c
// wait for the chatbox to be cleared
	.macro ccs_wait_chatbox
	.byte ccs_wait_chatbox_cmd
	.endm

	enum ccs_call_sub_8001B1C_cmd // 0x30
// 0x30 word1
// call sub_8001B1C with r0=word1
	.macro ccs_call_sub_8001B1C word1:req
	.byte ccs_call_sub_8001B1C_cmd
	.word \word1
	.endm

	enum ccs_call_sub_8001B6C_cmd // 0x34
// 0x34 word1
// call sub_8001B6C with r0=word1
	.macro ccs_call_sub_8001B6C word1:req
	.byte ccs_call_sub_8001B6C_cmd
	.word \word1
	.endm

	enum ccs_set_screen_fade_cmd // 0x38
// 0x38 byte1 byte2
// set screen fade with r0=byte1 and r1=byte2
	.macro ccs_set_screen_fade byte1:req byte2:req
	.byte ccs_set_screen_fade_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum ccs_wait_screen_fade_cmd // 0x3c
// 0x3c
// wait for the screen to finish fading
	.macro ccs_wait_screen_fade
	.byte ccs_wait_screen_fade_cmd
	.endm

	enum ccs_set_event_flag_cmd // 0x40
// 0x40 hword1
// set event flag
// hword1 - event flag to set
	.macro ccs_set_event_flag hword1:req
	.byte ccs_set_event_flag_cmd
	.hword \hword1
	.endm

	enum ccs_clear_event_flag_cmd // 0x44
// 0x44 hword1
// clear event flag
// hword1 - event flag to clear
	.macro ccs_clear_event_flag hword1:req
	.byte ccs_clear_event_flag_cmd
	.hword \hword1
	.endm

	enum ccs_sound_cmd_80373fc_cmd // 0x48
// 0x48 byte1 byte2
// call sound_800068A with r0=byte1 and r1=byte2
	.macro ccs_sound_cmd_80373fc byte1:req byte2:req
	.byte ccs_sound_cmd_80373fc_cmd
	.byte \byte1
	.byte \byte2
	.endm

	enum ccs_play_music_cmd // 0x4c
// 0x4c hword1
// play music
// hword1 - music to play
	.macro ccs_play_music hword1:req
	.byte ccs_play_music_cmd
	.hword \hword1
	.endm

	enum ccs_write_camera_field_03_14_cmd // 0x50
// 0x50 word1
// call camera_writeUnk03_14_80301b2 with r0=1 and r1=word1
	.macro ccs_write_camera_field_03_14 word1:req
	.byte ccs_write_camera_field_03_14_cmd
	.word \word1
	.endm

