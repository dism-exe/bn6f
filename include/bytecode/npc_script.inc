//! type: NPCScript
//! Sourced from NPCCommandsJumptable

  enum_start

	// 0x00 
	enum ns_end_cmd // 0x00
	.macro ns_end 
	.byte ns_end_cmd
	.endm

	// 0x01
	enum ns_unused_cmd_01 // 0x01

	// 0x02 destination1
	enum ns_jump_cmd // 0x02
	.macro ns_jump destination1:req
	.byte ns_jump_cmd
	.word \destination1
	.endm

	// 0x03 
	enum ns_free_and_end_cmd // 0x03
	.macro ns_free_and_end 
	.byte ns_free_and_end_cmd
	.endm

	// 0x04 event16_1 destination3
	enum ns_jump_if_flag_set_cmd // 0x04
	.macro ns_jump_if_flag_set event16_1:req destination3:req
	.byte ns_jump_if_flag_set_cmd
	.hword \event16_1
	.word \destination3
	.endm

	// 0x05 event16_1 destination3
	enum ns_jump_if_flag_clear_cmd // 0x05
	.macro ns_jump_if_flag_clear event16_1:req destination3:req
	.byte ns_jump_if_flag_clear_cmd
	.hword \event16_1
	.word \destination3
	.endm

	// 0x06 event16_1
	enum ns_set_event_flag_cmd // 0x06
	.macro ns_set_event_flag event16_1:req
	.byte ns_set_event_flag_cmd
	.hword \event16_1
	.endm

	// 0x07 event16_1
	enum ns_clear_event_flag_cmd // 0x07
	.macro ns_clear_event_flag event16_1:req
	.byte ns_clear_event_flag_cmd
	.hword \event16_1
	.endm

	// 0x08 
	enum ns_set_active_and_visible_cmd // 0x08
	.macro ns_set_active_and_visible 
	.byte ns_set_active_and_visible_cmd
	.endm

	// 0x09 
	enum ns_set_active_and_invisible_cmd // 0x09
	.macro ns_set_active_and_invisible 
	.byte ns_set_active_and_invisible_cmd
	.endm

	// 0x0a byte1
	enum ns_set_collision_radius_cmd // 0x0a
	.macro ns_set_collision_radius byte1:req
	.byte ns_set_collision_radius_cmd
	.byte \byte1
	.endm

	// 0x0b byte1
	enum ns_set_z_reach_cmd // 0x0b
	.macro ns_set_z_reach byte1:req
	.byte ns_set_z_reach_cmd
	.byte \byte1
	.endm

	// 0x0c signedbyte1 signedbyte2 signedbyte3
	enum ns_shift_center_cmd // 0x0c
	.macro ns_shift_center signedbyte1:req signedbyte2:req signedbyte3:req
	.byte ns_shift_center_cmd
	.byte \signedbyte1
	.byte \signedbyte2
	.byte \signedbyte3
	.endm

	// 0x0d 
	enum ns_enable_npc_interaction_cmd // 0x0d
	.macro ns_enable_npc_interaction 
	.byte ns_enable_npc_interaction_cmd
	.endm

	// 0x0e 
	enum ns_disable_npc_interaction_cmd // 0x0e
	.macro ns_disable_npc_interaction 
	.byte ns_disable_npc_interaction_cmd
	.endm

	// 0x0f byte1
	enum ns_set_npc_palette_index_cmd // 0x0f
	.macro ns_set_npc_palette_index byte1:req
	.byte ns_set_npc_palette_index_cmd
	.byte \byte1
	.endm

	// 0x10 byte1
	enum ns_pause_cmd // 0x10
	.macro ns_pause byte1:req
	.byte ns_pause_cmd
	.byte \byte1
	.endm

	// 0x11 byte1 byte2
	enum ns_init_hop_cmd // 0x11
	.macro ns_init_hop byte1:req byte2:req
	.byte ns_init_hop_cmd
	.byte \byte1
	.byte \byte2
	.endm

	// 0x12 
	enum ns_face_player_when_interacted_cmd // 0x12
	.macro ns_face_player_when_interacted 
	.byte ns_face_player_when_interacted_cmd
	.endm

	// 0x13 
	enum ns_do_not_face_player_when_interacted_cmd // 0x13
	.macro ns_do_not_face_player_when_interacted 
	.byte ns_do_not_face_player_when_interacted_cmd
	.endm

	// 0x14 hword1 hword3 hword5
	enum ns_set_coords_cmd // 0x14
	.macro ns_set_coords hword1:req hword3:req hword5:req
	.byte ns_set_coords_cmd
	.hword \hword1
	.hword \hword3
	.hword \hword5
	.endm

	// 0x15 byte1 byte2 byte3
	enum ns_move_in_direction_cmd // 0x15
	.macro ns_move_in_direction byte1:req byte2:req byte3:req
	.byte ns_move_in_direction_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.endm

	// 0x16 byte1
	enum ns_set_animation_cmd // 0x16
	.macro ns_set_animation byte1:req
	.byte ns_set_animation_cmd
	.byte \byte1
	.endm

	// 0x17 byte1
	enum ns_set_sprite_cmd // 0x17
	.macro ns_set_sprite byte1:req
	.byte ns_set_sprite_cmd
	.byte \byte1
	.endm

	// 0x18 byte1
	enum ns_set_text_script_index_cmd // 0x18
	.macro ns_set_text_script_index byte1:req
	.byte ns_set_text_script_index_cmd
	.byte \byte1
	.endm

	// 0x19 
	enum ns_disable_layer_priority_override_cmd // 0x19
	.macro ns_disable_layer_priority_override 
	.byte ns_disable_layer_priority_override_cmd
	.endm

	// 0x1a 
	enum ns_set_layer_priority_override_to_2_cmd // 0x1a
	.macro ns_set_layer_priority_override_to_2 
	.byte ns_set_layer_priority_override_to_2_cmd
	.endm

	// 0x1b 
	enum ns_set_layer_priority_override_to_3_cmd // 0x1b
	.macro ns_set_layer_priority_override_to_3 
	.byte ns_set_layer_priority_override_to_3_cmd
	.endm

	// 0x1c word1
	enum ns_write_hidden_oam_pieces_cmd // 0x1c
	.macro ns_write_hidden_oam_pieces word1:req
	.byte ns_write_hidden_oam_pieces_cmd
	.word \word1
	.endm

	// 0x1d byte1
	enum ns_set_individual_hidden_oam_piece_cmd // 0x1d
	.macro ns_set_individual_hidden_oam_piece byte1:req
	.byte ns_set_individual_hidden_oam_piece_cmd
	.byte \byte1
	.endm

	// 0x1e byte1
	enum ns_clear_individual_hidden_oam_piece_cmd // 0x1e
	.macro ns_clear_individual_hidden_oam_piece byte1:req
	.byte ns_clear_individual_hidden_oam_piece_cmd
	.byte \byte1
	.endm

	// 0x1f 
	enum ns_disable_collision_cmd // 0x1f
	.macro ns_disable_collision 
	.byte ns_disable_collision_cmd
	.endm

	// 0x20 
	enum ns_enable_collision_cmd // 0x20
	.macro ns_enable_collision 
	.byte ns_enable_collision_cmd
	.endm

	// 0x21 
	enum ns_give_attached_shadow_cmd // 0x21
	.macro ns_give_attached_shadow 
	.byte ns_give_attached_shadow_cmd
	.endm

	// 0x22 
	enum ns_give_detatched_shadow_cmd // 0x22
	.macro ns_give_detatched_shadow 
	.byte ns_give_detatched_shadow_cmd
	.endm

	// 0x23 
	enum ns_remove_shadow_cmd // 0x23
	.macro ns_remove_shadow 
	.byte ns_remove_shadow_cmd
	.endm

	// 0x24 
	enum ns_set_sprite_to_cur_pet_navi_cmd // 0x24
	.macro ns_set_sprite_to_cur_pet_navi 
	.byte ns_set_sprite_to_cur_pet_navi_cmd
	.endm

	// 0x25 byte1 byte2
	enum ns_set_sprite_with_category_cmd // 0x25
	.macro ns_set_sprite_with_category byte1:req byte2:req
	.byte ns_set_sprite_with_category_cmd
	.byte \byte1
	.byte \byte2
	.endm

	// 0x26 
	enum ns_toggle_sprite_mirror_cmd // 0x26
	.macro ns_toggle_sprite_mirror 
	.byte ns_toggle_sprite_mirror_cmd
	.endm

	// 0x27 
	enum ns_disable_collision_alternate_cmd // 0x27
	.macro ns_disable_collision_alternate 
	.byte ns_disable_collision_alternate_cmd
	.endm

	// 0x28 hword1
	enum ns_play_sound_cmd // 0x28
	.macro ns_play_sound hword1:req
	.byte ns_play_sound_cmd
	.hword \hword1
	.endm

	// 0x29 hword1
	enum ns_init_mystery_data_cmd // 0x29
	.macro ns_init_mystery_data hword1:req
	.byte ns_init_mystery_data_cmd
	.hword \hword1
	.endm

	// 0x2a byte1
	enum ns_wait_anim_frame_cmd // 0x2a
	.macro ns_wait_anim_frame byte1:req
	.byte ns_wait_anim_frame_cmd
	.byte \byte1
	.endm

	// 0x2b hword1
	enum ns_set_color_shader_cmd // 0x2b
	.macro ns_set_color_shader hword1:req
	.byte ns_set_color_shader_cmd
	.hword \hword1
	.endm

	// 0x2C
	enum ns_unused_cmd_2C // 0x2C

	// 0x2d byte1 byte2
	enum ns_set_mosaic_cmd // 0x2d
	.macro ns_set_mosaic byte1:req byte2:req
	.byte ns_set_mosaic_cmd
	.byte \byte1
	.byte \byte2
	.endm

	// 0x2e byte1
	enum ns_set_animation_force_update_cmd // 0x2e
	.macro ns_set_animation_force_update byte1:req
	.byte ns_set_animation_force_update_cmd
	.byte \byte1
	.endm

	// 0x2f byte1 byte2 byte3
	enum ns_set_transform_cmd // 0x2f
	.macro ns_set_transform byte1:req byte2:req byte3:req
	.byte ns_set_transform_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.endm

	// 0x30 
	enum ns_remove_transform_cmd // 0x30
	.macro ns_remove_transform 
	.byte ns_remove_transform_cmd
	.endm

	// 0x31 byte1
	enum ns_set_alpha_cmd // 0x31
	.macro ns_set_alpha byte1:req
	.byte ns_set_alpha_cmd
	.byte \byte1
	.endm

	// 0x32 ptr1
	enum ns_run_secondary_script_cmd // 0x32
	.macro ns_run_secondary_script ptr1:req
	.byte ns_run_secondary_script_cmd
	.word \ptr1
	.endm

	// 0x33 byte1
	enum ns_pause_secondary_script_cmd // 0x33
	.macro ns_pause_secondary_script byte1:req
	.byte ns_pause_secondary_script_cmd
	.byte \byte1
	.endm

	// 0x34 
	enum ns_end_secondary_script_cmd // 0x34
	.macro ns_end_secondary_script 
	.byte ns_end_secondary_script_cmd
	.endm

	// 0x35 ptr1
	enum ns_init_native_callback_cmd // 0x35
	.macro ns_init_native_callback ptr1:req
	.byte ns_init_native_callback_cmd
	.word \ptr1
	.endm

	// 0x36 destination1
	enum ns_jump_with_link_cmd // 0x36
	.macro ns_jump_with_link destination1:req
	.byte ns_jump_with_link_cmd
	.word \destination1
	.endm

	// 0x37 byte1 byte2 byte3 byte4 word5
	enum ns_init_native_callback_with_args_cmd // 0x37
	.macro ns_init_native_callback_with_args byte1:req byte2:req byte3:req byte4:req word5:req
	.byte ns_init_native_callback_with_args_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.byte \byte4
	.word \word5
	.endm

	// 0x38 byte1 byte2 byte3 destination4
	enum ns_init_movement_cmd // 0x38
	.macro ns_init_movement byte1:req byte2:req byte3:req destination4:req
	.byte ns_init_movement_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.word \destination4
	.endm

	// 0x39 byte1
	enum ns_change_movement_direction_cmd // 0x39
	.macro ns_change_movement_direction byte1:req
	.byte ns_change_movement_direction_cmd
	.byte \byte1
	.endm

	// 0x3a 
	enum ns_return_to_link_cmd // 0x3a
	.macro ns_return_to_link 
	.byte ns_return_to_link_cmd
	.endm

	// 0x3b byte1 byte2 destination3
	enum ns_jump_if_progress_in_range_cmd // 0x3b
	.macro ns_jump_if_progress_in_range byte1:req byte2:req destination3:req
	.byte ns_jump_if_progress_in_range_cmd
	.byte \byte1
	.byte \byte2
	.word \destination3
	.endm

	// 0x3c byte1 byte2
	enum ns_write_cutscene_var_cmd // 0x3c
	.macro ns_write_cutscene_var byte1:req byte2:req
	.byte ns_write_cutscene_var_cmd
	.byte \byte1
	.byte \byte2
	.endm

	// 0x3d byte1 byte2 destination3
	enum ns_jump_if_cutscene_var_equals_cmd // 0x3d
	.macro ns_jump_if_cutscene_var_equals byte1:req byte2:req destination3:req
	.byte ns_jump_if_cutscene_var_equals_cmd
	.byte \byte1
	.byte \byte2
	.word \destination3
	.endm

	// 0x3e byte1 byte2 destination3
	enum ns_jump_if_cutscene_var_not_equal_cmd // 0x3e
	.macro ns_jump_if_cutscene_var_not_equal byte1:req byte2:req destination3:req
	.byte ns_jump_if_cutscene_var_not_equal_cmd
	.byte \byte1
	.byte \byte2
	.word \destination3
	.endm

	// 0x3f byte1 byte2
	enum ns_wait_cutscene_var_cmd // 0x3f
	.macro ns_wait_cutscene_var byte1:req byte2:req
	.byte ns_wait_cutscene_var_cmd
	.byte \byte1
	.byte \byte2
	.endm

	// 0x40 
	enum ns_set_unk_flags_60_flag_0x200_cmd // 0x40
	.macro ns_set_unk_flags_60_flag_0x200 
	.byte ns_set_unk_flags_60_flag_0x200_cmd
	.endm

	// 0x41 
	enum ns_clear_unk_flags_60_flag_0x200_cmd // 0x41
	.macro ns_clear_unk_flags_60_flag_0x200 
	.byte ns_clear_unk_flags_60_flag_0x200_cmd
	.endm

	// 0x42
	enum ns_unused_cmd_42 // 0x42


	// 0x43
	enum ns_unused_cmd_43 // 0x43

	// 0x44 byte1 ptr2
	enum ns_set_text_script_index_and_ptr_cmd // 0x44
	.macro ns_set_text_script_index_and_ptr byte1:req ptr2:req
	.byte ns_set_text_script_index_and_ptr_cmd
	.byte \byte1
	.word \ptr2
	.endm

	// 0x45 hword1
	enum ns_wait_mystery_data_taken_cmd // 0x45
	.macro ns_wait_mystery_data_taken hword1:req
	.byte ns_wait_mystery_data_taken_cmd
	.hword \hword1
	.endm

	// 0x46 byte1
	enum ns_set_obj_window_mode_cmd // 0x46
	.macro ns_set_obj_window_mode byte1:req
	.byte ns_set_obj_window_mode_cmd
	.byte \byte1
	.endm

	// 0x47 hword1
	enum ns_play_music_cmd // 0x47
	.macro ns_play_music hword1:req
	.byte ns_play_music_cmd
	.hword \hword1
	.endm

	// 0x48 
	enum ns_set_sprite_0x3_bit5_cmd // 0x48
	.macro ns_set_sprite_0x3_bit5 
	.byte ns_set_sprite_0x3_bit5_cmd
	.endm

	// 0x49 
	enum ns_remove_shadow_ignore_flags_cmd // 0x49
	.macro ns_remove_shadow_ignore_flags 
	.byte ns_remove_shadow_ignore_flags_cmd
	.endm

	// 0x4a byte1 hword2
	enum ns_do_camera_shake_cmd // 0x4a
	.macro ns_do_camera_shake byte1:req hword2:req
	.byte ns_do_camera_shake_cmd
	.byte \byte1
	.hword \hword2
	.endm

	// 0x4b byte1
	enum ns_jump_if_anim_not_equal_cmd // 0x4b
	.macro ns_jump_if_anim_not_equal byte1:req
	.byte ns_jump_if_anim_not_equal_cmd
	.byte \byte1
	.endm

	// 0x4c byte1
	enum ns_set_text_script_index_and_ptr_to_decomp_buffer_cmd // 0x4c
	.macro ns_set_text_script_index_and_ptr_to_decomp_buffer byte1:req
	.byte ns_set_text_script_index_and_ptr_to_decomp_buffer_cmd
	.byte \byte1
	.endm

	// 0x4d unusedword1 destination5
  // corresponds to NPCCommand_jump_alt
	enum ns_jump_alt_cmd // 0x4d
	.macro ns_jump_alt unuseddestination1:req destination5:req
	.byte ns_jump_alt_cmd
	.word \unuseddestination1
	.word \destination5
	.endm

	// 0x4e byte1 byte2 byte3 byte4
	enum ns_init_leap_cmd // 0x4e
	.macro ns_init_leap byte1:req byte2:req byte3:req byte4:req
	.byte ns_init_leap_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.byte \byte4
	.endm

	// 0x4f byte1 byte2 byte3
	enum ns_init_vertical_movement_cmd // 0x4f
	.macro ns_init_vertical_movement byte1:req byte2:req byte3:req
	.byte ns_init_vertical_movement_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.endm

	// 0x50 byte1 byte2 byte3 byte4
	enum ns_init_diagonal_leap_cmd // 0x50
	.macro ns_init_diagonal_leap byte1:req byte2:req byte3:req byte4:req
	.byte ns_init_diagonal_leap_cmd
	.byte \byte1
	.byte \byte2
	.byte \byte3
	.byte \byte4
	.endm

	// 0x51 hword1
	enum ns_init_groundman_minigame_prog_cmd // 0x51
	.macro ns_init_groundman_minigame_prog hword1:req
	.byte ns_init_groundman_minigame_prog_cmd
	.hword \hword1
	.endm

	// 0x52 
	enum ns_jack_out_cmd // 0x52
	.macro ns_jack_out 
	.byte ns_jack_out_cmd
	.endm

	// 0x53 destination1
	enum ns_jump_if_screen_fade_active_cmd // 0x53
	.macro ns_jump_if_screen_fade_active destination1:req
	.byte ns_jump_if_screen_fade_active_cmd
	.word \destination1
	.endm
