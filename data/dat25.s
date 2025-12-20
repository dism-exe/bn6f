
byte_8090340::
	ccs_set_camera_pos hword1=0xF860 hword3=0x0860 hword5=0x0000
	ccs_end

byte_8090348::
	ccs_simple_scroll hword1=0x0020 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

byte_8090352::
	ccs_simple_scroll hword1=0x0020 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

ccs_809035C:
	ccs_simple_scroll hword1=0x0038 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

end_ccs_8090366:
	.byte 0x00
	.byte 0x00

cutscenescript_8090368:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C15A8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8090340
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8064064
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8090482
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0002
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_809047A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_8090348
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=byte_8090352
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_809035C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x16
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
	cs_run_text_script_not_from_mem byte2=0x22
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8090442::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C03
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_809049C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_809047A::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8090442

cutscenescript_8090482:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8090442

byte_809049C::
	.byte 0x6, 0x5, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_80904AC::
	ccs_set_camera_pos hword1=0xFD60 hword3=0x0BA0 hword5=0x0000
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_80904BD:
	ccs_simple_scroll hword1=0x0050 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_80904C7:
	.byte 0x00

cutscenescript_80904C8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C205C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80904AC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80659F8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809057F
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80904BD
	cs_wait_camera_script

byte_8090508::
	.word 0x3A1EFF02, 0x800401FF, 0x351EFF02, 0x08090308, 0x1EFF0204, 0x0402FF3A, 0x1EFF0280, 0x09050835
	.word 0xFF020608, 0x0708351E, 0x02080809, 0xFF3A1EFF, 0x02800404, 0x08351EFF, 0x0A080909
	.byte 0x02
	.byte 0xFF
	.byte 0x78

cutscenescript_8090547:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C05
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80905A4
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809057F:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8090547
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8090547
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_80905A4:
	.word 0x04000001, 0x00000000, 0x00000000, 0x00000000
byte_80905B4::
	ccs_set_camera_pos hword1=0x0460 hword3=0xFD80 hword5=0x0000
	ccs_end

byte_80905BC::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C23A8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80905B4
	cs_spawn_ow_npc_objects_from_list ptr2=unk_8050EBC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_80906C1
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0x0003
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80906B9
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0xD2
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_809067B:
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
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0400 signedhword6=-0x02A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C07
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80906B9:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_809067B

cutscenescript_80906C1:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_809067B

end_cutscenescript_80906db:
	.byte 0x00

ccs_80906DC:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_80906E2:
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0xFF00 hword7=0x0080
	ccs_simple_scroll hword1=0x0024 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_80906FE::
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_simple_scroll hword1=0x0070 hword3=0x0000 hword5=0x0100 hword7=0xFF80
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

byte_809071A::
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0070 hword3=0x0000 hword5=0xFF00 hword7=0x0080
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_8090736::
	ccs_set_camera_pos hword1=0xFC40 hword3=0x1760 hword5=0xFF80
	ccs_end
	ccs_simple_scroll hword1=0x0028 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

cutscenescript_8090748:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C28D8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80906DC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807E468
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80908A0
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80906E2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_80906FE
	cs_wait_camera_script
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
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_809071A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00BC
	cs_kill_cutscene_process byte1=0x20
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80908A8
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x0F
	cs_run_cutscene_camera_script ptr1=byte_8090736
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807E4A4
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80908A0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E

byte_809083F::
	.byte 0x54, 0x0, 0x3E, 0x7, 0x9, 0x8, 0x8, 0x2, 0xFF, 0x1E, 0x3A, 0xFF
	.byte 0x1C, 0x4, 0x80, 0x2, 0xFF, 0x1E, 0x35, 0x8, 0x12, 0x9, 0x8, 0x13
	.byte 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x35, 0x4, 0x80, 0x2, 0xFF, 0x3C
byte_8090862::
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
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x03C0 signedhword6=0x19A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C09
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_80908A0::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8090862

cutscenescript_80908A8:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8090862
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_80908C4::
	ccs_set_camera_pos hword1=0x04A0 hword3=0xFD60 hword5=0x0000
	ccs_end

byte_80908CC::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C3210 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80908C4
	cs_spawn_ow_npc_objects_from_list ptr2=unk_8051070
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8090998
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8090990
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
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
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_809094A::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_give_item byte2=0x70 byte3=0x01
	cs_take_item byte2=0x19 byte3=0x01
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_3A
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x05C0 signedhword6=-0x0340 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8090990::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_809094A

cutscenescript_8090998:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_809094A

end_cutscenescript_80909B2:
  .align 2, 0

ccs_80909B4:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_css_80909BA:
	.byte 0x00
	.byte 0x00

cutscenescript_80909BC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C3638 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=ccs_80909B4
	cs_spawn_ow_npc_objects_from_list ptr2=unk_80589AC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8090A6E
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_load_gfx_anim ptr1=unk_80525A8
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8090A66
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
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8090A2B::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x51
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C0D
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_8090A88
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8090A66:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8090A2B

cutscenescript_8090A6E:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8090A2B

byte_8090A88::
	.byte 0x1, 0x1, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8090A98::
	ccs_set_camera_pos hword1=0xFCE0 hword3=0xFA80 hword5=0x0000
	ccs_end

byte_8090AA0::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8090AA6:
	.byte 0x00
	.byte 0x00
byte_8090AA8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C393C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8090A98
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_8051A68
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_event_flag byte1=0xFF event16_2=EVENT_124
	cs_load_gfx_anim ptr1=gfx_anim_script_804E508
	cs_set_cutscene_skip_script ptr1=byte_8090BC6
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8090BBE
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
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
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_8090BC6
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=byte_8090AA0
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8090BBE
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8090B64::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_37
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0160 signedhword6=-0x0260 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C0F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_add_request_range hword1=0x1B6D byte3=0x01
	cs_add_request_range hword1=0x1B6E byte3=0x01
	cs_add_request_range hword1=0x1B6F byte3=0x01
	cs_add_request_range hword1=0x1B70 byte3=0x01
	cs_add_request_range hword1=0x1B7A byte3=0x01
	cs_add_request_range hword1=0x1B7D byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8090BBE::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8090B64

byte_8090BC6::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8090B64

byte_8090BE0::
	ccs_set_camera_pos hword1=0xFAE0 hword3=0xF940 hword5=0x0800
	ccs_end

byte_8090BE8::
	ccs_simple_scroll hword1=0x0100 hword3=0x0000 hword5=0x0000 hword7=0xFF80
	ccs_end

ccs_8090BF2:
	ccs_simple_scroll hword1=0x0030 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8090BFC:
	ccs_set_camera_pos hword1=0xF560 hword3=0x0060 hword5=0x0000
	ccs_end

cutscenescript_8090C04:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C3E48 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8090BE0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_804D928
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=byte_8090D0F
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_run_cutscene_camera_script ptr1=byte_8090BE8
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8090D07
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8090BF2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_8090D0F
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_8090BFC
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8090D07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8090CC5:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_3A
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x09C0 signedhword6=0x0060 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C11
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8090D07:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8090CC5

byte_8090D0F::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8090CC5
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8090D2C:
	ccs_set_camera_pos hword1=0x0FC0 hword3=0x0220 hword5=0x0000
	ccs_end

cutscenescript_8090D34:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C41E4 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8090D2C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_804DA28
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8090DA3
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8090D6C:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x1060 signedhword6=0x0220 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C13
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8090DA3:
	.word 0x1540003C, cutscenescript_8090D6C
	.byte 0x00

ccs_8090DAC:
	ccs_set_camera_pos hword1=0x1920 hword3=0xFCE0 hword5=0x0000
	ccs_end

ccs_8090DB4:
	ccs_set_camera_pos hword1=0x18E0 hword3=0xFD20 hword5=0x0000
	ccs_end

ccs_8090DBC:
	ccs_set_camera_pos hword1=0x1800 hword3=0xFC40 hword5=0x0000
	ccs_end

ccs_8090DC4:
	ccs_simple_scroll hword1=0x0030 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

end_ccs_8090DCE:
	.byte 0x00
	.byte 0x00

cutscenescript_8090DD0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C4494 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8090DAC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807C674
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8090EF4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8090DB4
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8090EF4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00D7
	cs_kill_cutscene_process byte1=0x20
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_8090EFC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x02
	cs_run_cutscene_camera_script ptr1=ccs_8090DBC
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8090EF4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=ccs_8090DC4
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x24
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8090EB3::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x07 byte2=0x51
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x1920 signedhword6=-0x0360 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C15
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_8090EF4::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8090EB3

cutscenescript_8090EFC:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8090EB3

end_cutscenescript_8090F16:
	.byte 0x00
	.byte 0x00

ccs_8090F18:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

byte_8090F1E::
	ccs_simple_scroll hword1=0x0094 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0020 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_8090F31:
	.byte 0x00
	.byte 0x00
	.byte 0x00

cutscenescript_8090F34:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C4C14 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8090F18
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807E7DC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8090FA8
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8090F1E
	cs_wait_camera_script
	cs_play_music hword1=0x001C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80

byte_8090F8D::
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C17
	cs_set_event_flag byte1=0xFF event16_2=EVENT_CC0
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0077
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

dword_8090FA8::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8090F8D

ccs_8090FB0:
	ccs_set_camera_pos hword1=0xFB60 hword3=0xEE80 hword5=0x0800
	ccs_end

cutscenescript_8090FB8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C4F68 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8090FB0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807E898
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x04010800
	cs_pause byte1=0xFF byte2=0x02
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x05010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809114A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_809116C
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000004
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_sound hword1=0x00C3
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_terminate_gfx_anim byte1=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_eStruct200a6a0_callback
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x5A
	cs_load_map_gfx_anims_bg_anim
	cs_decomp_text_archive ptr1=CompText87C4F68 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809114A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_play_music hword1=0x001C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8091178
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00D7
	cs_play_sound hword1=0x015E
	cs_kill_cutscene_process byte1=0x20
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_8091152
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809114A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_809111A::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C19
	cs_set_event_flag byte1=0xFF event16_2=EVENT_172A
	cs_flag_cmd_8038466 byte1=0x00
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_enter_map_screen_fade byte1=0x00 byte2=0x10
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=unk_8091188
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809114A:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_809111A

cutscenescript_8091152:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_jump destination1=byte_809111A

byte_809116C::
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=byte_809116C

cutscenescript_8091178:
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8091178
	cs_end_for_map_reload_maybe_8037c64

unk_8091188:
	.word 0x04000001, 0x00000000, 0x00000000, 0x00000000
ccs_8091198:
	ccs_set_camera_pos hword1=0xF520 hword3=0xFD40 hword5=0x0000
	ccs_end

byte_80911A0::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C54A8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8091198
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_804DA94
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x10
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809122C
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

byte_80911F2::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x07 byte2=0x52
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0A20 signedhword6=-0x02C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C1B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809122C:
	.word 0x1540003C, byte_80911F2

ccs_8091234:
	ccs_set_camera_pos hword1=0xF140 hword3=0x0B00 hword5=0xFE00
	ccs_end

byte_809123C::
	ccs_simple_scroll hword1=0x0024 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

ccs_8091246:
	ccs_simple_scroll hword1=0x0024 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

ccs_8091250:
	ccs_simple_scroll hword1=0x0020 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

end_ccs_809125A:
	.byte 0x00
	.byte 0x00
cutscenescript_809125C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C56CC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8091234
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805BD24
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8091353
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
	cs_run_cutscene_camera_script ptr1=byte_809123C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8091246
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
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_run_cutscene_camera_script ptr1=ccs_8091250
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09

byte_8091308::
	.word 0xFF028004
	.byte 0x3C

cutscenescript_809130D:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_128
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C1D
	cs_set_event_flag byte1=0xFF event16_2=EVENT_3A
	cs_add_mail_range hword1=0x1CE8 byte3=0x01
	cs_add_mail_range hword1=0x1CE9 byte3=0x01
	cs_add_mail_range hword1=0x1CEA byte3=0x01
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_809135C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8091353:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_809130D
	cs_end_for_map_reload_maybe_8037c64

unk_809135C:
	.word 0x05000001
	.byte 0x00
	.byte 0x00
end_cutscenescript_8091362:
	.word 0x00000090, 0x00000074
	.byte 0x00
	.byte 0x00
ccs_809136C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8091372:
	.byte 0x00
	.byte 0x00
byte_8091374::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C5CD8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_809136C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8051AA4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8091402
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80913B5:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x06 byte2=0x52
	cs_write_gamestate_byte byte1=0x07 byte2=0x53
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_124
	cs_set_event_flag byte1=0xFF event16_2=EVENT_123
	cs_load_gfx_anim ptr1=gfx_anim_script_804E4E8
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0320 signedhword6=0x02A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C1F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8091402:
	.word 0x1540003C, cutscenescript_80913B5
	.byte 0x00
	.byte 0x00

ccs_809140C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8091412:
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0000 hword7=0xFF00
	ccs_simple_scroll hword1=0x0064 hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8091425:
	ccs_set_camera_pos hword1=0x10C0 hword3=0x0260 hword5=0x0400
	ccs_end

ccs_809142D:
	ccs_set_camera_pos hword1=0x0080 hword3=0xFC40 hword5=0x0000
	ccs_end

ccs_8091435:
	ccs_simple_scroll hword1=0x002C hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_809143F:
	ccs_set_camera_pos hword1=0x0000 hword3=0xFC40 hword5=0x0000
	ccs_end

ccs_8091447:
	ccs_simple_scroll hword1=0x002C hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

byte_8091451::
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

byte_809145B::
	ccs_simple_scroll hword1=0x0024 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

ccs_8091465:
	ccs_simple_scroll hword1=0x0034 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

end_ccs_809146F:
	.byte 0x00
cutscenescript_8091470:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C6028 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_809140C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805BE04
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091707
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8091412
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8091425
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_809142D
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8091738
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_kill_cutscene_process byte1=0x20
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_809170F
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091707
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_run_cutscene_camera_script ptr1=ccs_8091435
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x16
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8091738
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_kill_cutscene_process byte1=0x20
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x20
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091707
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x22
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8091425
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x25
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_kill_cutscene_process byte1=0x20
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x15
	cs_run_cutscene_camera_script ptr1=ccs_809143F
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805BE30
	cs_pause byte1=0xFF byte2=0x96
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091707
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x26
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x16
	cs_wait_var_equal byte1=0x08 byte2=0x17
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8091447
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x29
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x18
	cs_run_cutscene_camera_script ptr1=byte_8091451
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x19
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1A
	cs_run_cutscene_camera_script ptr1=byte_809145B
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x1B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1C
	cs_wait_var_equal byte1=0x08 byte2=0x1D
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1E
	cs_wait_var_equal byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x32
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x20
	cs_wait_var_equal byte1=0x08 byte2=0x21
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x35
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x22
	cs_wait_var_equal byte1=0x08 byte2=0x23
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8091465
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x24
	cs_wait_var_equal byte1=0x08 byte2=0x25
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x36
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80916C2:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x07 byte2=0x54
	cs_add_bbs_message_range hword1=0x186F byte3=0x06
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0120 signedhword6=-0x06E0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C2F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8091707::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80916C2

byte_809170F::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_80916C2

byte_8091729::
	.word 0x0020005A, 0x0200E34D, 0x291520FF
	.byte 0x17
	.byte 0x09
	.byte 0x08

cutscenescript_8091738:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8091738
	cs_end_for_map_reload_maybe_8037c64

ccs_8091748:
	ccs_set_camera_pos hword1=0xFC80 hword3=0x07C0 hword5=0x0000
	ccs_end

ccs_8091750:
	ccs_simple_scroll hword1=0x0030 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0050 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

ccs_8091763:
	ccs_simple_scroll hword1=0x0090 hword3=0x0000 hword5=0x0000 hword7=0x0100
	ccs_end

byte_809176D::
	ccs_simple_scroll hword1=0x0090 hword3=0x0000 hword5=0x0000 hword7=0xFF00
	ccs_end

end_ccs_8091777:
	.byte 0x00
cutscenescript_8091778:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C6940 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8091748
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8057C24
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809185F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8091750
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_do_camera_shake byte1=0x01 byte2=0x0A byte3=0x00
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8091763
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_809176D
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8091824:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_EVENT_CUR_DIR_LOCKED
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0440 signedhword6=0x0640 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C23
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809185F:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8091824
	cs_end_for_map_reload_maybe_8037c64

ccs_8091868:
	ccs_set_camera_pos hword1=0x0180 hword3=0x05C0 hword5=0x0000
	ccs_end

ccs_8091870:
	ccs_simple_scroll hword1=0x0090 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0048 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

byte_8091883::
	ccs_simple_scroll hword1=0x0024 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_809188D:
	ccs_set_camera_pos hword1=0x0360 hword3=0x01C0 hword5=0x0000
	ccs_end

ccs_8091895:
	ccs_set_camera_pos hword1=0x0360 hword3=0x01C0 hword5=0xFF80
	ccs_end

ccs_809189D:
	ccs_simple_scroll hword1=0x0038 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80918A7:
	ccs_simple_scroll hword1=0x0038 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80918B1:
	ccs_simple_scroll hword1=0x00C2 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80918BB:
	ccs_simple_scroll hword1=0x00C2 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80918C5:
	ccs_set_camera_pos hword1=0xF9A0 hword3=0x0260 hword5=0x0000
	ccs_end

ccs_80918CD:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0020 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end
	ccs_simple_scroll hword1=0x0014 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end
	ccs_set_camera_pos hword1=0xF800 hword3=0x01C0 hword5=0x0000
	ccs_end

cutscenescript_80918EC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C6DDC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8091868
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80589D8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091CD3
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8091870
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=byte_8091883
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8B
	cs_load_gfx_anims ptr1=gfx_anim_script_80348F4
	cs_run_cutscene_camera_script ptr1=ccs_809188D
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80589E8
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091CD3
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_sound hword1=0x0157
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C48
	cs_pause byte1=0xFF byte2=0x0E
	cs_play_sound hword1=0x0157
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C49
	cs_pause byte1=0xFF byte2=0x16
	cs_play_sound hword1=0x0157
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C4A
	cs_pause byte1=0xFF byte2=0x12
	cs_play_sound hword1=0x0157
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C4B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_free_ow_map_object nybble1=0x00
	cs_play_sound hword1=0x0161
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C4C
	cs_pause byte1=0xFF byte2=0x0E
	cs_free_ow_map_object nybble1=0x01
	cs_play_sound hword1=0x0161
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C4D
	cs_pause byte1=0xFF byte2=0x16
	cs_free_ow_map_object nybble1=0x02
	cs_play_sound hword1=0x0161
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C4E
	cs_pause byte1=0xFF byte2=0x12
	cs_free_ow_map_object nybble1=0x03
	cs_play_sound hword1=0x0161
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C4F
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x0157
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C50
	cs_pause byte1=0xFF byte2=0x0E
	cs_play_sound hword1=0x0157
	cs_spawn_ow_map_object nybble1=0x05 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C51
	cs_pause byte1=0xFF byte2=0x16
	cs_play_sound hword1=0x0157
	cs_spawn_ow_map_object nybble1=0x06 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x007A1C52
	cs_pause byte1=0xFF byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x11
	cs_free_all_ow_map_objects
	cs_run_cutscene_camera_script ptr1=ccs_8091895
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0x0021
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091CD3
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_run_cutscene_camera_script ptr1=ccs_809189D
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x14
	cs_wait_var_equal byte1=0x08 byte2=0x15
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x015F
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091CD3
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x17
	cs_wait_var_equal byte1=0x08 byte2=0x18
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80918A7
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x1F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x19
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80918B1
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x1A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8058A14
	cs_set_var byte1=0x08 byte2=0x1B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80918BB
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1D
	cs_wait_var_equal byte1=0x08 byte2=0x1E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80918B1
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x24
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80918BB
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x25
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x1F
	cs_wait_var_equal byte1=0x08 byte2=0x20
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x26
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0xFF
	cs_set_event_flag byte1=0xFF event16_2=EVENT_8A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8B
	cs_set_var byte1=0x08 byte2=0x21
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8058A54
	cs_run_cutscene_camera_script ptr1=ccs_80918C5
	cs_pause byte1=0xFF byte2=0x78
	cs_decomp_text_archive ptr1=CompText87C7A50 + COMPRESSED_PTR_FLAG
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8091CD3
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x27
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x31
	cs_wait_var_equal byte1=0x08 byte2=0x32
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x33
	cs_run_cutscene_camera_script ptr1=ccs_80918CD
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x34
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

byte_8091C08::
	.word 0x54350835, 0x0918DA00, 0x08090808, 0x1EFF0236, 0x042CFF3A, 0x1EFF0280, 0x09370835, 0xFF023808
	.word 0x32FF3A1E, 0xFF028004, 0x3908351E, 0x023A0809, 0xFF3A1EFF, 0x02800435, 0x08351EFF, 0x3CFF023B
	.word 0x00000014, 0x1CFF2700, 0xFF530708, 0x1CDB1400, 0xFF020809, 0x37FF3A1E, 0x08358004, 0xE400543C
	.word 0x02080918, 0x0014D2FF, 0x53000000, 0xFF2701FF, 0x14070408, byte_8091CD3, 0x3A1EFF02, 0x800439FF
	.byte 0x02
	.byte 0xFF
	.byte 0x3C

cutscenescript_8091C8B:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_free_all_ow_map_objects
	cs_set_event_flag byte1=0xFF event16_2=EVENT_8A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8B
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0800 signedhword6=0x01C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C25
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8091CD3::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8091C8B
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8091C8B
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8091CF8:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8091CFE:
	ccs_simple_scroll hword1=0x0018 hword3=0xFE00 hword5=0x0000 hword7=0x0000
	ccs_end

byte_8091D08::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C84A0 + COMPRESSED_PTR_FLAG
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0380 signedhword6=0x0080 signedhword8=0x0000
	cs_run_cutscene_camera_script ptr1=ccs_8091CF8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8074EC8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8091DF5
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x00A01C47
	cs_play_sound hword1=0x01AD
	cs_pause byte1=0xFF byte2=0x10
	cs_play_sound hword1=0x00EA
	cs_pause byte1=0xFF byte2=0x68
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8091DFD
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8091E0C
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8091DFD
	cs_pause byte1=0xFF byte2=0x3C
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0xB4
	cs_set_var byte1=0x08 byte2=0x04
	cs_run_cutscene_camera_script ptr1=ccs_8091CFE
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8091DAA:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_126
	cs_set_event_flag byte1=0xFF event16_2=EVENT_127
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C27
	cs_set_event_flag byte1=0xFF event16_2=EVENT_741
	cs_set_event_flag byte1=0xFF event16_2=EVENT_740
	cs_set_event_flag_range byte1=0x02 event16_2=EVENT_7F6
	cs_init_scenario_effect byte1=0x00
	cs_set_enter_map_screen_fade byte1=0x08 byte2=0x08
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8091E1C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8091DF5:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8091DAA

byte_8091DFD::
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_8091DFD

cutscenescript_8091E0C:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8091E0C
	cs_end_for_map_reload_maybe_8037c64

unk_8091E1C:
	.word 0x03000093, 0x00040000, 0x001E0000, 0x00400000

ccs_8091E2C:
	ccs_set_camera_pos hword1=0x00C0 hword3=0xE4C0 hword5=0x0400
	ccs_end

cutscenescript_8091E34:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C86E4 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8091E2C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8079A18
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8091EE4
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
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x78
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8091EEC
	cs_play_music hword1=0x0021
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_8091EE4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8091EFB
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80

byte_8091EC5::
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C29
	cs_write_gamestate_byte byte1=0x06 byte2=0x53
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_741
	cs_end_scenario_effect
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x007A
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

dword_8091EE4::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8091EC5

cutscenescript_8091EEC:
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8091EEC

cutscenescript_8091EFB:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E4
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8091EFB
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8091F0C:
	ccs_set_camera_pos hword1=0x00C0 hword3=0xE4C0 hword5=0x0400
	ccs_end

ccs_8091F14:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8091F21:
	ccs_simple_scroll hword1=0x0014 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8091F2B:
	ccs_simple_scroll hword1=0x0028 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

ccs_8091F35:
	ccs_set_camera_pos hword1=0x00C0 hword3=0xE4C0 hword5=0x0400
	ccs_end

ccs_8091F3D:
	ccs_set_camera_pos hword1=0x0040 hword3=0xE2C0 hword5=0x0400
	ccs_end

end_ccs_8091F45:
	.byte 0x00
	.byte 0x00
	.byte 0x00

cutscenescript_8091F48:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87C8C14 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8091F0C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8079A68
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_call_native_with_return_value ptr1=sub_80922D4+1
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_80922B4
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8092297
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_80922C3
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_kill_cutscene_process byte1=0x20
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8092297
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_run_cutscene_camera_script ptr1=ccs_8091F14
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_run_cutscene_camera_script ptr1=ccs_8091F21
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_play_music hword1=0x001C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_kill_cutscene_process byte1=0x20
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x96
	cs_set_var byte1=0x08 byte2=0x0E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8092297
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x24
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x26
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x27
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8091F2B
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x17
	cs_wait_var_equal byte1=0x08 byte2=0x18
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x19
	cs_wait_var_equal byte1=0x08 byte2=0x1A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1B
	cs_wait_var_equal byte1=0x08 byte2=0x1C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x1D
	cs_wait_var_equal byte1=0x08 byte2=0x1E
	cs_change_navi_maybe_80382fe byte1=0x00
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8092297
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x30
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1F
	cs_wait_var_equal byte1=0x08 byte2=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x32
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x21
	cs_wait_var_equal byte1=0x08 byte2=0x22
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x33
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x23
	cs_wait_var_equal byte1=0x08 byte2=0x24
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x3F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x25
	cs_wait_var_equal byte1=0x08 byte2=0x26
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x41
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x27
	cs_wait_var_equal byte1=0x08 byte2=0x28
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x43
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00BC
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87C97A8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=ccs_8091F35
	cs_set_var byte1=0x08 byte2=0x30
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8092297
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x51
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x31
	cs_wait_var_equal byte1=0x08 byte2=0x32
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x5D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x33
	cs_wait_var_equal byte1=0x08 byte2=0x34
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x5E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x35
	cs_wait_var_equal byte1=0x08 byte2=0x36
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x69
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x37
	cs_wait_var_equal byte1=0x08 byte2=0x38
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x7D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x39
	cs_wait_var_equal byte1=0x08 byte2=0x3A
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00BC
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_809229F
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x81
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_8091F3D
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_var byte1=0x08 byte2=0x3B
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8092297
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x3C
	cs_wait_var_equal byte1=0x08 byte2=0x3D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x82
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x3E
	cs_wait_var_equal byte1=0x08 byte2=0x3F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x83
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x40
	cs_wait_var_equal byte1=0x08 byte2=0x41
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x85
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x42
	cs_wait_var_equal byte1=0x08 byte2=0x43
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x86
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x44
	cs_wait_var_equal byte1=0x08 byte2=0x45
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x8F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x46
	cs_wait_var_equal byte1=0x08 byte2=0x47
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x92
	cs_wait_chatbox byte1=0x80

byte_8092274::
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C2B
	cs_change_navi_maybe_80382fe byte1=0x00
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_172A
	cs_flag_cmd_8038466 byte1=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1732
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x007B
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

byte_8092297::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8092274

byte_809229F::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_jump destination1=byte_8092274

cutscenescript_80922B4:
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_80922B4

cutscenescript_80922C3:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E4
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_80922C3
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_80922D3:
	.byte 0x00

	thumb_local_start
sub_80922D4:
	push {r4-r7, lr}
	bl GetCurPETNavi
	strb r0, [r5, #4]
	mov r0, #0
	pop {r4-r7, pc}
	thumb_func_end sub_80922D4


ccs_80922E0:
	ccs_set_camera_pos hword1=0x0040 hword3=0xE340 hword5=0x0400
	ccs_end

ccs_80922E8:
	ccs_simple_scroll hword1=0x0010 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_80922F2:
	.byte 0x00
	.byte 0x00

cutscenescript_80922F4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CA1C0 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80922E0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8079D6C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x80
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80923CF
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_80922E8
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80923B5
	cs_pause byte1=0xFF byte2=0x78
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8092398:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C2D
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=byte_80923D8
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80923B5:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8092398

cutscenescript_80923CF:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8092398
	cs_end_for_map_reload_maybe_8037c64

byte_80923D8::
	.byte 0x3, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_80923E8::
	ccs_set_camera_pos hword1=0xF140 hword3=0x0B00 hword5=0xFE00
	ccs_end

cutscenescript_80923F0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87CA6E4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_80923E8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805C1A8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_80924A3
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809249B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8092438:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_C00
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_123
	cs_write_gamestate_byte byte1=0x06 byte2=0x60
	cs_write_gamestate_byte byte1=0x08 byte2=0x03
	cs_write_gamestate_byte byte1=0x07 byte2=0x60
	cs_add_bbs_message_range hword1=0x17C6 byte3=0x04
	cs_add_bbs_message_range hword1=0x17F6 byte3=0x07
	cs_add_bbs_message_range hword1=0x182F byte3=0x07
	cs_add_bbs_message_range hword1=0x1875 byte3=0x02
	cs_add_bbs_message_range hword1=0x18B7 byte3=0x03
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0xB4
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E01
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_80924C0
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809249B:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8092438

cutscenescript_80924A3:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8092438
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_80924C0:
	.word 0x04000106, 0x00000000, 0x00000000, 0x00000000
/*For debugging purposes, connect comment at any range!*/
