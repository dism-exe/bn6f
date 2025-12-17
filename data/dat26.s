
unk_080924DA::
	.byte 0x00
	.byte 0x00

ccs_80924DC:
	ccs_set_camera_pos hword1=0xF540 hword3=0xF780 hword5=0xFC00
	ccs_end

cutscenescript_80924E4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CABC8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80924DC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805D3CC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8092565
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_809251C:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_store_game_progress_buffer_maybe_803843c byte2=0x00
	cs_load_game_progress_buffer_maybe_803843c byte2=0x0A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CE0
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0B40 signedhword6=-0x0880 signedhword8=-0x0400
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CA2
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CA4
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8092565:
	.word 0x1540003C, cutscenescript_809251C
	.byte 0x00
	.byte 0x00
	.byte 0x00

ccs_8092570:
	ccs_set_camera_pos hword1=0xF9C0 hword3=0xFF40 hword5=0x0000
	ccs_end

cutscenescript_8092578:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CAE68 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8092570
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8070D58
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80925E0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80925AB::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_change_navi_maybe_80382fe byte1=0x0A
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=-0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_80925E0::
	.word 0x1540003C, byte_80925AB

ccs_80925E8:
	ccs_set_camera_pos hword1=0xED20 hword3=0xF640 hword5=0x0000
	ccs_end

ccs_80925F0:
	ccs_simple_scroll hword1=0x0018 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_80925FA:
	.byte 0x00
	.byte 0x00

cutscenescript_80925FC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CB068 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80925E8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807DEE0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_809267C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80925F0
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x0A

byte_8092653::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CA6
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CA5
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_set_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_8092684
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_809267C::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8092653

unk_8092684:
	.word 0x04000203, 0x00000000, 0x00000000, 0x00000000
ccs_8092694:
	ccs_set_camera_pos hword1=0xF540 hword3=0xF780 hword5=0xFC00
	ccs_end

cutscenescript_809269C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CB1C0 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8092694
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805D404
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8092724
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80926CF::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_store_game_progress_buffer_maybe_803843c byte2=0x0A
	cs_load_game_progress_buffer_maybe_803843c byte2=0x00
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_CE0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CE1
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0B40 signedhword6=-0x0880 signedhword8=-0x0400
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_EB
	cs_cmd_8038346 word1=0x00170214 word5=0x00000003
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_809272C
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8092724::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80926CF

unk_809272C:
	.word 0x01000203
	.byte 0x00
	.byte 0x00
end_cutscenescript_8092732:
	.word 0x0000FF4C, 0x0000FF78
	.byte 0xC0
	.byte 0xFF

ccs_809273C:
	ccs_set_camera_pos hword1=0xF740 hword3=0xF6C0 hword5=0x05A0
	ccs_end

ccs_8092744:
	ccs_simple_scroll hword1=0x00D0 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_809274E:
	ccs_simple_scroll hword1=0x00B0 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

cutscenescript_8092758:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CB3F8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_809273C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8061C5C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8092822
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8092744
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_809274E
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80927EB:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x06C0 signedhword6=-0x0940 signedhword8=0x0600
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C21
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8092822::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80927EB
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_809282C:
	ccs_set_camera_pos hword1=0xF9C0 hword3=0x0100 hword5=0x0000
	ccs_end

cutscenescript_8092834:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CB9BC + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_809282C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8059214
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80928B1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_809286C:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_store_game_progress_buffer_maybe_803843c byte2=0x00
	cs_load_game_progress_buffer_maybe_803843c byte2=0x09
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CDC
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=0x01C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C62
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80928B1:
	.word 0x1540003C, cutscenescript_809286C
	.byte 0x00
	.byte 0x00
	.byte 0x00

ccs_80928BC:
	ccs_set_camera_pos hword1=0xF9C0 hword3=0xFF40 hword5=0x0000
	ccs_end

cutscenescript_80928C4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CBB50 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80928BC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8070CFC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8092930
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80928F7::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_change_navi_maybe_80382fe byte1=0x09
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=-0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C64
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8092930::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80928F7

ccs_8092938:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_809293E:
	ccs_end

end_ccs_809293F:
	.byte 0x00
cutscenescript_8092940:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CBD04 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8092938
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8073EAC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8092A8F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_809293E
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_do_camera_shake byte1=0x01 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x00 byte2=0x14 byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x2C hword3=0xFFEE hword5=0xFEA2 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x08
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x2C hword3=0xFFAE hword5=0xFEF8 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x18
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x2C hword3=0xFFF8 hword5=0xFED8 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x0C
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x2C hword3=0xFFA6 hword5=0xFE98 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x24
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x2C hword3=0xFF84 hword5=0xFEC8 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_all_ow_map_objects
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D31
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D30
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_D36
	cs_call_native_with_return_value ptr1=sub_8143978+1
	cs_call_native_with_return_value ptr1=sub_8143F38+1
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x03A0 signedhword6=-0x1460 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8092A8F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8092A34:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_all_ow_map_objects
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x03A0 signedhword6=-0x1460 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C66
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C68
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C6A
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D31
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D30
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_D36
	cs_call_native_with_return_value ptr1=sub_8143978+1
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_call_native_with_return_value ptr1=call_8143F3C+1
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8092A8F:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8092A34
	cs_end_for_map_reload_maybe_8037c64

byte_8092A98::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CBFB4 + COMPRESSED_PTR_FLAG
	cs_end_minigame_effect
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_D31
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_D30
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1721
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8092B12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8092ADE:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C67
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D33
	cs_call_native_with_return_value ptr1=sub_8143CC8+1
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8092B12:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8092ADE
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8092B1C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8092B22:
	ccs_end

end_ccs_8092B23:
	.byte 0x00
cutscenescript_8092B24:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CC030 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8092B1C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80735D4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8092C6F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_8092B22
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_do_camera_shake byte1=0x01 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x00 byte2=0x14 byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x2C hword3=0x0160 hword5=0xFFB6 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x08
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x2C hword3=0x00D2 hword5=0xFFAE hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x10
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x2C hword3=0x012C hword5=0xFF82 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x18
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x2C hword3=0x012A hword5=0xFFB6 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x0C
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x2C hword3=0x0148 hword5=0xFFE2 hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x24
	cs_spawn_ow_map_object nybble1=0x05 byte2=0x2C hword3=0x0194 hword5=0xFF8E hword7=0x0080 word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_all_ow_map_objects
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D31
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D30
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_D36
	cs_call_native_with_return_value ptr1=sub_8143978+1
	cs_call_native_with_return_value ptr1=sub_8143F38+1
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x1440 signedhword6=-0x0640 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8092C6F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8092C20:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_all_ow_map_objects
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x1440 signedhword6=-0x0640 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D31
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D30
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_D36
	cs_call_native_with_return_value ptr1=sub_8143978+1
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_call_native_with_return_value ptr1=call_8143F3C+1
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8092C6F:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8092C20
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8092C78:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CC108 + COMPRESSED_PTR_FLAG
	cs_end_minigame_effect
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_D31
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_D30
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1721
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8092D06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000001
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x21
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8092CD5:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C6B
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C6C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D32
	cs_call_native_with_return_value ptr1=sub_8143CC8+1
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_8092D10
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8092D06:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8092CD5
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_8092D10:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000

ccs_8092D20:
	ccs_set_camera_pos hword1=0xF9C0 hword3=0x0100 hword5=0x0000
	ccs_end

cutscenescript_8092D28:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CC1E4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8092D20
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805924C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8092DB0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8092D5B::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_store_game_progress_buffer_maybe_803843c byte2=0x09
	cs_load_game_progress_buffer_maybe_803843c byte2=0x00
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_CDC
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CDD
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=0x01C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_EA
	cs_cmd_8038346 word1=0x00160214 word5=0x00000003
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8092DB8
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8092DB0::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8092D5B

unk_8092DB8:
	.word 0x07000A02
	.byte 0x00
	.byte 0x00
end_cutscenescript_8092DBE:
	.word 0x0000FF9C, 0x0000001C
	.byte 0x00
	.byte 0x00
off_8092DC8::
	.word 0x04000090, 0x01440000, 0xFF9C0000, 0x00000000

unk_8092DD8:
	.word 0x04000190, 0xFFC60000, 0xFEBA0000, 0x00000000
byte_8092DE8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScriptGroundmanMinigame
	cs_pause byte1=0xFF byte2=0x01
	cs_call_native_with_return_value ptr1=sub_8092E78+1
	cs_jump_if_var_equal byte1=0x08 byte2=0x00 destination3=cutscenescript_8092E02
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8092E02:
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00BC
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_call_native_with_return_value ptr1=sub_8143F38+1
	cs_set_var byte1=0x0B byte2=0x00
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_call_native_with_return_value ptr1=sub_8092E44+1
	cs_wait_chatbox byte1=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8092E3E
	cs_wait_cutscene_process byte1=0x20
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x3C
	cs_call_native_with_return_value ptr1=call_8143F3C+1
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8092E3E:
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x01 signedhword3=-0x0100
	cs_cutscene_end

	thumb_local_start
sub_8092E44::
	push {r4-r7,lr}
	mov r4, #1
	ldrb r0, [r5,#0xa]
	cmp r0, #0x80
	bne loc_8092E72
	bl sub_8143F72
	sub r0, #0x96
	ble loc_8092E66
	bl sub_8143F68
	ldrb r0, [r5,#0xb]
	add r0, #1
	strb r0, [r5,#0xb]
	cmp r0, #3
	beq loc_8092E6C
	b loc_8092E72
loc_8092E66::
	mov r0, #0
	bl sub_8143F68
loc_8092E6C::
	mov r4, #0
	mov r0, #0x81
	strb r0, [r5,#0xa]
loc_8092E72::
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8092E44

	thumb_local_start
sub_8092E78::
	push {r4-r7,lr}
	mov r7, #0x70 
	add r7, r7, r5
	ldrb r0, [r5]
	ldr r1, off_8092E8C // =off_8092E90 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	tst r0, r0
	pop {r4-r7,pc}
off_8092E8C::
	.word off_8092E90
off_8092E90::
	.word sub_8092EC4+1
	.word sub_8092F1E+1
	.word sub_8092F64+1
	.word sub_8092F76+1
	.word sub_8092FBE+1
	.word sub_8092FD2+1
	.word sub_8093012+1
	.word sub_8093026+1
	.word sub_8093054+1
	.word sub_80930A4+1
	.word sub_809316C+1
	.word sub_809319C+1
	.word sub_80931CA+1
	thumb_func_end sub_8092E78

	thumb_local_start
sub_8092EC4::
	push {r4-r7,lr}
	bl sub_8143DEA
	str r0, [r7]
	bl ReadOWPlayerObjectCoords
	push {r0,r1}
	bl sub_8143EA4
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	pop {r2,r3}
	mov r4, #0x10
	bl sub_809323A
	bl ReadOWPlayerObjectCoords
	push {r0,r1}
	bl sub_8143EA4
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	pop {r2,r3}
	sub r0, r0, r2
	sub r1, r3, r1
	bl calcAngle_800117C
	add r0, #0x10
	lsr r0, r0, #4
	mov r1, #0xf
	and r0, r1
	lsr r0, r0, #1
	sub r0, #1
	mov r1, #7
	and r0, r1
	add r0, #8
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	mov r0, #SOUND_MENU_SELECT
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5]
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8092EC4

	thumb_local_start
sub_8092F1E::
	push {r4-r7,lr}
	bl sub_8093258
	bl sub_8093202
	beq loc_8092F54
	bl sub_8143EA4
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	bl owPlayer_indirectlySetPlayerCoordsMaybe_809e1a4
	bl sub_8143EA4
	ldr r1, [r7]
	bl sub_8143EB0
	bl SetOWPlayerFacingDirection
	bl GetOWPlayerFacingDirection
	ldr r1, off_8092F58 // =byte_8092F5C 
	ldrb r0, [r1,r0]
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	mov r0, #8
	strb r0, [r5]
loc_8092F54::
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_8092F58::
	.word byte_8092F5C
byte_8092F5C::
	.byte 0xFF, 0x29, 0xFF, 0x2A, 0xFF, 0x2B, 0xFF, 0x2C
	thumb_func_end sub_8092F1E

	thumb_local_start
sub_8092F64::
	push {r4-r7,lr}
	bl sub_8143FAA
	bl sub_8093212
	mov r0, #0xc
	strb r0, [r5]
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8092F64

	thumb_local_start
sub_8092F76::
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#4]
	ldrh r4, [r4,#2]
	mov r0, #2
	tst r4, r0
	bne loc_8092F8C
	mov r0, #1
	tst r4, r0
	bne loc_8092FA2
	b loc_8092FB6
loc_8092F8C::
	bl sub_809322A
	mov r0, #SOUND_EXIT_SUBMENU
	bl PlaySoundEffect
	mov r0, #0xa
	bl sub_80931FA
	mov r0, #0x10
	strb r0, [r5]
	b loc_8092FBA
loc_8092FA2::
	mov r0, #0x1e
	bl sub_80931FA
	mov r0, #0x83
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #0x14
	strb r0, [r5]
	b loc_8092FBA
loc_8092FB6::
	bl sub_8143FC4
loc_8092FBA::
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8092F76

	thumb_local_start
sub_8092FBE::
	push {r4-r7,lr}
	bl sub_8093202
	beq loc_8092FCE
	mov r0, #1
	strb r0, [r5,#8]
	mov r0, #0
	pop {r4-r7,pc}
loc_8092FCE::
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8092FBE

	thumb_local_start
sub_8092FD2::
	push {r4-r7,lr}
	bl sub_8093202
	beq loc_809300E
	bl sub_809322A
	ldr r0, [r7]
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	push {r0,r1}
	bl sub_8143EA4
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	pop {r2,r3}
	mov r4, #0x40 
	bl sub_809323A
	mov r0, #8
	bl sub_80931FA
	bl sub_8144010
	strb r1, [r5,#9]
	mov r0, #0xc1
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #0x18
	strb r0, [r5]
loc_809300E::
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8092FD2

	thumb_local_start
sub_8093012::
	push {r4-r7,lr}
	bl sub_8093258
	bl sub_8093202
	beq loc_8093022
	mov r0, #0x1c
	strb r0, [r5]
loc_8093022::
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8093012

	thumb_local_start
sub_8093026::
	push {r4-r7,lr}
	bl sub_8093202
	beq loc_8093044
	bl GetOWPlayerFacingDirection
	ldr r1, off_8093048 // =byte_809304C 
	ldrb r0, [r1,r0]
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	mov r0, #0x3c 
	bl sub_80931FA
	mov r0, #0x20 
	strb r0, [r5]
loc_8093044::
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_8093048::
	.word byte_809304C
byte_809304C::
	.byte 0xFF, 0x32, 0xFF, 0x33, 0xFF, 0x34, 0xFF, 0x35
	thumb_func_end sub_8093026

	thumb_local_start
sub_8093054::
	push {r4-r7,lr}
	bl sub_8093202
	beq loc_8093070
	bl sub_8093074
	bl owPlayer_disableWallCollision_809e254
	mov r0, #0xc8
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #0x24 
	strb r0, [r5]
loc_8093070::
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8093054

	thumb_local_start
sub_8093074::
	push {r4-r7,lr}
	bl sub_8143EA4
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	push {r0,r1}
	bl sub_8143EA4
	mov r4, r0
	bl GetOWPlayerFacingDirection
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl sub_8143E68
	str r0, [r7]
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	pop {r2,r3}
	mov r4, #0xa
	bl sub_809323A
	pop {r4-r7,pc}
	thumb_func_end sub_8093074

	thumb_local_start
sub_80930A4::
	push {r4-r7,lr}
	bl sub_8093258
	bl dword_80931FE
	cmp r0, #5
	bne loc_80930DC
	ldrb r0, [r5,#9]
	tst r0, r0
	beq loc_809313A
	ldr r0, [r7]
	bl sub_8143BB0
	bne loc_8093154
	ldr r0, [r7]
	bl sub_8143EDC
	beq loc_80930DC
	mov r0, r1
	bl sub_8143B5E
	mov r4, r1
	mov r0, r0
	bl SetEventFlag
	mov r0, r4
	bl SetEventFlag
loc_80930DC::
	bl sub_8093202
	beq loc_8093168
	ldrb r0, [r5,#9]
	sub r0, #1
	strb r0, [r5,#9]
	ble loc_8093100
	bl sub_8093074
	bl owPlayer_disableWallCollision_809e254
	ldr r0, [r7]
	bl sub_8143EDC
	bne loc_8093168
	bl owPlayer_enableWallCollision_809e248
	b loc_8093168
loc_8093100::
	bl sub_8143EA4
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	push {r0,r1}
	bl sub_8143EA4
	mov r4, r0
	bl GetOWPlayerFacingDirection
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl sub_8143E68
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	pop {r2,r3}
	mov r4, #0x40 
	bl sub_809323A
	mov r0, #0x10
	bl sub_80931FA
	bl owPlayer_enableWallCollision_809e248
	mov r0, #0x28 
	strb r0, [r5]
	b loc_8093168
loc_809313A::
	mov r0, #2
	mov r1, #0x14
	bl camera_initShakeEffect_80302a8
	mov r0, #0x1e
	bl sub_80931FA
	mov r0, #0xc0
	bl PlaySoundEffect
	mov r0, #0x2c 
	strb r0, [r5]
	b loc_8093168
loc_8093154::
	bl GetOWPlayerFacingDirection
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	bl owPlayer_enableWallCollision_809e248
	mov r0, #0
	strb r0, [r5,#8]
	mov r0, #0
	pop {r4-r7,pc}
loc_8093168::
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80930A4

	thumb_local_start
sub_809316C::
	push {r4-r7,lr}
	bl sub_8093258
	bl sub_8093202
	beq loc_809318C
	bl GetOWPlayerFacingDirection
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	bl owPlayer_enableWallCollision_809e248
	mov r0, #1
	strb r0, [r5,#8]
	mov r0, #0
	pop {r4-r7,pc}
loc_809318C::
	mov r0, #1
	pop {r4-r7,pc}
	.word byte_8093194
	.balign 4, 0
byte_8093194::
	.byte 0xC0, 0xA0, 0x80, 0x60, 0x40, 0x0, 0x0, 0x0
	thumb_func_end sub_809316C

	thumb_local_start
sub_809319C::
	push {r4-r7,lr}
	bl sub_8093202
	beq loc_80931C6
	ldr r0, [r7]
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	push {r0,r1}
	bl sub_8143EA4
	bl ConvertGroundmanMinigameGridCoordsToMapCoords
	pop {r2,r3}
	mov r4, #0x40 
	bl sub_809323A
	mov r0, #0x10
	bl sub_80931FA
	mov r0, #0x30 
	strb r0, [r5]
loc_80931C6::
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_809319C

	thumb_local_start
sub_80931CA::
	push {r4-r7,lr}
	bl sub_8093258
	bl sub_8093202
	beq loc_80931EA
	bl GetOWPlayerFacingDirection
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	bl owPlayer_enableWallCollision_809e248
	mov r0, #1
	strb r0, [r5,#8]
	mov r0, #0
	pop {r4-r7,pc}
loc_80931EA::
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80931CA

	thumb_local_start
sub_80931EE::
	push {r4-r7,lr}
	mov r1, r0
	ldr r0, [r5,#0x30]
	bl chatbox_runScript // (archive: *const TextScriptArchive, script_idx: u8) -> ()
	pop {r4-r7,pc}
	thumb_func_end sub_80931EE

	thumb_local_start
sub_80931FA::
	strh r0, [r5,#0x18]
	mov pc, lr
dword_80931FE::
	.word 0x46F78B28
	thumb_func_end sub_80931FA

	thumb_local_start
sub_8093202::
	ldrh r0, [r5,#0x18]
	sub r0, #1
	blt loc_809320E
	strh r0, [r5,#0x18]
	mov r0, #0
	mov pc, lr
loc_809320E::
	mov r0, #1
	mov pc, lr
	thumb_func_end sub_8093202

	thumb_local_start
sub_8093212::
	push {r4-r7,lr}
	mov r0, #0xa
	mov r1, #3
	mov r2, #0
	bl sub_80468C6
	mov r0, #0xb
	mov r1, #4
	mov r2, #0
	bl sub_80468C6
	pop {r4-r7,pc}
	thumb_func_end sub_8093212

	thumb_local_start
sub_809322A::
	push {r4-r7,lr}
	mov r0, #3
	bl sub_80468EC
	mov r0, #4
	bl sub_80468EC
	pop {r4-r7,pc}
	thumb_func_end sub_809322A

	thumb_local_start
sub_809323A::
	push {r4-r7,lr}
	push {r1,r3}
	sub r0, r0, r2
	mov r1, r4
	svc 6
	str r0, [r7,#4]
	pop {r0,r2}
	sub r0, r0, r2
	mov r1, r4
	svc 6
	str r0, [r7,#8]
	mov r0, r4
	bl sub_80931FA
	pop {r4-r7,pc}
	thumb_func_end sub_809323A

	thumb_local_start
sub_8093258::
	push {r4-r7,lr}
	bl ReadOWPlayerObjectCoords
	ldr r3, [r7,#4]
	add r0, r0, r3
	ldr r3, [r7,#8]
	add r1, r1, r3
	bl owPlayer_indirectlySetPlayerCoordsMaybe_809e1a4
	pop {r4-r7,pc}
	.balign 4, 0
byte_809326C::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScriptGroundmanMinigame
	cs_jump_if_var_equal byte1=0x04 byte2=0x00 destination3=cutscenescript_8093282
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_809328D

cutscenescript_8093282:
	cs_warp_cmd_8038040_1 ptr2=off_8092DC8
	cs_jump destination1=dword_8093298

cutscenescript_809328D:
	cs_warp_cmd_8038040_1 ptr2=unk_8092DD8
	cs_jump destination1=dword_8093298

dword_8093298::
	cs_pause byte1=0xFF byte2=0x1E
	cs_call_native_with_return_value ptr1=sub_809332C+1
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x40010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809331E
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x0000000A
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_sound hword1=0x00C3
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_eStruct200a6a0_callback
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x5A
	cs_load_map_gfx_anims_bg_anim
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D30
	cs_set_event_flag byte1=0xFF event16_2=EVENT_D36
	cs_chatbox_cmd_8037a70
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x80 byte2=0x00 ptr3=NULL
	cs_jump destination1=cutscenescript_809331B

cutscenescript_809331B:
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809331E:
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=cutscenescript_809331E
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

	thumb_func_end sub_8093258

	thumb_local_start
sub_809332C::
	push {r4-r7,lr}
	bl sub_809E1BC
	mov r0, #2
	mov r4, #8
	lsl r4, r4, #0x10
	add r1, r1, r4
	add r2, r2, r4
	mov r4, #0x24 
	lsl r4, r4, #0x10
	add r3, r3, r4
	ldr r4, dword_8093354 // =0x7c1c0000 
	bl SpawnOverworldMapObject
	mov r0, #0xa5
	bl PlaySoundEffect
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0
dword_8093354:: 
  .word 0x7C1C0000
byte_8093358::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScriptGroundmanMinigame
	cs_pause byte1=0xFF byte2=0x01
	cs_free_all_ow_npc_objects_if_different_map
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_809337D:: 
  .byte 0x14, 0x0, 0x0, 0x0, 0x0, 0x27, 0xFF, 0xC, 0x8, 0x7, 0x54, 0x1, 0x3B
	.byte 0x29, 0xFF, 0x31, 0xD, 0x29, 0xFF, 0x30, 0xD, 0x2A, 0xFF, 0x36, 0xD, 0x4B
	.byte 0x79, 0x39, 0x14, 0x8, 0x2, 0xFF, 0x3C, 0x4E, 0xFF, 0xFF, 0x4B, 0x3D, 0x3F
	.byte 0x14, 0x8, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x3F, 0x18, 0x3F, 0x4, 0x0, 0x3C
	.byte 0x0, 0x40, 0x15
	.word byte_809337D
byte_80933B8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_decomp_text_archive ptr1=TextScriptGroundmanMinigame
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_80933D4::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_80933DA:
	.byte 0x00
	.byte 0x00

cutscenescript_80933DC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CCC70 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80933D4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80641B0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_play_music hword1=0x0002
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093481
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8093445:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_121
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E03
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_809348C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8093481:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8093445
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_809348C:
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000
byte_809349C::
	ccs_set_camera_pos hword1=0xFA40 hword3=0xFFC0 hword5=0x0000
	ccs_end

ccs_80934A4:
	ccs_simple_scroll hword1=0x0050 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0054 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

byte_80934B7::
	ccs_simple_scroll hword1=0x00A4 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

byte_80934C1::
	ccs_simple_scroll hword1=0x00A4 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

byte_80934CB::
	ccs_set_camera_pos hword1=0xF740 hword3=0xFF80 hword5=0x0000
	ccs_end

end_ccs_80934D3:
	.byte 0x00
cutscenescript_80934D4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CCE34 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_809349C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8056138
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_80936D8
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0x0004
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80936D0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80934A4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x000C
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x24
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x17
	cs_wait_var_equal byte1=0x08 byte2=0x18
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x29
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x19
	cs_wait_var_equal byte1=0x08 byte2=0x1A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1B
	cs_wait_var_equal byte1=0x08 byte2=0x1C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_80934B7
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x31
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1D
	cs_wait_var_equal byte1=0x08 byte2=0x1E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x33
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1F
	cs_wait_var_equal byte1=0x08 byte2=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x37
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_80934C1
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x21
	cs_wait_var_equal byte1=0x08 byte2=0x22
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x3A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80936D8
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x3C
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x30
	cs_run_cutscene_camera_script ptr1=byte_80934CB
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8056178
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80936D0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x3E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8093692::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x08C0 signedhword6=-0x0160 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E05
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80936D0:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8093692

cutscenescript_80936D8:
	.word 0x3740003C, off_80348FC, 0xFF18FF27, 0x01FF0207, 0x080CFF27, 0x36921507, 0x00000809

ccs_80936F4:
	ccs_set_camera_pos hword1=0xF480 hword3=0x03C0 hword5=0x0000
	ccs_end

ccs_80936FC:
	ccs_simple_scroll hword1=0x001C hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8093706:
	ccs_set_camera_pos hword1=0xF480 hword3=0x03C0 hword5=0x0000
	ccs_end

end_ccs_809370E:
	.byte 0x00
	.byte 0x00

cutscenescript_8093710:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CDA9C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80936F4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8061298
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x0002
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80938AC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x81
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80936FC
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80938CE
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80938AC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x0C
	cs_run_cutscene_camera_script ptr1=ccs_8093706
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80938AC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x28
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80938B4
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x29
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade

byte_8093870::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E07
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80938E8
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_80938AC::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8093870

cutscenescript_80938B4:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8093870

cutscenescript_80938CE:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8093870

unk_80938E8:
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000
byte_80938F8::
	ccs_set_camera_pos hword1=0xF740 hword3=0x0080 hword5=0x0000
	ccs_end

ccs_8093900:
	ccs_simple_scroll hword1=0x0018 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

end_ccs_809390A:
	.byte 0x00
	.byte 0x00
cutscenescript_809390C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CE7C4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80938F8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80565F0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093A0E
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0x0005
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093A06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8093900
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80939C5::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x07 byte2=0x61
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0840 signedhword6=0x0140 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E09
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8093A06:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80939C5

cutscenescript_8093A0E:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_80939C5

ccs_8093A28:
	ccs_set_camera_pos hword1=0x0500 hword3=0xFC80 hword5=0x0000
	ccs_end

byte_8093A30::
	ccs_simple_scroll hword1=0x0118 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8093A3A:
	ccs_simple_scroll hword1=0x0270 hword3=0x0000 hword5=0xFFC0 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0xFFC0 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8093A4D:
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8093A57:
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_8093A61:
	.byte 0x00
	.byte 0x00
	.byte 0x00
byte_8093A64::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CECA4 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8093A28
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_80511C0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093B4E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_8093A30
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x78
	cs_run_cutscene_camera_script ptr1=ccs_8093A3A
	cs_pause byte1=0xFF byte2=0x50
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0xA0
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x50
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8093A4D
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8093A57
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8093B0F:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_add_bbs_message_range hword1=0x1877 byte3=0x04
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0400 signedhword6=0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E0B
	cs_add_mail_range hword1=0x1CEB byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8093B4E:
	.word 0x1540003C, cutscenescript_8093B0F
	.byte 0x00
	.byte 0x00

ccs_8093B58:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8093B5E:
	.byte 0x00
	.byte 0x00
byte_8093B60::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CF140 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8093B58
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_8051AD0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8093BFF
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8093BC1:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_add_mail_range hword1=0x1CF6 byte3=0x01
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1D76
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1DF6
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E0D
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8093C08
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8093BFF::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8093BC1
	cs_end_for_map_reload_maybe_8037c64

unk_8093C08:
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000
byte_8093C18::
	ccs_set_camera_pos hword1=0xF9E0 hword3=0xFFA0 hword5=0x0000
	ccs_end

cutscenescript_8093C20:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CF638 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8093C18
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80566C8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093CD3
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093CCB
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8093C6E:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x06 byte2=0x61
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E68
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0680 signedhword6=0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E0F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_add_request_range hword1=0x1B71 byte3=0x01
	cs_add_request_range hword1=0x1B72 byte3=0x01
	cs_add_request_range hword1=0x1B73 byte3=0x01
	cs_add_request_range hword1=0x1B74 byte3=0x01
	cs_add_request_range hword1=0x1B7F byte3=0x01
	cs_add_request_range hword1=0x1B80 byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8093CCB:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8093C6E

cutscenescript_8093CD3:
	.word 0x3740003C, off_80348FC, 0xFF18FF27, 0x01FF0207, 0x080CFF27, 0x3C6E1507, 0x00000809
	.byte 0x00

cutscenescript_8093CF0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CF8EC + COMPRESSED_PTR_FLAG
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093D50
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8093D29::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8093D50:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8093D29

byte_8093D58::
	ccs_set_camera_pos hword1=0xFFE0 hword3=0x02E0 hword5=0x0000
	ccs_end

ccs_8093D60:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8093D66:
	.byte 0x00
	.byte 0x00
cutscenescript_8093D68:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CF9B8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8093D58
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8051DA4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093E74
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8093E6C
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x0B
	cs_run_cutscene_camera_script ptr1=ccs_8093D60
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8093E6C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8093E2B::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x06 byte2=0x62
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0080 signedhword6=0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E13
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8093E6C::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8093E2B

cutscenescript_8093E74:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8093E2B
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8093E90:
	ccs_set_camera_pos hword1=0x0520 hword3=0xFC60 hword5=0x0000
	ccs_end

ccs_8093E98:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8093EA2:
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

cutscenescript_8093EAC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87CFBD8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8093E90
	cs_spawn_ow_npc_objects_from_list ptr2=npcscriptlist_805139C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8093F6C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8093E98
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_8093EA2
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8093F31::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_13A
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x05A0 signedhword6=-0x00A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E15
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8093F6C:
	.word 0x1540003C, byte_8093F31

ccs_8093F74:
	ccs_set_camera_pos hword1=0xFB40 hword3=0x1A80 hword5=0xFE00
	ccs_end

ccs_8093F7C:
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF00 hword7=0x0080
	ccs_simple_scroll hword1=0x0068 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0014 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8093FA1:
	ccs_simple_scroll hword1=0x0090 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0050 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_8093FB4::
	ccs_simple_scroll hword1=0x00D4 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_8093FBE:
	ccs_simple_scroll hword1=0x0060 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0158 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

byte_8093FD1::
	ccs_simple_scroll hword1=0x00C0 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0038 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8093FE4:
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_simple_scroll hword1=0x0050 hword3=0x0000 hword5=0x0100 hword7=0xFF80
	ccs_simple_scroll hword1=0x0030 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_simple_scroll hword1=0x0050 hword3=0x0000 hword5=0x0100 hword7=0xFF80
	ccs_simple_scroll hword1=0x00E4 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8094012:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

byte_809401C::
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_8094026:
	.byte 0x00
	.byte 0x00

cutscenescript_8094028:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D00B0 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8093F74
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8063894
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80941C0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8093F7C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8093FA1
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8093FB4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8093FBE
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8093FD1
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8093FE4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8094012
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x17
	cs_wait_var_equal byte1=0x08 byte2=0x18
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_809401C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x19
	cs_wait_var_equal byte1=0x08 byte2=0x1A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8094185::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_give_item byte2=0x2B byte3=0x01
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x04C0 signedhword6=0x0D40 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E17
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80941C0:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8094185

ccs_80941C8:
	ccs_set_camera_pos hword1=0xFB60 hword3=0x03E0 hword5=0xFF80
	ccs_end

ccs_80941D0:
	ccs_wait hword1=0x0041
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFF80 hword7=0x0040
	ccs_simple_scroll hword1=0x00B8 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFF80 hword7=0x0040
	ccs_simple_scroll hword1=0x0028 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8094201:
	ccs_simple_scroll hword1=0x004A hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_simple_scroll hword1=0x00DC hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

cutscenescript_8094214:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D05B4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80941C8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8063AD8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80942F3
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_run_cutscene_camera_script ptr1=ccs_80941D0
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0xD2
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8094201
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80942BE:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E19
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80942FC
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80942F3:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80942BE
	cs_end_for_map_reload_maybe_8037c64

unk_80942FC:
	.word 0x04000106, 0x00000000, 0x00000000
	.byte 0x00
	.byte 0x00
end_cutscenescript_809430A:
	.byte 0x00
	.byte 0x00

ccs_809430C:
	ccs_set_camera_pos hword1=0xF780 hword3=0x11E0 hword5=0x0000
	ccs_end

ccs_8094314:
	ccs_set_camera_pos hword1=0xFC40 hword3=0x0AA0 hword5=0x0000
	ccs_end

ccs_809431C:
	ccs_simple_scroll hword1=0x0046 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_809432F:
	ccs_simple_scroll hword1=0x0058 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_8094339::
	ccs_simple_scroll hword1=0x0014 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_simple_scroll hword1=0x0022 hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_809434C:
	ccs_set_camera_pos hword1=0xF960 hword3=0x1220 hword5=0x0000
	ccs_wait hword1=0x003C
	ccs_simple_scroll hword1=0x0120 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8094369:
	ccs_simple_scroll hword1=0x0054 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_simple_scroll hword1=0x001C hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_809437C:
	ccs_wait hword1=0x001E
	ccs_simple_scroll hword1=0x0024 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8094389:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject8_Coords
	ccs_end

ccs_809438F:
	ccs_set_camera_pos hword1=0xF7C0 hword3=0x0E20 hword5=0x0000
	ccs_end

ccs_8094397:
	ccs_wait hword1=0x003C
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_80943A4:
	ccs_simple_scroll hword1=0x0038 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF00 hword7=0x0080
	ccs_end

end_ccs_80943B7:
	.byte 0x00

cutscenescript_80943B8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D093C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_809430C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80641F0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_call_native_with_return_value ptr1=sub_80946C4+1
	cs_call_native_with_return_value ptr1=sub_8094708+1
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094624
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_run_cutscene_camera_script ptr1=ccs_8094314
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094624
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_809431C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_809432F
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8094339
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_809434C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809466A
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8094682
	cs_pause byte1=0xFF byte2=0x14
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809469A
	cs_pause byte1=0xFF byte2=0x37
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x14
	cs_play_sound hword1=0x0143
	cs_call_native_with_return_value ptr1=sub_8094714+1
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0x000C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8094369
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_run_cutscene_camera_script ptr1=ccs_809437C
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8094389
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_809462C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_809438F
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8064224
	cs_call_native_with_return_value ptr1=sub_8094720+1
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094624
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x26
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0x40
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_809464B
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x28
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x30
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094624
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x29
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x31
	cs_run_cutscene_camera_script ptr1=ccs_8094397
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x32
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x33
	cs_wait_var_equal byte1=0x08 byte2=0x34
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x35
	cs_wait_var_equal byte1=0x08 byte2=0x36
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x37
	cs_wait_var_equal byte1=0x08 byte2=0x38
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80943A4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x33
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80945EF::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E1B
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80946B4
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8094624:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80945EF

cutscenescript_809462C:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_call_native_with_return_value ptr1=sub_8094720+1
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_80945EF

cutscenescript_809464B:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_call_native_with_return_value ptr1=sub_8094720+1
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_80945EF

cutscenescript_809466A:
	cs_call_native_with_return_value ptr1=sub_8094708+1
	cs_pause byte1=0xFF byte2=0x14
	cs_play_sound hword1=0x01CE
	cs_call_native_with_return_value ptr1=sub_8094714+1
	cs_pause byte1=0xFF byte2=0x0A
	cs_jump destination1=cutscenescript_809466A

cutscenescript_8094682:
	cs_call_native_with_return_value ptr1=sub_8094708+1
	cs_pause byte1=0xFF byte2=0x0A
	cs_play_sound hword1=0x01CE
	cs_call_native_with_return_value ptr1=sub_8094714+1
	cs_pause byte1=0xFF byte2=0x0A
	cs_jump destination1=cutscenescript_8094682

cutscenescript_809469A:
	cs_call_native_with_return_value ptr1=sub_8094708+1
	cs_pause byte1=0xFF byte2=0x05
	cs_play_sound hword1=0x01CE
	cs_call_native_with_return_value ptr1=sub_8094714+1
	cs_pause byte1=0xFF byte2=0x05
	cs_jump destination1=cutscenescript_809469A
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_80946B4:
	.word 0x04000006, 0x00000000, 0x00000000, 0x00000000
	thumb_func_end sub_809332C

/*For debugging purposes, connect comment at any range!*/
