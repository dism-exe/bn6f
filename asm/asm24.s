
	thumb_local_start
sub_808BEFC:
	push {lr}
	bl sub_8005D88
	mov r0, #0
	pop {pc}
	thumb_func_end sub_808BEFC
	.balign 4, 0

end_func_808bf08:
	ccs_set_camera_pos hword1=0xF9C0 hword3=0xFF40 hword5=0x0000
	ccs_end

cutscenescript_808BF10:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BBF74 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=end_func_808bf08
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806F8D0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808BF8C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808BF43:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_change_navi_maybe_80382fe byte1=0x08
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=-0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_84D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_84F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_851
	cs_set_event_flag byte1=0xFF event16_2=EVENT_853
	cs_set_event_flag byte1=0xFF event16_2=EVENT_855
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_808BF8C:
	.word 0x1540003C, byte_808BF43

cutscenescript_808BF94:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87BC0C0 + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808BFF9
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_808BFB9:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0C60 signedhword6=-0x0A60 signedhword8=0x0200
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_961
	cs_set_event_flag byte1=0xFF event16_2=EVENT_960
	cs_call_native_with_return_value ptr1=sub_8142ECC+1
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808BFF9:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808BFB9
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808C004:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BC3EC + COMPRESSED_PTR_FLAG
	cs_end_minigame_effect
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_961
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_960
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808C07A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_808C046:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_850
	cs_set_event_flag byte1=0xFF event16_2=EVENT_96E
	cs_call_native_with_return_value ptr1=sub_814312C+1
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

cutscenescript_808C07A:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808C046
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808C084:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87BC4C4 + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808C0E9
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_808C0A9:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x2080 signedhword6=-0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_961
	cs_set_event_flag byte1=0xFF event16_2=EVENT_960
	cs_call_native_with_return_value ptr1=sub_8142ECC+1
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808C0E9:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808C0A9
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808C0F4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BC58C + COMPRESSED_PTR_FLAG
	cs_end_minigame_effect
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_961
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_960
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808C180
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000001
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x21
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x1E

byte_808C14D:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_free_ow_map_object nybble1=0x00
	cs_set_event_flag byte1=0xFF event16_2=EVENT_854
	cs_set_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_96F
	cs_call_native_with_return_value ptr1=sub_814312C+1
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_enter_map_screen_fade byte1=0x00 byte2=0x10
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_808C188
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808C180:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808C14D

unk_808C188:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
ccs_808C198:
	ccs_set_camera_pos hword1=0xFFA0 hword3=0x0020 hword5=0x0100
	ccs_end

cutscenescript_808C1A0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BC660 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808C198
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805EE64
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808C228
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808C1D3:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_store_game_progress_buffer_maybe_803843c byte2=0x08
	cs_load_game_progress_buffer_maybe_803843c byte2=0x00
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_85F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_860
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0060 signedhword6=0x00E0 signedhword8=0x0100
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E9
	cs_cmd_8038346 word1=0x00140214 word5=0x00000003
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808C230
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_808C228:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808C1D3

unk_808C230:
	.word 0x07000004
	.byte 0x00
	.byte 0x00
end_cutscenescript_808C236:
	.word 0x0000FFFA, 0x0000000E
	.byte 0x10
	.byte 0x00

ccs_808C240:
	ccs_set_camera_pos hword1=0xFFA0 hword3=0x0020 hword5=0x0100
	ccs_end

byte_808C248:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BC8C8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808C240
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_805EEAC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808C2C5
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808C280:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_store_game_progress_buffer_maybe_803843c byte2=0x00
	cs_load_game_progress_buffer_maybe_803843c byte2=0x08
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_set_event_flag byte1=0xFF event16_2=EVENT_85F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0060 signedhword6=0x00E0 signedhword8=0x0100
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_84B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808C2C5:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808C280
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808C2D0:
	.word 0x00000092, 0x00D00000, 0xFF500000, 0x00200000
byte_808C2E0: 
  .byte 0x92, 0x1, 0x0, 0x1, 0x0, 0x0, 0xF8, 0xFD, 0x0, 0x0, 0xF4, 0xFF
	.byte 0x0, 0x0, 0x0, 0x0
byte_808C2F0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x32
	cs_play_sound hword1=0x01A5
	cs_call_native_with_return_value ptr1=sub_808C378+1
	cs_call_native_with_return_value ptr1=sub_81432D8+1
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0xC0
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScript87E0DEC
	cs_jump_if_var_equal byte1=0x04 byte2=0x00 destination3=byte_808C32B
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_808C336

byte_808C32B:
	cs_warp_cmd_8038040_1 ptr2=end_cutscenescript_808C2D0
	cs_jump destination1=cutscenescript_808C341

cutscenescript_808C336:
	cs_warp_cmd_8038040_1 ptr2=byte_808C2E0
	cs_jump destination1=cutscenescript_808C341

cutscenescript_808C341:
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_960
	cs_chatbox_cmd_8037a70
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x80 byte2=0x00 ptr3=NULL
	cs_jump destination1=cutscenescript_808C372

cutscenescript_808C372:
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_808C378:
	push {r4-r7,lr}
	mov r0, #0x70 
	add r7, r5, r0
	ldrb r0, [r5,#4]
	tst r0, r0
	bne loc_808C398
	mov r0, #1
	strb r0, [r5,#4]
	mov r0, #0
	str r0, [r7,#4]
	mvn r0, r0
	str r0, [r7,#0xc]
	ldr r0, off_808C404 // =0x3c 
	str r0, [r7]
	mov r0, #0xc
	str r0, [r7,#8]
loc_808C398:
	ldr r0, [r7,#4]
	sub r0, #1
	str r0, [r7,#4]
	bgt loc_808C3DE
	mov r0, #1
	str r0, [r7,#4]
	push {r4-r7}
	bl ReadOWPlayerObjectCoords
	mov r4, #0x10
	lsl r4, r4, #0x10
	add r2, r2, r4
	mov r3, r2
	mov r2, r1
	mov r1, r0
	mov r4, #0x20 
	lsl r4, r4, #8
	add r4, #8
	lsl r4, r4, #8
	push {r1-r7}
loc_808C3C0:
	bl GetRNG // () -> u32?
	mov r1, #0xff
	and r0, r1
	lsr r1, r0, #5
	ldr r2, [r7,#0xc]
	cmp r1, r2
	beq loc_808C3C0
	str r1, [r7,#0xc]
	pop {r1-r7}
	add r4, r4, r0
	mov r0, #0x17
	bl SpawnOverworldMapObject
	pop {r4-r7}
loc_808C3DE:
	ldr r0, [r7]
	sub r0, #1
	str r0, [r7]
	ldr r0, [r7,#8]
	sub r0, #1
	blt loc_808C3EE
	str r0, [r7,#8]
	b loc_808C3F2
loc_808C3EE:
	bl sub_8143294
loc_808C3F2:
	mov r0, #0
	mov r1, #1
	bl camera_initShakeEffect_80302a8
	ldr r0, [r7]
	tst r0, r0
	pop {r4-r7,pc}
	.word 0x70
	.balign 4, 0
off_808C404:
	.word 0x0000003C

ccs_808C408:
	ccs_set_camera_pos hword1=0xE300 hword3=0x0600 hword5=0x0000
	ccs_end

ccs_808C410:
	ccs_set_camera_pos hword1=0xDCA0 hword3=0x0460 hword5=0x0000
	ccs_end

ccs_808C418:
	ccs_set_camera_pos hword1=0xE2A0 hword3=0x1280 hword5=0x0000
	ccs_end

byte_808C420:
	ccs_set_camera_pos hword1=0xF5A0 hword3=0x1F60 hword5=0x0000
	ccs_end

byte_808C428:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_decomp_text_archive ptr1=TextScript87DBE98
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_808C45F
	cs_jump_if_var_equal byte1=0x04 byte2=0x02 destination3=cutscenescript_808C46A
	cs_jump_if_var_equal byte1=0x04 byte2=0x03 destination3=byte_808C475
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8069518
	cs_jump destination1=cutscenescript_808C47B

cutscenescript_808C45F:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80695D0
	cs_jump destination1=cutscenescript_808C47B

cutscenescript_808C46A:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80696B8
	cs_jump destination1=cutscenescript_808C47B

byte_808C475:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806B7C4

cutscenescript_808C47B:
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808C5D2
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_load_gfx_anim ptr1=gfx_anim_script_808C5EC
	cs_free_all_objects_of_types byte2=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_terminate_gfx_anim byte1=0x00
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804C30C+1 ptr5=sub_804C328+1 word9=0x00000000
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808C5D2
	cs_sound_cmd_803810e byte1=0x02 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_call_native_with_return_value ptr1=sub_808C6A4+1
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0F
	cs_run_eStruct200a6a0_callback
	cs_load_map_gfx_anims_bg_anim
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_808C51C
	cs_jump_if_var_equal byte1=0x04 byte2=0x02 destination3=cutscenescript_808C527
	cs_jump_if_var_equal byte1=0x04 byte2=0x03 destination3=cutscenescript_808C532
	cs_run_cutscene_camera_script ptr1=ccs_808C408
	cs_jump destination1=byte_808C538

cutscenescript_808C51C:
	cs_run_cutscene_camera_script ptr1=ccs_808C410
	cs_jump destination1=byte_808C538

cutscenescript_808C527:
	cs_run_cutscene_camera_script ptr1=ccs_808C418
	cs_jump destination1=byte_808C538

cutscenescript_808C532:
	cs_run_cutscene_camera_script ptr1=byte_808C420

byte_808C538:
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808C5D2
	cs_play_music hword1=0xFFFF
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808C55F:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9D9
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9D8
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9D5
	cs_set_event_flag byte1=0xFF event16_2=EVENT_9D3
	cs_make_ow_player_visible
	cs_enable_ow_player_wall_collision_809e248
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_call_native_with_return_value ptr1=sub_808CA68+1
	cs_pause byte1=0xFF byte2=0x1E
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_808C5B0
	cs_jump_if_var_equal byte1=0x04 byte2=0x02 destination3=cutscenescript_808C5BC
	cs_jump_if_var_equal byte1=0x04 byte2=0x03 destination3=byte_808C5C8
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808C604
	cs_jump destination1=byte_808C5CF

cutscenescript_808C5B0:
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808C614
	cs_jump destination1=byte_808C5CF

cutscenescript_808C5BC:
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808C624
	cs_jump destination1=byte_808C5CF

byte_808C5C8:
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808C634

byte_808C5CF:
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808C5D2:
	cs_set_chatbox_flags byte2=0x40
	cs_terminate_gfx_anim byte1=0x0F
	cs_run_eStruct200a6a0_callback
	cs_load_map_gfx_anims_bg_anim
	cs_sound_cmd_803810e byte1=0x00 byte2=0x1F
	cs_play_music hword1=0xFFFF
	cs_call_native_with_return_value ptr1=sub_808C6A4+1
	cs_jump destination1=cutscenescript_808C55F
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

gfx_anim_script_808C5EC:
	gfx_anim_manual_pal_transform transform_type=0x0000000C ptr5=iPalette3001B60 index=0x0F num_pals=0x0D
	gfx_anim_data data=0x80004210 delay=0x00000001
	gfx_anim_end

unk_808C604:
	.word 0x03000082, 0xFE300000, 0x005E0000, 0x00000000

unk_808C614:
	.word 0x01000182, 0xFDCA0000, 0x00460000, 0x00000000

unk_808C624:
	.word 0x07000282, 0xFE2A0000, 0x01280000, 0x00000000

unk_808C634:
	.word 0x01000185, 0xFF5A0000, 0x01F60000, 0x00000000
	thumb_func_end sub_808C378

	thumb_local_start
sub_808C644:
	push {r4,r5,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldrb r3, [r4,#oGameState_MapGroup]
	cmp r3, #0x85
	bne loc_808C654
	mov r4, #3
	b loc_808C656
loc_808C654:
	ldrb r4, [r4,#5]
loc_808C656:
	lsl r4, r4, #4
	ldr r5, off_808C680 // =byte_808C684
	ldrh r0, [r5,r4]
	lsl r0, r0, #0x10
	add r4, #2
	ldrh r1, [r5,r4]
	lsl r1, r1, #0x10
	mov r2, #0
	bl owPlayer_copyCoordsToNextCoordsWritePlayerCoordsThenIndirectlySetPlayerCoordsMaybe_809e188
	add r4, #2
	ldrh r0, [r5,r4]
	bl SetOWPlayerFacingDirection
	add r4, #2
	ldrh r0, [r5,r4]
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	mov r0, #0
	pop {r4,r5,pc}
	.balign 4, 0
off_808C680:
	.word byte_808C684
byte_808C684:
	.byte 0x30, 0xFE, 0x5E, 0x0, 0x3, 0x0, 0x3, 0x0, 0xCA, 0xFD, 0x46
	.byte 0x0, 0x1, 0x0, 0x1, 0x0, 0x2A, 0xFE, 0x8, 0x1, 0x7, 0x0
	.byte 0x7, 0x0, 0x5A, 0xFF, 0xF6, 0x1, 0x1, 0x0, 0x1, 0x0

	thumb_local_start
sub_808C6A4:
	push {r5, lr}
	movflag EVENT_9D5
	bl TestEventFlagFromImmediate
	bne loc_808C6DC
	ldr r5, =unk_2000B40
	mov r0, #0x6b
	bl PlaySoundEffect
	mov r0, #0
	bl GetMaxAndCurHPForCurPETNavi_80010D4
	ldrh r2, [r5, #6]
	mov r3, #0x64
	mul r2, r3
	cmp r0, r2
	bgt loc_808C6CC
	mov r1, #1
	b loc_808C6CE
loc_808C6CC:
	sub r1, r0, r2
loc_808C6CE:
	mov r0, #0
	bl sub_80010EC
	movflag EVENT_9D5
	bl SetEventFlagFromImmediate
loc_808C6DC:
	mov r0, #0
	pop {r5, pc}
	.pool
	thumb_func_end sub_808C6A4


ccs_808C6E4:
	ccs_set_camera_pos hword1=0xEDC0 hword3=0x0E20 hword5=0x0000
	ccs_end

byte_808C6EC:
	ccs_set_camera_pos hword1=0x05E0 hword3=0x0C20 hword5=0x0000
	ccs_end

ccs_808C6F4:
	ccs_set_camera_pos hword1=0x19E0 hword3=0xF620 hword5=0x0000
	ccs_end

ccs_808C6FC:
	ccs_set_camera_pos hword1=0xF740 hword3=0xF8A0 hword5=0x0000
	ccs_end

ccs_808C704:
	ccs_set_camera_pos hword1=0x0B40 hword3=0xFCA0 hword5=0x0000
	ccs_end

byte_808C70C:
	ccs_set_camera_pos hword1=0x1940 hword3=0xFCA0 hword5=0x0000
	ccs_end

ccs_808C714:
	ccs_set_camera_pos hword1=0x0140 hword3=0x0CA0 hword5=0x0000
	ccs_end

ccs_808C71C:
	ccs_set_camera_pos hword1=0x0E60 hword3=0x05C0 hword5=0x0000
	ccs_end

ccs_808C724:
	ccs_set_camera_pos hword1=0x0C60 hword3=0xF9E0 hword5=0x0000
	ccs_end

byte_808C72C:
	ccs_set_camera_pos hword1=0xFD40 hword3=0x12A0 hword5=0x0000
	ccs_end

ccs_808C734:
	ccs_set_camera_pos hword1=0x0160 hword3=0x0080 hword5=0x0000
	ccs_end

ccs_808C73C:
	ccs_set_camera_pos hword1=0xF840 hword3=0xF7A0 hword5=0x0000
	ccs_end

ccs_808C744:
	ccs_set_camera_pos hword1=0x0060 hword3=0xE5A0 hword5=0x0000
	ccs_end

byte_808C74C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x01
	cs_decomp_text_archive ptr1=TextScript87DBE98
	cs_jump_if_var_equal byte1=0x04 byte2=0x00 destination3=cutscenescript_808C7B2
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_808C7CF
	cs_jump_if_var_equal byte1=0x04 byte2=0x02 destination3=byte_808C7EC
	cs_jump_if_var_equal byte1=0x04 byte2=0x03 destination3=cutscenescript_808C809
	cs_jump_if_var_equal byte1=0x04 byte2=0x04 destination3=cutscenescript_808C826
	cs_jump_if_var_equal byte1=0x04 byte2=0x05 destination3=cutscenescript_808C843
	cs_jump_if_var_equal byte1=0x04 byte2=0x06 destination3=byte_808C860
	cs_jump_if_var_equal byte1=0x04 byte2=0x07 destination3=cutscenescript_808C87D
	cs_jump_if_var_equal byte1=0x04 byte2=0x08 destination3=cutscenescript_808C89A
	cs_jump_if_var_equal byte1=0x04 byte2=0x09 destination3=cutscenescript_808C8B7
	cs_jump_if_var_equal byte1=0x04 byte2=0x0A destination3=byte_808C8D4
	cs_jump_if_var_equal byte1=0x04 byte2=0x0B destination3=cutscenescript_808C8F1
	cs_jump_if_var_equal byte1=0x04 byte2=0x0C destination3=cutscenescript_808C90E

cutscenescript_808C7B2:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C6E4
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9F6
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C7CF:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=byte_808C6EC
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9F7
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

byte_808C7EC:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C6F4
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9F8
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C809:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C6FC
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9F9
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C826:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C704
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9FA
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C843:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=byte_808C70C
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9FB
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

byte_808C860:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C714
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9FC
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C87D:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C71C
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9FD
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C89A:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C724
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9FE
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C8B7:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=byte_808C72C
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_FFA
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

byte_808C8D4:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C734
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_FFB
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C8F1:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C73C
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_FFC
	cs_pause byte1=0xFF byte2=0x3C
	cs_jump destination1=byte_808C926

cutscenescript_808C90E:
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_cutscene_camera_script ptr1=ccs_808C744
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_FFD
	cs_pause byte1=0xFF byte2=0x3C

byte_808C926:
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x1E
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808C930:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_call_native_with_return_value ptr1=sub_808C948+1
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_9D4
	cs_stop_cutscene_camera_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808C947:
	.balign 4, 0

	thumb_local_start
sub_808C948:
	push {r4-r7, lr}
	mov r0, r8
	push {r0}
	ldr r5, =unk_2000B40
	ldrb r4, [r5, #1]
	cmp r4, #0
	bgt loc_808C966
	mov r0, #0
	bl camera_writeUnk03_14_80301b2
	mov r0, #1
	bl sub_8089244
	add r4, #1
	strb r4, [r5, #1]
loc_808C966:
	mov r4, r10
	ldr r4, [r4, #4]
	ldrh r4, [r4, #0]
	mov r1, #0x20
	lsl r1, r1, #4
	tst r1, r4
	beq loc_808C98E
	mov r4, #0
	strb r4, [r5, #1]
	movflag EVENT_9D4
	bl ClearEventFlagFromImmediate
	mov r0, #0x83
	bl PlaySoundEffect
	mov r0, #0
	pop {r1}
	mov r8, r1
	pop {r4-r7, pc}
loc_808C98E:
	bl GetCameraXYZ
	add r7, r0, #0
	mov r8, r1
	ldr r3, =byte_808CA18
	mov r0, #0
loc_808C99A:
	ldrb r2, [r3, r0]
	add r1, r2, #0
	and r1, r4
	cmp r1, r2
	beq loc_808C9AC
	add r0, #1
	cmp r0, #8
	blt loc_808C99A
	b loc_808C9D2
loc_808C9AC:
	mov r6, #0
	mov r1, #2
	tst r4, r1
	beq loc_808C9B6
	mov r6, #0x10
loc_808C9B6:
	add r4, r0, #0
	ldr r3, off_808CA20 // =byte_808CA24
	lsl r0, r4, #1
	add r3, r3, r0
	add r3, r3, r6
	mov r0, #0
	ldrsb r0, [r3, r0]
	lsl r0, r0, #0x10
	mov r1, #1
	ldrsb r1, [r3, r1]
	lsl r1, r1, #0x10
	add r0, r0, r7
	add r1, r8
	b loc_808C9D6
loc_808C9D2:
	add r0, r7, #0
	mov r1, r8
loc_808C9D6:
	sub sp, #0xc
	str r0, [sp, #0]
	str r1, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, sp
	bl sub_80303FC
	cmp r0, #0
	beq loc_808C9F8
	add r0, r4, #0
	bl sub_8089370
	add r0, r7, #0
	mov r1, r8
	mov r2, #0
	b loc_808C9FE
loc_808C9F8:
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
loc_808C9FE:
	bl SetCameraXYZ
	bl sub_8089280
	mov r0, #1
	add sp, #0xc
	pop {r1}
	mov r8, r1
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_808C948

byte_808CA18:
	.byte 0x50, 0x90, 0xA0, 0x60, 0x40, 0x10, 0x80, 0x20
off_808CA20:
	.word byte_808CA24
byte_808CA24:
	.byte 0x4, 0x0, 0x0, 0x4, 0xFC, 0x0, 0x0, 0xFC, 0x4, 0xFC, 0x2, 0x2, 0xFC
	.byte 0x4, 0xFE, 0xFE, 0x8, 0x0, 0x0, 0x8, 0xF8, 0x0, 0x0, 0xF8, 0x8, 0xF8
	.byte 0x4, 0x4, 0xF8, 0x8, 0xFC, 0xFC
dword_808CA44:
	.word 0x2000B40
byte_808CA48:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_decomp_text_archive ptr1=TextScript87DBE98
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_set_event_flag byte1=0xFF event16_2=EVENT_9D8
	cs_call_native_with_return_value ptr1=sub_808CBD8+1
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

	thumb_func_end sub_808C644

	thumb_local_start
sub_808CA68:
	push {r5,lr}
	ldr r0, off_808CB9C // =dword_808CA44
	ldr r0, [r0]
	mov r5, r0
	mov r1, #0x98
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	mov r0, #0x20 
	strb r0, [r5,#0x3] // (byte_2000B43 - 0x2000b40)
	bl sub_808CC84
	movflag EVENT_9D8
	bl ClearEventFlagFromImmediate // (flag: u16) -> ()
	movflag EVENT_9D9
	bl ClearEventFlagFromImmediate // (flag: u16) -> ()
	mov r0, #0
	bl sub_8001172
	movflag EVENT_9D3
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	bne loc_808CAA2
	bl sub_808CF50
loc_808CAA2:
	movflag EVENT_9D3
	bl ClearEventFlagFromImmediate // (flag: u16) -> ()
	bl sub_8142C94
	bl sub_808CBA0
	bl sub_808CF34
	cmp r0, #1
	beq loc_808CABE
	bl sub_808CE70
loc_808CABE:
	bl sub_808CE28
	mov r0, #0x1f
	ldr r1, dword_808CAD0 // =0x100
	bl sound_8000672
	mov r0, #0
	pop {r5,pc}
	.balign 4, 0
dword_808CAD0:
	.word 0x100
	thumb_func_end sub_808CA68

	thumb_local_start
sub_808CAD4:
	push {r5,lr}
	bl sub_8142C94
	movflag EVENT_9D6
	bl SetEventFlagFromImmediate
	bl sub_808CBA0
	movflag EVENT_9D8
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	beq loc_808CB06
	movflag EVENT_9D7
	bl SetEventFlagFromImmediate
	bl sub_808CBD8
	bl reqBBS_setFlag_e17b0f7_8140A00
	mov r0, #3
	bl sub_8001172
loc_808CB06:
	mov r0, #0
	pop {r5,pc}
	.balign 4, 0x00
	thumb_func_end sub_808CAD4

	thumb_func_start sub_808CB0C
sub_808CB0C:
	push {r4-r7,lr}
	ldr r5, off_808CB9C // =dword_808CA44
	ldr r5, [r5]
	movflag EVENT_9D6
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	beq loc_808CB3C
	bl sub_808D11C
	movflag EVENT_9D8
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	beq locret_808CB96
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	beq loc_808CB3C
	mov r0, #0x1f
	ldr r1, dword_808CB98 // =0x13b 
	bl sound_8000672
loc_808CB3C:
	mov r0, #1
	bl TestPETMenuDataFlag
	bne locret_808CB96
	ldrb r0, [r5,#0xc] // (byte_2000B4C - 0x2000b40)
	cmp r0, #0
	bne loc_808CB5A
	bl ReadOWPlayerObjectCoords
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	strh r0, [r5,#0x1a] // (word_2000B5A - 0x2000b40)
	strh r1, [r5,#0x1c] // (word_2000B5C - 0x2000b40)
	mov r0, #0x20 
	strb r0, [r5,#0x3] // (byte_2000B43 - 0x2000b40)
loc_808CB5A:
	ldrb r0, [r5,#0x3] // (byte_2000B43 - 0x2000b40)
	sub r0, #1
	strb r0, [r5,#0x3] // (byte_2000B43 - 0x2000b40)
	bne loc_808CB6A
	bl sub_808CCAC
	mov r0, #0x20 
	strb r0, [r5,#0x3] // (byte_2000B43 - 0x2000b40)
loc_808CB6A:
	bl sub_808CD04
	beq loc_808CB76
	bl sub_808CD24
	b loc_808CB8A
loc_808CB76:
	movflag EVENT_BF1
	bl ClearEventFlagFromImmediate // (flag: u16) -> ()
	bl sub_808CFB8
	cmp r0, #1
	bne loc_808CB8A
	bl sub_808D108
loc_808CB8A:
	bl sub_808CC34
	cmp r0, #0
	beq locret_808CB96
	bl StartCutscene // (script: *const CutsceneScript, param: u32) -> ()
locret_808CB96:
	pop {r4-r7,pc}
	.balign 4, 0
dword_808CB98:
	.word 0x13B
off_808CB9C:
	.word dword_808CA44
	thumb_func_end sub_808CB0C

	thumb_local_start
sub_808CBA0:
	push {r4-r7,lr}
	mov r6, #0
	mov r7, #7
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_808CBB4
	mov r7, #0xc
	b loc_808CBBC
loc_808CBB4:
	ldrb r0, [r0,#oGameState_MapNumber]
	cmp r0, #0
	beq loc_808CBBC
	mov r7, #9
loc_808CBBC:
	push {r5}
	mov r0, #0x10
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, r6
	bl SpawnOverworldMapObject
	pop {r5}
	add r6, #1
	cmp r6, r7
	blt loc_808CBBC
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_808CBA0

	thumb_local_start
sub_808CBD8:
	push {r4-r7,lr}
	push {r5}
	mov r0, #0x11
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl SpawnOverworldMapObject
	pop {r5}
	bl reqBBS_setFlag_e17b0f7_8140A00
	mov r0, #3
	bl sub_8001172
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	beq loc_808CC06
	mov r0, #0x1f
	ldr r1, dword_808CC0C // =0x13b 
	bl sound_8000672
loc_808CC06:
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0
dword_808CC0C:
	.word 0x13B
	thumb_func_end sub_808CBD8

	thumb_local_start
sub_808CC10:
	push {r4-r7,lr}
	mov r4, #0
	ldrb r0, [r5,#4]
	cmp r0, #2
	bne loc_808CC2E
	movflag EVENT_9D8
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	bne loc_808CC2E
	movflag EVENT_9D8
	bl SetEventFlagFromImmediate
	mov r4, #1
loc_808CC2E:
	tst r4, r4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_808CC10

	thumb_local_start
sub_808CC34:
	push {r4,r6,lr}
	mov r4, #0
	mov r6, #0
	movflag EVENT_9D4
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	beq loc_808CC48
	ldr r4, off_808CC80 // =byte_808C930
	b loc_808CC6C
loc_808CC48:
	bl sub_808CC10
	beq loc_808CC52
	ldr r4, off_808CC74 // =byte_808CA48
	b loc_808CC6C
loc_808CC52:
	bl sub_808CF8C
	beq loc_808CC62
	ldr r4, off_808CC7C // =byte_808C428
	bl sub_808D084
	mov r6, r0
	b loc_808CC6C
loc_808CC62:
	bl sub_808CDC4
	beq loc_808CC6C
	ldr r4, off_808CC78 // =byte_808C74C
	mov r6, r1
loc_808CC6C:
	mov r0, r4
	mov r1, r6
	pop {r4,r6,pc}
	.balign 4, 0
off_808CC74:
	.word byte_808CA48
off_808CC78:
	.word byte_808C74C
off_808CC7C:
	.word byte_808C428
off_808CC80:
	.word byte_808C930
	thumb_func_end sub_808CC34

	thumb_local_start
sub_808CC84:
	push {lr}
	bl ReadOWPlayerObjectCoords
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	strh r0, [r5,#0x16]
	strh r1, [r5,#0x18]
	strh r0, [r5,#0x1a]
	strh r1, [r5,#0x1c]
	pop {pc}
	thumb_func_end sub_808CC84

	thumb_local_start
sub_808CC98:
	push {lr}
	bl ReadOWPlayerObjectCoords
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	strh r0, [r5,#0x1a]
	strh r1, [r5,#0x1c]
	strh r0, [r5,#0x16]
	strh r1, [r5,#0x18]
	pop {pc}
	thumb_func_end sub_808CC98

	thumb_local_start
sub_808CCAC:
	push {r4-r7,lr}
	bl GetOWPlayerFacingDirection
	mov r4, r0
	bl ReadOWPlayerObjectCoords
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	cmp r4, #0
	bne loc_808CCC6
	add r0, #0x18
	sub r1, #0x18
	b loc_808CCFC
loc_808CCC6:
	cmp r4, #1
	bne loc_808CCCE
	add r0, #0x18
	b loc_808CCFC
loc_808CCCE:
	cmp r4, #2
	bne loc_808CCD8
	add r0, #0x18
	add r1, #0x18
	b loc_808CCFC
loc_808CCD8:
	cmp r4, #3
	bne loc_808CCE0
	add r1, #0x18
	b loc_808CCFC
loc_808CCE0:
	cmp r4, #4
	bne loc_808CCEA
	sub r0, #0x18
	add r1, #0x18
	b loc_808CCFC
loc_808CCEA:
	cmp r4, #5
	bne loc_808CCF0
	sub r0, #0x18
loc_808CCF0:
	cmp r4, #6
	bne loc_808CCFA
	sub r0, #0x18
	sub r1, #0x18
	b loc_808CCFC
loc_808CCFA:
	sub r1, #0x18
loc_808CCFC:
	strh r0, [r5,#0x1a]
	strh r1, [r5,#0x1c]
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_808CCAC

	thumb_local_start
sub_808CD04:
	push {r4-r7,lr}
	ldr r5, off_808D030 // =dword_808CA44
	ldr r5, [r5]
	mov r4, #0
	bl reqBBS_81409E4
	cmp r0, #0xc0
	blt loc_808CD1C
	cmp r0, #0xcc
	bgt loc_808CD1C
	strb r0, [r5,#0x5] // (byte_2000B45 - 0x2000b40)
	mov r4, #1
loc_808CD1C:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_808CD04

	thumb_local_start
sub_808CD24:
	push {r4-r7,lr}
	ldr r5, off_808D030 // =dword_808CA44
	ldr r5, [r5]
	bl sub_808D084
	lsl r0, r0, #2
	ldr r4, off_808CD64 // =off_808CD68 
	ldr r4, [r4,r0]
	ldrb r0, [r5,#0x5] // (byte_2000B45 - 0x2000b40)
	sub r0, #0xc0
	lsl r0, r0, #1
	ldrh r4, [r4,r0]
	mov r0, r4
	bl TestEventFlag // (flag: u16) -> !zf
	bne locret_808CD62
	// bitfield
	mov r0, r4
	bl SetEventFlag
	movflag EVENT_BF1
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	bne locret_808CD62
	mov r0, #0xd4
	bl PlaySoundEffect
	movflag EVENT_BF1
	bl SetEventFlagFromImmediate
locret_808CD62:
	pop {r4-r7,pc}
	.balign 4, 0
off_808CD64:
	.word off_808CD68
off_808CD68:
	.word byte_808CD78
	.word byte_808CD86
	.word byte_808CD98
	.word byte_808CDAA
byte_808CD78:
	.byte 0xDD, 0x9, 0xDE, 0x9, 0xDF, 0x9, 0xE0, 0x9, 0xE1, 0x9, 0xE2
	.byte 0x9, 0xE3, 0x9
byte_808CD86:
	.byte 0xE4, 0x9, 0xE5, 0x9, 0xE6, 0x9, 0xE7, 0x9, 0xE8, 0x9, 0xE9
	.byte 0x9, 0xEA, 0x9, 0xEB, 0x9, 0xEC, 0x9
byte_808CD98:
	.byte 0xED, 0x9, 0xEE, 0x9, 0xEF, 0x9, 0xF0, 0x9, 0xF1, 0x9, 0xF2
	.byte 0x9, 0xF3, 0x9, 0xF4, 0x9, 0xF5, 0x9
byte_808CDAA:
	.byte 0xC6, 0xF, 0xC7, 0xF, 0xC8, 0xF, 0xC9, 0xF, 0xCA, 0xF
	.byte 0xCB, 0xF, 0xCC, 0xF, 0xCD, 0xF, 0xCE, 0xF, 0xCF, 0xF
	.byte 0xD0, 0xF, 0xD1, 0xF, 0x0, 0x0
	thumb_func_end sub_808CD24

	thumb_local_start
sub_808CDC4:
	push {r4-r7,lr}
	mov r0, r8
	push {r0}
	mov r4, #0
	bl sub_808D084
	mov r8, r0
	lsl r0, r0, #2
	ldr r6, off_808CEB8 // =off_808CEBC 
	ldr r6, [r6,r0]
	mov r7, #0
loc_808CDDA:
	mov r3, r7
	lsl r3, r3, #3
	ldrh r0, [r6,r3]
	mov r0, r0
	bl TestEventFlag // (flag: u16) -> !zf
	beq loc_808CE02
	mov r3, r7
	lsl r3, r3, #3
	add r3, #2
	ldrh r0, [r6,r3]
	add r3, #2
	ldrh r1, [r6,r3]
	mov r0, r0
	mov r2, r1
	bl TestEventFlagRange // (int a3, int a2) ->
	beq loc_808CE02
	mov r4, #1
	b loc_808CE14
loc_808CE02:
	add r7, #1
	mov r2, #3
	cmp r8, r2
	blt loc_808CE0E
	cmp r7, #4
	b loc_808CE10
loc_808CE0E:
	cmp r7, #3
loc_808CE10:
	blt loc_808CDDA
	mov r7, #0
loc_808CE14:
	mov r0, r4
	mov r1, r8
	mov r2, #3
	mul r1, r2
	add r1, r1, r7
	tst r0, r0
	pop {r2}
	mov r8, r2
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_808CDC4

	thumb_local_start
sub_808CE28:
	push {r4-r7,lr}
	mov r0, r8
	push {r0}
	bl sub_808D084
	mov r8, r0
	lsl r0, r0, #2
	ldr r4, off_808CEB8 // =off_808CEBC 
	ldr r4, [r4,r0]
	mov r7, #0
loc_808CE3C:
	mov r6, r7
	lsl r6, r6, #3
	ldrh r0, [r4,r6]
	mov r0, r0
	bl TestEventFlag // (flag: u16) -> !zf
	beq loc_808CE5A
	add r6, #2
	ldrh r0, [r4,r6]
	add r6, #2
	ldrh r1, [r4,r6]
	mov r0, r0
	mov r2, r1
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
loc_808CE5A:
	add r7, #1
	mov r2, #3
	cmp r8, r2
	blt loc_808CE66
	cmp r7, #4
	b loc_808CE68
loc_808CE66:
	cmp r7, #3
loc_808CE68:
	blt loc_808CE3C
	pop {r0}
	mov r8, r0
	pop {r4-r7,pc}
	thumb_func_end sub_808CE28

	thumb_local_start
sub_808CE70:
	push {r4-r7,lr}
	mov r0, r8
	push {r0}
	bl sub_808D084
	mov r8, r0
	lsl r0, r0, #2
	ldr r4, off_808CEB8 // =off_808CEBC 
	ldr r4, [r4,r0]
	mov r7, #0
loc_808CE84:
	mov r6, r7
	lsl r6, r6, #3
	ldrh r0, [r4,r6]
	mov r0, r0
	bl SetEventFlag
	add r6, #2
	ldrh r0, [r4,r6]
	add r6, #2
	ldrh r1, [r4,r6]
	mov r0, r0
	mov r2, r1
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	add r7, #1
	mov r2, #3
	cmp r8, r2
	blt loc_808CEAC
	cmp r7, #4
	b loc_808CEAE
loc_808CEAC:
	cmp r7, #3
loc_808CEAE:
	blt loc_808CE84
	pop {r0}
	mov r8, r0
	pop {r4-r7,pc}
	.balign 4, 0
off_808CEB8:
	.word off_808CEBC
off_808CEBC:
	.word byte_808CECC
	.word byte_808CEE4
	.word byte_808CEFC
	.word byte_808CF14
byte_808CECC:
	.byte 0xF6, 0x9, 0xDD, 0x9, 0x2, 0x0, 0x0, 0x0, 0xF7, 0x9, 0xDF, 0x9, 0x2
	.byte 0x0, 0x0, 0x0, 0xF8, 0x9, 0xE1, 0x9, 0x3, 0x0, 0x0, 0x0
byte_808CEE4:
	.byte 0xF9, 0x9, 0xE4, 0x9, 0x3, 0x0, 0x0, 0x0, 0xFA, 0x9, 0xE7, 0x9, 0x3
	.byte 0x0, 0x0, 0x0, 0xFB, 0x9, 0xEA, 0x9, 0x3, 0x0, 0x0, 0x0
byte_808CEFC:
	.byte 0xFC, 0x9, 0xED, 0x9, 0x3, 0x0, 0x0, 0x0, 0xFD, 0x9, 0xF0, 0x9, 0x3
	.byte 0x0, 0x0, 0x0, 0xFE, 0x9, 0xF3, 0x9, 0x3, 0x0, 0x0, 0x0
byte_808CF14:
	.byte 0xFA, 0xF, 0xC6, 0xF, 0x3, 0x0, 0x0, 0x0, 0xFB, 0xF, 0xC9
	.byte 0xF, 0x3, 0x0, 0x0, 0x0, 0xFC, 0xF, 0xCC, 0xF, 0x3, 0x0
	.byte 0x0, 0x0, 0xFD, 0xF, 0xCF, 0xF, 0x3, 0x0, 0x0, 0x0
	thumb_func_end sub_808CE70

	thumb_local_start
sub_808CF34:
	push {r4-r7,lr}
	mov r4, #0
	bl sub_808D084
	lsl r0, r0, #1
	ldr r1, off_808CF78 // =byte_808CF84 
	ldrh r1, [r1,r0]
	mov r0, r1
	bl TestEventFlag // (flag: u16) -> !zf
	beq loc_808CF4C
	mov r4, #1
loc_808CF4C:
	mov r0, r4
	pop {r4-r7,pc}
	thumb_func_end sub_808CF34

	thumb_local_start
sub_808CF50:
	push {r4-r7,lr}
	bl sub_808D084
	lsl r0, r0, #1
	mov r4, r0
	ldr r1, off_808CF74 // =byte_808CF7C 
	ldrh r1, [r1,r4]
	mov r0, r1
	bl TestEventFlag // (flag: u16) -> !zf
	bne locret_808CF70
	ldr r1, off_808CF78 // =byte_808CF84 
	ldrh r1, [r1,r4]
	// bitfield
	mov r0, r1
	bl SetEventFlag
locret_808CF70:
	pop {r4-r7,pc}
	.balign 4, 0
off_808CF74:
	.word byte_808CF7C
off_808CF78:
	.word byte_808CF84
byte_808CF7C:
	.byte 0xF8, 0x9, 0xFB, 0x9, 0xFE, 0x9, 0xFD, 0xF
byte_808CF84:
	.byte 0xDA, 0x9, 0xDB, 0x9, 0xDC, 0x9, 0xC5, 0xF
	thumb_func_end sub_808CF50

	thumb_local_start
sub_808CF8C:
	push {r4,lr}
	mov r4, #0
	movflag EVENT_9D9
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	beq loc_808CFAC
	mov r1, r10
	ldr r1, [r1,#oToolkit_ChatboxPtr]
	mov r2, #0x4c 
	ldrh r0, [r5,#6]
	str r0, [r1,r2]
	ldr r0, dword_808CFB4 // =0x122 
	bl PlaySoundEffect
	mov r4, #1
loc_808CFAC:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	.balign 4, 0
dword_808CFB4:
	.word 0x122
	thumb_func_end sub_808CF8C

	thumb_local_start
sub_808CFB8:
	push {r4-r7,lr}
	ldr r5, off_808D030 // =dword_808CA44
	ldr r5, [r5]
	mov r4, #0
	bl ReadOWPlayerObjectCoords
	bl sub_808D034
	strh r2, [r5,#0x12] // (word_2000B52 - 0x2000b40)
	ldrh r3, [r5,#0x14] // (word_2000B54 - 0x2000b40)
	cmp r2, r3
	beq loc_808D020
	strh r2, [r5,#0x14] // (word_2000B54 - 0x2000b40)
	bl sub_808D098
	bne loc_808CFDA
	b loc_808D020
loc_808CFDA:
	mov r4, #1
	ldrb r0, [r5,#0x8] // (byte_2000B48 - 0x2000b40)
	ldrb r1, [r5,#0x9] // (byte_2000B49 - 0x2000b40)
	cmp r1, #0x71 
	blt loc_808D020
	cmp r1, #0x90
	bgt loc_808D020
	sub r0, #0x72 
	sub r1, #0x71 
	lsl r0, r0, #2
	mov r2, #0x20 
	add r2, r2, r0
	ldr r0, [r5,r2]
	mov r3, #1
	lsl r3, r1
	mov r1, r0
	and r1, r3
	beq loc_808D01C
	ldrh r0, [r5,#0x6] // (word_2000B46 - 0x2000b40)
	add r0, #1
	ldr r1, dword_808D02C // =0xffff 
	cmp r0, r1
	blt loc_808D00A
	mov r0, r1
loc_808D00A:
	strh r0, [r5,#0x6] // (word_2000B46 - 0x2000b40)
	ldr r0, dword_808D028 // =0x11b 
	bl PlaySoundEffect
	mov r0, #SOUND_CANT_JACK_IN
	bl PlaySoundEffect
	mov r4, #2
	b loc_808D020
loc_808D01C:
	orr r0, r3
	str r0, [r5,r2]
loc_808D020:
	strb r4, [r5,#0x4] // (byte_2000B44 - 0x2000b40)
	mov r0, r4
	pop {r4-r7,pc}
	.balign 4, 0
dword_808D028:
	.word 0x11B
dword_808D02C:
	.word 0xFFFF
off_808D030:
	.word dword_808CA44
	thumb_func_end sub_808CFB8

	thumb_local_start
sub_808D034:
	push {r4,r5,lr}
	push {r0,r1}
	bl sub_808D060
	pop {r3,r4}
	asr r3, r3, #0x10
	asr r4, r4, #0x10
	add r0, r0, r3
	add r1, r1, r4
	asr r0, r0, #5
	asr r1, r1, #5
	add r0, #0x80
	add r1, #0x80
	strb r0, [r5,#8]
	strb r1, [r5,#9]
	mov r2, r0
	mov r3, r1
	mov r4, #0x80
	lsl r4, r4, #1
	mul r2, r4
	add r2, r2, r3
	pop {r4,r5,pc}
	thumb_func_end sub_808D034

	thumb_local_start
sub_808D060:
	push {lr}
	bl sub_808D084
	ldr r3, off_808D078 // =byte_808D07C
	lsl r0, r0, #1
	add r3, r3, r0
	mov r0, #0
	ldrsb r0, [r3,r0]
	mov r1, #1
	ldrsb r1, [r3,r1]
	pop {pc}
	.balign 4, 0
off_808D078:
	.word byte_808D07C
byte_808D07C:
	.byte 0x4, 0xE, 0xC, 0x4, 0xA, 0x4, 0xFC, 0xF6
	thumb_func_end sub_808D060

	thumb_local_start
sub_808D084:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_808D094
	mov r0, #3
	b locret_808D096
loc_808D094:
	ldrb r0, [r0,#5]
locret_808D096:
	pop {pc}
	thumb_func_end sub_808D084

	thumb_local_start
sub_808D098:
	push {r4-r7,lr}
	push {r0,r1}
	mov r6, #0
	bl sub_808D084
	cmp r0, #3
	beq loc_808D0D8
	mov r4, r0
	lsl r4, r4, #1
	ldr r7, off_808D0F8 // =byte_808D0FC
	ldrb r3, [r7,r4]
	pop {r0,r1}
	cmp r0, r3
	blt loc_808D0C2
	mov r2, r4
	add r2, #1
	ldrb r3, [r7,r2]
	cmp r0, r3
	bgt loc_808D0F2
	mov r6, #1
	b loc_808D0F2
loc_808D0C2:
	cmp r4, #2
	bne loc_808D0F2
	mov r6, #0
	ldrb r3, [r7,#0x8] // (byte_808D104 - 0x808d0fc)
	cmp r0, r3
	blt loc_808D0F2
	ldrb r3, [r7,#0x9] // (byte_808D105 - 0x808d0fc)
	cmp r1, r3
	blt loc_808D0F2
	mov r6, #1
	b loc_808D0F2
loc_808D0D8:
	mov r4, r0
	lsl r4, r4, #1
	ldr r7, off_808D0F8 // =byte_808D0FC
	ldrb r3, [r7,r4]
	pop {r0,r1}
	cmp r1, r3
	bgt loc_808D0F2
	mov r2, r4
	add r2, #1
	ldrb r3, [r7,r2]
	cmp r1, r3
	blt loc_808D0F2
	mov r6, #1
loc_808D0F2:
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0
off_808D0F8:
	.word byte_808D0FC
byte_808D0FC:
	.byte 0x73, 0x8D, 0x74, 0x8F, 0x73, 0x8A, 0x8D, 0x72
byte_808D104:
	.byte 0x72
byte_808D105:
	.byte 0x84, 0x0, 0x0
	thumb_func_end sub_808D098

	thumb_local_start
sub_808D108:
	push {r4-r6,lr}
	bl sub_8142CB0
	mov r1, #0
	bl sub_8142CC8
	bl sub_8142D4C
	pop {r4-r6,pc}
	.balign 4, 0x00
	thumb_func_end sub_808D108

	thumb_local_start
sub_808D11C:
	push {r4-r7,lr}
	ldr r5, off_808D16C // =dword_808CA44
	ldr r5, [r5]
	mov r6, #0
	mov r7, #0
loc_808D126:
	mov r3, #0x20 
	mov r2, r6
	lsl r2, r2, #2
	add r3, r3, r2
	ldr r0, [r5,r3]
	mov r1, #1
	lsl r1, r7
	and r0, r1
	beq loc_808D152
	mov r0, r6
	add r0, #0x72 
	strb r0, [r5,#0x8] // (byte_2000B48 - 0x2000b40)
	mov r0, r7
	add r0, #0x71 
	strb r0, [r5,#0x9] // (byte_2000B49 - 0x2000b40)
	bl sub_8142CB0
	mov r1, #0
	bl sub_8142CC8
	bl sub_8142D4C
loc_808D152:
	add r7, #1
	cmp r7, #0x1f
	blt loc_808D126
	mov r7, #0
	add r6, #1
	cmp r6, #0x1e
	blt loc_808D126
	movflag EVENT_9D6
	bl ClearEventFlagFromImmediate // (flag: u16) -> ()
	pop {r4-r7,pc}
	.balign 4, 0
off_808D16C:
	.word dword_808CA44

ccs_808D170:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject1_Coords
	ccs_end

ccs_808D176:
	ccs_simple_scroll hword1=0x0038 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

cutscenescript_808D180:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BCA44 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=ccs_808D170
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806401C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D231
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808D229
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808D176
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808D1E9:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0xD2
	cs_call_native_with_return_value ptr1=sub_808D25C+1
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A03
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808D24C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808D229:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808D1E9

cutscenescript_808D231:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808D1E9
	cs_end_for_map_reload_maybe_8037c64

unk_808D24C:
	.word 0x04000101, 0x00000000, 0x00000000, 0x00000000
	thumb_func_end sub_808D11C

	thumb_local_start
sub_808D25C:
	push {lr}
	bl sub_8048F88
	mov r0, #0
	// <endpool> <endfile>
	pop {pc}
	thumb_func_end sub_808D25C

/*For debugging purposes, connect comment at any range!*/
