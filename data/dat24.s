byte_808D266::
	.byte 0x00
	.byte 0x00

ccs_808D268:
	ccs_set_camera_pos hword1=0xFCE0 hword3=0xFA80 hword5=0x0000
	ccs_end

byte_808D270::
	ccs_simple_scroll hword1=0x0040 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

end_ccs_808D27A:
	.byte 0x00
	.byte 0x00
cutscenescript_808D27C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BCC88 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808D268
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_8051958
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_load_gfx_anim ptr1=gfx_anim_script_804E4D0
	cs_sound_cmd_80380ea hword1=0x0004 byte3=0x08 byte4=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D314
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_808D270
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808D2D1::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_36
	cs_load_gfx_anim ptr1=off_804E4A0
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0220 signedhword6=-0x0480 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A05
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808D314:
	.word 0x1540003C, byte_808D2D1

ccs_808D31C:
	ccs_set_camera_pos hword1=0xFE00 hword3=0x02E0 hword5=0x0000
	ccs_end

ccs_808D324:
	ccs_simple_scroll hword1=0x0030 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_simple_scroll hword1=0x005E hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808D337:
	ccs_wait hword1=0x0000
	ccs_set_camera_pos hword1=0xFEA0 hword3=0x0480 hword5=0x0000
	ccs_end

end_ccs_808D342:
	.byte 0x00
	.byte 0x00

cutscenescript_808D344:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BD064 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808D31C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8061F04
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D3F3
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808D324
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808D337
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808D3B5:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x41
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0160 signedhword6=0x0500 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A07
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808D3F3:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808D3B5
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808D3FC:
	ccs_set_camera_pos hword1=0xF8E0 hword3=0xFC40 hword5=0x0200
	ccs_end

ccs_808D404:
	ccs_simple_scroll hword1=0x0030 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808D40E:
	ccs_simple_scroll hword1=0x0018 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

cutscenescript_808D418:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BD4A0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_808D3FC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807C26C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D50F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_808D404
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808D40E
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808D4C7:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_give_item byte2=0x1C byte3=0x01
	cs_write_gamestate_byte byte1=0x06 byte2=0x42
	cs_write_gamestate_byte byte1=0x07 byte2=0x41
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x07E0 signedhword6=-0x03C0 signedhword8=0x0200
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A09
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808D50F:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808D4C7
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808D518:
	ccs_set_camera_pos hword1=0xFDE0 hword3=0xEA20 hword5=0x0200
	ccs_end

byte_808D520::
	ccs_simple_scroll hword1=0x002C hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808D52A:
	ccs_simple_scroll hword1=0x0042 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

cutscenescript_808D534:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BD9B0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_808D518
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807DB88
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D6C4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x01
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D6C4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808D520
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808D52A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x16
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00E3
	cs_do_camera_shake byte1=0x01 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x00 byte2=0x1E byte3=0x00
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808D6CC
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x01 byte2=0x1E byte3=0x00
	cs_pause byte1=0xFF byte2=0x1E
	cs_do_camera_shake byte1=0x02 byte2=0x3C byte3=0x00
	cs_pause byte1=0xFF byte2=0x1E
	cs_kill_cutscene_process byte1=0x20
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x20
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x10
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0021
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D6C4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x14
	cs_wait_var_equal byte1=0x08 byte2=0x15
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x21
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808D69E::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A0B
	cs_set_event_flag byte1=0xFF event16_2=EVENT_172A
	cs_flag_cmd_8038466 byte1=0x00
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_enter_map_screen_fade byte1=0x00 byte2=0x10
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_808D6D8
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808D6C4:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808D69E

cutscenescript_808D6CC:
	cs_play_sound hword1=0x00E4
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_808D6CC
	cs_end_for_map_reload_maybe_8037c64

unk_808D6D8:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
ccs_808D6E8:
	ccs_set_camera_pos hword1=0xFDE0 hword3=0xEA20 hword5=0x0200
	ccs_end

ccs_808D6F0:
	ccs_set_camera_pos hword1=0xFCE0 hword3=0xEA60 hword5=0x0200
	ccs_end

byte_808D6F8::
	ccs_simple_scroll hword1=0x0018 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808D702:
	.byte 0x00
	.byte 0x00

cutscenescript_808D704:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BDF4C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808D6E8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807DDE0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D83A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x0A
	cs_play_sound hword1=0x0100
	cs_pause byte1=0xFF byte2=0x78
	cs_run_cutscene_camera_script ptr1=ccs_808D6F0
	cs_set_var byte1=0x08 byte2=0x01
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D83A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808D842
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D83A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808D851
	cs_play_sound hword1=0x015C
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x02
	cs_wait_screen_fade
	cs_play_sound hword1=0x00BC
	cs_kill_cutscene_process byte1=0x20
	cs_set_var byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D83A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808D6F8
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808D812:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_kill_cutscene_process byte1=0x20
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A0D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_172A
	cs_flag_cmd_8038466 byte1=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_enter_map_screen_fade byte1=0x00 byte2=0x10
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=unk_808D860
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808D83A:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808D812

cutscenescript_808D842:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_808D842

cutscenescript_808D851:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_808D851
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808D860:
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000
byte_808D870::
	ccs_set_camera_pos hword1=0x0200 hword3=0x0100 hword5=0x0000
	ccs_end

byte_808D878::
	ccs_set_camera_pos hword1=0xFCA0 hword3=0x00A0 hword5=0x0000
	ccs_end

ccs_808D880:
	ccs_simple_scroll hword1=0x0014 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_808D88A:
	ccs_simple_scroll hword1=0x0024 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

cutscenescript_808D894:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BE764 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_808D870
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055FE0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_load_gfx_anims ptr1=off_80348FC
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0x04
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D9DE
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D9D6
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_808D878
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D9D6
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x02
	cs_run_cutscene_camera_script ptr1=ccs_808D880
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808D88A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808D96A::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_123
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x06 byte2=0x43
	cs_write_gamestate_byte byte1=0x07 byte2=0x42
	cs_set_event_flag byte1=0xFF event16_2=EVENT_88
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_89
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0360 signedhword6=0x0160 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A0F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_add_request_range hword1=0x1B68 byte3=0x01
	cs_add_request_range hword1=0x1B69 byte3=0x01
	cs_add_request_range hword1=0x1B6A byte3=0x01
	cs_add_request_range hword1=0x1B6B byte3=0x01
	cs_add_request_range hword1=0x1B6C byte3=0x01
	cs_add_request_range hword1=0x1B7E byte3=0x01
	cs_add_request_range hword1=0x1B7B byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808D9D6:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808D96A

cutscenescript_808D9DE:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_808D96A

byte_808D9F8::
	gfx_anim_manual_pal_transform transform_type=0x00000004 ptr5=iPalette3001B60 index=0x0C num_pals=0x0D
	gfx_anim_data data=0x80002108 delay=0x0000001E
	gfx_anim_data data=0x80002529 delay=0x0000001E
	gfx_anim_data data=0x8000294A delay=0x0000001E
	gfx_anim_data data=0x80002D6B delay=0x0000001E
	gfx_anim_data data=0x8000318C delay=0x0000001E
	gfx_anim_data data=0x80002D6B delay=0x0000001E
	gfx_anim_data data=0x8000294A delay=0x0000001E
	gfx_anim_data data=0x80002529 delay=0x0000001E
	gfx_anim_loop

unk_808DA48:
	gfx_anim_manual_pal_transform transform_type=0x00000004 ptr5=iPallete3001750 index=0x0D num_pals=0x0C
	gfx_anim_data data=0x80000C63 delay=0x0000001E
	gfx_anim_data data=0x80001084 delay=0x0000001E
	gfx_anim_data data=0x800014A5 delay=0x0000001E
	gfx_anim_data data=0x800018C6 delay=0x0000001E
	gfx_anim_data data=0x80001CE7 delay=0x0000001E
	gfx_anim_data data=0x800018C6 delay=0x0000001E
	gfx_anim_data data=0x800014A5 delay=0x0000001E
	gfx_anim_data data=0x80001084 delay=0x0000001E
	gfx_anim_loop

unk_808DA98:
	gfx_anim_manual_pal_transform transform_type=0x00000004 ptr5=iPalette3001B60 index=0x0C num_pals=0x0D
	gfx_anim_data data=0x80001CE7 delay=0x00000004
	gfx_anim_data data=0x800018C6 delay=0x00000004
	gfx_anim_data data=0x800014A5 delay=0x00000004
	gfx_anim_data data=0x80001084 delay=0x00000004
	gfx_anim_data data=0x80000C63 delay=0x00000004
	gfx_anim_data data=0x80000842 delay=0x00000004
	gfx_anim_data data=0x80000421 delay=0x00000004
	gfx_anim_data data=0x80000000 delay=0x00000004
	gfx_anim_end

unk_808DAE8:
	gfx_anim_manual_pal_transform transform_type=0x00000004 ptr5=iPallete3001750 index=0x0D num_pals=0x0C
	gfx_anim_data data=0x800014A5 delay=0x00000004
	gfx_anim_data data=0x80001084 delay=0x00000004
	gfx_anim_data data=0x80000C63 delay=0x00000004
	gfx_anim_data data=0x80000842 delay=0x00000004
	gfx_anim_data data=0x80000421 delay=0x00000004
	gfx_anim_data data=0x80000000 delay=0x00000004
	gfx_anim_end

ccs_808DB28:
	ccs_set_camera_pos hword1=0x05C0 hword3=0xF500 hword5=0x0000
	ccs_end

cutscenescript_808DB30:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BEA78 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808DB28
	cs_spawn_ow_npc_objects_from_list ptr2=unk_8050DF0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_load_gfx_anim ptr1=byte_808D9F8
	cs_load_gfx_anim ptr1=unk_808DA48
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808DC58
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x0141
	cs_load_gfx_anim ptr1=unk_808DA98
	cs_load_gfx_anim ptr1=unk_808DAE8
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_init_eStruct200a6a0 ptr1=sub_804C510+1 ptr5=sub_804C52C+1 word9=0x00000400
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_write_byte ptr1=dword_200A6AC+1 byte5=0x08
	cs_pause byte1=0xFF byte2=0x78
	cs_run_eStruct200a6a0_callback
	cs_init_eStruct200a6a0 ptr1=sub_804C700+1 ptr5=sub_804C71C+1 word9=0x00040400
	cs_play_sound hword1=0x01AC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x96
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808DBF9::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A9C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A9B
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A9C
	cs_terminate_gfx_anim byte1=0x0C
	cs_terminate_gfx_anim byte1=0x0D
	cs_write_gamestate_byte byte1=0x07 byte2=0x43
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0200 signedhword6=0x10A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A11
	cs_add_mail_range hword1=0x1CE6 byte3=0x01
	cs_add_mail_range hword1=0x1CE7 byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_init_eStruct200a6a0 ptr1=sub_804C700+1 ptr5=sub_804C71C+1 word9=0x00000000
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808DC58:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808DBF9

end_cutscenescript_808DC60:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808DC66:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0040 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0078 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x002C hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808DC85:
	.byte 0x00
	.byte 0x00
	.byte 0x00
byte_808DC88::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BEC8C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_808DC60
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_8051984
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808DD11
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_808DC66
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808DCDF:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A13
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808DD1C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808DD11::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808DCDF
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808DD1C:
	.word 0x04000105, 0x00000000, 0x00000000, 0x00000000

ccs_808DD2C:
	ccs_set_camera_pos hword1=0x0980 hword3=0xF100 hword5=0x0A00
	ccs_end

ccs_808DD34:
	ccs_set_camera_pos hword1=0x0340 hword3=0xEF20 hword5=0x0A00
	ccs_end

ccs_808DD3C:
	ccs_set_camera_pos hword1=0x0740 hword3=0xF4A0 hword5=0x0600
	ccs_end

byte_808DD44::
	ccs_set_camera_pos hword1=0x0780 hword3=0xFCC0 hword5=0x0600
	ccs_end
	ccs_set_camera_pos hword1=0x0760 hword3=0xFEC0 hword5=0xF800
	ccs_end

ccs_808DD54:
	ccs_set_camera_pos hword1=0x06C0 hword3=0x1300 hword5=0x0600
	ccs_end
	ccs_end

end_ccs_808DD5D:
	.byte 0x00
	.byte 0x00
	.byte 0x00
byte_808DD60::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BED60 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808DD2C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80617A8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_run_eStruct200a6a0_callback
	cs_init_eStruct200a6a0 ptr1=sub_804CBA4+1 ptr5=sub_804CBC0+1 word9=0x00000005
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808DEAC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_808DEB4
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x40
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x20
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808DEAC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808DEC3
	cs_pause byte1=0xFF byte2=0x1E
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808DEC3
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_808DEB4
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_run_cutscene_camera_script ptr1=ccs_808DD34
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x40
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808DEAC
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_run_cutscene_camera_script ptr1=ccs_808DD3C
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x40
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808DEAC
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_run_cutscene_camera_script ptr1=byte_808DD44
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x40
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808DEAC
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_run_cutscene_camera_script ptr1=ccs_808DD54
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x40
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808DEAC
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x40
	cs_wait_screen_fade

byte_808DE79::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_run_eStruct200a6a0_callback
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A15
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808DED4
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_808DEAC::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808DE79

byte_808DEB4::
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_808DEB4

cutscenescript_808DEC3:
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_808DEC3
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808DED4:
	.word 0x04000101, 0x00000000, 0x00000000, 0x00000000
ccs_808DEE4:
	ccs_set_camera_pos hword1=0xFD60 hword3=0xFAA0 hword5=0x0000
	ccs_end

ccs_808DEEC:
	ccs_simple_scroll hword1=0x0040 hword3=0x0040 hword5=0xFFC0 hword7=0x0000
	ccs_end

end_ccs_808DEF6:
	.byte 0x00
	.byte 0x00
byte_808DEF8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BEE84 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808DEE4
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_80519F0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808DF83
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808DEEC
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808DF49:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x07 byte2=0x44
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x01A0 signedhword6=-0x0660 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A17
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808DF83:
	.word 0x1540003C, cutscenescript_808DF49
	.byte 0x00

ccs_808DF8C:
	ccs_set_camera_pos hword1=0x00C0 hword3=0xF400 hword5=0x0000
	ccs_end

cutscenescript_808DF94:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BEFD4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808DF8C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806F65C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_event_flag byte1=0xFF event16_2=EVENT_88
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_89
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E02A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_88
	cs_set_event_flag byte1=0xFF event16_2=EVENT_89
	cs_play_sound hword1=0x0173
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808DFEB:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_88
	cs_set_event_flag byte1=0xFF event16_2=EVENT_89
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x00C0 signedhword6=-0x0B40 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A19
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E02A:
	.word 0x1540003C, cutscenescript_808DFEB
	.byte 0x00
	.byte 0x00

ccs_808E034:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

byte_808E03A::
	ccs_set_camera_pos hword1=0x09C0 hword3=0xF100 hword5=0x0A00
	ccs_end

ccs_808E042:
	ccs_set_camera_pos hword1=0x0540 hword3=0xF6C0 hword5=0x0600
	ccs_wait hword1=0x003C
	ccs_simple_scroll hword1=0x0180 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

end_ccs_808E056:
	.byte 0x00
	.byte 0x00

cutscenescript_808E058:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BF09C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808E034
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80617E0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E130
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_808E03A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808E042
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_808E03A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C

byte_808E0D5::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x44
	cs_set_event_flag byte1=0xFF event16_2=EVENT_AB4
	cs_set_event_flag byte1=0xFF event16_2=EVENT_AB5
	cs_set_event_flag byte1=0xFF event16_2=EVENT_AB6
	cs_set_event_flag byte1=0xFF event16_2=EVENT_AB7
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0540 signedhword6=0x0EC0 signedhword8=0x0600
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A1B
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A1D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A1F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A21
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E130:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808E0D5

ccs_808E138:
	ccs_set_camera_pos hword1=0x0680 hword3=0x04C0 hword5=0x0600
	ccs_end

cutscenescript_808E140:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BF28C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808E138
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80618D0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_AB4
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_PET_NAVI_ACTIVE
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E1DC
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808E181::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A1C destination4=cutscenescript_808E1B2
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A1E destination4=cutscenescript_808E1B2
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A20 destination4=cutscenescript_808E1B2
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A22 destination4=cutscenescript_808E1B2
	cs_write_gamestate_byte byte1=0x06 byte2=0x45
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A23

cutscenescript_808E1B2:
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0840 signedhword6=0x04C0 signedhword8=0x0600
	cs_make_ow_player_visible
	cs_navi_cmd_80340f6
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E1DC:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808E181

ccs_808E1E4:
	ccs_set_camera_pos hword1=0x03A0 hword3=0x00C0 hword5=0x0600
	ccs_end

cutscenescript_808E1EC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BF348 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808E1E4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8061910
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_AB5
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_PET_NAVI_ACTIVE
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E288
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808E22D::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A1C destination4=cutscenescript_808E25E
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A1E destination4=cutscenescript_808E25E
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A20 destination4=cutscenescript_808E25E
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A22 destination4=cutscenescript_808E25E
	cs_write_gamestate_byte byte1=0x06 byte2=0x45
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A23

cutscenescript_808E25E:
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0240 signedhword6=0x00C0 signedhword8=0x0600
	cs_make_ow_player_visible
	cs_navi_cmd_80340f6
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E288:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808E22D

ccs_808E290:
	ccs_set_camera_pos hword1=0x0680 hword3=0xFCC0 hword5=0x0600
	ccs_end

cutscenescript_808E298:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BF404 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808E290
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806196C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_AB6
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_PET_NAVI_ACTIVE
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E334
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808E2D9::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A1C destination4=cutscenescript_808E30A
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A1E destination4=cutscenescript_808E30A
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A20 destination4=cutscenescript_808E30A
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A22 destination4=cutscenescript_808E30A
	cs_write_gamestate_byte byte1=0x06 byte2=0x45
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A23

cutscenescript_808E30A:
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0840 signedhword6=-0x0340 signedhword8=0x0600
	cs_make_ow_player_visible
	cs_navi_cmd_80340f6
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E334:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808E2D9

ccs_808E33C:
	ccs_set_camera_pos hword1=0x03A0 hword3=0xF8E0 hword5=0x0600
	ccs_end

cutscenescript_808E344:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BF4B8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808E33C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80619B0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_AB7
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_PET_NAVI_ACTIVE
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E3E0
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808E385::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A1C destination4=cutscenescript_808E3B6
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A1E destination4=cutscenescript_808E3B6
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A20 destination4=cutscenescript_808E3B6
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A22 destination4=cutscenescript_808E3B6
	cs_write_gamestate_byte byte1=0x06 byte2=0x45
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A23

cutscenescript_808E3B6:
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0240 signedhword6=-0x0720 signedhword8=0x0600
	cs_make_ow_player_visible
	cs_navi_cmd_80340f6
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E3E0:
	.word 0x1540003C, byte_808E385

ccs_808E3E8:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808E3EE:
	ccs_set_camera_pos hword1=0xF680 hword3=0xFBE0 hword5=0x0000
	ccs_end

ccs_808E3F6:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808E3FC:
	ccs_simple_scroll hword1=0x00AC hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

byte_808E406::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

cutscenescript_808E40C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BF570 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808E3E8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80620BC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808E4E7
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808E3EE
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808E3F6
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808E3FC
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_808E406
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808E4B0:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=0x03E0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A25
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808E4E7::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808E4B0
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808E4F0:
	ccs_set_camera_pos hword1=0x03C0 hword3=0x03C0 hword5=0x0000
	ccs_end

cutscenescript_808E4F8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BF6BC + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_808E4F0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8062154
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E5E4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808E5EC
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_do_camera_shake byte1=0x01 byte2=0x1E byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_do_camera_shake byte1=0x00 byte2=0x1E byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808E5A7::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_kill_cutscene_process byte1=0x20
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x04C0 signedhword6=0x03C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A27
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E5E4:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808E5A7

cutscenescript_808E5EC:
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_808E5EC
	cs_end_for_map_reload_maybe_8037c64

ccs_808E5F8:
	ccs_set_camera_pos hword1=0xF700 hword3=0xF4C0 hword5=0x0000
	ccs_end

ccs_808E600:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_808E606:
	.byte 0x00
	.byte 0x00

cutscenescript_808E608:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BFA50 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808E5F8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80619F0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E762
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808E777
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_808E786
	cs_pause byte1=0xFF byte2=0x3C
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1E hword3=0xFF6A hword5=0xFF3E hword7=0xFFF0 word9=0xFF010800
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1E hword3=0xFF2A hword5=0xFF3E hword7=0xFFD0 word9=0xFF010800
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808E76A
	cs_spawn_cutscene_process byte1=0x24 ptr2=cutscenescript_808E777
	cs_pause byte1=0xFF byte2=0xA0
	cs_kill_cutscene_process byte1=0x20
	cs_kill_cutscene_process byte1=0x24
	cs_free_all_ow_map_objects
	cs_run_eStruct200a6a0_callback
	cs_kill_cutscene_process byte1=0x24
	cs_spawn_cutscene_process byte1=0x24 ptr2=byte_808E786
	cs_pause byte1=0xFF byte2=0x3C
	cs_kill_cutscene_process byte1=0x24
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00E3
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_do_camera_shake byte1=0x01 byte2=0x1E byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_do_camera_shake byte1=0x00 byte2=0x1E byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_808E600
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808E71D:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_kill_cutscene_process byte1=0x20
	cs_kill_cutscene_process byte1=0x24
	cs_free_all_ow_map_objects
	cs_run_eStruct200a6a0_callback
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0900 signedhword6=-0x0C40 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_write_gamestate_byte byte1=0x12 byte2=0x02
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A29
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E762:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808E71D

cutscenescript_808E76A:
	cs_call_native_with_return_value ptr1=sub_808E798+1
	cs_pause byte1=0xFF byte2=0x01
	cs_jump destination1=cutscenescript_808E76A

cutscenescript_808E777:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_808E777

byte_808E786::
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_808E786
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808E796:
	.balign 4, 0

	thumb_local_start
sub_808E798:
	push {r5, lr}
	ldr r5, =eStruct200a6a0
	ldrb r0, [r5, #0xe]
	add r0, #1
	cmp r0, #2
	bgt loc_808E7A6
	strb r0, [r5, #0xe]
loc_808E7A6:
	ldrb r0, [r5, #0xd]
	ldrb r1, [r5, #0xe]
	add r0, r0, r1
	cmp r0, #0xf0
	bge loc_808E7B2
	strb r0, [r5, #0xd]
loc_808E7B2:
	mov r0, #0
	pop {r5, pc}
	.pool
	thumb_func_end sub_808E798

ccs_808E7BC:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject1_Coords
	ccs_end

byte_808E7C2::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808E7C8:
	ccs_end

byte_808E7C9::
	ccs_simple_scroll hword1=0x0070 hword3=0x0000 hword5=0x0000 hword7=0xFF00
	ccs_end

ccs_808E7D3:
	ccs_set_camera_pos hword1=0xEF40 hword3=0xF6C0 hword5=0xFE00
	ccs_end

end_ccs_808E7DB:
	.byte 0x00

cutscenescript_808E7DC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BFE24 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808E7BC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8061A4C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E914
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_808E7C2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808E7C8
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x78
	cs_run_cutscene_camera_script ptr1=byte_808E7C9
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x0D
	cs_run_cutscene_camera_script ptr1=ccs_808E7D3
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808E914
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808E8D5::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x46
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x1000 signedhword6=-0x0940 signedhword8=-0x0200
	cs_make_ow_player_visible
	cs_toggle_ow_player_using_copybot_809e4bc
	cs_write_gamestate_byte byte1=0x12 byte2=0xFF
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A2B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808E914:
	.word 0x1540003C, byte_808E8D5

ccs_808E91C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808E922:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0038 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

end_ccs_808E92F:
	.byte 0x00

cutscenescript_808E930:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C00B0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808E91C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8062400
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808EA6F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808E922
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_play_sound hword1=0x0107
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFFD8 hword5=0xFFEE hword7=0x000A word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFFD8 hword5=0xFFEE hword7=0x000C word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0xFFD8 hword5=0xFFEE hword7=0x000E word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x0A
	cs_free_all_ow_map_objects
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00E3
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_do_camera_shake byte1=0x01 byte2=0x1E byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_do_camera_shake byte1=0x00 byte2=0x1E byte3=0x00
	cs_pause byte1=0xFF byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x00000014
	cs_wait_chatbox byte1=0x80
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x000000B2
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_808EA33:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x02C0 signedhword6=0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_808EA78+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A2D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808EA6F:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808EA33
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_808EA78::
	push {lr}
	mov r0, #0x15
	bl sub_80355DE
	str r0, [r5,#0x34]
	mov r0, #0
	pop {pc}
	thumb_func_end sub_808EA78

	.balign 4, 0

cutscenescript_808EA88::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87C0484 + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808EAD0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

byte_808EAAD::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A2F
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808EAD0:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808EAAD

ccs_808EAD8:
	ccs_set_camera_pos hword1=0x1B40 hword3=0x0100 hword5=0x0000
	ccs_end

ccs_808EAE0:
	ccs_simple_scroll hword1=0x0048 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808EAEA:
	.byte 0x00
	.byte 0x00

cutscenescript_808EAEC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C0500 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808EAD8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806A728
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808EAE0
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808EB48
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80

byte_808EB31::
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A31
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0070
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808EB48:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808EB31

ccs_808EB50:
	ccs_set_camera_pos hword1=0x1FC0 hword3=0x0100 hword5=0x0000
	ccs_end

ccs_808EB58:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_808EB5E:
	.byte 0x00
	.byte 0x00

cutscenescript_808EB60:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C06E8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808EB50
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806A770
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808EC2B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808EC33
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000003
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
	cs_decomp_text_archive ptr1=CompText87C06E8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808EB58
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808EC2B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808EC06:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A33
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=unk_808EC40
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808EC2B:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808EC06

cutscenescript_808EC33:
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=cutscenescript_808EC33
	cs_end_for_map_reload_maybe_8037c64

unk_808EC40:
	.word 0x04000305, 0x00000000, 0x00000000, 0x00000000
ccs_808EC50:
	ccs_set_camera_pos hword1=0xFD20 hword3=0x00A0 hword5=0x0000
	ccs_end

ccs_808EC58:
	ccs_set_camera_pos hword1=0xFD40 hword3=0xFD40 hword5=0x0000
	ccs_end

ccs_808EC60:
	ccs_simple_scroll hword1=0x0048 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_808EC6A:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

byte_808EC70::
	ccs_simple_scroll hword1=0x0090 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_808EC7A:
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0x0200 hword7=0x0000
	ccs_end

ccs_808EC84:
	ccs_set_camera_pos hword1=0xFD00 hword3=0x0100 hword5=0x0000
	ccs_end

ccs_808EC8C:
	ccs_set_camera_pos hword1=0xFD40 hword3=0x0180 hword5=0x0000
	ccs_end

ccs_808EC94:
	ccs_simple_scroll hword1=0x0070 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_wait hword1=0x0078
	ccs_simple_scroll hword1=0x0070 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_808ECAA:
	ccs_set_camera_pos hword1=0x0D40 hword3=0x0880 hword5=0x0000
	ccs_end

ccs_808ECB2:
	ccs_set_camera_pos hword1=0xFD40 hword3=0x0180 hword5=0x0000
	ccs_end

end_ccs_808ECBA:
	.byte 0x00
	.byte 0x00
cutscenescript_808ECBC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C0764 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808EC50
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806247C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A99
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A9A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808F0A1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0x40
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_808F0C3
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_808EC58
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808F0A1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808EC60
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808EC6A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_808EC6A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_do_camera_shake byte1=0x01 byte2=0x0A byte3=0x00
	cs_set_var byte1=0x08 byte2=0x0B
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010100
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010100
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808EC70
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010200
	cs_pause byte1=0xFF byte2=0x14
	cs_free_ow_map_object nybble1=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010200
	cs_pause byte1=0xFF byte2=0x14
	cs_free_ow_map_object nybble1=0x02
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010200
	cs_pause byte1=0xFF byte2=0x14
	cs_free_ow_map_object nybble1=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010400
	cs_pause byte1=0xFF byte2=0x14
	cs_free_ow_map_object nybble1=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010400
	cs_pause byte1=0xFF byte2=0x14
	cs_free_ow_map_object nybble1=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFFE2 hword5=0xFFBE hword7=0xFFFC word9=0xFF010800
	cs_pause byte1=0xFF byte2=0x14
	cs_free_ow_map_object nybble1=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_free_ow_map_object nybble1=0x00
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x81
	cs_run_cutscene_camera_script ptr1=ccs_808EC7A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x82
	cs_wait_var_equal byte1=0x08 byte2=0x83
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_play_sound hword1=0x0107
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFFF8 hword5=0xFFDE hword7=0x000A word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFFF8 hword5=0xFFDE hword7=0x000C word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0xFFF8 hword5=0xFFDE hword7=0x000E word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x0A
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x14
	cs_wait_var_equal byte1=0x08 byte2=0x15
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1A
	cs_wait_var_equal byte1=0x08 byte2=0x1B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1C
	cs_wait_var_equal byte1=0x08 byte2=0x1D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x40
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_808F0A9
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x20
	cs_run_cutscene_camera_script ptr1=ccs_808EC84
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808F0A1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x21
	cs_wait_var_equal byte1=0x08 byte2=0x22
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x23
	cs_wait_var_equal byte1=0x08 byte2=0x24
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x30
	cs_run_cutscene_camera_script ptr1=ccs_808EC8C
	cs_pause byte1=0xFF byte2=0x96
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808F0A1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_808F0DD
	cs_pause byte1=0xFF byte2=0x14
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808F0EC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808EC94
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x26
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x31
	cs_wait_var_equal byte1=0x08 byte2=0x32
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x28
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x33
	cs_wait_var_equal byte1=0x08 byte2=0x34
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_808F0DD
	cs_pause byte1=0xFF byte2=0x1E
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x35
	cs_wait_var_equal byte1=0x08 byte2=0x36
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x29
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x37
	cs_wait_var_equal byte1=0x08 byte2=0x38
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808ECAA
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x2C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x39
	cs_wait_var_equal byte1=0x08 byte2=0x3A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808ECB2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x2D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808F032:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A99
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A9A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A9C
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A9B
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A9C
	cs_free_all_ow_map_objects
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A00
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_123
	cs_write_gamestate_byte byte1=0x06 byte2=0x50
	cs_write_gamestate_byte byte1=0x07 byte2=0x50
	cs_add_bbs_message_range hword1=0x17BE byte3=0x08
	cs_add_bbs_message_range hword1=0x17EF byte3=0x07
	cs_add_bbs_message_range hword1=0x1828 byte3=0x07
	cs_add_bbs_message_range hword1=0x18B0 byte3=0x07
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0xB4
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x02C0 signedhword6=0x0240 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C01
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808F0FC
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808F0A1::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808F032

cutscenescript_808F0A9:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808F032

byte_808F0C3::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808F032

byte_808F0DD::
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_808F0DD

cutscenescript_808F0EC:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_808F0EC
	cs_end_for_map_reload_maybe_8037c64

unk_808F0FC:
	.word 0x04000106, 0x00000000, 0x00000000, 0x00000000

ccs_808F10C:
	ccs_set_camera_pos hword1=0xF5C0 hword3=0x0180 hword5=0x0000
	ccs_end

cutscenescript_808F114:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C0E14 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808F10C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8061218
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808F191
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808F14C:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_store_game_progress_buffer_maybe_803843c byte2=0x00
	cs_load_game_progress_buffer_maybe_803843c byte2=0x07
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_set_event_flag byte1=0xFF event16_2=EVENT_ABA
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0A40 signedhword6=0x0240 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A41
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808F191:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808F14C
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808F19C:
	ccs_set_camera_pos hword1=0xF9C0 hword3=0xFF40 hword5=0x0000
	ccs_end

cutscenescript_808F1A4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C1150 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808F19C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806FA78
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808F210
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808F1D7::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_change_navi_maybe_80382fe byte1=0x07
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=-0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A43
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_808F210::
	.word 0x1540003C, byte_808F1D7

ccs_808F218:
	ccs_set_camera_pos hword1=0xF5C0 hword3=0x0180 hword5=0x0000
	ccs_end

cutscenescript_808F220:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C13B4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808F218
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8061250
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808F2A8
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808F253::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_store_game_progress_buffer_maybe_803843c byte2=0x07
	cs_load_game_progress_buffer_maybe_803843c byte2=0x00
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_ABA
	cs_set_event_flag byte1=0xFF event16_2=EVENT_ABB
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0A40 signedhword6=0x0240 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E8
	cs_cmd_8038346 word1=0x00150214 word5=0x00000003
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808F2B0
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_808F2A8::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808F253

unk_808F2B0:
	.word 0x07000005
	.byte 0x00
end_cutscenescript_808F2B5:
	.word 0x00FF5C00, 0x00002400
	.byte 0x00
	.byte 0x00
	.byte 0x00

ccs_808F2C0:
	ccs_set_camera_pos hword1=0x0460 hword3=0xEEA0 hword5=0x0400
	ccs_end

cutscenescript_808F2C8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=byte_202FA04
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808F2C0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807C310
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808F37A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x0107
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0x0046 hword5=0xFEDA hword7=0x0040 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0x0046 hword5=0xFEDA hword7=0x0042 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0x0046 hword5=0xFEDA hword7=0x0044 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x0A
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808F33F:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x04A0 signedhword6=-0x1080 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808F37A:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808F33F
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808F384:
	ccs_set_camera_pos hword1=0xECA0 hword3=0x0E60 hword5=0x0000
	ccs_end

cutscenescript_808F38C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=byte_202FA04
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808F384
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807C348
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808F43E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x0107
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFECA hword5=0x00F6 hword7=0x0000 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFECA hword5=0x00F6 hword7=0x0002 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0xFECA hword5=0x00F6 hword7=0x0004 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x0A
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808F403:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x1380 signedhword6=0x0D80 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808F43E:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808F403
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808F448:
	ccs_set_camera_pos hword1=0xF920 hword3=0x0400 hword5=0x0400
	ccs_end

cutscenescript_808F450:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=byte_202FA04
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808F448
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807BD78
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808F502
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x0107
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFFA2 hword5=0x0040 hword7=0x0040 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFFA2 hword5=0x0040 hword7=0x0042 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0xFFA2 hword5=0x0040 hword7=0x0044 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x0A
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808F4C7:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x07C0 signedhword6=0x03C0 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808F502:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808F4C7
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808F50C:
	ccs_set_camera_pos hword1=0x0DE0 hword3=0xF920 hword5=0x0800
	ccs_end

cutscenescript_808F514:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=byte_202FA04
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808F50C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807BDB0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808F5BA
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x0107
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0x00DE hword5=0xFF82 hword7=0x0080 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0x00DE hword5=0xFF82 hword7=0x0082 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0x00DE hword5=0xFF82 hword7=0x0084 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x0A
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_808F594:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_free_all_ow_map_objects
	cs_set_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_enter_map_screen_fade byte1=0x00 byte2=0x10
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_808F5C4
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808F5BA:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808F594
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808F5C4:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
off_808F5D4::
	.word unk_2000310

gfx_anim_script_808F5D8:
	gfx_anim_manual_pal_transform transform_type=0x0000000C ptr5=iPalette3001B60 index=0x0F num_pals=0x01
	gfx_anim_data data=0x800039CE delay=0x00000001
	gfx_anim_end

gfx_anim_script_808F5F0:
	gfx_anim_manual_pal_transform transform_type=0x00000004 ptr5=iPalette3001B60 index=0x0F num_pals=0x01
	gfx_anim_data data=0x80004210 delay=0x0000000A
	gfx_anim_data data=0x800041F0 delay=0x0000000A
	gfx_anim_data data=0x80003DEF delay=0x0000000A
	gfx_anim_data data=0x80003DEF delay=0x0000000A
	gfx_anim_data data=0x800039CE delay=0x0000000A
	gfx_anim_data data=0x800035AD delay=0x0000000A
	gfx_anim_data data=0x8000318C delay=0x0000000A
	gfx_anim_data data=0x8000294A delay=0x0000000A
	gfx_anim_data data=0x80002108 delay=0x0000000A
	gfx_anim_data data=0x800018C6 delay=0x0000000A
	gfx_anim_data data=0x80001084 delay=0x0000000A
	gfx_anim_data data=0x80000842 delay=0x0000000A
	gfx_anim_data data=0x80000000 delay=0x0000000A
	gfx_anim_end

byte_808F668::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_call_native_with_return_value ptr1=sub_808F810+1
	cs_write_gamestate_byte byte1=0x09 byte2=0x03
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808F67C::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_call_native_with_return_value ptr1=sub_808F900+1
	cs_write_gamestate_byte byte1=0x09 byte2=0x00
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808F690::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_decomp_text_archive ptr1=TextScript87E1718
	cs_call_native_with_return_value ptr1=sub_808FB18+1
	cs_pause byte1=0xFF byte2=0x02
	cs_call_native_with_return_value ptr1=sub_808FB4C+1
	cs_pause byte1=0xFF byte2=0x02
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x14
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x02
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_play_sound hword1=0x0105
	cs_call_native_with_return_value ptr1=sub_808FB68+1
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x44
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_BE6
	cs_write_gamestate_byte byte1=0x09 byte2=0x00
	cs_call_native_with_return_value ptr1=sub_808FF9C+1
	cs_chatbox_cmd_8037a70
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808F6EC::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_enable_ow_player_wall_collision_809e248
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_decomp_text_archive ptr1=TextScript87E1718
	cs_run_text_script_not_from_mem byte2=0x06
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x1A
	cs_call_native_with_return_value ptr1=sub_808FCF0+1
	cs_call_native_with_return_value ptr1=sub_808FD1C+1
	cs_pause byte1=0xFF byte2=0x0A
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_BE6
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_BE5
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x02
	cs_chatbox_cmd_8037a70
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808F728::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_decomp_text_archive ptr1=TextScript87E1718
	cs_set_event_flag byte1=0xFF event16_2=EVENT_BF2
	cs_play_sound hword1=0x0073
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_chatbox_cmd_8037a70
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808F748::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_set_event_flag byte1=0xFF event16_2=EVENT_BEF
	cs_decomp_text_archive ptr1=TextScript87E1718
	cs_call_native_with_return_value ptr1=sub_808FBC0+1
	cs_pause byte1=0xFF byte2=0x0A
	cs_call_native_with_return_value ptr1=sub_808FC34+1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_call_native_with_return_value ptr1=sub_808FC58+1
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_BEF
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_PET_DISABLED
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1739
	cs_chatbox_cmd_8037a70
	cs_stop_cutscene_camera_script
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808F788::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_set_event_flag byte1=0xFF event16_2=EVENT_BEF
	cs_decomp_text_archive ptr1=TextScript87E1718
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_cutscene_skip_script ptr1=byte_808F800
	cs_set_event_flag byte1=0xFF event16_2=EVENT_BF0
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_call_native_with_return_value ptr1=sub_808FBEC+1
	cs_pause byte1=0xFF byte2=0x0A
	cs_call_native_with_return_value ptr1=sub_808FC7C+1
	cs_play_sound hword1=0x017D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_eStruct200a6a0_callback
	cs_load_map_gfx_anims_bg_anim
	cs_disable_cutscene_skip_script
	cs_load_gfx_anim ptr1=gfx_anim_script_808F5D8
	cs_pause byte1=0xFF byte2=0x1E
	cs_load_gfx_anim ptr1=gfx_anim_script_808F5F0
	cs_pause byte1=0xFF byte2=0xC8
	cs_terminate_gfx_anim byte1=0x0F

cutscenescript_808F7E0:
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_BE5
	cs_call_native_with_return_value ptr1=sub_808FCB0+1
	cs_call_native_with_return_value ptr1=sub_808FCE4+1
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_BF0
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_BEF
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_BE0
	cs_chatbox_cmd_8037a70
	cs_stop_cutscene_camera_script
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808F800::
	cs_call_native_with_return_value ptr1=sub_808FC7C+1
	cs_run_eStruct200a6a0_callback
	cs_load_map_gfx_anims_bg_anim
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808F7E0
	cs_end_for_map_reload_maybe_8037c64

/*For debugging purposes, connect comment at any range!*/
