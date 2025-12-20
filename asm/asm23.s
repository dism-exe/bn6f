
	thumb_local_start
sub_8088CA0:
  push {lr}
	bl sub_8005D88
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_8088CA0

end_func_8088CAC::
	ccs_set_camera_pos hword1=0x0100 hword3=0x0240 hword5=0x0000
	ccs_end

cutscenescript_8088CB4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B330C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=end_func_8088CAC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8059110
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088D2F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8088CEC:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_give_item byte2=0x60 byte3=0x01
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_set_event_flag byte1=0xFF event16_2=EVENT_682
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0040 signedhword6=0x0240 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_66C
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8088D2F:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8088CEC
	cs_end_for_map_reload_maybe_8037c64

ccs_8088D38:
	ccs_set_camera_pos hword1=0xF9C0 hword3=0xFF40 hword5=0x0000
	ccs_end

cutscenescript_8088D40:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B36EC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8088D38
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806ECF4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8088DAC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8088D73:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_change_navi_maybe_80382fe byte1=0x06
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=-0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_66E
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8088DAC:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8088D73

ccs_8088DB4:
	ccs_set_camera_pos hword1=0x0520 hword3=0x0520 hword5=0x0000
	ccs_end

ccs_8088DBC:
	ccs_simple_scroll hword1=0x0018 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8088DC6:
	.byte 0x00
	.byte 0x00
cutscenescript_8088DC8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B3A04 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8088DB4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806D15C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088EDD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8088EE5
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x02
	cs_wait_screen_fade
	cs_kill_cutscene_process byte1=0x20
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_init_eStruct200a6a0 ptr1=sub_804CBA4+1 ptr5=sub_804CBC0+1 word9=0x00000003
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088EDD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8088DBC
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8088E72:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_kill_cutscene_process byte1=0x20
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_set_event_flag byte1=0xFF event16_2=EVENT_680
	cs_run_eStruct200a6a0_callback
	cs_init_eStruct200a6a0 ptr1=sub_804CBA4+1 ptr5=sub_804CBC0+1 word9=0x00000003
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0460 signedhword6=0x0520 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_670
	cs_set_event_flag byte1=0xFF event16_2=EVENT_672
	cs_set_event_flag byte1=0xFF event16_2=EVENT_674
	cs_set_event_flag byte1=0xFF event16_2=EVENT_676
	cs_init_minigame_effect byte1=0x00
	cs_call_native_with_return_value ptr1=sub_814187C+1
	cs_call_native_with_return_value ptr1=sub_8142072+1
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8088EDD:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8088E72

cutscenescript_8088EE5:
	cs_play_sound hword1=0x00E3
	cs_do_camera_shake byte1=0x02 byte2=0x04 byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x01 byte2=0x04 byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A

cutscenescript_8088EF6:
	.word 0x0020005A, 0x0200E34D, 0xF61520FF, 0x0008088E
	.byte 0x00
	.byte 0x00
ccs_8088F08:
	ccs_set_camera_pos hword1=0x0520 hword3=0x0520 hword5=0x0000
	ccs_end

ccs_8088F10:
	ccs_simple_scroll hword1=0x0018 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8088F1A:
	.byte 0x00
	.byte 0x00
cutscenescript_8088F1C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B3E70 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8088F08
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806D1CC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088FD4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_sound hword1=0x015C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x02
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_680
	cs_run_eStruct200a6a0_callback
	cs_load_map_gfx_anims_bg_anim
	cs_end_minigame_effect
	cs_pause byte1=0xFF byte2=0x5A
	cs_decomp_text_archive ptr1=CompText87B3E70 + COMPRESSED_PTR_FLAG
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8088FD4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8088F10
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04

byte_8088FA6:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_680
	cs_set_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_run_eStruct200a6a0_callback
	cs_end_minigame_effect
	cs_set_event_flag byte1=0xFF event16_2=EVENT_67A
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_8088FDC
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8088FD4:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8088FA6

unk_8088FDC:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
ccs_8088FEC:
	ccs_set_camera_pos hword1=0x0100 hword3=0x0240 hword5=0x0000
	ccs_end

cutscenescript_8088FF4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B41AC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8088FEC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8059158
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8089058
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80

byte_8089024:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_609
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_682
	cs_set_event_flag byte1=0xFF event16_2=EVENT_683
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_11F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E7
	cs_cmd_8038346 word1=0x00130214 word5=0x00000003
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x003F
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

dword_8089058:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8089024

byte_8089060:
	ccs_set_camera_pos hword1=0x01A0 hword3=0xECA0 hword5=0x0100
	ccs_end

byte_8089068:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8089072:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

cutscenescript_808907C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B45A4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8089060
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8074E78
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808910F
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_8089068
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8089072
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80890DA:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_60B
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8089118
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808910F:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80890DA
	cs_end_for_map_reload_maybe_8037c64

unk_8089118:
	.word 0x04000201, 0x00000000, 0x00000000, 0x00000000

dword_8089128:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_call_native_with_return_value ptr1=dispatch_8089140+1

cutscenescript_8089130:
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_747
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8089130
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
dispatch_8089140:
	push {r4-r7, lr}
	ldr r0, =off_8089154
	ldrb r1, [r5, #0]
	ldr r0, [r0, r1]
	mov lr, pc
	bx r0
	tst r0, r0
	pop {r4-r7, pc}
	.pool
	thumb_func_end dispatch_8089140

off_8089154: 
  .word sub_8089160+1
	.word sub_808917C+1
	.word sub_8089234+1

	thumb_local_start
sub_8089160:
	push {r4-r7,lr}
	mov r0, #0
	bl camera_writeUnk03_14_80301b2
	mov r0, #0
	bl doPETEffect_8033fc0
	mov r0, #0
	bl sub_8089244
	mov r0, #4
	strb r0, [r5]
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089160

	thumb_local_start
sub_808917C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#4]
	ldrh r0, [r7,#2]
	mov r1, #0x20
	lsl r1, r1, #4
	tst r1, r0
	bne loc_80891F4
	ldrh r0, [r7]
	ldr r3, off_8089204 // =byte_8089208
	mov r4, #0
loc_8089192:
	ldrb r2, [r3,r4]
	mov r1, r2
	and r1, r0
	cmp r1, r2
	beq loc_80891A4
	add r4, #1
	cmp r4, #8
	blt loc_8089192
	b loc_80891EE
loc_80891A4:
	mov r7, #0
	mov r1, #2
	tst r0, r1
	beq loc_80891AE
	mov r7, #0x10
loc_80891AE:
	bl GetCameraXYZ
	sub sp, sp, #0xc
	ldr r3, off_8089210 // =off_8089214
	lsl r6, r4, #1
	add r3, r3, r6
	add r3, r3, r7
	mov r6, #0
	ldrsb r6, [r3,r6]
	lsl r6, r6, #0x10
	mov r7, #1
	ldrsb r7, [r3,r7]
	lsl r7, r7, #0x10
	add r0, r0, r6
	add r1, r1, r7
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, sp
	bl sub_80303FC
	bne loc_80891E6
	ldr r0, [sp]
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	bl SetCameraXYZ
	b loc_80891EC
loc_80891E6:
	mov r0, r4
	bl sub_8089370
loc_80891EC:
	add sp, sp, #0xc
loc_80891EE:
	bl sub_8089280
	b loc_80891FE
loc_80891F4:
	mov r0, #SOUND_EXIT_SUBMENU
	bl PlaySoundEffect
	mov r0, #8
	strb r0, [r5]
loc_80891FE:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_8089204:
	.word byte_8089208
byte_8089208: 
  .byte 0x50, 0x90, 0xA0, 0x60, 0x40, 0x10, 0x80, 0x20
off_8089210:
	.word off_8089214
off_8089214: 
  .word GeneralLCDStatus_STAT_LYC_
	.byte 0xFC, 0x0, 0x0, 0xFC, 0x4, 0xFC, 0x2, 0x2, 0xFC, 0x4, 0xFE, 0xFE
	.byte 0x8, 0x0, 0x0, 0x8, 0xF8, 0x0, 0x0, 0xF8, 0x8, 0xF8, 0x4, 0x4
	.byte 0xF8, 0x8, 0xFC, 0xFC
	thumb_func_end sub_808917C

	thumb_local_start
sub_8089234:
	push {r4-r7,lr}
	bl sub_80301BC
	mov r0, #1
	bl doPETEffect_8033fc0
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8089234

	thumb_local_start
sub_8089244:
	push {r4-r7,lr}
	ldr r1, off_8089278 // =byte_87DE44C
	lsl r0, r0, #5
	add r0, r0, r1
	ldr r1, off_808927C // =byte_30016F0
	mov r2, #0x20
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	// initRefs
	ldr r0, off_8089264 // =byte_8089268
	bl decompAndCopyData // (u32 *initRefs) -> void
	mov r0, #SOUND_MENU_CUR_MOVE
	bl PlaySoundEffect
	pop {r4-r7,pc}
	.balign 4, 0
off_8089264: 
  .word byte_8089268
byte_8089268: 
  .word unk_87DDD4C
	.word 0x6014800
	.word 0x700
	.word NULL
off_8089278:
	.word byte_87DE44C
off_808927C:
	.word byte_30016F0
	thumb_func_end sub_8089244

	thumb_local_start
sub_8089280:
	push {r4-r7,lr}
	ldr r0, off_80892A0 // =byte_80892A4
	mov r1, r10
	ldr r1, [r1,#oToolkit_CurFramePtr]
	ldrh r1, [r1]
	mov r2, #0x1f
	and r1, r2
	cmp r1, #8
	bge loc_8089294
	ldr r0, off_80892F0 // =byte_80892F4
loc_8089294:
	bl sub_8001158 // () -> void
	ldr r0, off_8089340 // =byte_8089344
	bl sub_8001158 // () -> void
	pop {r4-r7,pc}
	.balign 4, 0
off_80892A0: 
  .word byte_80892A4
byte_80892A4: 
  .byte 0x8, 0x0, 0x8, 0x0, 0x47, 0xD2, 0x0, 0x0, 0x4, 0x0, 0x74, 0x0, 0x40
	.byte 0xD2, 0x0, 0x0, 0x8, 0x0, 0xE0, 0x0, 0x41, 0xD2, 0x0, 0x0, 0x4D, 0x0
	.byte 0xE4, 0x0, 0x42, 0xD2, 0x0, 0x0, 0x4D, 0x0, 0x4, 0x0, 0x46, 0xD2, 0x0
	.byte 0x0, 0x90, 0x0, 0xE0, 0x0, 0x43, 0xD2, 0x0, 0x0, 0x94, 0x0, 0x74, 0x0
	.byte 0x44, 0xD2, 0x0, 0x0, 0x90, 0x0, 0x8, 0x0, 0x45, 0xD2, 0x0, 0x0, 0x48
	.byte 0x0, 0x70, 0x40, 0x54, 0xD2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_80892F0: 
  .word byte_80892F4
byte_80892F4: 
  .byte 0x8, 0x0, 0x8, 0x0, 0x4F, 0xD2, 0x0, 0x0, 0x4, 0x0, 0x74, 0x0, 0x48
	.byte 0xD2, 0x0, 0x0, 0x8, 0x0, 0xE0, 0x0, 0x49, 0xD2, 0x0, 0x0, 0x4D, 0x0
	.byte 0xE4, 0x0, 0x4A, 0xD2, 0x0, 0x0, 0x4D, 0x0, 0x4, 0x0, 0x4E, 0xD2, 0x0
	.byte 0x0, 0x90, 0x0, 0xE0, 0x0, 0x4B, 0xD2, 0x0, 0x0, 0x94, 0x0, 0x74, 0x0
	.byte 0x4C, 0xD2, 0x0, 0x0, 0x90, 0x0, 0x8, 0x0, 0x4D, 0xD2, 0x0, 0x0, 0x48
	.byte 0x0, 0x70, 0x40, 0x54, 0xD2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8089340: 
  .word byte_8089344
byte_8089344: 
  .byte 0x78, 0x40, 0x14, 0x80, 0x58, 0xD2, 0x0, 0x0, 0x78, 0x40
	.byte 0x34, 0x80, 0x60, 0xD2, 0x0, 0x0, 0x78, 0x40, 0x54, 0x80
	.byte 0x68, 0xD2, 0x0, 0x0, 0x88, 0x40, 0x14, 0x40, 0x70, 0xD2
	.byte 0x0, 0x0, 0x88, 0x40, 0x34, 0x40, 0x74, 0xD2, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8089280

	thumb_local_start
sub_8089370:
	push {r4-r7,lr}
	ldr r1, off_8089388 // =byte_808938C
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1,#4]
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r4-r7,pc}
	.balign 4, 0
off_8089388: 
  .word byte_808938C
byte_808938C: 
  .byte 0x4, 0x0, 0xDC, 0x40, 0x50, 0xD2, 0x0, 0x0, 0x8C, 0x0, 0xDC
	.byte 0x40, 0x50, 0xD2, 0x0, 0x0, 0x8C, 0x0, 0x4, 0x40, 0x50, 0xD2
	.byte 0x0, 0x0, 0x4, 0x0, 0x4, 0x40, 0x50, 0xD2, 0x0, 0x0, 0x0
	.byte 0x0, 0x70, 0x40, 0x50, 0xD2, 0x0, 0x0, 0x49, 0x0, 0xE0, 0x40
	.byte 0x50, 0xD2, 0x0, 0x0, 0x90, 0x0, 0x70, 0x40, 0x50, 0xD2, 0x0
	.byte 0x0, 0x49, 0x0, 0x0, 0x40, 0x50, 0xD2, 0x0, 0x0
byte_80893CC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_call_native_with_return_value ptr1=sub_80893F4+1

byte_80893DC:
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade

cutscenescript_80893E4:
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_746
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80893E4
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_80893F4:
	push {r4-r7, lr}
	mov r0, #0x20
	bl FreeAllObjectsOfSpecifiedTypes
	bl mapObject_spawnMapObjectsForMap
	mov r3, r10
	ldr r3, [r3, #0x3c]
	ldrh r0, [r3, #4]
	ldr r1, =0x290
	cmp r0, r1
	bne loc_8089434
	ldrb r0, [r3, #6]
	cmp r0, #0x23
	bne loc_8089434
	mov r0, #6
	mov r1, #0x16
	bl TestEventFlagFromImmediate
	bne loc_8089424
	mov r0, #0
	bl sub_8035450
	b loc_8089434
loc_8089424:
	mov r0, #6
	mov r1, #0x1a
	bl TestEventFlagFromImmediate
	bne loc_8089434
	mov r0, #1
	bl sub_8035450
loc_8089434:
	mov r0, #7
	mov r1, #0x40
	bl SetEventFlagFromImmediate
	bl sub_8142510
	mov r0, #0
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_80893F4

byte_8089448:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScript87DE48C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_pause byte1=0xFF byte2=0x01
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_744
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_745
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8089480: 
  .byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x0, 0x8
byte_808948A: 
  .byte 0x1C, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_8001800
byte_8089494: 
  .byte 0x0, 0xC0, 0x18, 0xC0, 0xF8, 0x0, 0x0, 0x8
byte_808949C: 
  .byte 0x0, 0xC0, 0xFC, 0x60, 0xE6, 0x0, 0x0, 0x8
byte_80894A4: 
  .byte 0x0, 0x40, 0xF, 0x80, 0x6, 0x0, 0x0, 0x8
byte_80894AC: 
  .byte 0x0, 0xC0, 0xF8, 0xE0, 0x15, 0x80, 0x3, 0x8
byte_80894B4: 
  .byte 0x0, 0x0, 0xEF, 0x80, 0x16, 0x0, 0x0, 0x8
byte_80894BC: 
  .byte 0x0, 0x80, 0xED, 0xC0, 0x2, 0x80, 0xFF, 0x8
byte_80894C4: 
  .byte 0x0, 0x60, 0xD, 0x20, 0xE2, 0xE0, 0xFE, 0x8
byte_80894CC: 
  .byte 0x0, 0xE0, 0x1, 0x80, 0x0, 0xE0, 0xFE, 0x8
byte_80894D4: 
  .byte 0x90, 0x0, 0x0, 0x1, 0x0, 0x0, 0xA8, 0xFE, 0x0, 0x0, 0xCC, 0xFF
	.byte 0x0, 0x0, 0x0, 0x0, 0x90, 0x1, 0x0, 0x1, 0x0, 0x0, 0xAC, 0xFE
	.byte 0x0, 0x0, 0xF4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x90, 0x2, 0x0, 0x7
	.byte 0x0, 0x0, 0xFA, 0xFF, 0x0, 0x0, 0x66, 0x1, 0x0, 0x0, 0xE0, 0xFF
	.byte 0x91, 0x0, 0x0, 0x3, 0x0, 0x0, 0xCC, 0x0, 0x0, 0x0, 0xC2, 0xFE
	.byte 0x0, 0x0, 0x40, 0x0, 0x91, 0x1, 0x0, 0x1, 0x0, 0x0, 0x8, 0xFF
	.byte 0x0, 0x0, 0xC8, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x91, 0x2, 0x0, 0x5
	.byte 0x0, 0x0, 0xC0, 0x1, 0x0, 0x0, 0xE, 0xFF, 0x0, 0x0, 0x0, 0x0
	.byte 0x93, 0x0, 0x0, 0x3, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x1E, 0x0
	.byte 0x0, 0x0, 0x40, 0x0, 0x93, 0x1, 0x0, 0x7, 0x0, 0x0, 0xE, 0x0
	.byte 0x0, 0x0, 0xF4, 0x1, 0x0, 0x0, 0x0, 0x0
byte_8089554:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScript87DE48C
	cs_pause byte1=0xFF byte2=0x01
	cs_call_native_with_return_value ptr1=sub_80895A8+1
	cs_jump_if_var_equal byte1=0x08 byte2=0x00 destination3=cutscenescript_808956E
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808956E:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_cur_navi_hp_to_full
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_set_event_flag byte1=0xFF event16_2=EVENT_744
	cs_set_event_flag byte1=0xFF event16_2=EVENT_740
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x80 byte2=0x00 ptr3=NULL
	cs_chatbox_cmd_8037a70
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

	thumb_func_end sub_8089370

	thumb_local_start
sub_80895A8:
	push {r4-r7,lr}
	mov r7, #0x70 
	add r7, r7, r5
	ldrb r0, [r5]
	ldr r1, off_80895BC // =jt_80895C0 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_80895B8:
	tst r0, r0
	pop {r4-r7,pc}
off_80895BC:
	.word jt_80895C0
jt_80895C0:
	.word sub_808964C+1
	.word sub_80896B0+1
	.word sub_80896C4+1
	.word sub_80896D4+1
	.word sub_8089792+1
	.word sub_80897A6+1
	.word sub_8089C16+1
	.word sub_8089C78+1
	.word sub_80897E8+1
	.word sub_8089808+1
	.word sub_8089826+1
	.word sub_808983A+1
	.word sub_808985A+1
	.word sub_808989C+1
	.word sub_80898B2+1
	.word sub_80898E8+1
	.word sub_80898FC+1
	.word sub_808991C+1
	.word sub_8089960+1
	.word sub_808997E+1
	.word sub_808999C+1
	.word sub_80899D8+1
	.word sub_80899F2+1
	.word sub_8089A10+1
	.word sub_8089A60+1
	.word sub_8089ACA+1
	.word sub_8089AE8+1
	.word sub_8089B2E+1
	.word sub_8089B54+1
	.word sub_8089B7E+1
	.word sub_8089B94+1
	.word sub_8089BAA+1
	.word sub_8089BC0+1
	.word sub_8089BE4+1
	.word sub_8089BFA+1
	thumb_func_end sub_80895A8

	thumb_local_start
sub_808964C:
	push {r4-r7,lr}
	bl sub_814219C
	bne loc_808966E
	mov r0, #4
	bl SetOWPlayerFacingDirection
	bl GetOWPlayerFacingDirection
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x74 
	strb r0, [r5]
	b loc_80896A0
loc_808966E:
	bl sub_81428D4
	mov r4, r0
	bl sub_8142990
	mov r1, r4
	bl sub_8142896
	bl SetOWPlayerFacingDirection
	bl GetOWPlayerFacingDirection
	ldr r1, off_80896A4 // =byte_80896A8 
	ldrb r0, [r1,r0]
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	bl sub_8089D26
	mov r0, #0
	bl sub_81421C8
	bl sub_8089CC4
	mov r0, #4
	strb r0, [r5]
loc_80896A0:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_80896A4:
	.word byte_80896A8
byte_80896A8:
	.byte 0xFF, 0x29, 0xFF, 0x2A, 0xFF, 0x2B, 0xFF, 0x2C
	thumb_func_end sub_808964C

	thumb_local_start
sub_80896B0:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80896C0
	bl sub_8089CF8
	mov r0, #0xc
	strb r0, [r5]
loc_80896C0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896B0

	thumb_local_start
sub_80896C4:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80896D0
	mov r0, #0xc
	strb r0, [r5]
loc_80896D0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896C4

	thumb_local_start
sub_80896D4:
	push {r4-r7,lr}
	bl sub_8089704
	beq loc_8089700
	cmp r0, #1
	beq loc_80896FA
	cmp r0, #2
	beq loc_80896F4
	bl sub_8089CDC
	mov r0, #1
	bl sub_80468EC
	mov r0, #0x18
	strb r0, [r5]
	b loc_8089700
loc_80896F4:
	mov r0, #0x10
	strb r0, [r5]
	b loc_8089700
loc_80896FA:
	bl sub_8089CC4
	b loc_8089700
loc_8089700:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896D4

	thumb_local_start
sub_8089704:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r7, [r7,#2]
	mov r4, #0
	mov r0, #1
	tst r0, r7
	beq loc_8089738
	bl sub_81421D0
	bl sub_8142190
	beq loc_8089730
	bl sub_8142A84
	beq loc_808972E
	mov r0, #SOUND_SELECT_67
	bl PlaySoundEffect
	mov r4, #2
	b loc_808978C
loc_808972E:
	b loc_808978C
loc_8089730:
	mov r0, #SOUND_CANT_JACK_IN
	bl PlaySoundEffect
	b loc_808978C
loc_8089738:
	mov r0, #2
	tst r0, r7
	beq loc_8089748
	mov r0, #SOUND_UNSELECT_68
	bl PlaySoundEffect
	mov r4, #3
	b loc_808978C
loc_8089748:
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r7, [r7,#4]
	mov r0, #0x40 
	tst r0, r7
	beq loc_808976C
	mov r0, #0x66 
loc_8089756:
	bl PlaySoundEffect
	bl sub_81421D0
	sub r0, #1
	bge loc_8089764
	mov r0, #3
loc_8089764:
	bl sub_81421C8
	mov r4, #1
	b loc_808978C
loc_808976C:
	mov r0, #0x80
	tst r0, r7
	beq loc_808978C
	mov r0, #SOUND_UNK_66
	bl PlaySoundEffect
	bl sub_81421D0
	add r0, #1
	cmp r0, #4
	blt loc_8089784
	mov r0, #0
loc_8089784:
	bl sub_81421C8
	mov r4, #1
	b loc_808978C
loc_808978C:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8089704

	thumb_local_start
sub_8089792:
	push {r4-r7,lr}
	bl sub_81421D0
	add r0, #2
	bl sub_8089CA4
	mov r0, #0x14
	strb r0, [r5]
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089792

	thumb_local_start
sub_80897A6:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80897E4
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80897E4
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_80897C8
	bl sub_8089D26
	mov r0, #0xc
	strb r0, [r5]
	b loc_80897E4
loc_80897C8:
	bl sub_8089D0E
	bl sub_81421D0
	bl sub_81421B2
	mov r0, #1
	bl sub_80468EC
	mov r0, #0xa
	bl sub_8089CB0
	mov r0, #0x20 
	strb r0, [r5]
loc_80897E4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80897A6

	thumb_local_start
sub_80897E8:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_8089804
	bl sub_8089CB4
	beq loc_8089804
	mov r0, #4
	mov r1, #0xff
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0x24 
	strb r0, [r5]
loc_8089804:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80897E8

	thumb_local_start
sub_8089808:
	push {r4-r7,lr}
	bl IsScreenFadeActive // () -> zf
	beq loc_8089822
	mov r0, #0
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #5
	bl sub_8089CB0
	mov r0, #0x28 
	strb r0, [r5]
loc_8089822:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089808

	thumb_local_start
sub_8089826:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089836
	bl sub_8142BB6
	mov r0, #0x2c 
	strb r0, [r5]
loc_8089836:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089826

	thumb_local_start
sub_808983A:
	push {r4-r7,lr}
	bl IsScreenFadeActive // () -> zf
	beq loc_8089856
	bl sub_8089D44
	bl sub_814216E
	str r0, [r7,#0xc]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x30 
	strb r0, [r5]
loc_8089856:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808983A

	thumb_local_start
sub_808985A:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_8142C20
	mov r4, r0
	bl sub_814216E
	cmp r0, r4
	bne loc_8089898
	bl sub_8089CB4
	beq loc_8089898
	bl sub_814216E
	ldr r1, [r7,#0xc]
	cmp r0, r1
	beq loc_8089882
	mov r0, #0x34 
	strb r0, [r5]
	b loc_8089898
loc_8089882:
	bl sub_8142ADA
	bne loc_8089892
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
	b loc_8089898
loc_8089892:
	mov r0, #0x3c 
	strb r0, [r5]
	b loc_8089898
loc_8089898:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808985A

	thumb_local_start
sub_808989C:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80898AE
	mov r0, #7
	bl sub_8089CA4
	mov r0, #0x38 
	strb r0, [r5]
loc_80898AE:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808989C

	thumb_local_start
sub_80898B2:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80898E4
	bl sub_814216E
	bne loc_80898CE
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x5c 
	strb r0, [r5]
	b loc_80898E4
loc_80898CE:
	bl sub_8142ADA
	bne loc_80898DE
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
	b loc_80898E4
loc_80898DE:
	mov r0, #0x3c 
	strb r0, [r5]
	b loc_80898E4
loc_80898E4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898B2

	thumb_local_start
sub_80898E8:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80898F8
	bl sub_8142BFA
	mov r0, #0x40 
	strb r0, [r5]
loc_80898F8:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898E8

	thumb_local_start
sub_80898FC:
	push {r4-r7,lr}
	mov r0, #0x10
	bl sub_8142C20
	tst r0, r0
	beq loc_8089918
	mov r0, #8
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x44 
	strb r0, [r5]
loc_8089918:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898FC

	thumb_local_start
sub_808991C:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_808994E
	bl sub_8089CB4
	beq loc_808994E
	bl sub_8142B58
	bl SetOWPlayerFacingDirection
	bl GetOWPlayerFacingDirection
	ldr r1, off_8089954 // =byte_8089958 
	ldrb r0, [r1,r0]
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	bl sub_8089CDC
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x48 
	strb r0, [r5]
loc_808994E:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_8089954:
	.word byte_8089958
byte_8089958:
	.byte 0xFF, 0x2E, 0xFF, 0x2F, 0xFF, 0x30, 0xFF, 0x31
	thumb_func_end sub_808991C

	thumb_local_start
sub_8089960:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_808997A
	bl sub_8089CB4
	beq loc_808997A
	mov r0, #4
	mov r1, #0xff
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0x4c 
	strb r0, [r5]
loc_808997A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089960

	thumb_local_start
sub_808997E:
	push {r4-r7,lr}
	bl IsScreenFadeActive // () -> zf
	beq loc_8089998
	mov r0, #0
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #5
	bl sub_8089CB0
	mov r0, #0x50 
	strb r0, [r5]
loc_8089998:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808997E

	thumb_local_start
sub_808999C:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80899D4
	bl sub_8142224
	tst r0, r0
	beq loc_80899B2
	bl sub_8142C46
	b loc_80899C2
loc_80899B2:
	bl sub_814223E
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x54 
	strb r0, [r5]
	b loc_80899D4
loc_80899C2:
	bl GetCurPETNavi // () -> u8
	bl GetMaxAndCurHPForCurPETNavi_80010D4 // (which_navi: u8) -> (u16, u16)
	tst r0, r0
	beq loc_80899B2
	mov r0, #0x1e
	bl sub_8089CB0
loc_80899D4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808999C

	thumb_local_start
sub_80899D8:
	push {r4-r7,lr}
	bl IsScreenFadeActive // () -> zf
	beq loc_80899EE
	bl sub_8089CB4
	beq loc_80899EE
	bl sub_8142BF4
	mov r0, #0x58 
	strb r0, [r5]
loc_80899EE:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80899D8

	thumb_local_start
sub_80899F2:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_8142C20
	mov r4, r0
	bl sub_814216E
	cmp r0, r4
	bne loc_8089A0C
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
loc_8089A0C:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80899F2

	thumb_local_start
sub_8089A10:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089A36
	bl GetSoulWeaponsMapIndex
	ldr r1, off_8089A3C // =off_8089A40 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0x3c]
	bl SetCutsceneCameraScript
	mov r0, #1
	strb r0, [r5,#0x13]
	mov r0, #0x3c 
	bl sub_8089CB0
	mov r0, #0x60 
	strb r0, [r5]
loc_8089A36:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_8089A3C:
	.word off_8089A40
off_8089A40:
	.word byte_8089494
	.word byte_808949C
	.word byte_80894A4
	.word byte_80894AC
	.word byte_80894B4
	.word byte_80894BC
	.word byte_80894C4
	.word byte_80894CC
	thumb_func_end sub_8089A10

	thumb_local_start
sub_8089A60:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089AC6
	bl sub_81427CE
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	bl sub_814219C
	str r0, [r7,#0x10]
	bl sub_81422B4
	movflag EVENT_740
	bl SetEventFlagFromImmediate
	movflag EVENT_225
	bl ClearEventFlagFromImmediate // (flag: u16) -> ()
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	mov r1, #0
	strb r1, [r0,#oGameState_Unk_15]
	movflag EVENT_28
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	bne loc_8089ABA
	bl GetSoulWeaponsMapIndex
	cmp r0, #6
	bge loc_8089ABA
	bl sub_8035408
	mov r0, #0x65 
	add r0, #0xff
	bl PlaySoundEffect
	bl playCertainMapMusicBasedOnEventByte_8036e44
	bl PlayMapMusic // () -> ()
loc_8089ABA:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x64 
	strb r0, [r5]
	b loc_8089AC6
loc_8089AC6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089A60

	thumb_local_start
sub_8089ACA:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089AE4
	mov r0, #0xc
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x68 
	strb r0, [r5]
	b loc_8089AE4
loc_8089AE4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089ACA

	thumb_local_start
sub_8089AE8:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_8089B2A
	bl sub_8089CB4
	beq loc_8089B2A
	bl cutsceneCamera_focusCameraOnPlayerMaybe_8036faa
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #4
	bl SetOWPlayerFacingDirection
	bl GetOWPlayerFacingDirection
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	ldr r0, [r7,#0x10]
	tst r0, r0
	bne loc_8089B20
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x70 
	strb r0, [r5]
	b loc_8089B2A
loc_8089B20:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x6c 
	strb r0, [r5]
loc_8089B2A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089AE8

	thumb_local_start
sub_8089B2E:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089B50
	mov r0, #2
	ldr r1, [r7,#0x10]
	bl chatbox_8045EDC
	mov r0, #0x11
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x70 
	strb r0, [r5]
	b loc_8089B50
loc_8089B50:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B2E

	thumb_local_start
sub_8089B54:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_8089B7A
	bl sub_8089CB4
	beq loc_8089B7A
	mov r0, #4
	bl SetOWPlayerFacingDirection
	bl GetOWPlayerFacingDirection
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0x18
	strb r0, [r5]
loc_8089B7A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B54

	thumb_local_start
sub_8089B7E:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089B90
	mov r0, #0
	bl sub_8089CA4
	mov r0, #0x78 
	strb r0, [r5]
loc_8089B90:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B7E

	thumb_local_start
sub_8089B94:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_8089BA6
	mov r0, #1
	strb r0, [r5,#8]
	mov r0, #0
	pop {r4-r7,pc}
loc_8089BA6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B94

	thumb_local_start
sub_8089BAA:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089BBC
	mov r0, #0xd
	bl sub_8089CA4
	mov r0, #0x80
	strb r0, [r5]
loc_8089BBC:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BAA

	thumb_local_start
sub_8089BC0:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_8089BE0
	movflag EVENT_745
	bl SetEventFlagFromImmediate
	mov r0, #0
	strb r0, [r5,#8]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089BE0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BC0

	thumb_local_start
sub_8089BE4:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089BF6
	mov r0, #0xe
	bl sub_8089CA4
	mov r0, #0x88
	strb r0, [r5]
loc_8089BF6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BE4

	thumb_local_start
sub_8089BFA:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_8089C12
	mov r0, #0
	strb r0, [r5,#8]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089C12:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BFA

	thumb_local_start
sub_8089C16:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_8089C74
	mov r0, #1
	strb r0, [r5,#8]
	bl GetCurPETNavi // () -> u8
	bl GetMaxAndCurHPForCurPETNavi_80010D4 // (which_navi: u8) -> (u16, u16)
	tst r0, r0
	bne loc_8089C4A
	strb r0, [r5,#8]
	bl GetCurPETNavi // () -> u8
	cmp r0, #0
	bne loc_8089C3E
	mov r0, #0x3a 
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
loc_8089C3E:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x84
	strb r0, [r5]
	b loc_8089C74
loc_8089C4A:
	bl GetOWPlayerFacingDirection
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	mov r0, #0x1e
	bl sub_8089CB0
	bl sub_814216E
	beq loc_8089C6A
	bl sub_814219C
	bne loc_8089C6A
	mov r0, #0x7c 
	strb r0, [r5]
	b loc_8089C74
loc_8089C6A:
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089C74:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089C16

	thumb_local_start
sub_8089C78:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089C9A
	bl cutsceneCamera_focusCameraOnPlayerMaybe_8036faa
	mov r0, #0
	strb r0, [r5,#0x13]
	bl GetSoulWeaponsMapIndex
	ldr r1, off_8089CA0 // =byte_80894D4
	mov r2, #0x10
	mul r2, r0
	add r1, r1, r2
	str r1, [r5,#0x34]
	mov r0, #0
	pop {r4-r7,pc}
loc_8089C9A:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_8089CA0:
	.word byte_80894D4
	thumb_func_end sub_8089C78

	thumb_local_start
sub_8089CA4:
	push {r4-r7,lr}
	mov r1, r0
	ldr r0, [r5,#0x30]
	bl chatbox_runScript // (archive: *const TextScriptArchive, script_idx: u8) -> ()
	pop {r4-r7,pc}
	thumb_func_end sub_8089CA4

	thumb_local_start
sub_8089CB0:
	strh r0, [r5,#0x18]
	mov pc, lr
	thumb_func_end sub_8089CB0

	thumb_local_start
sub_8089CB4:
	ldrh r0, [r5,#0x18]
	sub r0, #1
	blt loc_8089CC0
	strh r0, [r5,#0x18]
	mov r0, #0
	mov pc, lr
loc_8089CC0:
	mov r0, #1
	mov pc, lr
	thumb_func_end sub_8089CB4

	thumb_local_start
sub_8089CC4:
	push {r4-r7,lr}
	bl sub_81429CA
	ldr r0, off_8089CD8 // =byte_8089480
	str r0, [r5,#0x3c]
	bl SetCutsceneCameraScript
	mov r0, #1
	strb r0, [r5,#0x13]
	pop {r4-r7,pc}
	.balign 4, 0
off_8089CD8:
	.word byte_8089480
	thumb_func_end sub_8089CC4

	thumb_local_start
sub_8089CDC:
	push {r4-r7,lr}
	ldr r0, off_8089CF4 // =byte_808948A
	str r0, [r5,#0x3c]
	bl SetCutsceneCameraScript
	mov r0, #1
	strb r0, [r5,#0x13]
	bl sub_8089D0E
	bl sub_8089D44
	pop {r4-r7,pc}
	.balign 4, 0
off_8089CF4:
	.word byte_808948A
	thumb_func_end sub_8089CDC

	thumb_local_start
sub_8089CF8:
	push {r4-r7,lr}
	mov r4, #0
loc_8089CFC:
	mov r0, #0x12
	bl sub_8004822
	str r5, [r7]
	add r7, #4
	add r4, #1
	cmp r4, #3
	blt loc_8089CFC
	pop {r4-r7,pc}
	thumb_func_end sub_8089CF8

	thumb_local_start
sub_8089D0E:
	push {r4-r7,lr}
	mov r4, #0
loc_8089D12:
	ldr r5, [r7]
	tst r5, r5
	beq loc_8089D1C
	bl FreeOverworldMapObject
loc_8089D1C:
	add r7, #4
	add r4, #1
	cmp r4, #3
	blt loc_8089D12
	pop {r4-r7,pc}
	thumb_func_end sub_8089D0E

	thumb_local_start
sub_8089D26:
	push {r4-r7,lr}
	mov r0, #4
	mov r1, #1
	mov r2, #0
	bl sub_80468C6
	mov r0, #0
	bl sub_80468EC
	mov r0, #3
	mov r1, #0
	mov r2, #1
	bl sub_80468C6
	pop {r4-r7,pc}
	thumb_func_end sub_8089D26

	thumb_local_start
sub_8089D44:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_80468EC
	mov r0, #3
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
	// <endpool> <endfile>
	pop {r4-r7,pc}
	thumb_func_end sub_8089D44

/*For debugging purposes, connect comment at any range!*/
