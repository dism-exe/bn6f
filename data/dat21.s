
byte_8081454:
	ccs_set_camera_pos hword1=0xFC00 hword3=0x0080 hword5=0x0000
	ccs_end

ccs_808145C:
	ccs_simple_scroll hword1=0x00D0 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8081466:
	ccs_simple_scroll hword1=0x0040 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0080 hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

byte_8081479::
	ccs_wait hword1=0x000F
	ccs_simple_scroll hword1=0x0058 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0060 hword3=0x0080 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_808148F:
	.byte 0x00

CutsceneScriptNewGame:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A3B84 + COMPRESSED_PTR_FLAG
	cs_write_gamestate_byte byte1=0x06 byte2=0x00
	cs_write_gamestate_byte byte1=0x08 byte2=0x00
	cs_write_gamestate_byte byte1=0x07 byte2=0x00
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8081454
	cs_spawn_ow_npc_objects_from_list ptr2=unk_804DEF0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081580
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_run_cutscene_camera_script ptr1=ccs_808145C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8081578
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8081466
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x2D
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=byte_8081479
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8081534::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_add_bbs_message_range hword1=0x17A0 byte3=0x08
	cs_add_bbs_message_range hword1=0x1860 byte3=0x0F
	cs_add_bbs_message_range hword1=0x18A0 byte3=0x10
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_403
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808159C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8081578::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8081534

cutscenescript_8081580:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8081534

end_cutscenescript_0808159a:
	.byte 0x00
	.byte 0x00

unk_808159C:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
byte_80815AC::
	ccs_set_camera_pos hword1=0x0780 hword3=0x0620 hword5=0x0000
	ccs_end

CutsceneScriptNewGameAcdc:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A41C8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80815AC
	cs_spawn_ow_npc_objects_from_list ptr2=unk_804D75C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_80816D2
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80816CA
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x2D
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80816CA
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0x000D
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80816CA
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x78

byte_8081692::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_405
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_80816EC
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80816CA:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8081692

cutscenescript_80816D2:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8081692

byte_80816EC::
	.byte 0x1, 0x2, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_80816FC::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8081702:
	.byte 0x00
	.byte 0x00
CutsceneScriptNewGameArriveCentralTown:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A4980 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80816FC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8051B80
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081795
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808178D
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808174F:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0080 signedhword6=0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_407
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808178D::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808174F

cutscenescript_8081795:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808174F
	cs_end_for_map_reload_maybe_8037c64

ccs_80817B0:
	ccs_set_camera_pos hword1=0x05E0 hword3=0xFEC0 hword5=0x0000
	ccs_end

CutsceneScriptIrisAttackedByRoboDog:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A4AE0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80817B0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8050678
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_call_native_with_return_value ptr1=sub_8081898+1
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x00000014
	cs_wait_chatbox byte1=0x80
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x000000B2
	cs_pause byte1=0xFF byte2=0x1E
cutscenescript_8081853:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_80818C8+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_409
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8081853
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_8081898:
	push {r4-r7, lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38
	bne loc_80818C2
	mov r2, r10
	ldr r2, [r2, #4]
	ldrh r2, [r2, #2]
	ldr r1, =0x100
	tst r2, r1
	beq loc_80818B4
	mov r4, #0
	b loc_80818C2
loc_80818B4:
	ldr r1, =0x2FF
	tst r2, r1
	beq loc_80818C2
	ldr r0, [r5, #0x30]
	mov r1, #7
	bl chatbox_runScript
loc_80818C2:
	tst r4, r4
	pop {r4-r7, pc}
	.balign 4, 0
	thumb_func_end sub_8081898

	thumb_local_start
sub_80818C8:
	push {lr}
	mov r0, #0
	bl sub_80355DE
	str r0, [r5, #0x34]
	mov r0, #0
	pop {pc}
	.pool
	thumb_func_end sub_80818C8

ccs_80818E0:
	ccs_simple_scroll hword1=0x001E hword3=0x0200 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_80818EA:
	.byte 0x00
	.byte 0x00
CutsceneScriptTutJackInRoboDog:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A4C68 + COMPRESSED_PTR_FLAG
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806EBD0
	cs_pause byte1=0xFF byte2=0x01
	cs_make_ow_player_invisible
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80819AB
	cs_spawn_cutscene_process byte1=0x24 ptr2=cutscenescript_8081971
	cs_wait_cutscene_process byte1=0x24
	cs_pause byte1=0xFF byte2=0x28
	cs_spawn_cutscene_process byte1=0x24 ptr2=cutscenescript_808195E
	cs_wait_cutscene_process byte1=0x24
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80818E0
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x24 ptr2=byte_8081963
	cs_wait_cutscene_process byte1=0x24
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14

cutscenescript_8081941:
	cs_set_event_flag byte1=0xFF event16_2=EVENT_40B
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_F9 destination4=cutscenescript_8081955
	cs_start_fixed_battle hword1=0x003B
	cs_jump destination1=cutscenescript_8081958

cutscenescript_8081955:
	cs_start_fixed_battle hword1=0x003B

cutscenescript_8081958:
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808195E:
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x29
	cs_cutscene_end

byte_8081963::
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x10
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x28 signedhword3=0x0010
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x29
	cs_cutscene_end

cutscenescript_8081971:
	cs_make_ow_player_visible
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000000
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x01 byte2=0x00 signedhword3=0x0002 signedhword5=-0x0002 signedhword7=-0x0002 word9=0x00000002
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x2D
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x01
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x80
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x08
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x18 signedhword3=0x0010
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_cutscene_end

cutscenescript_80819AB:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8081941
	cs_end_for_map_reload_maybe_8037c64

ccs_80819B4:
	ccs_set_camera_pos hword1=0x0640 hword3=0xFF20 hword5=0x0000
	ccs_end

CutsceneScriptTutSecondBattle:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x29
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806EBE0
	cs_run_cutscene_camera_script ptr1=ccs_80819B4
	cs_jump_if_battle_result_equals byte1=0x01 destination2=cutscenescript_80819DD
	cs_set_var byte1=0x08 byte2=0x00
	cs_jump destination1=cutscenescript_80819ED

cutscenescript_80819DD:
	cs_set_var byte1=0x08 byte2=0x01
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x00010800

cutscenescript_80819ED:
	cs_pause byte1=0xFF byte2=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0520 signedhword6=-0x00E0 signedhword8=0x0000
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A4E10 + COMPRESSED_PTR_FLAG
	cs_jump_if_battle_result_equals byte1=0x01 destination2=cutscenescript_8081A2E
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081A6E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x88
	cs_pause byte1=0xFF byte2=0x14

cutscenescript_8081A16:
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_F9 destination4=cutscenescript_8081A26
	cs_start_fixed_battle hword1=0x003B
	cs_jump destination1=byte_8081A68

cutscenescript_8081A26:
	cs_start_fixed_battle hword1=0x003B
	cs_jump destination1=byte_8081A68

cutscenescript_8081A2E:
	cs_decomp_text_archive ptr1=CompText87A4DD0 + COMPRESSED_PTR_FLAG
	cs_set_cutscene_skip_script ptr1=byte_8081A76
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x08 byte2=0x02
	cs_free_ow_map_object nybble1=0x00
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x88
	cs_pause byte1=0xFF byte2=0x14

cutscenescript_8081A48:
	cs_set_event_flag byte1=0xFF event16_2=EVENT_40C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_40F
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_F9 destination4=dword_8081A60
	cs_start_fixed_battle hword1=0x003C
	cs_jump destination1=byte_8081A68

dword_8081A60::
	cs_start_fixed_battle hword1=0x003C
	cs_jump destination1=byte_8081A68

byte_8081A68::
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8081A6E:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8081A16

byte_8081A76::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8081A48
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8081A80:
	ccs_set_camera_pos hword1=0x0640 hword3=0xFF20 hword5=0x0000
	ccs_end

CutsceneScriptTutThirdBattle:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x29
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806EBF0
	cs_run_cutscene_camera_script ptr1=ccs_8081A80
	cs_jump_if_battle_result_equals byte1=0x01 destination2=cutscenescript_8081AA9
	cs_set_var byte1=0x08 byte2=0x00
	cs_jump destination1=cutscenescript_8081AB9

cutscenescript_8081AA9:
	cs_set_var byte1=0x08 byte2=0x01
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800

cutscenescript_8081AB9:
	cs_pause byte1=0xFF byte2=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0520 signedhword6=-0x00E0 signedhword8=0x0000
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A4EA8 + COMPRESSED_PTR_FLAG
	cs_jump_if_battle_result_equals byte1=0x01 destination2=cutscenescript_8081AFA
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081B3A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x88
	cs_pause byte1=0xFF byte2=0x14

cutscenescript_8081AE2:
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_F9 destination4=cutscenescript_8081AF2
	cs_start_fixed_battle hword1=0x003C
	cs_jump destination1=byte_8081B34

cutscenescript_8081AF2:
	cs_start_fixed_battle hword1=0x003C
	cs_jump destination1=byte_8081B34

cutscenescript_8081AFA:
	cs_decomp_text_archive ptr1=CompText87A4E5C + COMPRESSED_PTR_FLAG
	cs_set_cutscene_skip_script ptr1=byte_8081B42
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x08 byte2=0x02
	cs_free_ow_map_object nybble1=0x00
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x88
	cs_pause byte1=0xFF byte2=0x14

cutscenescript_8081B14:
	cs_set_event_flag byte1=0xFF event16_2=EVENT_410
	cs_set_event_flag byte1=0xFF event16_2=EVENT_413
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_F9 destination4=dword_8081B2C
	cs_start_fixed_battle hword1=0x003D
	cs_jump destination1=byte_8081B34

dword_8081B2C::
	cs_start_fixed_battle hword1=0x003D
	cs_jump destination1=byte_8081B34

byte_8081B34::
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8081B3A:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8081AE2

byte_8081B42::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8081B14
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8081B4C:
	ccs_set_camera_pos hword1=0x0640 hword3=0xFF20 hword5=0x0000
	ccs_end

byte_8081B54::
	ccs_simple_scroll hword1=0x0024 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8081B5E:
	.balign 4, 0

CutsceneScriptTutAfterThirdBattle:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x29
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806EBFC
	cs_run_cutscene_camera_script ptr1=ccs_8081B4C
	cs_jump_if_battle_result_equals byte1=0x01 destination2=cutscenescript_8081B81
	cs_set_var byte1=0x08 byte2=0x00
	cs_jump destination1=cutscenescript_8081B91

cutscenescript_8081B81:
	cs_set_var byte1=0x08 byte2=0x01
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x00010800

cutscenescript_8081B91:
	cs_pause byte1=0xFF byte2=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0520 signedhword6=-0x00E0 signedhword8=0x0000
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A4FB0 + COMPRESSED_PTR_FLAG
	cs_jump_if_battle_result_equals byte1=0x01 destination2=cutscenescript_8081BD2
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081C56
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x88
	cs_pause byte1=0xFF byte2=0x14

cutscenescript_8081BBA:
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_F9 destination4=cutscenescript_8081BCA
	cs_start_fixed_battle hword1=0x003D
	cs_jump destination1=cutscenescript_8081C42

cutscenescript_8081BCA:
	cs_start_fixed_battle hword1=0x003D
	cs_jump destination1=cutscenescript_8081C42

cutscenescript_8081BD2:
	cs_decomp_text_archive ptr1=CompText87A4EF4 + COMPRESSED_PTR_FLAG
	cs_set_cutscene_skip_script ptr1=byte_8081C5B
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x08 byte2=0x02
	cs_free_ow_map_object nybble1=0x00
	cs_pause byte1=0xFF byte2=0x3C
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8081B54
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000001
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x21
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x1E

byte_8081C1F::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_F9
	cs_set_event_flag byte1=0xFF event16_2=EVENT_414
	cs_set_event_flag byte1=0xFF event16_2=EVENT_417
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_8081C60

cutscenescript_8081C42:
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x08
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x18 signedhword3=0x0010
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_cutscene_end

cutscenescript_8081C56:
	cs_jump destination1=cutscenescript_8081BBA

byte_8081C5B::
	cs_jump destination1=byte_8081C1F

unk_8081C60:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
ccs_8081C70:
	ccs_set_camera_pos hword1=0x0620 hword3=0xFE80 hword5=0x0000
	ccs_end

ccs_8081C78:
	ccs_simple_scroll hword1=0x0018 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

end_ccs_8081C82:
	.byte 0x00
	.byte 0x00

CutsceneScriptEndTutCheckOnIris::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A4FFC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8081C70
	cs_spawn_ow_npc_objects_from_list ptr2=unk_8050724
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081D43
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8081C78
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x03
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
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8081D0C:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0800 signedhword6=-0x0060 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_419
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8081D43:
	.word 0x1540003C, cutscenescript_8081D0C, 0x00000800
	.byte 0x00

cutscenescript_8081D50:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A51AC + COMPRESSED_PTR_FLAG
	cs_disable_ow_player_wall_collision_809e254
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081DA1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8081D82:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8081DA1:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8081D82

end_cutscenescript_8081DA9:
  .align 2, 0
byte_8081DAC::
	ccs_set_camera_pos hword1=0xFF80 hword3=0x0100 hword5=0x0000
	ccs_end

byte_8081DB4::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8081DBA:
	.byte 0x00
	.byte 0x00
cutscenescript_8081DBC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A536C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8081DAC
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_8051BA0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081E89
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081E81
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081E81
	cs_run_cutscene_camera_script ptr1=byte_8081DB4
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8081E81
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8081E40:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x02
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0080 signedhword6=0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_41D
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8081E81:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8081E40

cutscenescript_8081E89:
	.word 0x3740003C, off_80348FC, 0xFF18FF27, 0x01FF0207, 0x080CFF27, 0x1E401507
	.byte 0x08
	.byte 0x08
	.byte 0x00

ccs_8081EA4:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8081EAA:
	ccs_end

ccs_8081EAB:
	ccs_simple_scroll hword1=0x0060 hword3=0xFF00 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_8081EB5::
	ccs_set_camera_pos hword1=0xFC40 hword3=0x07C0 hword5=0x0000
	ccs_end

ccs_8081EBD:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

byte_8081EC7::
	ccs_simple_scroll hword1=0x0058 hword3=0xFF80 hword5=0xFF80 hword7=0x0100
	ccs_end

end_ccs_8081ED1:
	.balign 4, 0

cutscenescript_8081ED4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A54E4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8081EA4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805795C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8082049
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_8081EAA
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_run_cutscene_camera_script ptr1=ccs_8081EA4
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_8081EAA
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x10
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x12
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8081EAB
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_8081EB5
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x14
	cs_wait_var_equal byte1=0x08 byte2=0x15
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8081EBD
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_8081EA4
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x16
	cs_wait_var_equal byte1=0x08 byte2=0x17
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x16
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8081EC7
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8081EA4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808200E:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_10
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x03C0 signedhword6=0x05C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_41F
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8082049:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808200E
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8082054:
	ccs_set_camera_pos hword1=0xFB80 hword3=0x00E0 hword5=0x0000
	ccs_end

ccs_808205C:
	ccs_simple_scroll hword1=0x00D0 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8082066:
	ccs_simple_scroll hword1=0x00A0 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8082070:
	ccs_wait hword1=0x0068
	ccs_simple_scroll hword1=0x0050 hword3=0x0040 hword5=0xFFC0 hword7=0x0000
	ccs_end

byte_808207D::
	ccs_simple_scroll hword1=0x0080 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

cutscenescript_8082090:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A5A60 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=ccs_8082054
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8054AF8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_80821B6
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_run_cutscene_camera_script ptr1=ccs_808205C
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80821AE
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8082066
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_8082070
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x28
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808207D
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0xD2
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80821B6
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808216C::
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
	cs_set_event_flag byte1=0xFF event16_2=EVENT_421
	cs_set_event_flag byte1=0xFF event16_2=EVENT_10
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80821AE:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808216C

cutscenescript_80821B6:
	.word 0x3740003C, off_80348FC, 0xFF18FF27, 0x01FF0207, 0x080CFF27, 0x216C1507
	.byte 0x08
	.byte 0x08

ccs_80821D0:
	ccs_set_camera_pos hword1=0xF940 hword3=0xFDA0 hword5=0x0000
	ccs_end

byte_80821D8::
	ccs_set_camera_pos hword1=0x0240 hword3=0x00C0 hword5=0x0000
	ccs_end

cutscenescript_80821E0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A5F48 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80821D0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8054CAC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80822AD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x06
	cs_run_cutscene_camera_script ptr1=byte_80821D8
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80822AD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8082273:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_80822B8+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_423
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80822AD:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8082273
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_80822B8:
	push {lr}
	mov r0, #2
	bl sub_80355DE
	str r0, [r5, #0x34]
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_80822B8

ccs_80822C8:
	ccs_set_camera_pos hword1=0x00C0 hword3=0xF580 hword5=0x0000
	ccs_end

ccs_80822D0:
	ccs_simple_scroll hword1=0x0028 hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_80822DA:
	ccs_set_camera_pos hword1=0xFFC0 hword3=0xF4C0 hword5=0x0000
	ccs_end

end_ccs_80822E2:
	.byte 0x00
	.byte 0x00
cutscenescript_80822E4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A61BC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80822C8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806EE14
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8082382
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80822D0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_80822DA
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8082382
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80

cutscenescript_808236B:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_425
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0040
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

byte_8082382::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808236B
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808238C:
	ccs_set_camera_pos hword1=0xFFC0 hword3=0xF4C0 hword5=0x0000
	ccs_end

byte_8082394::
	ccs_simple_scroll hword1=0x0010 hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

byte_808239E::
	ccs_set_camera_pos hword1=0x00C0 hword3=0xF580 hword5=0x0000
	ccs_end

ccs_80823A6:
	ccs_simple_scroll hword1=0x0028 hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

cutscenescript_80823B0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A65BC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808238C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806EFF8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x0C010800
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80824BF
	cs_pause byte1=0xFF byte2=0x5A
	cs_free_ow_map_object nybble1=0x00
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8082394
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x06
	cs_run_cutscene_camera_script ptr1=byte_808239E
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80824BF
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80823A6
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
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
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8082481:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x00C0 signedhword6=-0x0860 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_427
	cs_call_native_with_return_value ptr1=sub_80824C8+1
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80824BF:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8082481
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_80824C8:
	push {r4-r7, lr}
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #4
	ldr r4, =0x502
	bl sub_8001092
	mov r0, #0
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_80824C8


byte_80824E0::
	ccs_set_camera_pos hword1=0x1400 hword3=0xFE20 hword5=0x0000
	ccs_end

cutscenescript_80824E8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A6884 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80824E0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_80574D0
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
	cs_set_cutscene_skip_script ptr1=byte_80825EE
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80825E6
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
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
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80825EE
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

byte_80825A7::
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_pause byte1=0xFF byte2=0x78
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_429
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_8082608
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80825E6:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80825A7

byte_80825EE::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_80825A7

byte_8082608::
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000

ccs_8082618:
	ccs_set_camera_pos hword1=0xFB80 hword3=0x0100 hword5=0x0000
	ccs_end

ccs_8082620:
	ccs_simple_scroll hword1=0x00D0 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

byte_808262A::
	ccs_set_camera_pos hword1=0x0340 hword3=0x0420 hword5=0x0040
	ccs_end

end_ccs_8082632:
	.byte 0x00
	.byte 0x00
cutscenescript_8082634:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A6D68 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8082618
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8054DF4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_run_cutscene_camera_script ptr1=ccs_8082620
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8082792
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_808262A
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8082792
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x015C
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_pause byte1=0xFF byte2=0x40
	cs_play_sound hword1=0x0077
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x04
	cs_do_pet_effect byte1=0xFF byte2=0x05
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8082792
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x008D
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8082792
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
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
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8082750:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0400 signedhword6=0x0420 signedhword8=0x0040
	cs_make_ow_player_visible
	cs_toggle_ow_player_using_copybot_809e4bc
	cs_set_event_flag byte1=0xFF event16_2=EVENT_42B
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8082792::
	.word 0x1540003C, cutscenescript_8082750
	.byte 0x00
	.byte 0x00

ccs_808279C:
	ccs_set_camera_pos hword1=0x0200 hword3=0x0400 hword5=0x0000
	ccs_end

ccs_80827A4:
	ccs_simple_scroll hword1=0x009A hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_80827AE:
	ccs_simple_scroll hword1=0x009A hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_80827B8:
	ccs_simple_scroll hword1=0x00A4 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80827C2:
	ccs_simple_scroll hword1=0x00A4 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80827CC:
	ccs_set_camera_pos hword1=0xFC80 hword3=0x0280 hword5=0x0000
	ccs_end

cutscenescript_80827D4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A7418 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808279C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055080
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80829FB
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_do_pet_effect byte1=0xFF byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80827A4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80827AE
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80827B8
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808279C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_var_equal byte1=0x08 byte2=0x80
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0C
	cs_set_var byte1=0x08 byte2=0x81
	cs_wait_var_equal byte1=0x08 byte2=0x82
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0C
	cs_set_var byte1=0x08 byte2=0x83
	cs_wait_var_equal byte1=0x08 byte2=0x84
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0C
	cs_set_var byte1=0x08 byte2=0x85
	cs_wait_var_equal byte1=0x08 byte2=0x86
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0C
	cs_set_var byte1=0x08 byte2=0x87
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80827B8
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_var_equal byte1=0x08 byte2=0x88
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_run_cutscene_camera_script ptr1=ccs_80827C2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x11
	cs_run_cutscene_camera_script ptr1=ccs_80827CC
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80829FB
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x21
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x14
	cs_load_gfx_anim ptr1=gfx_anim_script_8052630
	cs_load_gfx_anim ptr1=gfx_anim_script_805265C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_48D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_48E
	cs_play_sound hword1=0x00F7
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x25
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808298C:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x03
	cs_write_gamestate_byte byte1=0x07 byte2=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_48D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_48E
	cs_set_event_flag byte1=0xFF event16_2=EVENT_490
	cs_set_event_flag byte1=0xFF event16_2=EVENT_491
	cs_set_event_flag byte1=0xFF event16_2=EVENT_492
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_4
	cs_set_event_flag byte1=0xFF event16_2=EVENT_5
	cs_load_gfx_anim ptr1=byte_80525C0
	cs_load_gfx_anim ptr1=byte_80525DC
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x02C0 signedhword6=0x00C0 signedhword8=0x0040
	cs_make_ow_player_visible
	cs_toggle_ow_player_using_copybot_809e4bc
	cs_write_gamestate_byte byte1=0x12 byte2=0x00
	cs_set_event_flag byte1=0xFF event16_2=EVENT_42D
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80829FB:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808298C
	cs_end_for_map_reload_maybe_8037c64

ccs_8082A04:
	ccs_set_camera_pos hword1=0xFC80 hword3=0x0280 hword5=0x0000
	ccs_end

ccs_8082A0C:
	ccs_simple_scroll hword1=0x005C hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8082A16:
	ccs_simple_scroll hword1=0x0064 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

cutscenescript_8082A20:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A7A18 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_48D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_48E
	cs_set_event_flag byte1=0xFF event16_2=EVENT_48F
	cs_run_cutscene_camera_script ptr1=ccs_8082A04
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055460
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8082B6A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8082A0C
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_48D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_48E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_48F
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x08 byte3=0x00 signedhword4=0x0002 signedhword6=-0x0002 signedhword8=-0x0002 word10=0x00000021
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x19
	cs_disable_cutscene_skip_script
	cs_write_byte ptr1=eCutsceneState_Unk_07 byte5=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x20
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x07
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0C
	cs_terminate_gfx_anim byte1=0x0D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_493
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8082B6A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_run_cutscene_camera_script ptr1=ccs_8082A16
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_do_pet_effect byte1=0xFF byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8082B04:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump_if_var_equal byte1=0x07 byte2=0x01 destination3=cutscenescript_8082B1B
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0xB4

cutscenescript_8082B1B:
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_48D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_48E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_48F
	cs_terminate_gfx_anim byte1=0x0C
	cs_terminate_gfx_anim byte1=0x0D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_493
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x02C0 signedhword6=0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_toggle_ow_player_using_copybot_809e4bc
	cs_write_gamestate_byte byte1=0x12 byte2=0xFF
	cs_set_event_flag byte1=0xFF event16_2=EVENT_42F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8082B6A:
	.word 0x1540003C, cutscenescript_8082B04
	.byte 0x00
	.byte 0x00

ccs_8082B74:
	ccs_set_camera_pos hword1=0x01C0 hword3=0x06C0 hword5=0x0000
	ccs_end

byte_8082B7C::
	ccs_simple_scroll hword1=0x00F0 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0018 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_8082B98:
	ccs_simple_scroll hword1=0x0068 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_simple_scroll hword1=0x001C hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8082BAB:
	ccs_set_camera_pos hword1=0x01C0 hword3=0x06C0 hword5=0x0000
	ccs_end

ccs_8082BB3:
	ccs_set_camera_pos hword1=0xF980 hword3=0xF880 hword5=0x0000
	ccs_end

byte_8082BBB::
	ccs_simple_scroll hword1=0x0050 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8082BC5:
	ccs_simple_scroll hword1=0x0058 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8082BCF:
	.byte 0x00
cutscenescript_8082BD0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A7BE4 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8082B74
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8058354
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_event_flag byte1=0xFF event16_2=EVENT_495
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8082D30
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x28
	cs_run_cutscene_camera_script ptr1=byte_8082B7C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x02
	cs_run_cutscene_camera_script ptr1=ccs_8082B98
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x80
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x28
	cs_run_cutscene_camera_script ptr1=ccs_8082BAB
	cs_set_event_flag byte1=0xFF event16_2=EVENT_496
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8082BB3
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8082BBB
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_run_cutscene_camera_script ptr1=ccs_8082BC5
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x00000014
	cs_wait_chatbox byte1=0x80
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x000000B2
	cs_pause byte1=0xFF byte2=0x1E

byte_8082CF3::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x00C0 signedhword6=-0x0100 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_8082D38+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_431
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8082D30:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8082CF3

	thumb_local_start
sub_8082D38:
	push {lr}
	mov r0, #3
	bl sub_80355DE
	str r0, [r5, #0x34]
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_8082D38


cutscenescript_8082D48:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87A7FE0 + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8082D90
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

byte_8082D6D::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_set_event_flag byte1=0xFF event16_2=EVENT_433
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8082D90:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8082D6D

ccs_8082D98:
	ccs_set_camera_pos hword1=0x1220 hword3=0xF540 hword5=0x0000
	ccs_end

ccs_8082DA0:
	ccs_set_camera_pos hword1=0x0220 hword3=0xF940 hword5=0x0000
	ccs_end

byte_8082DA8::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8082DAE:
	.byte 0x00
	.byte 0x00

cutscenescript_8082DB0:
	cs_jump_if_flag_range_clear byte1=0x03 event16_2=EVENT_4E0 destination4=byte_8082DF0
	cs_decomp_text_archive ptr1=CompText87A817C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x28
	cs_run_cutscene_camera_script ptr1=ccs_8082D98
	cs_pause byte1=0xFF byte2=0x1E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_4E7
	cs_load_gfx_anim ptr1=gfx_anim_8140C0C
	cs_load_gfx_anim ptr1=gfx_anim_script_8140C44
	cs_pause byte1=0xFF byte2=0x78
	cs_run_cutscene_camera_script ptr1=byte_8082DA8
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80

byte_8082DF0::
	cs_pause byte1=0xFF byte2=0x1E
	cs_cutscene_end

cutscenescript_8082DF4:
	cs_jump_if_flag_range_clear byte1=0x03 event16_2=EVENT_4E0 destination4=byte_8082E11
	cs_set_event_flag byte1=0xFF event16_2=EVENT_434
	cs_set_event_flag byte1=0xFF event16_2=EVENT_435
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_4E7
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag_range byte1=0x06 event16_2=EVENT_4EC
	cs_cutscene_end

byte_8082E11::
	.word 0x111EFF02
	.byte 0x00
	.byte 0x00
	.byte 0x00

cutscenescript_8082E18:
	cs_jump_if_flag_range_clear byte1=0x04 event16_2=EVENT_4E3 destination4=byte_8082E51
	cs_pause byte1=0xFF byte2=0x28
	cs_run_cutscene_camera_script ptr1=ccs_8082DA0
	cs_pause byte1=0xFF byte2=0x1E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_4E8
	cs_pause byte1=0xFF byte2=0x78
	cs_run_cutscene_camera_script ptr1=byte_8082DA8
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8082E3C:
	cs_jump_if_flag_range_clear byte1=0x04 event16_2=EVENT_4E3 destination4=byte_8082E51
	cs_set_event_flag byte1=0xFF event16_2=EVENT_454
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_4E8
	cs_set_event_flag_range byte1=0x09 event16_2=EVENT_4F2
	cs_cutscene_end

byte_8082E51::
	cs_pause byte1=0xFF byte2=0x1E
	cs_cutscene_end
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

gfx_anim_script_8082E58:
	gfx_anim_manual_pal_transform transform_type=0x00000000 ptr5=iPalette3001B60 index=0x0E num_pals=0x0D
	gfx_anim_data data=0x80000004 delay=0x0000001E

byte_8082E6C::
	gfx_anim_data data=0x80000008 delay=0x0000001E
	gfx_anim_data data=0x8000000C delay=0x0000001E
	gfx_anim_data data=0x80000010 delay=0x0000001E
	gfx_anim_data data=0x80000014 delay=0x0000001E
	gfx_anim_data data=0x80000018 delay=0x0000001E
	gfx_anim_jump dest=byte_8082EB8

dword_8082E9C::
	gfx_anim_manual_pal_transform transform_type=0x00000000 ptr5=iPallete3001750 index=0x0F num_pals=0x0C
	gfx_anim_data data=0x80000004 delay=0x0000000F
	gfx_anim_jump dest=byte_8082E6C

byte_8082EB8::
	gfx_anim_data data=0x80000014 delay=0x0000000F
	gfx_anim_data data=0x80000012 delay=0x0000000F
	gfx_anim_data data=0x80000010 delay=0x0000000F
	gfx_anim_data data=0x8000000E delay=0x0000000F
	gfx_anim_data data=0x80000010 delay=0x0000000F
	gfx_anim_data data=0x80000012 delay=0x0000000F
	gfx_anim_jump dest=byte_8082EB8

ccs_8082EF0:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8082EF6:
	.balign 4, 0

cutscenescript_8082EF8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A8318 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8082EF0
	cs_spawn_ow_npc_objects_from_list ptr2=off_8067230
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x14
	cs_terminate_gfx_anim byte1=0x10
	cs_terminate_gfx_anim byte1=0x11
	cs_load_gfx_anim ptr1=gfx_anim_script_8082E58
	cs_load_gfx_anim ptr1=dword_8082E9C
	cs_set_cutscene_skip_script ptr1=cutscenescript_8082F77
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8082F55:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_453
	cs_set_event_flag byte1=0xFF event16_2=EVENT_437
	cs_pause byte1=0xFF byte2=0x0F
	cs_set_enter_map_screen_fade byte1=0x00 byte2=0x10
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x01 ptr3=byte_8082F80
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8082F77:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8082F55
	cs_end_for_map_reload_maybe_8037c64

byte_8082F80::
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000

ccs_8082F90:
	ccs_set_camera_pos hword1=0xFBE0 hword3=0x03A0 hword5=0x0000
	ccs_end

ccs_8082F98:
	ccs_simple_scroll hword1=0x0090 hword3=0x0080 hword5=0xFF80 hword7=0x0000
	ccs_end

byte_8082FA2::
	ccs_set_camera_pos hword1=0x00C0 hword3=0xFF40 hword5=0x0000
	ccs_end

ccs_8082FAA:
	ccs_simple_scroll hword1=0x00DC hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

cutscenescript_8082FB4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A849C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8082F90
	cs_spawn_ow_npc_objects_from_list ptr2=off_8058578
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80830EA
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8082F98
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_play_sound hword1=0x00E3
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x015C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_492
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_495
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_496
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_5
	cs_terminate_gfx_anim byte1=0x0C
	cs_terminate_gfx_anim byte1=0x0D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_494
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=byte_8082FA2
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80830EA
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8082FAA
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x78
	cs_run_cutscene_camera_script ptr1=byte_8082FA2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8083091:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_492
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_495
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_496
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_5
	cs_terminate_gfx_anim byte1=0x0C
	cs_terminate_gfx_anim byte1=0x0D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_494
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0180 signedhword6=-0x00C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_439
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_80830F4
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80830EA:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8083091
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_80830F4::
	.word 0x07000180, 0x00240000, 0x00E00000, 0x00000000

ccs_8083104:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_808310A:
	.balign 4, 0

cutscenescript_808310C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A880C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8083104
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80673DC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8083191
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_808315A:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0240 signedhword6=0x0E00 signedhword8=0x0040
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_43B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8083191::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808315A
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808319A:
	.balign 4, 0

ccs_808319C:
	ccs_set_camera_pos hword1=0x01E0 hword3=0xF5C0 hword5=0x0000
	ccs_end

cutscenescript_80831A4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A8928 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808319C
	cs_spawn_ow_npc_objects_from_list ptr2=off_8067524
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80831F3
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80

cutscenescript_80831DC:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_43D
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0041
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80831F3:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80831DC
	cs_end_for_map_reload_maybe_8037c64

ccs_80831FC:
	ccs_set_camera_pos hword1=0x01E0 hword3=0xF5C0 hword5=0x0000
	ccs_end

ccs_8083204:
	ccs_simple_scroll hword1=0x003C hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

end_ccs_808320E:
	.balign 4, 0

cutscenescript_8083210:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A8AAC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80831FC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806756C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x80
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80832BF
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
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8083204
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_808328C:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_490
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_491
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_493
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_494
	cs_write_gamestate_byte byte1=0x06 byte2=0x05
	cs_write_gamestate_byte byte1=0x07 byte2=0x02
	cs_set_event_flag byte1=0xFF event16_2=EVENT_43F
	cs_pause byte1=0xFF byte2=0x1E
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=unk_80832C8
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80832BF:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808328C
	cs_end_for_map_reload_maybe_8037c64

unk_80832C8:
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000
byte_80832D8::
	ccs_set_camera_pos hword1=0x03C0 hword3=0xFD20 hword5=0x0000
	ccs_end

ccs_80832E0:
	ccs_simple_scroll hword1=0x0014 hword3=0x0000 hword5=0x0040 hword7=0x0000
	ccs_end

ccs_80832EA:
	ccs_simple_scroll hword1=0x0014 hword3=0x0000 hword5=0xFFC0 hword7=0x0000
	ccs_end

cutscenescript_80832F4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A8C14 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80832D8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805568C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_load_gfx_anims ptr1=off_80348FC
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0x04
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808342F
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083427
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80832E0
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80832EA
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80833E1:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_give_item byte2=0x04 byte3=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_6
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x03C0 signedhword6=-0x02E0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_441
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8083427:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80833E1

byte_808342F::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_80833E1
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808344C:
	ccs_set_camera_pos hword1=0x0120 hword3=0xEB20 hword5=0x0100
	ccs_end

cutscenescript_8083454:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87A9420 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808344C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_80747F4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80834D4
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

byte_808349D::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_400
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x01A0 signedhword6=-0x1360 signedhword8=0x0100
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80834D4:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808349D

	thumb_local_start
sub_80834DC:
	push {lr}
	bl sub_8005D88
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_80834DC


byte_80834E8::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject1_Coords
	ccs_end

byte_80834EE::
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x00D0 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_80834FB:
	.balign 4, 0
cutscenescript_80834FC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A9598 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80834E8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805892C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_set_cutscene_skip_script ptr1=byte_8083595
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=byte_80834EE
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8083553:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_400
	cs_write_gamestate_byte byte1=0x06 byte2=0x10
	cs_write_gamestate_byte byte1=0x07 byte2=0x10
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_501
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80835A0
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8083595::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8083553
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_80835A0:
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000

ccs_80835B0:
	ccs_set_camera_pos hword1=0x1280 hword3=0xF1E0 hword5=0x0000
	ccs_end

cutscenescript_80835B8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_call_native_with_return_value ptr1=sub_8083F34+1
	cs_make_ow_player_invisible
	cs_decomp_text_archive ptr1=CompText87DA6E0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80835B0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8067154
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083675
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_play_sound hword1=0x017D
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083675
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E6
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082E18
	cs_wait_cutscene_process byte1=0x20

cutscenescript_8083635:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_452
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E6
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082E3C
	cs_wait_cutscene_process byte1=0x20
	cs_make_ow_player_visible
	cs_enable_ow_player_wall_collision_809e248
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=0x1280 signedhword6=-0x0EC0 signedhword8=0x0000
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8083675:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8083635
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808367E:
	.balign 4, 0

ccs_8083680:
	ccs_set_camera_pos hword1=0xEB20 hword3=0xFB00 hword5=0x0000
	ccs_end

cutscenescript_8083688:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_call_native_with_return_value ptr1=sub_8083F34+1
	cs_decomp_text_archive ptr1=CompText87DA5D8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8083680
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806707C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083745
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_play_sound hword1=0x017D
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083745
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E5
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082E18
	cs_wait_cutscene_process byte1=0x20

cutscenescript_8083705:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_450
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E5
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082E3C
	cs_wait_cutscene_process byte1=0x20
	cs_make_ow_player_visible
	cs_enable_ow_player_wall_collision_809e248
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=-0x1440 signedhword6=-0x0560 signedhword8=0x0000
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8083745:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8083705
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808374E:
	.balign 4, 0

ccs_8083750:
	ccs_set_camera_pos hword1=0x13C0 hword3=0x1280 hword5=0x0000
	ccs_end

cutscenescript_8083758:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_call_native_with_return_value ptr1=sub_8083F34+1
	cs_decomp_text_archive ptr1=CompText87DA494 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8083750
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8066FC4
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083815
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_play_sound hword1=0x017D
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083815
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E4
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082E18
	cs_wait_cutscene_process byte1=0x20

cutscenescript_80837D5:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_44E
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E4
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082E3C
	cs_wait_cutscene_process byte1=0x20
	cs_make_ow_player_visible
	cs_enable_ow_player_wall_collision_809e248
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=0x12E0 signedhword6=0x1280 signedhword8=0x0000
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8083815:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80837D5
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808381E:
	.balign 4, 0

ccs_8083820:
	ccs_set_camera_pos hword1=0xED20 hword3=0x1280 hword5=0x0000
	ccs_end

cutscenescript_8083828:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_call_native_with_return_value ptr1=sub_8083F34+1
	cs_decomp_text_archive ptr1=CompText87DA320 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8083820
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8066F10
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80838E5
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_play_sound hword1=0x017D
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80838E5
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E3
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082E18
	cs_wait_cutscene_process byte1=0x20

cutscenescript_80838A5:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_44C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E3
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082E3C
	cs_wait_cutscene_process byte1=0x20
	cs_make_ow_player_visible
	cs_enable_ow_player_wall_collision_809e248
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=-0x11A0 signedhword6=0x1280 signedhword8=0x0000
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80838E5:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80838A5
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_80838F0:
	ccs_set_camera_pos hword1=0x0980 hword3=0xF0C0 hword5=0x0000
	ccs_end

cutscenescript_80838F8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_call_native_with_return_value ptr1=sub_8083F34+1
	cs_decomp_text_archive ptr1=CompText87DA230 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80838F0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8066D50
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80839B5
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_play_sound hword1=0x017D
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80839B5
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E2
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082DB0
	cs_wait_cutscene_process byte1=0x20

cutscenescript_8083975:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_44A
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E2
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082DF4
	cs_wait_cutscene_process byte1=0x20
	cs_make_ow_player_visible
	cs_enable_ow_player_wall_collision_809e248
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=0x0920 signedhword6=-0x0F40 signedhword8=0x0000
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80839B5:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8083975
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_80839BE:
	.balign 4, 0

ccs_80839C0:
	ccs_set_camera_pos hword1=0x01C0 hword3=0x10A0 hword5=0x0000
	ccs_end

cutscenescript_80839C8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_call_native_with_return_value ptr1=sub_8083F34+1
	cs_decomp_text_archive ptr1=CompText87DA158 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80839C0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8066C74
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083A85
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_play_sound hword1=0x017D
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083A85
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E1
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082DB0
	cs_wait_cutscene_process byte1=0x20

cutscenescript_8083A45:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_448
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E1
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082DF4
	cs_wait_cutscene_process byte1=0x20
	cs_make_ow_player_visible
	cs_enable_ow_player_wall_collision_809e248
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=0x0120 signedhword6=0x10A0 signedhword8=0x0000
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8083A85:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8083A45
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8083A8E:
	.byte 0x00
	.byte 0x00

ccs_8083A90:
	ccs_set_camera_pos hword1=0x0A20 hword3=0x0F80 hword5=0x0000
	ccs_end

cutscenescript_8083A98:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_call_native_with_return_value ptr1=sub_8083F34+1
	cs_decomp_text_archive ptr1=CompText87DA020 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8083A90
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8066B78
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083B55
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_play_sound hword1=0x017D
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8083B55
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E0
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082DB0
	cs_wait_cutscene_process byte1=0x20

cutscenescript_8083B15:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_446
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4E0
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8082DF4
	cs_wait_cutscene_process byte1=0x20
	cs_make_ow_player_visible
	cs_enable_ow_player_wall_collision_809e248
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=0x0A40 signedhword6=0x0F00 signedhword8=0x0000
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8083B55:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8083B15
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8083B5E:
	.balign 4, 0

ccs_8083B60:
	ccs_set_camera_pos hword1=0x12E0 hword3=0xFAA0 hword5=0x0000
	ccs_end

cutscenescript_8083B68:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_decomp_text_archive ptr1=TextScript87DA85C
	cs_run_cutscene_camera_script ptr1=ccs_8083B60
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8066AD4
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8083C30
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x06
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4DF
	cs_call_native_with_return_value ptr1=clear_8083D7C+1
	cs_call_native_with_return_value ptr1=sub_8083DF0+1
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8083BF0::
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_444
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_4DF
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_4EA

byte_8083C01::
	.byte 0x52, 0x0
byte_8083C03::
	.byte 0x5, 0x1
byte_8083C05::
	.byte 0x27, 0xFF
byte_8083C07::
	.byte 0xC, 0x8
byte_8083C09::
	.byte 0x7, 0x3F, 0x30, 0x3F, 0x18, 0x4A, 0x3, 0x54, 0x1, 0x3B
	.byte 0x41, 0x4, 0xFF, 0x1, 0x60, 0x12, 0x60, 0xFB, 0x0, 0x0
	.byte 0x47, 0x0, 0xFF, 0x7, 0x40, 0x4, 0xFF, 0x7, 0x2, 0xFF
	.byte 0x1E, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x3F, 0x4, 0x0
dword_8083C30::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8083BF0

off_8083C38::
	.word unk_2013960

	thumb_local_start
sub_8083C3C:
	push {r4-r6, lr}
	mov r5, r10
	ldr r5, [r5, #0x3c]
	ldrb r0, [r5, #4]
	cmp r0, #0x85
	bne loc_8083C4C
	mov r6, #8
	b loc_8083C4E
loc_8083C4C:
	mov r6, #0xb
loc_8083C4E:
	mov r4, #0
loc_8083C50:
	push {r5}
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl SpawnOverworldMapObject
	strb r6, [r5, #5]
	pop {r5}
	add r4, #1
	cmp r4, r6
	blt loc_8083C50
	mov r0, #0
	pop {r4-r6, pc}
	thumb_func_end sub_8083C3C

	thumb_local_start
sub_8083C6C:
	push {r4-r5, lr}
	ldr r5, off_8083CD0 // =off_8083C38
	ldr r5, [r5, #0]
	movflag EVENT_4E9
	bl TestEventFlagFromImmediate
	bne loc_8083CC0
	ldr r4, =byte_8083CD4
	mov r0, r10
	ldr r0, [r0, #0x3c]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq loc_8083C90
	ldr r4, =byte_8083CE0
	cmp r0, #1
	beq loc_8083C90
	ldr r4, =byte_8083CF2
loc_8083C90:
	bl reqBBS_81409E4
	cmp r0, #0
	beq loc_8083CC0
	cmp r0, #0x60
	blt loc_8083CC0
	cmp r0, #0x68
	bgt loc_8083CC0
	sub r0, #0x60
	strb r0, [r5, #4]
	lsl r0, r0, #1
	ldrh r1, [r4, r0]
	add r4, r1, #0
	add r0, r1, #0
	bl TestEventFlag
	bne loc_8083CC0
	add r0, r4, #0
	bl SetEventFlag
	movflag EVENT_4E9
	bl SetEventFlagFromImmediate
loc_8083CC0:
	pop {r4-r5, pc}
	.pool
	thumb_func_end sub_8083C6C

off_8083CD0::
	.word off_8083C38

byte_8083CD4::
	.byte 0xEC, 0x4, 0xED, 0x4, 0xEE, 0x4, 0xEF, 0x4, 0xF0, 0x4, 0xF1
	.byte 0x4
byte_8083CE0::
	.byte 0xF2, 0x4, 0xF3, 0x4, 0xF4, 0x4, 0xF5, 0x4, 0xF6, 0x4, 0xF7
	.byte 0x4, 0xF8, 0x4, 0xF9, 0x4, 0xFA, 0x4
byte_8083CF2::
	.word 0x0FD40FD3, 0x0FD60FD5, 0x0FD80FD7, 0x0FDA0FD9
	.byte 0xDB
	.byte 0x0F

cutscenescript_8083D04:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x32
	cs_play_sound hword1=0x0146
	cs_call_native_with_return_value ptr1=sub_8083D34+1
	cs_call_native_with_return_value ptr1=sub_8083D44+1
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_call_native_with_return_value ptr1=sub_808429C+1
	cs_pause byte1=0xFF byte2=0x0A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_4EA
	cs_set_event_flag byte1=0xFF event16_2=EVENT_4EB
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8083D33:
	.balign 4, 0

	thumb_local_start
sub_8083D34:
	push {r5, lr}
	ldr r0, off_8083D74 // =off_8083C38
	ldr r5, [r0, #0]
	mov r0, #0x5a
	strb r0, [r5, #6]
	mov r0, #0
	pop {r5, pc}
	.balign 4, 0
	thumb_func_end sub_8083D34

	thumb_local_start
sub_8083D44::
	push {r5,lr}
	ldr r0, off_8083D74 // =off_8083C38 
	ldr r5, [r0]
	ldrb r0, [r5,#0x6] // (byte_2013966 - 0x2013960)
	sub r0, #1
	strb r0, [r5,#0x6] // (byte_2013966 - 0x2013960)
	bne loc_8083D56
	mov r0, #0
	pop {r5,pc}
loc_8083D56::
	ldrb r0, [r5,#0xf] // (byte_201396F - 0x2013960)
	cmp r0, #0
	beq loc_8083D60
	sub r0, #1
	strb r0, [r5,#0xf] // (byte_201396F - 0x2013960)
loc_8083D60::
	ldrb r0, [r5,#0x6] // (byte_2013966 - 0x2013960)
	mov r1, #0xf
	and r0, r1
	cmp r0, r1
	bne loc_8083D70
	ldr r0, off_8083D78 // =0x12c 
	bl PlaySoundEffect
loc_8083D70::
	mov r0, #1
	pop {r5,pc}
	.balign 4, 0
	thumb_func_end sub_8083D44

off_8083D74::
	.word off_8083C38
off_8083D78::
	.word 0x0000012C

	thumb_local_start
clear_8083D7C:
	push {r4-r7, lr}
	ldr r0, off_8083DEC // =off_8083C38
	ldr r0, [r0, #0]
	mov r1, #0x20
	bl ZeroFillByWord
	movflag EVENT_445
	bl ClearEventFlagFromImmediate
	movflag EVENT_447
	bl ClearEventFlagFromImmediate
	movflag EVENT_449
	bl ClearEventFlagFromImmediate
	movflag EVENT_44B
	bl ClearEventFlagFromImmediate
	movflag EVENT_44D
	bl ClearEventFlagFromImmediate
	movflag EVENT_44F
	bl ClearEventFlagFromImmediate
	movflag EVENT_451
	bl ClearEventFlagFromImmediate
	mov r0, #0
	pop {r4-r7, pc}
	thumb_func_end clear_8083D7C

	thumb_local_start
sub_8083DC4:
	push {r4-r7, lr}
	movflag EVENT_4FB
	bl SetEventFlagFromImmediate
	ldr r0, off_8083DEC // =off_8083C38
	ldr r5, [r0, #0]
	bl struct_copy_8084120
	bl reqBBS_setFlag_e17b0f7_8140A00
	movflag EVENT_4FE
	bl TestEventFlagFromImmediate
	beq loc_8083DE8
	bl sub_8083FA8
loc_8083DE8:
	mov r0, #0
	pop {r4-r7, pc}
	thumb_func_end sub_8083DC4


off_8083DEC::
	.word off_8083C38

	thumb_local_start
sub_8083DF0:
	push {r4-r7, lr}
	ldr r5, =off_8083C38
	ldr r5, [r5, #0]
	bl cutscene_checkOriginalCutsceneScriptPos_8036F40
	bne loc_8083E08
	bl cutscene_checkOriginalCutsceneScriptPos_8036F58
	bne loc_8083E08
	bl sub_809E462
	beq loc_8083E18
loc_8083E08:
	bl struct_copy_80840C4
	movflag EVENT_4FD
	bl SetEventFlagFromImmediate
	mov r0, #1
	pop {r4-r7, pc}
loc_8083E18:
	movflag EVENT_4FD
	bl ClearEventFlagFromImmediate
	movflag EVENT_4EB
	bl TestEventFlagFromImmediate
	bne loc_8083ED4
	ldrb r4, [r5, #0]
	cmp r4, #0
	bgt loc_8083E40
	bl sub_80842D8
	bl sub_8084180
	add r4, #1
	strb r4, [r5, #0]
	bl reqBBS_setFlag_e17b0f7_8140A00
loc_8083E40:
	cmp r4, #1
	bgt loc_8083E6C
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq loc_8083E56
	sub r0, #1
	strh r0, [r5, #0x14]
	beq loc_8083E56
	add r6, r0, #0
	bl sub_8083F80
loc_8083E56:
	ldrh r0, [r5, #0x16]
	sub r0, #1
	strh r0, [r5, #0x16]
	beq loc_8083E64
	bl load_gfx_anim_8083FC0
	b loc_8083F28
loc_8083E64:
	add r4, #1
	strb r4, [r5, #0]
	mov r0, #0
	strb r0, [r5, #2]
loc_8083E6C:
	cmp r4, #2
	bgt loc_8083E98
	movflag EVENT_PET_DISABLED
	bl SetEventFlagFromImmediate
	movflag EVENT_1739
	bl SetEventFlagFromImmediate
	movflag EVENT_4FF
	bl SetEventFlagFromImmediate
	mov r0, #0x5a
	strh r0, [r5, #0x14]
	mov r0, #0
	strb r0, [r5, #8]
	bl sub_8084214
	add r4, #1
	strb r4, [r5, #0]
loc_8083E98:
	cmp r4, #3
	bgt loc_8083EAE
	ldrh r0, [r5, #0x14]
	sub r0, #1
	strh r0, [r5, #0x14]
	beq loc_8083EAE
	bl sub_8084080
	b loc_8083F28
	add r4, #1
	strb r4, [r5, #0]
loc_8083EAE:
	cmp r4, #4
	bgt loc_8083EC6
	mov r0, #0x28
	strh r0, [r5, #0x12]
	mov r0, #4
	strb r0, [r5, #7]
	add r4, #1
	strb r4, [r5, #0]
	mov r0, #0
	strb r0, [r5, #1]
	mov r0, #2
	strb r0, [r5, #8]
loc_8083EC6:
	ldrh r0, [r5, #0x12]
	sub r0, #1
	strh r0, [r5, #0x12]
	beq loc_8083ED4
	bl load_gfx_anim_8083FFC
	b loc_8083F28
loc_8083ED4:
	bl load_gfx_anim_8084068
	mov r0, #2
	strb r0, [r5, #8]
	mov r4, #0
	strb r4, [r5, #0]
	strb r4, [r5, #1]
	strb r4, [r5, #2]
	strb r4, [r5, #3]
	strb r4, [r5, #7]
	movflag EVENT_PET_DISABLED
	bl ClearEventFlagFromImmediate
	movflag EVENT_1739
	bl ClearEventFlagFromImmediate
	movflag EVENT_4E9
	bl ClearEventFlagFromImmediate
	movflag EVENT_4EB
	bl ClearEventFlagFromImmediate
	movflag EVENT_1700
	bl ClearEventFlagFromImmediate
	movflag EVENT_4FB
	bl ClearEventFlagFromImmediate
	movflag EVENT_4FF
	bl ClearEventFlagFromImmediate
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0
	pop {r4-r7, pc}
loc_8083F28:
	bl struct_copy_80840C4
	mov r0, #1
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_8083DF0

	thumb_local_start
sub_8083F34:
	push {r4-r7, lr}
	ldr r5, =off_8083C38
	ldr r5, [r5, #0]
	bl run_eStruct200a6a0_Callback_8002484
	bl load_gfx_anim_8084068
	mov r0, #2
	strb r0, [r5, #8]
	mov r4, #0
	strb r4, [r5, #0]
	strb r4, [r5, #1]
	strb r4, [r5, #2]
	strb r4, [r5, #3]
	strb r4, [r5, #7]
	movflag EVENT_PET_DISABLED
	bl ClearEventFlagFromImmediate
	movflag EVENT_4E9
	bl ClearEventFlagFromImmediate
	movflag EVENT_4EB
	bl ClearEventFlagFromImmediate
	movflag EVENT_4FB
	bl ClearEventFlagFromImmediate
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_8083F34

	thumb_local_start
sub_8083F80:
	push {r4-r7, lr}
	add r6, r0, #0
	ldrb r4, [r5, #1]
	cmp r4, #0
	bgt loc_8083F9A
	ldr r0, off_8083FB8 // =sub_804C058
	ldr r1, off_8083FBC // =sub_804C074
	mov r2, #0
	bl Initialize_eStruct200a6a0
	add r4, #1
	strb r4, [r5, #1]
	b loc_8083FA6
loc_8083F9A:
	cmp r6, #1
	bgt loc_8083FA6
	bl run_eStruct200a6a0_Callback_8002484
	mov r0, #0
	strb r0, [r5, #1]
loc_8083FA6:
	pop {r4-r7, pc}
	thumb_func_end sub_8083F80

	thumb_local_start
sub_8083FA8:
	push {r4-r7, lr}
	ldr r0, off_8083FB8 // =sub_804C058
	ldr r1, off_8083FBC // =sub_804C074
	mov r2, #0
	bl Initialize_eStruct200a6a0
	pop {r4-r7, pc}
	.balign 4, 0
	thumb_func_end sub_8083FA8

off_8083FB8::
	.word sub_804C058+1
off_8083FBC::
	.word sub_804C074+1

	thumb_local_start
load_gfx_anim_8083FC0:
	push {r4-r7, lr}
	ldrb r4, [r5, #2]
	cmp r4, #0
	bgt loc_8083FD0
	bl uses_svc_8084308
	add r4, #1
	strb r4, [r5, #2]
loc_8083FD0:
	ldrb r0, [r5, #0x10]
	sub r0, #1
	strb r0, [r5, #0x10]
	bne loc_8083FFA
	ldrb r6, [r5, #7]
	add r7, r6, #0
	lsl r7, r7, #2
	ldr r0, off_8084038 // =off_8084040
	ldr r0, [r0, r7]
	bl LoadGFXAnim
	ldr r0, off_808403C // =off_8084054
	ldr r0, [r0, r7]
	bl LoadGFXAnim
	mov r4, #0
	strb r4, [r5, #2]
	cmp r6, #5
	bge loc_8083FFA
	add r6, #1
	strb r6, [r5, #7]
loc_8083FFA:
	pop {r4-r7, pc}
	thumb_func_end load_gfx_anim_8083FC0

	thumb_local_start
load_gfx_anim_8083FFC:
	push {r4-r7, lr}
	ldrb r4, [r5, #1]
	cmp r4, #0
	bgt loc_808400C
	mov r0, #5
	strb r0, [r5, #0x10]
	add r4, #1
	strb r4, [r5, #1]
loc_808400C:
	ldrb r0, [r5, #0x10]
	sub r0, #1
	strb r0, [r5, #0x10]
	bne loc_8084036
	ldrb r6, [r5, #7]
	add r7, r6, #0
	lsl r7, r7, #2
	ldr r0, off_8084038 // =off_8084040
	ldr r0, [r0, r7]
	bl LoadGFXAnim
	ldr r0, off_808403C // =off_8084054
	ldr r0, [r0, r7]
	bl LoadGFXAnim
	mov r4, #0
	strb r4, [r5, #1]
	cmp r6, #0
	beq loc_8084036
	sub r6, #1
	strb r6, [r5, #7]
loc_8084036:
	pop {r4-r7, pc}
	thumb_func_end load_gfx_anim_8083FFC

off_8084038::
	.word off_8084040
off_808403C::
	.word off_8084054

off_8084040::
	.word dword_8140AA4
	.word dword_8140AD4
	.word dword_8140B1C
	.word dword_8140B4C
	.word dword_8140B7C
off_8084054::
	.word dword_8140ABC
	.word dword_8140AEC
	.word dword_8140B34
	.word dword_8140B64
	.word dword_8140B94

	thumb_local_start
load_gfx_anim_8084068:
	push {r4-r7, lr}
	ldr r0, off_8084078 // =byte_8140BAC
	bl LoadGFXAnim
	ldr r0, off_808407C // =byte_8140BF0
	bl LoadGFXAnim
	pop {r4-r7, pc}
	thumb_func_end load_gfx_anim_8084068

off_8084078::
	.word byte_8140BAC
off_808407C::
	.word byte_8140BF0

	thumb_local_start
sub_8084080:
	push {r4-r7, lr}
	ldrb r4, [r5, #2]
	cmp r4, #0
	bgt loc_8084094
	bl sub_80841F0
	mov r0, #0x3c
	strb r0, [r5, #0x10]
	add r4, #1
	strb r4, [r5, #2]
loc_8084094:
	cmp r4, #1
	bgt loc_80840B8
	ldrb r0, [r5, #0x10]
	sub r0, #1
	strb r0, [r5, #0x10]
	bne loc_80840B8
	ldrb r0, [r5, #9]
	add r0, #1
	strb r0, [r5, #9]
	cmp r0, #1
	blt loc_80840B4
	mov r4, #2
	strb r4, [r5, #2]
	mov r0, #0
	strb r0, [r5, #9]
	b loc_80840B8
loc_80840B4:
	mov r4, #0
	strb r4, [r5, #2]
loc_80840B8:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq loc_80840C2
	sub r0, #1
	strb r0, [r5, #0xf]
loc_80840C2:
	pop {r4-r7, pc}
	thumb_func_end sub_8084080

	thumb_local_start
struct_copy_80840C4:
	push {lr}
	ldr r0, off_808417C // =unk_2000AC0
	ldrb r1, [r5, #0]
	strb r1, [r0, #0]
	ldrb r1, [r5, #1]
	strb r1, [r0, #1]
	ldrb r1, [r5, #2]
	strb r1, [r0, #2]
	ldrb r1, [r5, #3]
	strb r1, [r0, #3]
	ldrb r1, [r5, #4]
	strb r1, [r0, #4]
	ldrb r1, [r5, #5]
	strb r1, [r0, #5]
	ldrb r1, [r5, #7]
	strb r1, [r0, #7]
	ldrb r1, [r5, #8]
	strb r1, [r0, #8]
	ldrb r1, [r5, #9]
	strb r1, [r0, #9]
	ldrb r1, [r5, #0xa]
	strb r1, [r0, #0xa]
	ldrb r1, [r5, #0xb]
	strb r1, [r0, #0xb]
	ldrb r1, [r5, #0xc]
	strb r1, [r0, #0xc]
	ldrb r1, [r5, #0xd]
	strb r1, [r0, #0xd]
	ldrb r1, [r5, #0xe]
	strb r1, [r0, #0xe]
	ldrb r1, [r5, #0xf]
	strb r1, [r0, #0x1e]
	ldrb r1, [r5, #0x10]
	strb r1, [r0, #0x1f]
	ldrh r1, [r5, #0x12]
	strh r1, [r0, #0x20]
	ldrh r1, [r5, #0x14]
	strh r1, [r0, #0x22]
	ldrh r1, [r5, #0x16]
	strh r1, [r0, #0x24]
	ldr r1, [r5, #0x18]
	str r1, [r0, #0x28]
	ldr r1, [r5, #0x1c]
	str r1, [r0, #0x2c]
	pop {pc}
	.balign 4, 0
	thumb_func_end struct_copy_80840C4

	thumb_local_start
struct_copy_8084120:
	push {lr}
	ldr r0, off_808417C // =unk_2000AC0
	ldrb r1, [r0, #0]
	strb r1, [r5, #0]
	ldrb r1, [r0, #1]
	strb r1, [r5, #1]
	ldrb r1, [r0, #2]
	strb r1, [r5, #2]
	ldrb r1, [r0, #3]
	strb r1, [r5, #3]
	ldrb r1, [r0, #4]
	strb r1, [r5, #4]
	ldrb r1, [r0, #5]
	strb r1, [r5, #5]
	ldrb r1, [r0, #7]
	strb r1, [r5, #7]
	ldrb r1, [r0, #8]
	strb r1, [r5, #8]
	ldrb r1, [r0, #9]
	strb r1, [r5, #9]
	ldrb r1, [r0, #0xa]
	strb r1, [r5, #0xa]
	ldrb r1, [r0, #0xb]
	strb r1, [r5, #0xb]
	ldrb r1, [r0, #0xc]
	strb r1, [r5, #0xc]
	ldrb r1, [r0, #0xd]
	strb r1, [r5, #0xd]
	ldrb r1, [r0, #0xe]
	strb r1, [r5, #0xe]
	ldrb r1, [r0, #0x1e]
	strb r1, [r5, #0xf]
	ldrb r1, [r0, #0x1f]
	strb r1, [r5, #0x10]
	ldrh r1, [r0, #0x20]
	strh r1, [r5, #0x12]
	ldrh r1, [r0, #0x22]
	strh r1, [r5, #0x14]
	ldrh r1, [r0, #0x24]
	strh r1, [r5, #0x16]
	ldr r1, [r0, #0x28]
	str r1, [r5, #0x18]
	ldr r1, [r0, #0x2c]
	str r1, [r5, #0x1c]
	pop {pc}
	.balign 4, 0
	thumb_func_end struct_copy_8084120

off_808417C::
	.word unk_2000AC0

	thumb_local_start
sub_8084180:
	push {r4, lr}
	bl sub_80841B0
	add r4, r0, #0
	mov r0, #4
	bl reqBBS_81409D0
	cmp r0, r4
	bne loc_808419C
	cmp r0, #3
	bne loc_808419A
	mov r0, #0
	b loc_808419C
loc_808419A:
	add r0, #1
loc_808419C:
	strb r0, [r5, #5]
	movflag EVENT_4DF
	bl TestEventFlagFromImmediate
	beq loc_80841AC
	mov r0, #1
	strb r0, [r5, #5]
loc_80841AC:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_8084180

	thumb_local_start
sub_80841B0:
	push {lr}
	ldr r2, unk_80841CC // =byte_80841D8
	mov r0, r10
	ldr r0, [r0, #0x3c]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq loc_80841C6
	ldr r2, byte_80841D0 // =byte_80841DE
	cmp r0, #1
	beq loc_80841C6
	ldr r2, byte_80841D4 // =byte_80841E7
loc_80841C6:
	ldrb r1, [r5, #4]
	ldrb r0, [r2, r1]
	pop {pc}
	thumb_func_end sub_80841B0

unk_80841CC::
	.word byte_80841D8
byte_80841D0::
	.word byte_80841DE
byte_80841D4::
	.word byte_80841E7
byte_80841D8::
	.byte 0x2, 0x1, 0x3, 0x2, 0x3, 0x0
byte_80841DE::
	.byte 0x3, 0x3, 0x3, 0x1, 0x2, 0x2, 0x1, 0x0, 0x0
byte_80841E7::
	.byte 0x3, 0x1, 0x2, 0x2, 0x1, 0x2, 0x1, 0x1, 0x3

	thumb_local_start
sub_80841F0:
	push {r4, lr}
	mov r4, #0
loc_80841F4:
	add r0, r4, #0
	bl sub_8084258
	add r2, r1, #0
	add r1, r0, #0
	push {r5}
	mov r0, #5
	mov r3, #0x10
	lsl r3, r3, #0x10
	bl SpawnOverworldMapObject
	pop {r5}
	add r4, #1
	cmp r4, #5
	blt loc_80841F4
	pop {r4, pc}
	thumb_func_end sub_80841F0

	thumb_local_start
sub_8084214:
	push {r4-r7, lr}
	bl ReadOWPlayerObjectCoords
	ldrb r4, [r5, #5]
	cmp r4, #0
	bne loc_808422C
	mov r3, #0xc8
	lsl r3, r3, #0x10
	sub r0, r0, r3
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	b loc_8084256
loc_808422C:
	cmp r4, #1
	bne loc_808423C
	mov r3, #0xc8
	lsl r3, r3, #0x10
	sub r1, r1, r3
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	b loc_8084256
loc_808423C:
	cmp r4, #2
	bne loc_808424C
	mov r3, #0xc8
	lsl r3, r3, #0x10
	add r0, r0, r3
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	b loc_8084256
loc_808424C:
	mov r3, #0xc8
	lsl r3, r3, #0x10
	add r1, r1, r3
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
loc_8084256:
	pop {r4-r7, pc}
	thumb_func_end sub_8084214

	thumb_local_start
sub_8084258:
	push {r4-r7, lr}
	add r6, r0, #0
	lsl r6, r6, #1
	ldrb r4, [r5, #5]
	cmp r4, #0
	beq loc_8084268
	cmp r4, #2
	bne loc_8084276
loc_8084268:
	ldr r0, off_808428C // =byte_8084290
	ldrsh r0, [r0, r6]
	lsl r0, r0, #0x10
	ldr r1, [r5, #0x1c]
	add r1, r1, r0
	ldr r0, [r5, #0x18]
	b loc_8084282
loc_8084276:
	ldr r1, off_808428C // =byte_8084290
	ldrsh r1, [r1, r6]
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x18]
	add r0, r0, r1
	ldr r1, [r5, #0x1c]
loc_8084282:
	mov r2, #0x10
	lsl r2, r2, #0x10
	sub r0, r0, r2
	add r1, r1, r2
	pop {r4-r7, pc}
	thumb_func_end sub_8084258

off_808428C::
	.word byte_8084290

byte_8084290::
	.word 0xFFCEFF9C, 0x00320000, 0x00000064

	thumb_local_start
sub_808429C:
	push {lr}
	mov r0, #0x6b
	bl PlaySoundEffect
	mov r0, #0
	bl GetMaxAndCurHPForCurPETNavi_80010D4
	mov r3, r10
	ldr r3, [r3, #0x3c]
	ldrb r3, [r3, #4]
	cmp r3, #0x85
	beq loc_80842C2
	cmp r0, #0xa
	bgt loc_80842BC
	mov r1, #1
	b loc_80842CE
loc_80842BC:
	mov r2, #0xa
	sub r1, r0, r2
	b loc_80842CE
loc_80842C2:
	cmp r0, #0x64
	bgt loc_80842CA
	mov r1, #1
	b loc_80842CE
loc_80842CA:
	mov r2, #0x64
	sub r1, r0, r2
loc_80842CE:
	mov r0, #0
	bl sub_80010EC
	mov r0, #0
	pop {pc}
	thumb_func_end sub_808429C

	thumb_local_start
sub_80842D8:
	push {r4-r7, lr}
	ldrb r4, [r5, #4]
	mov r0, r10
	ldr r0, [r0, #0x3c]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq loc_80842EE
	add r4, #6
	cmp r0, #1
	beq loc_80842EE
	add r4, #9
loc_80842EE:
	ldr r1, =byte_8140A74
	ldrb r0, [r1, r4]
	strh r0, [r5, #0x14]
	ldr r1, =byte_8140A8C
	ldrb r0, [r1, r4]
	strh r0, [r5, #0x16]
	strb r0, [r5, #0xb]
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_80842D8

	thumb_local_start
uses_svc_8084308:
	push {lr}
	ldrb r0, [r5, #0xb]
	mov r1, #5
	svc 6
	strb r0, [r5, #0x10]
	strb r0, [r5, #0xd]
	pop {pc}
	.balign 4, 0
	thumb_func_end uses_svc_8084308

byte_8084318::
	ccs_set_camera_pos hword1=0xFB80 hword3=0x0100 hword5=0x0000
	ccs_end

byte_8084320::
	ccs_simple_scroll hword1=0x00D0 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808432A:
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8084334:
	ccs_simple_scroll hword1=0x00B0 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0028 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

byte_8084347::
	ccs_set_camera_pos hword1=0xFA00 hword3=0xFF80 hword5=0x0000
	ccs_end

byte_808434F::
	ccs_simple_scroll hword1=0x0038 hword3=0x0080 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0084 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8084362:
	.byte 0x00
	.byte 0x00
cutscenescript_8084364:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87A9A20 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8084318
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055774
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808452F
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_disable_cutscene_skip_script
	cs_run_cutscene_camera_script ptr1=byte_8084320
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084527
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808432A
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
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
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8084334
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_808452F
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x20
	cs_run_cutscene_camera_script ptr1=byte_8084347
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80557A4
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084527
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x21
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808434F
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x21
	cs_wait_var_equal byte1=0x08 byte2=0x22
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x25
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80844D9:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x02E0 signedhword6=-0x0240 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_503
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_add_mail_range hword1=0x1CDE byte3=0x01
	cs_add_mail_range hword1=0x1CDF byte3=0x01
	cs_add_mail_range hword1=0x1CE0 byte3=0x01
	cs_add_mail_range hword1=0x1CE1 byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8084527:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80844D9

cutscenescript_808452F:
	.word 0x3740003C, off_80348FC, 0xFF18FF27, 0x01FF0207, 0x080CFF27, 0x44D91507, 0x00000808
	.byte 0x00

ccs_808454C:
	ccs_set_camera_pos hword1=0x03E0 hword3=0xFDC0 hword5=0x0000
	ccs_end

byte_8084554::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AA07C + COMPRESSED_PTR_FLAG
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_539
	cs_run_cutscene_camera_script ptr1=ccs_808454C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055A88
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084624
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_event_flag byte1=0xFF event16_2=EVENT_539
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80845E6::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x11
	cs_take_item byte2=0x07 byte3=0x01
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x02A0 signedhword6=-0x0240 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_505
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8084624:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80845E6

ccs_808462C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8084632:
	ccs_simple_scroll hword1=0x003E hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

cutscenescript_808463C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AA3D0 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808462C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806F4AC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x10
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80846C6
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8084632
	cs_wait_camera_script
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
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80

cutscenescript_80846AF:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_507
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0042
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

byte_80846C6::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80846AF
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_80846D0:
	ccs_set_camera_pos hword1=0x06E0 hword3=0xFF20 hword5=0x0000
	ccs_end

ccs_80846D8:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0020 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_80846E5:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_80846E8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AA594 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80846D0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806F56C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x02010800
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084772
	cs_pause byte1=0xFF byte2=0x5A
	cs_free_ow_map_object nybble1=0x00
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80846D8
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x0A

cutscenescript_808474E:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_509
	cs_give_item byte2=0x08 byte3=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_808477C
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8084772:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808474E
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808477C:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000

ccs_808478C:
	ccs_set_camera_pos hword1=0x13A0 hword3=0x08A0 hword5=0x0000
	ccs_end

ccs_8084794:
	ccs_set_camera_pos hword1=0x13A0 hword3=0x07E0 hword5=0x0000
	ccs_end

ccs_808479C:
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_80847A6:
	.byte 0x00
	.byte 0x00
cutscenescript_80847A8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AA7E4 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808478C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807481C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084912
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0xFF
	cs_set_cutscene_skip_script ptr1=cutscenescript_808491A
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x07
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1
	cs_run_cutscene_camera_script ptr1=ccs_8084794
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0xFF
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084912
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8084934
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x78
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8084943
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8084943
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8084934
	cs_pause byte1=0xFF byte2=0x78
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=ccs_808479C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80848C6::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_take_item byte2=0x08 byte3=0x01
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_kill_cutscene_process byte1=0x20
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x13A0 signedhword6=0x0720 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_50B
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8084912:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80848C6

cutscenescript_808491A:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_80848C6

byte_8084934::
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_8084934

byte_8084943::
	cs_do_camera_shake byte1=0x02 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E4
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_8084943
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8084954:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_808495A:
	.byte 0x00
	.byte 0x00

cutscenescript_808495C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AAB40 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8084954
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807669C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80849E8
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x0A

byte_80849C8::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x12
	cs_set_event_flag byte1=0xFF event16_2=EVENT_50D
	cs_pause byte1=0xFF byte2=0x1E
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_80849F0
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80849E8:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80849C8

unk_80849F0:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
ccs_8084A00:
	ccs_set_camera_pos hword1=0x08E0 hword3=0x0420 hword5=0x0000
	ccs_end

ccs_8084A08:
	ccs_simple_scroll hword1=0x00A0 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8084A12:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject1_Coords
	ccs_end

ccs_8084A18:
	ccs_wait hword1=0x0020
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

end_ccs_8084A25:
	.byte 0x00
	.byte 0x00
	.byte 0x00
byte_8084A28::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AAECC + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8084A00
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_80507F4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084B06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8084A08
	cs_wait_camera_script
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084B06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x80
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_8084A12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8084A18
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_var byte1=0x08 byte2=0x00
	cs_set_event_flag byte1=0xFF event16_2=EVENT_50F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_34
	cs_jump destination1=cutscenescript_809B679

cutscenescript_8084ACC:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_3A
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_50F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_34
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_8084B10
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8084B06:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8084ACC
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8084B10::
	.word 0x05000003, 0x01460000, 0x001C0000, 0x00400000

ccs_8084B20:
	ccs_set_camera_pos hword1=0x0940 hword3=0x0900 hword5=0xFE00
	ccs_end

ccs_8084B28:
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_8084B32::
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

byte_8084B3F::
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_8084B49:
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

end_ccs_8084B53:
	.byte 0x00
cutscenescript_8084B54:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AB048 + COMPRESSED_PTR_FLAG
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_53A
	cs_run_cutscene_camera_script ptr1=ccs_8084B20
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805B71C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8084CBD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8084B28
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_event_flag byte1=0xFF event16_2=EVENT_53A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8084B32
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8084B3F
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8084B49
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x17
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8084C8A:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0940 signedhword6=0x0300 signedhword8=-0x0200
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8084CBD:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8084C8A
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8084CC8:
	ccs_set_camera_pos hword1=0xFF80 hword3=0x0100 hword5=0x0000
	ccs_end

ccs_8084CD0:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8084CD6:
	.byte 0x00
	.byte 0x00
cutscenescript_8084CD8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AB438 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8084CC8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8051BDC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8084D8E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8084D8E
	cs_run_cutscene_camera_script ptr1=ccs_8084CD0
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8084D8E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8084D54:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x13
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0080 signedhword6=0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_513
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8084D8E::
	.word 0x1540003C, cutscenescript_8084D54
	.byte 0x00
	.byte 0x00

ccs_8084D98:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8084D9E:
	ccs_simple_scroll hword1=0x00A0 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_8084DA8:
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

byte_8084DB2::
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

cutscenescript_8084DBC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AB570 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8084D98
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805C860
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8084EC8
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
	cs_run_cutscene_camera_script ptr1=ccs_8084D9E
	cs_wait_camera_script
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
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8084DA8
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_set_event_flag byte1=0xFF event16_2=EVENT_53B
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8084DB2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8084E91::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0940 signedhword6=-0x0140 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_515
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8084EC8::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8084E91

byte_8084ED0::
	ccs_set_camera_pos hword1=0x0060 hword3=0x0460 hword5=0x0500
	ccs_end

ccs_8084ED8:
	ccs_set_camera_pos hword1=0xFA60 hword3=0x05E0 hword5=0x0500
	ccs_end

byte_8084EE0::
	ccs_simple_scroll hword1=0x00B8 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0024 hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8084EF3:
	ccs_simple_scroll hword1=0x00AC hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

byte_8084EFD::
	ccs_set_camera_pos hword1=0xEDC0 hword3=0x0700 hword5=0x0500
	ccs_end

ccs_8084F05:
	ccs_set_camera_pos hword1=0xFF20 hword3=0x0460 hword5=0x0500
	ccs_end

end_ccs_8084F0D:
	.byte 0x00
	.byte 0x00
	.byte 0x00
byte_8084F10::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AB96C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8084ED0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805D750
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_80850FA
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0x0025
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80850F2
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80850FA
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_8084ED8
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80850F2
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8084EE0
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8084EF3
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_run_cutscene_camera_script ptr1=ccs_8084F05
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8084EFD
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80850FA
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_run_cutscene_camera_script ptr1=ccs_8084ED8
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80850F2
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80850FA
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x09
	cs_run_cutscene_camera_script ptr1=byte_8084EFD
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0xB4
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80850F2
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x16
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80850B4::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0FE0 signedhword6=0x0540 signedhword8=0x0280
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_517
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80850F2:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80850B4

cutscenescript_80850FA:
	.word 0x3740003C, off_80348FC, 0xFF18FF27, 0x01FF0207, 0x080CFF27, 0x50B41507
	.byte 0x08
	.byte 0x08

ccs_8085114:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808511A:
	ccs_end

end_ccs_808511B:
	.word 0x00006004
	.byte 0x00
	.byte 0x00
end_cutscenescript_8085121:
	.word 0x080000FF
	.byte 0x00
	.byte 0x00
	.byte 0x00

cutscenescript_8085128:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87ABEAC + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8085114
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805C99C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80851C9
	cs_pause byte1=0xFF byte2=0xE0
	cs_run_cutscene_camera_script ptr1=ccs_808511A
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8085197:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_519
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80851D4
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80851C9:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8085197
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_80851D4:
	.word 0x03000003
	.byte 0x00
	.byte 0x00
end_cutscenescript_80851DA:
	.word 0x00000096, 0x00000036
	.byte 0xE0
	.byte 0xFF
ccs_80851E4:
	ccs_set_camera_pos hword1=0x1040 hword3=0xFDA0 hword5=0x0400
	ccs_end

byte_80851EC::
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_80851F9:
	ccs_simple_scroll hword1=0x00DF hword3=0xFE00 hword5=0x0000 hword7=0x0000
	ccs_end

byte_8085203::
	ccs_simple_scroll hword1=0x00D0 hword3=0x0100 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_808520D:
	ccs_simple_scroll hword1=0x0030 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_8085217:
	ccs_simple_scroll hword1=0x0058 hword3=0x0200 hword5=0xFE00 hword7=0x0000
	ccs_end

ccs_8085221:
	ccs_simple_scroll hword1=0x002C hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808522B:
	.byte 0x00
cutscenescript_808522C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87ABF88 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80851E4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805B878
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_3B
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_3C
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_3D
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_72
	cs_set_event_flag byte1=0xFF event16_2=EVENT_559
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_80851EC
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8085381
	cs_wait_camera_script
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
	cs_run_cutscene_camera_script ptr1=ccs_80851F9
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8085203
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808520D
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8085217
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8085221
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8085344:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x14
	cs_write_gamestate_byte byte1=0x07 byte2=0x11
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x10C0 signedhword6=-0x0160 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_51B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8085381:
	.word 0x1540003C, cutscenescript_8085344
	.byte 0x00
	.byte 0x00
	.byte 0x00

ccs_808538C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

byte_8085392::
	ccs_simple_scroll hword1=0x0030 hword3=0x0200 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x003E hword3=0x0100 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_80853A5:
	ccs_wait hword1=0x0020
	ccs_simple_scroll hword1=0x0028 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0024 hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_80853BB:
	ccs_simple_scroll hword1=0x0084 hword3=0x0000 hword5=0xFE00 hword7=0x0000
	ccs_end

end_ccs_80853C5:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_80853C8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AC2AC + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808538C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805D0A4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808549C
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8085392
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_80853A5
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80853BB
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8085465::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0500 signedhword6=-0x0CC0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_51D
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_808549C::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8085465

byte_80854A4::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_80854AA:
	ccs_simple_scroll hword1=0x0090 hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

cutscenescript_80854B4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AC654 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=byte_80854A4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805D960
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8085550
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80854AA
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_80854A4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8085519::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0420 signedhword8=0x0500
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_51F
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8085550:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8085519

ccs_8085558:
	ccs_set_camera_pos hword1=0x0080 hword3=0x08E0 hword5=0x0000
	ccs_end

ccs_8085560:
	ccs_simple_scroll hword1=0x0060 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0068 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8085573:
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_808557D:
	ccs_simple_scroll hword1=0x0020 hword3=0x0200 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8085587:
	ccs_simple_scroll hword1=0x0040 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8085591:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

byte_8085597::
	ccs_simple_scroll hword1=0x0050 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80855A1:
	ccs_simple_scroll hword1=0x0050 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_80855AB:
	.byte 0x00
byte_80855AC::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AC85C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8085558
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805CA4C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80856A8
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8085560
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x50
	cs_run_cutscene_camera_script ptr1=ccs_8085573
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x28
	cs_run_cutscene_camera_script ptr1=ccs_808557D
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0xA0
	cs_run_cutscene_camera_script ptr1=ccs_8085587
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_run_cutscene_camera_script ptr1=ccs_8085591
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8085597
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80855A1
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade

byte_8085676::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_521
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80856B0
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_80856A8::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8085676

unk_80856B0:
	.word 0x03000003
	.byte 0x00
	.byte 0x00
end_cutscenescript_80856B6:
	.word 0x00000096, 0x00000036
	.byte 0xE0
	.byte 0xFF
ccs_80856C0:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

byte_80856C6::
	ccs_end

ccs_80856C7:
	ccs_simple_scroll hword1=0x00A0 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_80856D1:
	ccs_simple_scroll hword1=0x0050 hword3=0xFE00 hword5=0x0200 hword7=0x0000
	ccs_end

ccs_80856DB:
	ccs_simple_scroll hword1=0x00A0 hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

end_ccs_80856E5:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_80856E8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AC8D8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80856C0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805BA98
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80857FC
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
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_run_cutscene_camera_script ptr1=byte_80856C6
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80856C7
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80856D1
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80856C7
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80856DB
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80857C5::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0940 signedhword6=0x0580 signedhword8=-0x0200
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_523
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_80857FC::
	.word 0x1540003C, byte_80857C5

ccs_8085804:
	ccs_set_camera_pos hword1=0xF460 hword3=0xF5A0 hword5=0x0000
	ccs_end

byte_808580C::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87ACA44 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8085804
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805BBB0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80858A3
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

cutscenescript_8085869:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0BA0 signedhword6=-0x09A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_write_gamestate_byte byte1=0x12 byte2=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_525
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_80858A3::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8085869
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_80858AC::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject1_Coords
	ccs_end

ccs_80858B2:
	ccs_simple_scroll hword1=0x008C hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_80858BC:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_80858C2:
	.byte 0x00
	.byte 0x00
byte_80858C4::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87ACBB0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_80858AC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805D9A8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8085985
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80858B2
	cs_wait_camera_script
	cs_run_cutscene_camera_script ptr1=ccs_80858BC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
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
	cs_do_pet_effect byte1=0xFF byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8085942:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0300 signedhword6=0x0420 signedhword8=0x0500
	cs_make_ow_player_visible
	cs_ow_player_sprite_special_with_arg byte1=0x10 byte2=0xFF byte3=0x00
	cs_toggle_ow_player_using_copybot_809e4bc
	cs_write_gamestate_byte byte1=0x12 byte2=0xFF
	cs_set_event_flag byte1=0xFF event16_2=EVENT_527
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8085985:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8085942
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8085990:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end
	ccs_simple_scroll hword1=0x008C hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

cutscenescript_80859A0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87ACCC8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8085990
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805DA78
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8085A60
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8085A25::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_take_item byte2=0x09 byte3=0x01
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x00
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0260 signedhword6=-0x02C0 signedhword8=0x0500
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_529
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8085A60:
	.word 0x1540003C, byte_8085A25

ccs_8085A68:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8085A6E:
	ccs_simple_scroll hword1=0x008C hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x002A hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

byte_8085A81::
	ccs_simple_scroll hword1=0x0028 hword3=0x0000 hword5=0x0100 hword7=0xFF00
	ccs_end

ccs_8085A8B:
	ccs_simple_scroll hword1=0x0028 hword3=0x0000 hword5=0xFF00 hword7=0x0100
	ccs_end

byte_8085A95::
	ccs_simple_scroll hword1=0x0050 hword3=0x0000 hword5=0x0080 hword7=0xFF80
	ccs_end

end_ccs_8085A9F:
	.byte 0x00
cutscenescript_8085AA0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87ACE80 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8085A68
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805DC1C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8085BC4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8085A6E
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x0A
	cs_play_music hword1=0x0002
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_8085A95
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8085A8B
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8085A81
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
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

byte_8085B8A::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x01C0 signedhword6=-0x02C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_8085BCC+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_52B
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8085BC4::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8085B8A

	thumb_local_start
sub_8085BCC:
	push {lr}
	mov r0, #9
	bl sub_80355DE
	str r0, [r5, #0x34]
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_8085BCC

cutscenescript_8085BDC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87AD2D0 + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8085C24
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

byte_8085C01::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_set_event_flag byte1=0xFF event16_2=EVENT_52D
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8085C24:
	.word 0x1540003C, byte_8085C01

ccs_8085C2C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8085C32:
	ccs_simple_scroll hword1=0x0030 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

cutscenescript_8085C3C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AD39C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8085C2C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806886C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8085CAC
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8085C32
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_play_music hword1=0x001C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80

byte_8085C95::
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_52F
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0043
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

dword_8085CAC::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8085C95

ccs_8085CB4:
	ccs_set_camera_pos hword1=0x1380 hword3=0xF280 hword5=0x0100
	ccs_end

ccs_8085CBC:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8085CC9:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8085CCF:
	.byte 0x00

cutscenescript_8085CD0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AD5D8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8085CB4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80688C0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8085DDC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8085DE4
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000001
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
	cs_decomp_text_archive ptr1=CompText87AD5D8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8085DDC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_run_cutscene_camera_script ptr1=ccs_8085CBC
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_run_cutscene_camera_script ptr1=ccs_8085CC9
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8085DA0::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_3B
	cs_set_event_flag byte1=0xFF event16_2=EVENT_3C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_3D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_72
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_559
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x06 byte2=0x15
	cs_set_event_flag byte1=0xFF event16_2=EVENT_531
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=unk_8085DF0
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8085DDC:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8085DA0

byte_8085DE4::
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=byte_8085DE4

unk_8085DF0:
	.word 0x04000403, 0x00000000, 0x00000000, 0x00000000
ccs_8085E00:
	ccs_set_camera_pos hword1=0xFE40 hword3=0xFD40 hword5=0x0000
	ccs_end

ccs_8085E08:
	ccs_simple_scroll hword1=0x0028 hword3=0x0000 hword5=0xFF00 hword7=0x0100
	ccs_end

ccs_8085E12:
	ccs_simple_scroll hword1=0x0028 hword3=0x0000 hword5=0x0100 hword7=0xFF00
	ccs_end

cutscenescript_8085E1C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AD6D8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8085E00
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805DCA4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8085ED2
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
	cs_run_cutscene_camera_script ptr1=ccs_8085E08
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8085E12
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8085E9B:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x01C0 signedhword6=-0x02C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_533
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8085ED2:
	.word 0x1540003C, cutscenescript_8085E9B
	.byte 0x00
	.byte 0x00

ccs_8085EDC:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8085EE2:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0026 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8085EEF:
	ccs_simple_scroll hword1=0x00A0 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_8085EF9:
	ccs_simple_scroll hword1=0x00A0 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8085F03:
	ccs_set_camera_pos hword1=0x0280 hword3=0xFF60 hword5=0x0000
	ccs_end

end_ccs_8085F0B:
	.byte 0x00
cutscenescript_8085F0C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87AD7C8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8085EDC
	cs_spawn_ow_npc_objects_from_list ptr2=byte_805D1DC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808603A
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_8085EE2
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
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
	cs_run_cutscene_camera_script ptr1=ccs_8085EEF
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_run_cutscene_camera_script ptr1=ccs_8085EF9
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x10
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_8086042
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x0F
	cs_run_cutscene_camera_script ptr1=ccs_8085F03
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808603A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8085FFF::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x16
	cs_write_gamestate_byte byte1=0x07 byte2=0x12
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_535
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808605C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808603A:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8085FFF

cutscenescript_8086042:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8085FFF

unk_808605C:
	.word 0x04000003, 0x00000000, 0x00000000, 0x00000000
ccs_808606C:
	ccs_set_camera_pos hword1=0x10A0 hword3=0x0260 hword5=0x0400
	ccs_end

byte_8086074::
	ccs_simple_scroll hword1=0x00A6 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_808607E:
	ccs_simple_scroll hword1=0x00A6 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

cutscenescript_8086088:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87ADC00 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=ccs_808606C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805BC08
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808619C
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8086194
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8086074
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808607E
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x96

byte_808615C::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0xB4
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_537
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80861B8
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8086194:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808615C

cutscenescript_808619C:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_808615C
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_80861B8:
	.word 0x04000001, 0x00000000, 0x00000000, 0x00000000
ccs_80861C8:
	ccs_set_camera_pos hword1=0x0500 hword3=0xFDC0 hword5=0x0000
	ccs_end

cutscenescript_80861D0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87AE030 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80861C8
	cs_spawn_ow_npc_objects_from_list ptr2=unk_805093C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8086299
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0xB4
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80862A1
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808625B:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_500
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0500 signedhword6=-0x0180 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8086299:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808625B

byte_80862A1::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808625B

end_cutscenescript_80862C5::
  .byte 0x0, 0x0, 0x60, 0xE
	.byte 0x80, 0xF4, 0x0, 0x0, 0x8, 0x18, 0x9C, 0xFF, 0xC4, 0xFF
	.byte 0x0, 0x0, 0x20, 0x0, 0x8, 0x18, 0x5E, 0x0, 0xC6, 0x0
	.byte 0x0, 0x0, 0x20, 0x0, 0x8, 0x0, 0x20, 0xFC, 0xA0, 0xE6
	.byte 0x0, 0x0, 0x8, 0x18, 0x44, 0x0, 0xAE, 0xFF, 0x0, 0x0
	.byte 0x20, 0x0, 0x8, 0x18, 0xC2, 0x0, 0x1E, 0x0, 0x0, 0x0
	.byte 0x20, 0x0, 0x8, 0x0, 0x20, 0xF7, 0xE0, 0xE6, 0x0, 0x0
	.byte 0x8, 0x18, 0x32, 0x0, 0xC4, 0xFE, 0x0, 0x0, 0x20, 0x0
	.byte 0x8, 0x18, 0x32, 0x0, 0x4E, 0x0, 0x0, 0x0, 0x20, 0x0
	.byte 0x8
byte_8086310::
	.byte 0x18, 0x94, 0xFF, 0x8C, 0x0, 0x0, 0x0, 0x20, 0x0, 0x8, 0x18
	.byte 0x14, 0xFF, 0x8E, 0x0, 0x0, 0x0, 0x20, 0x0, 0x8, 0x0, 0x80
	.byte 0x7, 0x60, 0xE2, 0x0, 0x0, 0x8, 0x18, 0x1A, 0x0, 0xE4, 0xFF
	.byte 0x0, 0x0, 0x20, 0x0, 0x8, 0x18, 0xBA, 0xFE, 0xE8, 0xFF, 0x0
	.byte 0x0, 0x20, 0x0, 0x8
byte_8086340::
	.byte 0x18, 0x5A, 0xFF, 0x64, 0x0, 0x0, 0x0, 0x20, 0x0, 0x8, 0x18
	.byte 0xBA, 0xFF, 0xE6, 0x0, 0x0, 0x0, 0x20, 0x0, 0x8, 0x29, 0xFF
	.byte 0xE4, 0x5, 0x4A, 0x2, 0x84, 0x83, 0x6, 0x8, 0x2, 0xFF, 0x1E
	.byte 0x54, 0x0, 0xBC, 0x62, 0x8, 0x8, 0x2, 0xFF, 0xA, 0x35, 0x8
	.byte 0x1, 0x9, 0x8, 0x2, 0x54, 0x0, 0xC4, 0x62, 0x8, 0x8, 0x8
	.byte 0x35, 0x8, 0x3, 0x9, 0x8, 0x4, 0x54, 0x0, 0xCE, 0x62, 0x8
	.byte 0x8, 0x8, 0x35, 0x8, 0x5, 0x9, 0x8, 0x6, 0x2, 0xFF, 0x14
	.byte 0x35, 0x8, 0x7, 0x54, 0x1, 0x4A, 0x3, 0x4A, 0x1, 0x20, 0x4A
	.byte 0x4, 0x4B, 0xF9, 0x6D, 0x8, 0x8, 0x2A, 0xFF, 0xE4, 0x5, 0x2
	.byte 0xFF, 0x1E, 0x0, 0x0, 0x0, 0x29, 0xFF, 0xE4, 0x5, 0x4A, 0x2
	.byte 0xB4, 0x86, 0x6, 0x8, 0x2, 0xFF, 0x1E, 0x54, 0x0, 0xD8, 0x62
	.byte 0x8, 0x8, 0x2, 0xFF, 0xA, 0x35, 0x8, 0x1, 0x9, 0x8, 0x2
	.byte 0x54, 0x0, 0xE0, 0x62, 0x8, 0x8, 0x8, 0x35, 0x8, 0x3, 0x9
	.byte 0x8, 0x4, 0x54, 0x0, 0xEA, 0x62, 0x8, 0x8, 0x8, 0x35, 0x8
	.byte 0x5, 0x9, 0x8, 0x6, 0x2, 0xFF, 0x14, 0x35, 0x8, 0x7, 0x54
	.byte 0x1, 0x4A, 0x3, 0x4A, 0x1, 0x20, 0x4A, 0x4, 0x4B, 0xF9, 0x6D
	.byte 0x8, 0x8, 0x2A, 0xFF, 0xE4, 0x5, 0x2, 0xFF, 0x1E, 0x0, 0x0
	.byte 0x0, 0x29, 0xFF, 0xE4, 0x5, 0x4A, 0x2, 0xFC, 0x8B, 0x6, 0x8
	.byte 0x2, 0xFF, 0x1E, 0x54, 0x0, 0xF4, 0x62, 0x8, 0x8, 0x2, 0xFF
	.byte 0xA, 0x35, 0x8, 0x1, 0x9, 0x8, 0x2, 0x54, 0x0, 0xFC, 0x62
	.byte 0x8, 0x8, 0x8, 0x35, 0x8, 0x3, 0x9, 0x8, 0x4, 0x54, 0x0
	.byte 0x6, 0x63, 0x8, 0x8, 0x8, 0x35, 0x8, 0x5, 0x9, 0x8, 0x6
	.byte 0x54, 0x0
	.word byte_8086310
	.byte 0x8, 0x35, 0x8, 0x7, 0x9, 0x8, 0x8, 0x54, 0x0, 0x1A, 0x63, 0x8, 0x8
	.byte 0x8, 0x35, 0x8, 0x9, 0x9, 0x8, 0xA, 0x2, 0xFF, 0x14, 0x35, 0x8, 0xB
	.byte 0x54, 0x1, 0x4A, 0x3, 0x4A, 0x1, 0x20, 0x4A, 0x4, 0x4B
	.word sub_8086DF8+1
byte_8086460::
	.byte 0x2A, 0xFF, 0xE4, 0x5, 0x2, 0xFF, 0x1E, 0x0, 0x29, 0xFF
	.byte 0xE4, 0x5, 0x4A, 0x2, 0xEC, 0xB5, 0x6, 0x8, 0x2, 0xFF
	.byte 0x1E, 0x54, 0x0, 0x24, 0x63, 0x8, 0x8, 0x2, 0xFF, 0xA
	.byte 0x35, 0x8, 0x1, 0x9, 0x8, 0x2, 0x54, 0x0, 0x2C, 0x63
	.byte 0x8, 0x8, 0x8, 0x35, 0x8, 0x3, 0x9, 0x8, 0x4, 0x54
	.byte 0x0, 0x36, 0x63, 0x8, 0x8, 0x8, 0x35, 0x8, 0x5, 0x9
	.byte 0x8, 0x6, 0x54, 0x0
	.word byte_8086340
	.byte 0x8, 0x35, 0x8, 0x7, 0x9, 0x8, 0x8, 0x54, 0x0, 0x4A, 0x63, 0x8, 0x8
	.byte 0x8, 0x35, 0x8, 0x9, 0x9, 0x8, 0xA, 0x2, 0xFF, 0x14, 0x35, 0x8, 0xB
	.byte 0x54, 0x1, 0x4A, 0x3, 0x4A, 0x1, 0x20, 0x4A, 0x4, 0x4B
	.word sub_8086DF8+1
	.byte 0x2A, 0xFF, 0xE4, 0x5, 0x2, 0xFF, 0x1E, 0x0, 0x0, 0x60, 0xE
	.byte 0xC0, 0xED, 0x80, 0x0, 0x8, 0x0, 0xA0, 0xE4, 0x20, 0xF9, 0x80
	.byte 0x0, 0x8, 0x0, 0xC0, 0x13, 0x20, 0xF7, 0x80, 0x0, 0x8, 0x0
	.byte 0xE0, 0xF, 0x60, 0xE9, 0x0, 0x2, 0x8, 0x1A, 0x3, 0xF5, 0x5
	.word byte_8086514
	.byte 0x2, 0xFF, 0x28, 0x54, 0x0, 0xD4, 0x64, 0x8, 0x8, 0x2, 0xFF
	.byte 0x1E, 0x2A, 0xFF, 0xEE, 0x5, 0x29, 0xFF, 0xEA, 0x5, 0x2, 0xFF
	.byte 0x1E, 0x11
byte_8086514::
	.byte 0x2, 0xFF, 0x1E, 0x11, 0x1A, 0x3, 0xF8, 0x5
	.word byte_8086538
	.byte 0x2, 0xFF, 0x28, 0x54, 0x0, 0xDC, 0x64, 0x8, 0x8, 0x2, 0xFF
	.byte 0x1E, 0x2A, 0xFF, 0xEF, 0x5, 0x29, 0xFF, 0xEB, 0x5, 0x2, 0xFF
	.byte 0x1E, 0x11
byte_8086538::
	.byte 0x2, 0xFF, 0x1E, 0x11, 0x1A, 0x4, 0xFB, 0x5
	.word dword_808655C
	.byte 0x2, 0xFF, 0x28, 0x54, 0x0, 0xE4, 0x64, 0x8, 0x8, 0x2, 0xFF
	.byte 0x1E, 0x2A, 0xFF, 0xF0, 0x5, 0x29, 0xFF, 0xEC, 0x5, 0x2, 0xFF
	.byte 0x1E, 0x11
dword_808655C::
	.word 0x111EFF02
dword_8086560::
	.word 0xFC2031A
	.word dword_8086580
	.byte 0x2, 0xFF, 0x28, 0x54, 0x0, 0xEC, 0x64, 0x8, 0x8, 0x2, 0xFF
	.byte 0x1E, 0x2A, 0xFF, 0xF9, 0xF, 0x29, 0xFF, 0xC1, 0xF, 0x2, 0xFF
	.byte 0x1E, 0x11
dword_8086580::
	.word 0x111EFF02
byte_8086584::
	.byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4
	.byte 0x10, 0x0, 0xFF, 0x81, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x4, 0x10, 0x0, 0xFF
byte_80865AC::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_call_native_with_return_value ptr1=sub_8086600+1
	cs_jump_if_var_equal byte1=0x05 byte2=0xFF destination3=cutscenescript_80865C6
	cs_run_text_script_from_mem byte1=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_80865C6:
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_5E7 destination4=cutscenescript_80865E3
	cs_set_event_flag byte1=0xFF event16_2=EVENT_5E7
	cs_set_screen_fade byte1=0x06 byte2=0xFF byte3=0xFF
	cs_wait_screen_fade
	cs_warp_cmd_8038040_2 byte1=0x80 byte2=0x01 ptr3=NULL
	cs_jump destination1=byte_80865FC

cutscenescript_80865E3:
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_5E7
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_set_screen_fade byte1=0x06 byte2=0xFF byte3=0xFF
	cs_wait_screen_fade
	cs_warp_cmd_8038040_2 byte1=0x80 byte2=0x02 ptr3=NULL
	cs_jump destination1=byte_80865FC

byte_80865FC::
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_8086600:
	ldrb r1, [r5, #4]
	ldr r0, =byte_8086584
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	str r0, [r5, #0x34]
	ldrb r1, [r0, #0x13]
	strb r1, [r5, #5]
	ldrb r1, [r0, #0x10]
	strb r1, [r5, #6]
	ldrb r1, [r0, #0x11]
	strb r1, [r5, #7]
	mov r2, r10
	ldr r2, [r2, #0x3c]
	ldrb r1, [r0, #0x12]
	cmp r1, #0xff
	beq loc_8086628
	strb r1, [r2, #0x16]
	mov r1, #0x10
	strb r1, [r2, #0x17]
loc_8086628:
	mov r0, #0
	mov pc, lr
	.pool
	thumb_func_end sub_8086600

ccs_8086630:
	ccs_set_camera_pos hword1=0xF980 hword3=0xE980 hword5=0x0000
	ccs_end

byte_8086638::
	ccs_set_camera_pos hword1=0xFF80 hword3=0xE980 hword5=0x0000
	ccs_end

ccs_8086640:
	ccs_set_camera_pos hword1=0x0580 hword3=0xE980 hword5=0x0000
	ccs_end

ccs_8086648:
	ccs_set_camera_pos hword1=0x1700 hword3=0xF400 hword5=0x0000
	ccs_end

ccs_8086650:
	ccs_set_camera_pos hword1=0x1700 hword3=0xF9E0 hword5=0x0000
	ccs_end

byte_8086658::
	ccs_set_camera_pos hword1=0x1700 hword3=0x0000 hword5=0x0000
	ccs_end

ccs_8086660:
	ccs_set_camera_pos hword1=0x1820 hword3=0xF9C0 hword5=0x0000
	ccs_end

ccs_8086668:
	ccs_set_camera_pos hword1=0x1820 hword3=0xFFE0 hword5=0x0000
	ccs_end

ccs_8086670:
	ccs_set_camera_pos hword1=0x1820 hword3=0x05E0 hword5=0x0000
	ccs_end

byte_8086678::
	ccs_set_camera_pos hword1=0x1820 hword3=0x0BE0 hword5=0x0000
	ccs_end

ccs_8086680:
	ccs_set_camera_pos hword1=0x13A0 hword3=0x0280 hword5=0x0000
	ccs_end

ccs_8086688:
	ccs_set_camera_pos hword1=0x13A0 hword3=0xFC80 hword5=0x0000
	ccs_end

ccs_8086690:
	ccs_set_camera_pos hword1=0x13A0 hword3=0xF660 hword5=0x0000
	ccs_end

cutscenescript_8086698:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x01
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_make_ow_player_invisible
	cs_decomp_text_archive ptr1=TextScriptWhoAmI
	cs_call_native_with_return_value ptr1=sub_8086C08+1
	cs_jump_if_var_equal byte1=0x04 byte2=0x00 destination3=cutscenescript_808670F
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_8086720
	cs_jump_if_var_equal byte1=0x04 byte2=0x02 destination3=cutscenescript_8086731
	cs_jump_if_var_equal byte1=0x04 byte2=0x03 destination3=byte_8086742
	cs_jump_if_var_equal byte1=0x04 byte2=0x04 destination3=cutscenescript_8086753
	cs_jump_if_var_equal byte1=0x04 byte2=0x05 destination3=cutscenescript_8086764
	cs_jump_if_var_equal byte1=0x04 byte2=0x06 destination3=cutscenescript_8086775
	cs_jump_if_var_equal byte1=0x04 byte2=0x07 destination3=byte_8086786
	cs_jump_if_var_equal byte1=0x04 byte2=0x08 destination3=cutscenescript_8086797
	cs_jump_if_var_equal byte1=0x04 byte2=0x09 destination3=cutscenescript_80867A8
	cs_jump_if_var_equal byte1=0x04 byte2=0x0A destination3=cutscenescript_80867B9
	cs_jump_if_var_equal byte1=0x04 byte2=0x0B destination3=byte_80867CA
	cs_jump_if_var_equal byte1=0x04 byte2=0x0C destination3=cutscenescript_80867DB

cutscenescript_808670F:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8068180
	cs_run_cutscene_camera_script ptr1=ccs_8086630
	cs_jump destination1=byte_80867E7

cutscenescript_8086720:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806822C
	cs_run_cutscene_camera_script ptr1=byte_8086638
	cs_jump destination1=byte_80867E7

cutscenescript_8086731:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80682D8
	cs_run_cutscene_camera_script ptr1=ccs_8086640
	cs_jump destination1=byte_80867E7

byte_8086742::
	cs_spawn_ow_npc_objects_from_list ptr2=off_80684F8
	cs_run_cutscene_camera_script ptr1=ccs_8086648
	cs_jump destination1=byte_80867E7

cutscenescript_8086753:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806858C
	cs_run_cutscene_camera_script ptr1=ccs_8086650
	cs_jump destination1=byte_80867E7

cutscenescript_8086764:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8068620
	cs_run_cutscene_camera_script ptr1=byte_8086658
	cs_jump destination1=byte_80867E7

cutscenescript_8086775:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806891C
	cs_run_cutscene_camera_script ptr1=ccs_8086660
	cs_jump destination1=byte_80867E7

byte_8086786::
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80689D4
	cs_run_cutscene_camera_script ptr1=ccs_8086668
	cs_jump destination1=byte_80867E7

cutscenescript_8086797:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8068A8C
	cs_run_cutscene_camera_script ptr1=ccs_8086670
	cs_jump destination1=byte_80867E7

cutscenescript_80867A8:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8068B44
	cs_run_cutscene_camera_script ptr1=byte_8086678
	cs_jump destination1=byte_80867E7

cutscenescript_80867B9:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806B3D0
	cs_run_cutscene_camera_script ptr1=ccs_8086680
	cs_jump destination1=byte_80867E7

byte_80867CA::
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806B484
	cs_run_cutscene_camera_script ptr1=ccs_8086688
	cs_jump destination1=byte_80867E7

cutscenescript_80867DB:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806B538
	cs_run_cutscene_camera_script ptr1=ccs_8086690

byte_80867E7::
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808684C
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x015C
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808684C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x16
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x17
	cs_call_native_with_return_value ptr1=sub_8086854+1
	cs_pause byte1=0xFF byte2=0x3C

byte_8086832::
	cs_disable_cutscene_skip_script
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_5ED
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_5F2
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1700
	cs_start_random_battle
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

dword_808684C::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8086832

	thumb_local_start
sub_8086854:
	push {lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38
	bne loc_8086862
	mov r0, #0
	pop {pc}
loc_8086862:
	ldr r3, =unk_2011A90
	ldrb r0, [r3, #3]
	sub r0, #1
	strb r0, [r3, #3]
	bne loc_8086876
	mov r0, #0xcd
	bl PlaySoundEffect
	mov r0, #0x40
	strb r0, [r3, #3]
loc_8086876:
	mov r0, #1
	pop {pc}
	.pool
	thumb_func_end sub_8086854

off_8086880:
	.word 0x80F98000, 0x080000E9

byte_8086888::
	.byte 0x0, 0x80, 0xFF, 0x80, 0xE9, 0x0, 0x0, 0x8, 0x0, 0x80, 0x5, 0x80
	.byte 0xE9, 0x0, 0x0, 0x8, 0x0, 0x0, 0x17, 0x0, 0xF4, 0x0, 0x0, 0x8
	.byte 0x0, 0x0, 0x17, 0xE0, 0xF9, 0x0, 0x0, 0x8
byte_80868A8::
	.byte 0x0, 0x0, 0x17, 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x20, 0x18, 0xC0, 0xF9
	.byte 0x0, 0x0, 0x8, 0x0, 0x20, 0x18, 0xE0, 0xFF, 0x0, 0x0, 0x8, 0x0, 0x20
	.byte 0x18, 0xE0, 0x5, 0x0, 0x0, 0x8
byte_80868C8::
	.byte 0x0, 0x20, 0x18, 0xE0, 0xB, 0x0, 0x0, 0x8, 0x0, 0xA0, 0x13, 0x80
	.byte 0x2, 0x0, 0x0, 0x8, 0x0, 0xA0, 0x13, 0x80, 0xFC, 0x0, 0x0, 0x8
	.byte 0x0, 0xA0, 0x13, 0x60, 0xF6, 0x0, 0x0, 0x8, 0x3F, 0x0, 0x6, 0x2
	.byte 0xFF, 0x1, 0x14, 0x0, 0x0, 0x0, 0x0, 0x27, 0xFF, 0xC, 0x8, 0x7
	.byte 0x3F, 0x34, 0x3E, 0x90, 0xAC, 0x7D, 0x8, 0x4B
	.word sub_8086C08+1
	.byte 0x1C, 0x4, 0x0, 0x5F, 0x69, 0x8, 0x8, 0x1C, 0x4, 0x1, 0x70, 0x69
	.byte 0x8, 0x8, 0x1C, 0x4, 0x2, 0x81, 0x69, 0x8, 0x8, 0x1C, 0x4, 0x3
	.word byte_8086992
	.byte 0x1C, 0x4, 0x4, 0xA3, 0x69, 0x8, 0x8, 0x1C, 0x4, 0x5, 0xB4, 0x69
	.byte 0x8, 0x8, 0x1C, 0x4, 0x6, 0xC5, 0x69, 0x8, 0x8, 0x1C, 0x4, 0x7
	.word byte_80869D6
	.byte 0x1C, 0x4, 0x8, 0xE7, 0x69, 0x8, 0x8, 0x1C, 0x4, 0x9, 0xF8, 0x69
	.byte 0x8, 0x8, 0x1C, 0x4, 0xA, 0x9, 0x6A, 0x8, 0x8, 0x1C, 0x4, 0xB
	.word byte_8086A1A
	.byte 0x1C, 0x4, 0xC, 0x2B, 0x6A, 0x8, 0x8, 0x4A, 0x2, 0x80, 0x81
	.byte 0x6, 0x8, 0x54, 0x0, 0x80, 0x68, 0x8, 0x8, 0x15
	.word byte_8086A37
	.byte 0x4A, 0x2, 0x2C, 0x82, 0x6, 0x8, 0x54, 0x0
	.word byte_8086888
	.word byte_86A3715
	.byte 0x8, 0x4A, 0x2, 0xD8, 0x82, 0x6, 0x8, 0x54
	.word byte_8689000
	.byte 0x8, 0x15, 0x37, 0x6A, 0x8, 0x8
byte_8086992::
	.byte 0x4A, 0x2
	.word off_80684F8
	.byte 0x54, 0x0, 0x98, 0x68, 0x8, 0x8, 0x15, 0x37, 0x6A, 0x8, 0x8
	.byte 0x4A, 0x2, 0x8C, 0x85, 0x6, 0x8, 0x54, 0x0, 0xA0, 0x68, 0x8
	.byte 0x8, 0x15
	.word byte_8086A37
	.byte 0x4A, 0x2, 0x20, 0x86, 0x6, 0x8, 0x54, 0x0
	.word byte_80868A8
	.word byte_86A3715
	.byte 0x8, 0x4A, 0x2, 0x1C, 0x89, 0x6, 0x8, 0x54
	.word byte_868B000
	.byte 0x8, 0x15, 0x37, 0x6A, 0x8, 0x8
byte_80869D6::
	.byte 0x4A, 0x2, 0xD4, 0x89, 0x6, 0x8, 0x54, 0x0, 0xB8, 0x68, 0x8
	.byte 0x8, 0x15, 0x37, 0x6A, 0x8, 0x8, 0x4A, 0x2, 0x8C, 0x8A, 0x6
	.byte 0x8, 0x54, 0x0, 0xC0, 0x68, 0x8, 0x8, 0x15
	.word byte_8086A37
	.byte 0x4A, 0x2, 0x44, 0x8B, 0x6, 0x8, 0x54, 0x0
	.word byte_80868C8
	.word byte_86A3715
	.byte 0x8, 0x4A, 0x2, 0xD0, 0xB3, 0x6, 0x8, 0x54
	.word byte_868D000
	.byte 0x8, 0x15, 0x37, 0x6A, 0x8, 0x8
byte_8086A1A::
	.byte 0x4A, 0x2, 0x84, 0xB4, 0x6, 0x8, 0x54, 0x0, 0xD8, 0x68, 0x8
	.byte 0x8, 0x15, 0x37, 0x6A, 0x8, 0x8, 0x4A, 0x2, 0x38, 0xB5, 0x6
	.byte 0x8, 0x54, 0x0, 0xE0, 0x68, 0x8, 0x8
byte_8086A37::
	.byte 0x2, 0xFF, 0x3C, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x14
	.word byte_8086B72
	.byte 0x2, 0xFF, 0x3C, 0x3A, 0xFF, 0x15, 0x4, 0x80, 0x2, 0xFF
	.byte 0x3C, 0x14, 0x0, 0x0, 0x0, 0x0, 0x4D, 0x5C, 0x1, 0x27
	.byte 0xFF, 0x4, 0x4, 0x7, 0x35, 0x8, 0x1, 0x2, 0xFF, 0x3C
	.byte 0x4D, 0x90, 0x1, 0x27, 0xFF, 0x0, 0x4, 0x7, 0x14, 0x72
	.byte 0x6B, 0x8, 0x8, 0x3A, 0xFF, 0x24, 0x4, 0x80, 0x1C, 0x4
	.byte 0x0, 0xCF, 0x6A, 0x8, 0x8, 0x1C, 0x4, 0x1, 0xCF, 0x6A
	.byte 0x8, 0x8, 0x1C, 0x4
	.word byte_86ACF02
	.word 0x3041C08
	.word byte_8086ADC
	.byte 0x1C, 0x4, 0x4, 0xDC, 0x6A, 0x8, 0x8, 0x1C, 0x4, 0x5, 0xDC, 0x6A
	.byte 0x8, 0x8, 0x1C, 0x4, 0x6, 0xE9, 0x6A, 0x8, 0x8, 0x1C, 0x4, 0x7
	.word byte_8086AE9
	.byte 0x1C, 0x4, 0x8, 0xE9, 0x6A, 0x8, 0x8, 0x1C, 0x4, 0x9, 0xE9, 0x6A
	.byte 0x8, 0x8, 0x1C, 0x4
	.word byte_86AF60A
	.word 0xB041C08
	.word byte_8086AF6
	.byte 0x1C, 0x4, 0xC, 0xF6, 0x6A, 0x8, 0x8, 0x12
	.word byte_864F420
	.word 0x15200A08
	.word byte_8086AFE
byte_8086ADC::
	.byte 0x12, 0x20, 0x18, 0x65, 0x8, 0x8, 0xA, 0x20
	.word byte_86AFE15
	.byte 0x8
byte_8086AE9::
	.byte 0x12, 0x20, 0x3C, 0x65, 0x8, 0x8, 0xA, 0x20, 0x15, 0xFE
	.byte 0x6A, 0x8, 0x8
byte_8086AF6::
	.byte 0x12, 0x20
	.word dword_8086560
	.byte 0xA, 0x20
byte_8086AFE::
	.byte 0x2, 0xFF, 0x3C, 0x14, 0x0, 0x0, 0x0, 0x0, 0x27, 0xFF, 0xC, 0x8
	.byte 0x7, 0x2, 0xFF, 0x1E, 0x4B, 0x19, 0x6C, 0x8, 0x8, 0x2A, 0xFF, 0xED
	.byte 0x5, 0x2A, 0xFF, 0xF2, 0x5, 0x4B
	.word sub_8086CE4+1
	.word byte_86B7D4B
	.byte 0x8, 0x3F, 0x30, 0x1C, 0x4, 0x0, 0x49, 0x6B, 0x8, 0x8, 0x1C
	.byte 0x4
	.word byte_86B4901
	.word 0x2041C08
	.word byte_8086B49
	.byte 0x40, 0x4, 0xFF, 0x1, 0x47, 0x0, 0xFF, 0x1
	.word byte_86B5115
	.byte 0x8
byte_8086B49::
	.byte 0x40, 0x4, 0xFF, 0x7, 0x47, 0x0, 0xFF, 0x7, 0x3F, 0x18, 0x4A
	.byte 0x3, 0x4A, 0x1, 0x20, 0x4A, 0x4, 0x54, 0x1, 0x3B, 0x4B, 0xF9
	.byte 0x6D, 0x8, 0x8, 0x4B, 0xF5, 0x6C, 0x8, 0x8, 0x2, 0xFF, 0x3C
	.byte 0x27, 0xFF, 0x8, 0x8, 0x7, 0x3F, 0x4, 0x0
byte_8086B72::
	.byte 0x3C, 0x0, 0x40, 0x15, 0x1, 0x6B, 0x8, 0x8, 0x0, 0x0

	thumb_local_start
dead_8086B7C:
	push {lr}
	ldr r3, off_8086C14 // =unk_2011A90
	ldrb r1, [r3, #0xc]
	lsl r1, r1, #3
	ldr r3, off_8086B9C // =byte_8086BA0
	add r3, r3, r1
	ldrh r0, [r3, #0]
	lsl r0, r0, #0x10
	ldrh r1, [r3, #2]
	lsl r1, r1, #0x10
	ldrh r2, [r3, #4]
	lsl r2, r2, #0x10
	bl owPlayer_copyCoordsToNextCoordsWritePlayerCoordsThenIndirectlySetPlayerCoordsMaybe_809e188
	mov r0, #0
	pop {pc}
	thumb_func_end dead_8086B7C

off_8086B9C::
	.word byte_8086BA0
byte_8086BA0::
	.byte 0x7A, 0xFF, 0xC8, 0xFE, 0x10, 0x0, 0x0, 0x0, 0xDC, 0xFF
	.byte 0xC8, 0xFE, 0x10, 0x0, 0x0, 0x0, 0x3E, 0x0, 0xC8, 0xFE
	.byte 0x10, 0x0, 0x0, 0x0, 0x40, 0x1, 0x5C, 0xFF, 0x10, 0x0
	.byte 0x0, 0x0, 0x40, 0x1, 0xBC, 0xFF, 0x10, 0x0, 0x0, 0x0
	.byte 0x40, 0x1, 0x1C, 0x0, 0x10, 0x0, 0x0, 0x0, 0x52, 0x1
	.byte 0xBA, 0xFF, 0x10, 0x0, 0x0, 0x0, 0x52, 0x1, 0x1A, 0x0
	.byte 0x10, 0x0, 0x0, 0x0, 0x52, 0x1, 0x7A, 0x0, 0x10, 0x0
	.byte 0x0, 0x0, 0x52, 0x1, 0xDC, 0x0, 0x10, 0x0, 0x0, 0x0
	.byte 0xFE, 0x0, 0x52, 0x0, 0x20, 0x0, 0x0, 0x0, 0xFE, 0x0
	.byte 0xF2, 0xFF, 0x20, 0x0, 0x0, 0x0, 0xFE, 0x0, 0x92, 0xFF
	.byte 0x20, 0x0, 0x0, 0x0

	thumb_local_start
sub_8086C08::
	push {lr}
	ldr r3, off_8086C14 // =unk_2011A90
	mov r1, #3
	strb r1, [r3,#0x7] // (byte_2011A97 - 0x2011a90)
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_8086C08

off_8086C14::
	.word unk_2011A90

	thumb_local_start
dead_8086C18:
	push {lr}
	ldr r3, off_8086CC4 // =unk_2011A90
	ldrb r0, [r3, #0xc]
	lsl r0, r0, #1
	ldr r1, off_8086CC0 // =byte_8086CC8
	ldrh r2, [r1, r0]
	add r0, r2, #0
	bl SetEventFlag
	mov r0, r10
	ldr r0, [r0, #0x3c]
	ldrb r1, [r0, #4]
	cmp r1, #0x85
	bne loc_8086C38
	mov r0, #3
	b loc_8086C3A
loc_8086C38:
	ldrb r0, [r0, #5]
loc_8086C3A:
	cmp r0, #1
	beq loc_8086C64
	cmp r0, #2
	beq loc_8086C82
	cmp r0, #3
	beq loc_8086CA0
	mov r0, #5
	mov r1, #0xf5
	mov r2, #3
	bl TestEventFlagRangeFromImmediate
	beq loc_8086C64
	movflag EVENT_5EE
	bl ClearEventFlagFromImmediate
	movflag EVENT_5EA
	bl SetEventFlagFromImmediate
	b loc_8086CBC
loc_8086C64:
	mov r0, #5
	mov r1, #0xf8
	mov r2, #3
	bl TestEventFlagRangeFromImmediate
	beq loc_8086C82
	movflag EVENT_5EF
	bl ClearEventFlagFromImmediate
	movflag EVENT_5EB
	bl SetEventFlagFromImmediate
	b loc_8086CBC
loc_8086C82:
	mov r0, #5
	mov r1, #0xfb
	mov r2, #4
	bl TestEventFlagRangeFromImmediate
	beq loc_8086CA0
	movflag EVENT_5F0
	bl ClearEventFlagFromImmediate
	movflag EVENT_5EC
	bl SetEventFlagFromImmediate
	b loc_8086CBC
loc_8086CA0:
	mov r0, #0xf
	mov r1, #0xc2
	mov r2, #3
	bl TestEventFlagRangeFromImmediate
	beq loc_8086CBC
	movflag EVENT_FF9
	bl ClearEventFlagFromImmediate
	movflag EVENT_FC1
	bl SetEventFlagFromImmediate
loc_8086CBC:
	mov r0, #0
	pop {pc}
	thumb_func_end dead_8086C18

off_8086CC0::
	.word byte_8086CC8
off_8086CC4::
	.word unk_2011A90
byte_8086CC8::
	.byte 0xF5, 0x5, 0xF6, 0x5, 0xF7, 0x5, 0xF8, 0x5, 0xF9, 0x5, 0xFA
	.byte 0x5, 0xFB, 0x5, 0xFC, 0x5, 0xFD, 0x5, 0xFE, 0x5, 0xC2, 0xF
	.byte 0xC3, 0xF, 0xC4, 0xF, 0x0, 0x0

	thumb_local_start
sub_8086CE4::
	push {lr}
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8086CE4

unk_8086CEE::
	.byte 0x0, 0x0, 0x90, 0x1A, 0x1, 0x2

	thumb_local_start
dead_8086CF4:
	push {lr}
	mov r1, r10
	ldr r1, [r1, #0x3c]
	ldrb r1, [r1, #4]
	cmp r1, #0x81
	beq loc_8086D0A
	mov r0, #0x1f
	ldr r1, =0x100
	bl sound_8000672
	b loc_8086D10
loc_8086D0A:
	mov r0, #0x11
	bl sub_800060A
loc_8086D10:
	mov r0, #0
	pop {pc}
	.pool
	thumb_func_end dead_8086CF4

off_8086D18::
	.word unk_2011A90
off_8086D1C::
	.byte 0xC0, 0xE, 0x0, 0x2, 0x3F, 0x0
	.byte 0x6, 0x29, 0xFF, 0x31, 0x17, 0x4B
	.word sub_8086D9C+1

byte_8086D2C::
	.word 0x0000043F, 0x2906003F, 0x3E1731FF, TextScriptWhoAmI, 0x086DBD4B
	.word 0x6DE94B08, 0x043A0808, 0xFF2A8004, 0xFF2A05F1, 0xFF2A05F2
	.word 0x043F05FF, 0x00000000

byte_8086D5C::
	.byte 0x3F, 0x0, 0x6, 0x29, 0xFF, 0x31, 0x17, 0x3E
	.word TextScriptWhoAmI
	.byte 0x3A, 0xFF, 0x23, 0x4, 0x80, 0x3B, 0x3F, 0x4, 0x0, 0x0, 0x0
	.byte 0x0
byte_8086D74::
	.byte 0x3F, 0x0, 0x6, 0x29, 0xFF, 0x31, 0x17, 0x3E
	.word TextScriptWhoAmI
	.byte 0x3A, 0xFF, 0x3E, 0x4, 0x80, 0x3D, 0x93, 0x6D, 0x8, 0x8
	.byte 0x97, 0x6D, 0x8, 0x8, 0x15, 0x97, 0x6D, 0x8, 0x8, 0x29
	.byte 0xFF, 0xED, 0x5, 0x3B, 0x3F, 0x4, 0x0, 0x0

	thumb_local_start
sub_8086D9C::
	push {r5,lr}
	ldr r5, off_8086ED4 // =off_8086D18 
	ldr r5, [r5]
	ldrb r0, [r5,#0x5] // (byte_2011A95 - 0x2011a90)
	cmp r0, #0
	bne loc_8086DB6
	ldrb r0, [r5,#0x7] // (byte_2011A97 - 0x2011a90)
	cmp r0, #0
	bne loc_8086DB6
	bl sub_80871F4
	mov r0, #0
	pop {r5,pc}
loc_8086DB6::
	mov r0, #1
	pop {r5,pc}
	.balign 4, 0
	thumb_func_end sub_8086D9C

	thumb_local_start
sub_8086DBC:
	push {r5, lr}
	ldr r5, off_8086ED4 // =off_8086D18
	ldr r5, [r5, #0]
	ldrb r0, [r5, #9]
	cmp r0, #2
	bne loc_8086DE0
	mov r0, #0
	strb r0, [r5, #9]
	mov r1, r10
	ldr r1, [r1, #0x3c]
	ldrb r1, [r1, #4]
	cmp r1, #0x81
	bne loc_8086DDC
	mov r0, #0x11
	bl sub_800060A
loc_8086DDC:
	mov r0, #0
	pop {r5, pc}
loc_8086DE0:
	mov r0, #1
	pop {r5, pc}
	lsl r0, r0, #4
	.balign 4, 0
	thumb_func_end sub_8086DBC

	thumb_local_start
sub_8086DE8:
	push {r5, lr}
	mov r0, #3
	bl reqBBS_81409D0
	add r0, #0x2f
	strb r0, [r5, #4]
	mov r0, #0
	pop {r5, pc}
	thumb_func_end sub_8086DE8

	thumb_local_start
sub_8086DF8::
	push {r5,lr}
	ldr r0, off_8086ED4 // =off_8086D18 
	ldr r0, [r0]
	mov r5, r0
	mov r1, #0x94
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	mov r0, #0xa
	strb r0, [r5,#0x4] // (byte_2011A94 - 0x2011a90)
	mov r0, #0xf
	strb r0, [r5,#0xd] // (byte_2011A9D - 0x2011a90)
	mov r0, #1
	strb r0, [r5,#0x3] // (byte_2011A93 - 0x2011a90)
	bl sub_8087150
	bl sub_8086ED8
	bl sub_8086EEC
	movflag EVENT_5F2
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	beq locret_8086E6A
	bl sub_8087238
	movflag EVENT_5E4
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	bne loc_8086E50
	bl sub_8086FA4
	cmp r0, #0
	beq locret_8086E6A
	movflag EVENT_5FF
	bl TestEventFlagFromImmediate // (flag: u16) -> !zf
	beq loc_8086E50
	movflag EVENT_5E5
	bl SetEventFlagFromImmediate
loc_8086E50::
	mov r1, r10
	ldr r1, [r1,#0x3c]
	ldrb r1, [r1,#4]
	cmp r1, #0x81
	bne loc_8086E60
	mov r0, #0x23 
	bl sub_800060A
loc_8086E60::
	bl sub_8086F18
	bl sub_8086F5C
	mov r0, #0
locret_8086E6A::
	pop {r5,pc}
	thumb_func_end sub_8086DF8

unk_8086E6C::
	.word 0x0000013B

	thumb_local_start
sub_8086E70:
	push {lr}
	ldr r0, off_8086ED4 // =off_8086D18
	ldr r0, [r0, #0]
	add r5, r0, #0
	mov r1, #0x94
	bl ZeroFillByWord
	movflag EVENT_5F2
	bl ClearEventFlagFromImmediate
	movflag EVENT_1641
	bl SetEventFlagFromImmediate
	movflag EVENT_1642
	bl SetEventFlagFromImmediate
	movflag EVENT_1643
	bl SetEventFlagFromImmediate
	movflag EVENT_1644
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_8086E70

	thumb_local_start
sub_8086EA8:
	push {r4-r7, lr}
	ldr r5, off_8086ED4 // =off_8086D18
	ldr r5, [r5, #0]
	bl sub_8087140
	cmp r0, #0
	beq loc_8086EBA
	bl sub_8087184
loc_8086EBA:
	bl sub_8086FD8
	movflag EVENT_5ED
	bl TestEventFlagFromImmediate
	beq loc_8086ECC
	bl sub_808711C
loc_8086ECC:
	bl sub_80871F4
	pop {r4-r7, pc}
	.balign 4, 0
	thumb_func_end sub_8086EA8

off_8086ED4::
	.word off_8086D18

	thumb_local_start
sub_8086ED8::
	push {r4-r7,lr}
	push {r5}
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl SpawnOverworldMapObject
	pop {r5}
	pop {r4-r7,pc}
	thumb_func_end sub_8086ED8

	thumb_local_start
sub_8086EEC::
	push {r4-r7,lr}
	mov r6, #0
	mov r7, #3
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0,#5]
	cmp r0, #2
	bne loc_8086EFE
	mov r7, #4
loc_8086EFE::
	push {r5}
	mov r0, #7
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, r6
	bl SpawnOverworldMapObject
	pop {r5}
	add r6, #1
	cmp r6, r7
	blt loc_8086EFE
	pop {r4-r7,pc}
	thumb_func_end sub_8086EEC

/*For debugging purposes, connect comment at any range!*/
