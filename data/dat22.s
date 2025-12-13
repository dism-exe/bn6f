
byte_80871D8::
	.byte 0xF5
	.byte 0x5, 0xF6, 0x5, 0xF7, 0x5, 0xF8, 0x5, 0xF9, 0x5, 0xFA, 0x5, 0xFB
	.byte 0x5, 0xFC, 0x5, 0xFD, 0x5, 0xFE, 0x5, 0xC2, 0xF, 0xC3, 0xF, 0xC4
	.byte 0xF, 0x0, 0x0
	thumb_func_start sub_80871F4
sub_80871F4::
	push {lr}
	ldr r3, off_8087280 // =off_8086D18 
	ldr r3, [r3,#0x4] // (off_8086D1C - 0x8086d18)
	ldrb r0, [r5,#5]
	strb r0, [r3,#0x1] // (byte_2000EC1 - 0x2000ec0)
	ldrb r0, [r5,#6]
	strb r0, [r3,#0x2] // (byte_2000EC2 - 0x2000ec0)
	ldrb r0, [r5,#7]
	strb r0, [r3,#0x3] // (byte_2000EC3 - 0x2000ec0)
	ldrb r0, [r5,#8]
	strb r0, [r3,#0x4] // (byte_2000EC4 - 0x2000ec0)
	ldrb r0, [r5,#9]
	strb r0, [r3,#0x5] // (byte_2000EC5 - 0x2000ec0)
	ldrb r0, [r5,#0xa]
	strb r0, [r3,#0x6] // (byte_2000EC6 - 0x2000ec0)
	ldrb r0, [r5,#0xb]
	strb r0, [r3,#0x7] // (byte_2000EC7 - 0x2000ec0)
	ldrb r0, [r5,#0xc]
	strb r0, [r3,#0x8] // (byte_2000EC8 - 0x2000ec0)
	ldrb r0, [r5,#0xd]
	strb r0, [r3,#0x9] // (byte_2000EC9 - 0x2000ec0)
	mov r1, #0x10
	mov r2, #0x5c 
	mov r4, #0
	mov r6, #0x21 
loc_8087226::
	ldr r0, [r5,r1]
	str r0, [r3,r2]
	add r1, #4
	add r2, #4
	add r4, #1
	cmp r4, r6
	blt loc_8087226
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80871F4

	thumb_func_start sub_8087238
sub_8087238::
	push {r4-r7,lr}
	ldr r3, off_8087280 // =off_8086D18 
	ldr r3, [r3,#0x4] // (off_8086D1C - 0x8086d18)
	ldrb r0, [r3,#0x1] // (byte_2000EC1 - 0x2000ec0)
	strb r0, [r5,#5]
	ldrb r0, [r3,#0x2] // (byte_2000EC2 - 0x2000ec0)
	strb r0, [r5,#6]
	ldrb r0, [r3,#0x3] // (byte_2000EC3 - 0x2000ec0)
	strb r0, [r5,#7]
	ldrb r0, [r3,#0x4] // (byte_2000EC4 - 0x2000ec0)
	strb r0, [r5,#8]
	ldrb r0, [r3,#0x5] // (byte_2000EC5 - 0x2000ec0)
	strb r0, [r5,#9]
	ldrb r0, [r3,#0x6] // (byte_2000EC6 - 0x2000ec0)
	strb r0, [r5,#0xa]
	ldrb r0, [r3,#0x7] // (byte_2000EC7 - 0x2000ec0)
	strb r0, [r5,#0xb]
	ldrb r0, [r3,#0x8] // (byte_2000EC8 - 0x2000ec0)
	strb r0, [r5,#0xc]
	ldrb r0, [r3,#0x9] // (byte_2000EC9 - 0x2000ec0)
	strb r0, [r5,#0xd]
	mov r1, #0x10
	mov r2, #0x5c 
	mov r4, #0
	mov r6, #0x21 
loc_808726A::
	ldr r0, [r3,r2]
	str r0, [r5,r1]
	add r1, #4
	add r2, #4
	add r4, #1
	cmp r4, r6
	blt loc_808726A
	bl reqBBS_setFlag_e17b0f7_8140A00
	pop {r4-r7,pc}
	.balign 4, 0
	thumb_func_end sub_8087238

off_8087280::
	.word off_8086D18
byte_8087284::
	ccs_set_camera_pos hword1=0xE0E0 hword3=0x0260 hword5=0x0000
	ccs_end

byte_808728C::
	ccs_wait hword1=0x001E
	ccs_simple_scroll hword1=0x0020 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8087299:
	ccs_simple_scroll hword1=0x000C hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

end_ccs_80872A3:
	.byte 0x00
cutscenescript_80872A4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AE4C8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8087284
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80748B4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808737D
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8087375
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_808728C
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_8087299
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8087339:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_add_bbs_message_range hword1=0x17A8 byte3=0x07
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_603
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8087398
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8087375::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8087339

cutscenescript_808737D:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8087339
	cs_end_for_map_reload_maybe_8037c64

unk_8087398:
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000
byte_80873A8::
	ccs_set_camera_pos hword1=0xFA00 hword3=0xFF80 hword5=0x0000
	ccs_end

cutscenescript_80873B0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AE5D8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80873A8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055B44
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087487
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808747F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087487
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808747F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8087438:
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
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0620 signedhword6=0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_605
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_cmd_8038346 word1=0x00050214 word5=0x00000001
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808747F::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8087438

cutscenescript_8087487:
	.word 0x3740003C, off_80348FC, 0xFF18FF27, 0x01FF0207, 0x080CFF27, 0x74381507, 0x00000808
	.byte 0x00

ccs_80874A4:
	ccs_set_camera_pos hword1=0xFAC0 hword3=0x0040 hword5=0x0000
	ccs_end

byte_80874AC::
	ccs_simple_scroll hword1=0x0018 hword3=0x0080 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_80874B6:
	ccs_simple_scroll hword1=0x0028 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

byte_80874C0::
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_80874CA:
	ccs_simple_scroll hword1=0x0038 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

cutscenescript_80874D4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AE954 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80874A4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8058764
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80875FD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_80874AC
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
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
	cs_run_cutscene_camera_script ptr1=ccs_80874B6
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x52
	cs_run_cutscene_camera_script ptr1=byte_80874C0
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80874CA
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x32
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80875C2:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x05C0 signedhword6=-0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_607
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80875FD:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80875C2
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8087608:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_808760E:
	.byte 0x00
	.byte 0x00
cutscenescript_8087610:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AF374 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8087608
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055C28
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80876E6
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
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
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80876A9:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x21
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0840 signedhword6=-0x0220 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_66A
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_80876E6::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80876A9
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_80876F0:
	ccs_set_camera_pos hword1=0x05C0 hword3=0xF520 hword5=0x0000
	ccs_end

ccs_80876F8:
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8087702:
	ccs_set_camera_pos hword1=0x05C0 hword3=0xFD00 hword5=0x0000
	ccs_end

ccs_808770A:
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

cutscenescript_8087714:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AF744 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80876F0
	cs_spawn_ow_npc_objects_from_list ptr2=unk_8050994
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087861
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80876F8
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8087702
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087861
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x81
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x82
	cs_wait_var_equal byte1=0x08 byte2=0x83
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
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
	cs_run_cutscene_camera_script ptr1=ccs_808770A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8087813:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x22
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0200 signedhword6=0x10A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_add_request_range hword1=0x1B60 byte3=0x01
	cs_add_request_range hword1=0x1B61 byte3=0x01
	cs_add_request_range hword1=0x1B62 byte3=0x01
	cs_add_request_range hword1=0x1B63 byte3=0x01
	cs_add_request_range hword1=0x1B79 byte3=0x01
	cs_add_mail_range hword1=0x1CE2 byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8087861:
	.word 0x1540003C, cutscenescript_8087813
	.byte 0x00
	.byte 0x00
	.byte 0x00

ccs_808786C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8087872:
	.byte 0x00
	.byte 0x00
byte_8087874::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AFB84 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808786C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8051C18
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087908
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80878C9::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_67D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_683
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0400 signedhword6=0x0400 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_60D
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8087908:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80878C9

ccs_8087910:
	ccs_set_camera_pos hword1=0x05E0 hword3=0xFC80 hword5=0x0000
	ccs_end

cutscenescript_8087918:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AFCD8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8087910
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8050B14
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808799D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8087961:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x04E0 signedhword6=-0x0380 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_60F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=end_cutscenescript_80879A8
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808799D:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8087961
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_80879A8:
	.word 0x04000290, 0x00000000, 0x00000000, 0x00000000

ccs_80879B8:
	ccs_set_camera_pos hword1=0x01C0 hword3=0xF180 hword5=0x0000
	ccs_end

ccs_80879C0:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0000 hword7=0x0080
	ccs_end

ccs_80879CA:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_80879D0:
	ccs_set_camera_pos hword1=0xFEA0 hword3=0x0080 hword5=0x0000
	ccs_end

ccs_80879D8:
	ccs_simple_scroll hword1=0x00A0 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80879E2:
	ccs_simple_scroll hword1=0x00CC hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_80879EC:
	ccs_set_camera_pos hword1=0xF4A0 hword3=0x0080 hword5=0x0000
	ccs_end

ccs_80879F4:
	ccs_set_camera_pos hword1=0xFEA0 hword3=0x0080 hword5=0x0000
	ccs_end

byte_80879FC::
	ccs_simple_scroll hword1=0x00BA hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8087A06:
	.byte 0x00
	.byte 0x00
cutscenescript_8087A08:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AFF2C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80879B8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8074A44
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087ECE
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x14
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C00
	cs_pause byte1=0xFF byte2=0x0E
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C01
	cs_pause byte1=0xFF byte2=0x16
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C02
	cs_pause byte1=0xFF byte2=0x12
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C03
	cs_pause byte1=0xFF byte2=0x10
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C04
	cs_pause byte1=0xFF byte2=0x14
	cs_spawn_ow_map_object nybble1=0x05 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C05
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_play_sound hword1=0x00BC
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x40
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C06
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C07
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C08
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C09
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C0A
	cs_spawn_ow_map_object nybble1=0x05 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C0B
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087ECE
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80879C0
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x92
	cs_run_cutscene_camera_script ptr1=ccs_80879CA
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8087ED6
	cs_long_pause byte1=0xFF hword2=0x012C
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x3C
	cs_free_all_ow_map_objects
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8087F47
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8087F56
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8087F65
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00BC
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x40
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00BC
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x40
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x05
	cs_play_sound hword1=0x00BC
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x40
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x20
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8074A64
	cs_set_event_flag byte1=0xFF event16_2=EVENT_28
	cs_set_event_flag_range byte1=0x06 event16_2=EVENT_29
	cs_set_event_flag byte1=0xFF event16_2=EVENT_681
	cs_call_native_with_return_value ptr1=sub_80353DA+1
	cs_load_gfx_anim ptr1=byte_8071B00
	cs_run_cutscene_camera_script ptr1=ccs_80879D0
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x00391C12
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003A1C13
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003C1C1A
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003C1C1B
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003C1C1C
	cs_spawn_ow_map_object nybble1=0x05 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003C1C1D
	cs_spawn_ow_map_object nybble1=0x06 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C1E
	cs_spawn_ow_map_object nybble1=0x07 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C1F
	cs_spawn_ow_map_object nybble1=0x08 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C20
	cs_spawn_ow_map_object nybble1=0x09 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C21
	cs_kill_cutscene_process byte1=0x20
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087ECE
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x21
	cs_wait_var_equal byte1=0x08 byte2=0x22
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8087F47
	cs_pause byte1=0xFF byte2=0x1E
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x00391C14
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003A1C15
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x23
	cs_wait_var_equal byte1=0x08 byte2=0x24
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8087F56
	cs_set_var byte1=0x08 byte2=0x25
	cs_wait_var_equal byte1=0x08 byte2=0x26
	cs_pause byte1=0xFF byte2=0x5A
	cs_free_ow_map_object nybble1=0x02
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003C1C22
	cs_pause byte1=0xFF byte2=0x0A
	cs_free_ow_map_object nybble1=0x03
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003C1C23
	cs_pause byte1=0xFF byte2=0x0E
	cs_free_ow_map_object nybble1=0x04
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003C1C24
	cs_pause byte1=0xFF byte2=0x0A
	cs_free_ow_map_object nybble1=0x05
	cs_spawn_ow_map_object nybble1=0x05 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003C1C25
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x24 ptr2=byte_8087F74
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x00391C16
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x02
	cs_free_ow_map_object nybble1=0x03
	cs_free_ow_map_object nybble1=0x04
	cs_free_ow_map_object nybble1=0x05
	cs_set_var byte1=0x08 byte2=0x27
	cs_kill_cutscene_process byte1=0x20
	cs_kill_cutscene_process byte1=0x24
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087ECE
	cs_pause byte1=0xFF byte2=0x1E
	cs_free_all_ow_map_objects
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003A1C19
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C2E
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C2F
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C30
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C31
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x28
	cs_wait_var_equal byte1=0x08 byte2=0x29
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80879D8
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80879E2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x2A
	cs_wait_var_equal byte1=0x08 byte2=0x2B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80879EC
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x2C
	cs_wait_var_equal byte1=0x08 byte2=0x2D
	cs_pause byte1=0xFF byte2=0x1E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_var_equal byte1=0x08 byte2=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8087F47
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80879F4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x2E
	cs_wait_var_equal byte1=0x08 byte2=0x2F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x25
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x30
	cs_wait_var_equal byte1=0x08 byte2=0x31
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_kill_cutscene_process byte1=0x20
	cs_play_sound hword1=0x015F
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x32
	cs_run_cutscene_camera_script ptr1=ccs_80879EC
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8087ECE
	cs_pause byte1=0xFF byte2=0x78
	cs_run_cutscene_camera_script ptr1=byte_80879FC
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x78

cutscenescript_8087EA0:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_set_event_flag byte1=0xFF event16_2=EVENT_28
	cs_set_event_flag_range byte1=0x06 event16_2=EVENT_29
	cs_set_event_flag byte1=0xFF event16_2=EVENT_681
	cs_set_event_flag byte1=0xFF event16_2=EVENT_611
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8087F80
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8087ECE:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8087EA0

cutscenescript_8087ED6:
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C0C
	cs_free_ow_map_object nybble1=0x01
	cs_pause byte1=0xFF byte2=0x0C
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C0D
	cs_free_ow_map_object nybble1=0x02
	cs_pause byte1=0xFF byte2=0x0E
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C0E
	cs_free_ow_map_object nybble1=0x03
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C0F
	cs_free_ow_map_object nybble1=0x04
	cs_pause byte1=0xFF byte2=0x12
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C10
	cs_free_ow_map_object nybble1=0x05
	cs_pause byte1=0xFF byte2=0x0F
	cs_spawn_ow_map_object nybble1=0x05 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003B1C11
	cs_free_ow_map_object nybble1=0x00
	cs_pause byte1=0xFF byte2=0x0B
	cs_jump destination1=cutscenescript_8087ED6

cutscenescript_8087F47:
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8087F47

byte_8087F56::
	cs_do_camera_shake byte1=0x02 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E4
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_8087F56

cutscenescript_8087F65:
	cs_do_camera_shake byte1=0x03 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E4
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_8087F56

byte_8087F74::
	cs_play_sound hword1=0x0198
	cs_pause byte1=0xFF byte2=0x10
	cs_jump destination1=byte_8087F74
	cs_end_for_map_reload_maybe_8037c64

unk_8087F80:
	.word 0x04000001, 0x00000000, 0x00000000, 0x00000000
ccs_8087F90:
	ccs_set_camera_pos hword1=0x05E0 hword3=0xFC80 hword5=0x0000
	ccs_end

cutscenescript_8087F98:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B0614 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8087F90
	cs_spawn_ow_npc_objects_from_list ptr2=unk_8050B60
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x000C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088043
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
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8087FF0:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_28
	cs_set_event_flag_range byte1=0x06 event16_2=EVENT_29
	cs_set_event_flag byte1=0xFF event16_2=EVENT_681
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_67D
	cs_write_gamestate_byte byte1=0x07 byte2=0x21
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x04E0 signedhword6=-0x0380 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_613
	cs_cmd_8038346 word1=0x000A0214 word5=0x00000001
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8088043:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8087FF0

end_cutscene_808804b:
	.byte 0x00

ccs_808804C:
	ccs_simple_scroll hword1=0x0078 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x00DC hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_simple_scroll hword1=0x005A hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x00C8 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x00DC hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x005A hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

end_ccs_8088083:
	.byte 0x00
cutscenescript_8088084:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87B0750 + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_80880E6
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808804C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x5A
	cs_stop_cutscene_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_80880C0:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x23
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_set_event_flag byte1=0xFF event16_2=EVENT_615
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80880E6:
	.word 0x1540003C, cutscenescript_80880C0
	.byte 0x00
	.byte 0x00

ccs_80880F0:
	ccs_set_camera_pos hword1=0xFD80 hword3=0x0120 hword5=0x0000
	ccs_end

byte_80880F8::
	ccs_set_camera_pos hword1=0xFB60 hword3=0x00C0 hword5=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8088109:
	ccs_simple_scroll hword1=0x0088 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8088113:
	.byte 0x00
cutscenescript_8088114:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B0820 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80880F0
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8074CD0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003A1C32
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C33
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C34
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C35
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C36
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808822B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_play_sound hword1=0x015F
	cs_play_sound hword1=0x0100
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088233
	cs_pause byte1=0xFF byte2=0x18
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=byte_80880F8
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x06
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808822B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8088109
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808820A:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_617
	cs_set_event_flag byte1=0xFF event16_2=EVENT_67D
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_8088250
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808822B::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808820A

cutscenescript_8088233:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808820A
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_8088250:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
ccs_8088260:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8088266:
	.byte 0x00
	.byte 0x00
byte_8088268::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B0A9C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8088260
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8051C68
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088309
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
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
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80882C0:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_67D
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0400 signedhword6=0x0400 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_619
	cs_set_event_flag byte1=0xFF event16_2=EVENT_741
	cs_set_event_flag byte1=0xFF event16_2=EVENT_740
	cs_set_event_flag_range byte1=0x06 event16_2=EVENT_7F0
	cs_init_scenario_effect byte1=0x00
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8088309:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80882C0
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8088312:
	.byte 0x00
	.byte 0x00

ccs_8088314:
	ccs_set_camera_pos hword1=0x1160 hword3=0x06C0 hword5=0x0000
	ccs_end

ccs_808831C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8088322:
	.byte 0x00
	.byte 0x00
cutscenescript_8088324:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B11D0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8088314
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8074DC8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003A1C37
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C38
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C39
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C3A
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C3B
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80884E6
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_free_ow_map_object nybble1=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C3D
	cs_pause byte1=0xFF byte2=0x0A
	cs_free_ow_map_object nybble1=0x02
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C3E
	cs_pause byte1=0xFF byte2=0x0E
	cs_free_ow_map_object nybble1=0x03
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C3F
	cs_pause byte1=0xFF byte2=0x0A
	cs_free_ow_map_object nybble1=0x04
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x013C1C40
	cs_pause byte1=0xFF byte2=0x78
	cs_play_sound hword1=0x0196
	cs_free_ow_map_object nybble1=0x01
	cs_free_ow_map_object nybble1=0x02
	cs_free_ow_map_object nybble1=0x03
	cs_free_ow_map_object nybble1=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_play_sound hword1=0x019A
	cs_pause byte1=0xFF byte2=0x10
	cs_play_sound hword1=0x019A
	cs_pause byte1=0xFF byte2=0x10
	cs_play_sound hword1=0x019A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003A1C3C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x80
	cs_spawn_cutscene_process byte1=0x24 ptr2=cutscenescript_80884EE
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x003A1C41
	cs_pause byte1=0xFF byte2=0x78
	cs_play_sound hword1=0x0100
	cs_kill_cutscene_process byte1=0x24
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x40
	cs_wait_screen_fade
	cs_free_ow_map_object nybble1=0x00
	cs_run_cutscene_camera_script ptr1=ccs_808831C
	cs_set_var byte1=0x08 byte2=0x03
	cs_terminate_gfx_anim byte1=0x0C
	cs_terminate_gfx_anim byte1=0x0D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_28
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_29
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2B
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2C
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2E
	cs_cutscene_end_secondary_continuous_map_script
	cs_pause byte1=0xFF byte2=0xB4
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80884E6
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80884A9:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x10
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_28
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_29
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2B
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2C
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_2E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_681
	cs_set_event_flag byte1=0xFF event16_2=EVENT_61B
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=end_cutscenescript_80884FC
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80884E6:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80884A9

cutscenescript_80884EE:
	cs_play_sound hword1=0x016C
	cs_pause byte1=0xFF byte2=0x12
	cs_jump destination1=cutscenescript_80884EE
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_80884FC:
	.word 0x04000088, 0x00000000, 0x00000000, 0x00000000
ccs_808850C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8088512:
	.byte 0x00
	.byte 0x00
byte_8088514::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B1720 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808850C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806CB38
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80885A5
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
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8088569:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x24
	cs_write_gamestate_byte byte1=0x07 byte2=0x22
	cs_set_event_flag byte1=0xFF event16_2=EVENT_61D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_683
	cs_set_event_flag byte1=0xFF event16_2=EVENT_172A
	cs_flag_cmd_8038466 byte1=0x00
	cs_add_mail_range hword1=0x1CA9 byte3=0x01
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1D29
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1DA9
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_enter_map_screen_fade byte1=0x00 byte2=0x10
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=byte_80885B0
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_80885A5::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8088569
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_80885B0::
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000

ccs_80885C0:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_80885C6:
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

cutscenescript_80885D0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B1B8C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80885C0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8077528
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808863D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80885C6
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80

cutscenescript_808861D:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_61F
	cs_give_item byte2=0x0A byte3=0x01
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_741
	cs_end_scenario_effect
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0044
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808863D:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808861D
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8088648:
	ccs_set_camera_pos hword1=0xED20 hword3=0x0400 hword5=0x0000
	ccs_end

ccs_8088650:
	ccs_simple_scroll hword1=0x0030 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_808865A:
	.byte 0x00
	.byte 0x00

cutscenescript_808865C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B1EA8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8088648
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80775B8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80886EA
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8088650
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80886B3:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x12E0 signedhword6=0x0280 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_621
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_80886EA::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80886B3
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_80886F4:
	ccs_set_camera_pos hword1=0xFFA0 hword3=0xFF60 hword5=0x0000
	ccs_end

ccs_80886FC:
	ccs_simple_scroll hword1=0x0018 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

end_ccs_8088706:
	.byte 0x00
	.byte 0x00
byte_8088708::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B1F6C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80886F4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806CB78
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8088887
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
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_80888C3
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_kill_cutscene_process byte1=0x20
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0x40
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_808888F
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8088887
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_80888CE
	cs_wait_var_equal byte1=0x08 byte2=0x82
	cs_kill_cutscene_process byte1=0x20
	cs_wait_var_equal byte1=0x08 byte2=0x90
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_80888CE
	cs_wait_var_equal byte1=0x08 byte2=0x92
	cs_kill_cutscene_process byte1=0x20
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80888A9
	cs_play_sound hword1=0x013F
	cs_play_sound hword1=0x0100
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_var byte1=0x08 byte2=0x0A
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8088887
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80886FC
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x21
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808885D:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_623
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_172A
	cs_flag_cmd_8038466 byte1=0x01
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=unk_80888E0
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8088887::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808885D

byte_808888F::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808885D

cutscenescript_80888A9:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808885D

byte_80888C3::
	cs_play_sound hword1=0x019A
	cs_pause byte1=0xFF byte2=0x10
	cs_jump destination1=byte_80888C3

cutscenescript_80888CE:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_80888CE
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_80888E0:
	.word 0x04000201, 0x00000000, 0x00000000, 0x00000000
byte_80888F0::
	ccs_set_camera_pos hword1=0x0100 hword3=0x0000 hword5=0x0000
	ccs_end

ccs_80888F8:
	ccs_set_camera_pos hword1=0xFF80 hword3=0x0100 hword5=0x0000
	ccs_end

ccs_8088900:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8088906:
	.byte 0x00
	.byte 0x00
cutscenescript_8088908:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B25A4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80888F0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8051CAC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_80889FD
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80889F5
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x02
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_80888F8
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80889F5
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x08
	cs_run_cutscene_camera_script ptr1=ccs_8088900
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80889F5
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80

cutscenescript_80889CB:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_625
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E0
	cs_add_mail_range hword1=0x1CA3 byte3=0x01
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1D23
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1DA3
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x003E
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80889F5:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80889CB

cutscenescript_80889FD:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_80889CB
	cs_end_for_map_reload_maybe_8037c64

ccs_8088A18:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8088A1E:
	ccs_simple_scroll hword1=0x0018 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

cutscenescript_8088A28:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B2A98 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8088A18
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8051D24
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088AC1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x60
	cs_run_cutscene_camera_script ptr1=ccs_8088A1E
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8088A7C:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x25
	cs_write_gamestate_byte byte1=0x07 byte2=0x23
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0080 signedhword6=0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_627
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_683
	cs_add_mail_range hword1=0x1CE3 byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8088AC1:
	.word 0x1540003C, cutscenescript_8088A7C
	.byte 0x00
	.byte 0x00
	.byte 0x00

ccs_8088ACC:
	ccs_set_camera_pos hword1=0x01C0 hword3=0xED60 hword5=0x0100
	ccs_end

cutscenescript_8088AD4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B2CEC + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8088ACC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8074DFC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088B23

byte_8088B04::
	.word 0x3A1EFF02, 0x800400FF

cutscenescript_8088B0C:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_629
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0045
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8088B23:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8088B0C
	cs_end_for_map_reload_maybe_8037c64

ccs_8088B2C:
	ccs_set_camera_pos hword1=0x01C0 hword3=0xED60 hword5=0x0100
	ccs_end

ccs_8088B34:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

end_ccs_8088B3E:
	.byte 0x00
	.byte 0x00
cutscenescript_8088B40:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B2FD8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8088B2C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8074E34
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088C60
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8088C82
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000000
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
	cs_decomp_text_archive ptr1=CompText87B2FD8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088C60
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8088B34
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088C68
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade

byte_8088C22::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_600
	cs_write_gamestate_byte byte1=0x06 byte2=0x30
	cs_write_gamestate_byte byte1=0x07 byte2=0x30
	cs_set_event_flag byte1=0xFF event16_2=EVENT_801
	cs_set_event_flag byte1=0xFF event16_2=EVENT_683
	cs_add_bbs_message_range hword1=0x17AF byte3=0x07
	cs_add_bbs_message_range hword1=0x17E0 byte3=0x08
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=unk_8088C90
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8088C60:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8088C22

cutscenescript_8088C68:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_jump destination1=byte_8088C22

cutscenescript_8088C82:
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=cutscenescript_8088C82
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_8088C90:
	.word 0x04000402, 0x00000000, 0x00000000, 0x00000000
/*For debugging purposes, connect comment at any range!*/
