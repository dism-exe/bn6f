
unk_8094780::
	ccs_set_camera_pos hword1=0xFB40 hword3=0xF180 hword5=0x0400
	ccs_end

cutscenescript_8094788:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D109C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=unk_8094780
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8063DBC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094837
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x10
	cs_set_var byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0xF0

cutscenescript_8094802:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E1D
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8094840
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8094837:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8094802
	cs_end_for_map_reload_maybe_8037c64

unk_8094840:
	.word 0x04000001, 0x00000000, 0x00000000, 0x00000000
byte_8094850::
	ccs_set_camera_pos hword1=0x0520 hword3=0xFC80 hword5=0x0000
	ccs_end

byte_8094858::
	ccs_simple_scroll hword1=0x00A6 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_809486B:
	ccs_simple_scroll hword1=0x00D8 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8094875:
	ccs_simple_scroll hword1=0x0068 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_809487F:
	ccs_simple_scroll hword1=0x003E hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x006C hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

end_ccs_8094892:
	.byte 0x00
	.byte 0x00

cutscenescript_8094894:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D10D0 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8094850
	cs_spawn_ow_npc_objects_from_list ptr2=unk_8051518
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_809495A
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8094952
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=byte_8094858
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=ccs_809486B
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=ccs_8094875
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=ccs_809487F
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8094916::
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
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E1F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_8094974
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8094952::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8094916

cutscenescript_809495A:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_8094916

byte_8094974::
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000

ccs_8094984:
	ccs_set_camera_pos hword1=0xF740 hword3=0xFFC0 hword5=0x0000
	ccs_end

ccs_809498C:
	ccs_simple_scroll hword1=0x0048 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8094996:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0014 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

byte_80949A9::
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_80949B3:
	ccs_set_camera_pos hword1=0xF660 hword3=0x01A0 hword5=0x0000
	ccs_end

byte_80949BB::
	ccs_simple_scroll hword1=0x0038 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_80949C5:
	ccs_simple_scroll hword1=0x0038 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

end_ccs_80949CF:
	.byte 0x00
cutscenescript_80949D0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D1144 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8094984
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80566F0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094B68
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_809498C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=ccs_8094996
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=byte_80949A9
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094B70
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x0B
	cs_run_cutscene_camera_script ptr1=ccs_80949B3
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0x000E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094B68
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0C
	cs_wait_var_equal byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_80949BB
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80949C5
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x14
	cs_wait_var_equal byte1=0x08 byte2=0x15
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x16
	cs_wait_var_equal byte1=0x08 byte2=0x17
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8094B23::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x06 byte2=0x63
	cs_write_gamestate_byte byte1=0x07 byte2=0x62
	cs_add_bbs_message_range hword1=0x1836 byte3=0x07
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0800 signedhword6=-0x0040 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E21
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8094B68:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8094B23

cutscenescript_8094B70:
	.word 0x3740003C, off_8034938, 0xFF20FF27, 0x01FF0207, 0x080CFF27, 0x4B231507, 0x00000809

ccs_8094B8C:
	ccs_set_camera_pos hword1=0xFA40 hword3=0x0540 hword5=0x0000
	ccs_end

ccs_8094B94:
	ccs_simple_scroll hword1=0x00BC hword3=0x0000 hword5=0x0000 hword7=0x0100
	ccs_end

byte_8094B9E::
	ccs_simple_scroll hword1=0x00BC hword3=0x0000 hword5=0x0000 hword7=0xFF00
	ccs_end

ccs_8094BA8:
	ccs_wait hword1=0x0002
	ccs_simple_scroll hword1=0x0090 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

byte_8094BB5::
	ccs_simple_scroll hword1=0x007A hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0020 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_8094BC8:
	ccs_set_camera_pos hword1=0xF5C0 hword3=0x0540 hword5=0x0000
	ccs_end

byte_8094BD0::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D16D0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8094B8C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8057D98
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094CA7
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8094B94
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=byte_8094B9E
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8094BA8
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_8094BB5
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_cutscene_camera_script ptr1=ccs_8094BC8
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
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8094C75:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E23
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8094CB0
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8094CA7:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8094C75
	cs_end_for_map_reload_maybe_8037c64

unk_8094CB0:
	.word 0x07000702
	.byte 0x00
	.byte 0x00
end_cutscenescript_8094CB6:
	.word 0x0000001C, 0x00000126
	.byte 0xF0
	.byte 0xFF

ccs_8094CC0:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8094CC6:
	ccs_end

end_ccs_8094CC7:
	.byte 0x00
byte_8094CC8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D17DC + COMPRESSED_PTR_FLAG
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8A
	cs_set_event_flag byte1=0xFF event16_2=EVENT_8B
	cs_run_cutscene_camera_script ptr1=ccs_8094CC0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8058FC4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_run_cutscene_camera_script ptr1=ccs_8094CC6
	cs_set_cutscene_skip_script ptr1=cutscenescript_8094D78
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_var_equal byte1=0x08 byte2=0x80
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_set_var byte1=0x08 byte2=0x81
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_run_cutscene_camera_script ptr1=ccs_8094CC0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8094D43::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E25
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8094D80
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8094D78:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8094D43

unk_8094D80:
	.word 0x04000106, 0x00000000, 0x00000000, 0x00000000

ccs_8094D90:
	ccs_set_camera_pos hword1=0xF800 hword3=0x0E00 hword5=0x0000
	ccs_end

cutscenescript_8094D98:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D190C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8094D90
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80647B8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8094E11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8094DDC:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E27
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8094E1C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8094E11::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8094DDC
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_8094E1C:
	.word 0x07000802, 0xFF940000, 0xFFEA0000, 0x00000000

ccs_8094E2C:
	ccs_set_camera_pos hword1=0x02C0 hword3=0x0A40 hword5=0x0400
	ccs_end

ccs_8094E34:
	ccs_simple_scroll hword1=0x00D4 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0056 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_8094E47::
	ccs_simple_scroll hword1=0x0018 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0068 hword3=0x0100 hword5=0x0000 hword7=0x0040
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject2_Coords
	ccs_end

ccs_8094E5F:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8094E65:
	ccs_simple_scroll hword1=0x00A4 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8094E6F:
	ccs_set_camera_pos hword1=0x0340 hword3=0xFE20 hword5=0x0600
	ccs_end

ccs_8094E77:
	ccs_simple_scroll hword1=0x0020 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0000 hword7=0xFF00
	ccs_simple_scroll hword1=0x0030 hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

byte_8094E93::
	ccs_simple_scroll hword1=0x0060 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8094E9D:
	ccs_simple_scroll hword1=0x0028 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0000 hword7=0x0100
	ccs_simple_scroll hword1=0x002E hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

end_ccs_8094EB9:
	.byte 0x00
	.byte 0x00
	.byte 0x00

cutscenescript_8094EBC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D1A44 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8094E2C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8065370
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x78
	cs_pause byte1=0xFF byte2=0x78
	cs_sound_cmd_80380ea hword1=0x0018 byte3=0x08 byte4=0x1F
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80950AE
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8094E34
	cs_wait_camera_script
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
	cs_run_cutscene_camera_script ptr1=byte_8094E47
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8094E5F
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8094E65
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8094E6F
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_play_sound hword1=0x00D3
	cs_load_gfx_anim ptr1=byte_8062938
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8094E77
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x01B8
	cs_call_native_with_return_value ptr1=sub_80950C8+1
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8094E93
	cs_wait_camera_script
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
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_run_cutscene_camera_script ptr1=ccs_8094E9D
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x00000014
	cs_wait_chatbox byte1=0x80
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x000000B2
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_809506F:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x03C0 signedhword6=-0x0140 signedhword8=0x0600
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_80950D4+1
	cs_call_native_with_return_value ptr1=sub_80950B8+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E29
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80950AE:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_809506F
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_80950B7:
	.balign 4, 0

	thumb_local_start
sub_80950B8:
	push {lr}
	mov r0, #0x19
	bl sub_80355DE
	str r0, [r5, #0x34]
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_80950B8

	thumb_local_start
sub_80950C8:
	push {lr}
	mov r0, #2
	bl sub_80AA004
	mov r0, #0
	pop {pc}
	thumb_func_end sub_80950C8

	thumb_local_start
sub_80950D4:
	push {lr}
	mov r0, #0
	bl sub_80AA004
	mov r0, #0
	pop {pc}
	thumb_func_end sub_80950D4

cutscenescript_80950E0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87D1CFC + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095128
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

byte_8095105::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E2B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8095128:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8095105

ccs_8095130:
	ccs_set_camera_pos hword1=0x03C0 hword3=0xFEC0 hword5=0x0600
	ccs_end

ccs_8095138:
	ccs_simple_scroll hword1=0x0020 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0000 hword7=0xFF00
	ccs_simple_scroll hword1=0x0030 hword3=0xFF00 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8095154:
	ccs_set_camera_pos hword1=0x03C0 hword3=0xFEC0 hword5=0x0600
	ccs_end

cutscenescript_809515C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D1D40 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8095130
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8065520
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_PET_NAVI_ACTIVE
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095215
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_load_gfx_anim ptr1=byte_8062908
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8095138
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x01B8
	cs_call_native_with_return_value ptr1=sub_8095220+1
	cs_pause byte1=0xFF byte2=0x78
	cs_run_cutscene_camera_script ptr1=ccs_8095154
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80951CE:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_load_gfx_anim ptr1=byte_8062908
	cs_call_native_with_return_value ptr1=sub_8095220+1
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x03C0 signedhword6=-0x0140 signedhword8=0x0600
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E2D
	cs_navi_cmd_80340f6
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8095215:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80951CE
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_809521E:
	.balign 4, 0

	thumb_local_start
sub_8095220:
	push {lr}
	mov r0, #1
	bl sub_80AA004
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8095220

byte_809522C::
	ccs_set_camera_pos hword1=0xFB40 hword3=0x0AC0 hword5=0x0200
	ccs_end

byte_8095234::
	ccs_simple_scroll hword1=0x0090 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x007C hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8095247:
	ccs_simple_scroll hword1=0x0010 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0020 hword3=0x0080 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_809525A:
	ccs_wait hword1=0x0014
	ccs_simple_scroll hword1=0x0028 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8095267:
	ccs_set_camera_pos hword1=0xFB40 hword3=0x0AC0 hword5=0x0200
	ccs_end

end_ccs_809526F:
	.byte 0x00

cutscenescript_8095270:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D1DD0 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_809522C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80655A8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x78
	cs_set_cutscene_skip_script ptr1=cutscenescript_80953A5
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_sound_cmd_80380ea hword1=0x0018 byte3=0x08 byte4=0x1F
	cs_pause byte1=0xFF byte2=0x78
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809539D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8095234
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_8095247
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=ccs_809525A
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x010A
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_8D
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8095267
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8095357:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_8D
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x04C0 signedhword6=0x0AC0 signedhword8=0x0200
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E2F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809539D:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8095357

cutscenescript_80953A5:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8095357
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_80953C0:
	ccs_set_camera_pos hword1=0x0780 hword3=0xDF40 hword5=0x0000
	ccs_end

cutscenescript_80953C8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D2010 + COMPRESSED_PTR_FLAG
	cs_set_event_flag byte1=0xFF event16_2=EVENT_9FF
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_80953C0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806B740
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_809541B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80

cutscenescript_8095404:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E31
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0081
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

byte_809541B::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8095404
	cs_end_for_map_reload_maybe_8037c64

ccs_8095424:
	ccs_set_camera_pos hword1=0x0780 hword3=0xDF40 hword5=0x0000
	ccs_end

ccs_809542C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8095432:
	.byte 0x00
	.byte 0x00

cutscenescript_8095434:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D2154 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8095424
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806B778
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095519
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8095521
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000005
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
	cs_decomp_text_archive ptr1=CompText87D2154 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_809542C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095519
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00D4
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80954F1:
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x015C
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E33
	cs_pause byte1=0xFF byte2=0x5A
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=byte_8095530
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8095519:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80954F1

cutscenescript_8095521:
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=cutscenescript_8095521
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8095530::
	.word 0x05000306, 0xFF5C0000, 0xFFE40000, 0x00200000

ccs_8095540:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8095546:
	ccs_simple_scroll hword1=0x0024 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0024 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8095559:
	.word 0x0057D450
	.byte 0x02
	.byte 0x08
	.byte 0x00

cutscenescript_8095560:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D21D4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8095540
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80656EC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_PET_NAVI_ACTIVE
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_8D
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80955FD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8095546
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00B4
	cs_set_event_flag byte1=0xFF event16_2=EVENT_8C
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8D
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80955BD:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_8C
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_8D
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x05C0 signedhword6=-0x0320 signedhword8=0x0200
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E35
	cs_navi_cmd_80340f6
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80955FD:
	.word 0x1540003C, cutscenescript_80955BD
	.byte 0x00
	.byte 0x00
	.byte 0x00

ccs_8095608:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_809560E:
	ccs_simple_scroll hword1=0x0104 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_8095621:
	ccs_simple_scroll hword1=0x0044 hword3=0x0000 hword5=0xFF80 hword7=0x0080
	ccs_end

byte_809562B::
	ccs_simple_scroll hword1=0x0040 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8095635:
	ccs_simple_scroll hword1=0x0040 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

byte_809563F::
	ccs_simple_scroll hword1=0x0044 hword3=0x0000 hword5=0x0080 hword7=0xFF80
	ccs_end

ccs_8095649:
	ccs_simple_scroll hword1=0x0048 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0010 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

byte_809565C::
	ccs_simple_scroll hword1=0x0038 hword3=0x0000 hword5=0xFF80 hword7=0x0100
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0x0000 hword7=0x0100
	ccs_end

ccs_809566F:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8095675:
	.byte 0x00
	.byte 0x00
	.byte 0x00

cutscenescript_8095678:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D2234 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8095608
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80657CC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x78
	cs_pause byte1=0xFF byte2=0x78
	cs_sound_cmd_80380ea hword1=0x0018 byte3=0x08 byte4=0x1F
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80958A5
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_809560E
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
	cs_run_cutscene_camera_script ptr1=ccs_8095621
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
	cs_run_cutscene_camera_script ptr1=byte_809562B
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_80958AD
	cs_play_sound hword1=0x00E3
	cs_play_sound hword1=0x01B8
	cs_call_native_with_return_value ptr1=sub_80958CC+1
	cs_pause byte1=0xFF byte2=0x78
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8095635
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_run_cutscene_camera_script ptr1=byte_809563F
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_run_cutscene_camera_script ptr1=ccs_8095649
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_play_sound hword1=0x0107
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFF4C hword5=0xFFAC hword7=0x0040 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFF4C hword5=0xFFAC hword7=0x0042 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0xFF4C hword5=0xFFAC hword7=0x0044 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x0A
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_809565C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_play_sound hword1=0x0107
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x1F hword3=0xFF66 hword5=0xFF7C hword7=0x0060 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x1F hword3=0xFF66 hword5=0xFF7C hword7=0x0062 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x02 byte2=0x1F hword3=0xFF66 hword5=0xFF7C hword7=0x0064 word9=0xFF010104
	cs_pause byte1=0xFF byte2=0x0A
	cs_free_all_ow_map_objects
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_809566F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x17
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x00000014
	cs_wait_chatbox byte1=0x80
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_wait_var_equal byte1=0x08 byte2=0x18
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x000000B2
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8095866:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0920 signedhword6=-0x02E0 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_80958CC+1
	cs_call_native_with_return_value ptr1=sub_80958BC+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E37
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80958A5:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8095866

byte_80958AD::
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_80958AD

	thumb_local_start
sub_80958BC:
	push {lr}
	mov r0, #0x1b
	bl sub_80355DE
	str r0, [r5, #0x34]
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_80958BC

	thumb_local_start
sub_80958CC:
	push {lr}
	mov r0, #2
	bl sub_80AA104
	mov r0, #0
	pop {pc}
	thumb_func_end sub_80958CC

ccs_80958D8:
	ccs_set_camera_pos hword1=0xFA40 hword3=0xE440 hword5=0x0000
	ccs_end

cutscenescript_80958E0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D2638 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80958D8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806B8BC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_809592F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80

cutscenescript_8095918:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E39
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0082
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

byte_809592F::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8095918
	cs_end_for_map_reload_maybe_8037c64

ccs_8095938:
	ccs_set_camera_pos hword1=0xFA40 hword3=0xE440 hword5=0x0000
	ccs_end

ccs_8095940:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8095946:
	.byte 0x00
	.byte 0x00

cutscenescript_8095948:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D2730 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8095938
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806B8F4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095A2D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8095A35
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000006
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
	cs_decomp_text_archive ptr1=CompText87D2730 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8095940
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095A2D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00D4
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8095A05:
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x015C
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E3B
	cs_pause byte1=0xFF byte2=0x5A
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=byte_8095A44
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8095A2D:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8095A05

cutscenescript_8095A35:
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=cutscenescript_8095A35
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8095A44::
	.word 0x07000406, 0xFF6E0000, 0xFFD20000, 0x00400000

ccs_8095A54:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8095A5A:
	ccs_simple_scroll hword1=0x0048 hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0014 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_8095A6D:
	.byte 0x00
	.byte 0x00
	.byte 0x00

cutscenescript_8095A70:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D27B0 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8095A54
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80659CC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_PET_NAVI_ACTIVE
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095B04
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8095A5A
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x01BA
	cs_call_native_with_return_value ptr1=sub_8095B0C+1
	cs_pause byte1=0xFF byte2=0x96
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_8095AC2::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_call_native_with_return_value ptr1=sub_8095B0C+1
	cs_spawn_ow_npc_objects_from_map
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0920 signedhword6=-0x02E0 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E3D
	cs_navi_cmd_80340f6
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8095B04:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_8095AC2

	thumb_local_start
sub_8095B0C:
	push {lr}
	mov r0, #1
	bl sub_80AA104
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8095B0C

ccs_8095B18:
	ccs_set_camera_pos hword1=0xF820 hword3=0x02A0 hword5=0x0200
	ccs_end

byte_8095B20::
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFF80 hword7=0x0040
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0058 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

ccs_8095B45:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8095B4B:
	.byte 0x00

cutscenescript_8095B4C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D2818 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8095B18
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806491C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095C4D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00FE
	cs_set_event_flag byte1=0xFF event16_2=EVENT_137
	cs_free_all_objects_of_types byte2=0x20
	cs_spawn_ow_map_objects_from_map
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_8095B20
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8095B45
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x00000014
	cs_wait_chatbox byte1=0x80
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x000000B2
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8095C0F:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x06C0 signedhword6=0x03C0 signedhword8=0x0200
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_8095C58+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E3F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_set_event_flag byte1=0xFF event16_2=EVENT_137
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8095C4D:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8095C0F
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8095C56:
	.balign 4, 0

	thumb_local_start
sub_8095C58:
	push {lr}
	mov r0, #0x1c
	bl sub_80355DE
	str r0, [r5, #0x34]
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_8095C58


ccs_8095C68:
	ccs_set_camera_pos hword1=0x11C0 hword3=0xE9A0 hword5=0x0000
	ccs_end

cutscenescript_8095C70:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D2ABC + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8095C68
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806BC90
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8095CBF
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80

cutscenescript_8095CA8:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E41
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0083
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

byte_8095CBF::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8095CA8
	cs_end_for_map_reload_maybe_8037c64

ccs_8095CC8:
	ccs_set_camera_pos hword1=0x11C0 hword3=0xE9A0 hword5=0x0000
	ccs_end

ccs_8095CD0:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_8095CD6:
	.byte 0x00
	.byte 0x00

cutscenescript_8095CD8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D2B9C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8095CC8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806BCC8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095DBD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8095DC5
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000007
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
	cs_decomp_text_archive ptr1=CompText87D2B9C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8095CD0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8095DBD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00D4
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8095D95:
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x015C
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E43
	cs_pause byte1=0xFF byte2=0x5A
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=byte_8095DD4
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8095DBD:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8095D95

cutscenescript_8095DC5:
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=cutscenescript_8095DC5
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8095DD4::
	.word 0x07000106, 0x00000000, 0x00000000, 0x00000000

ccs_8095DE4:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_8095DEA:
	ccs_set_camera_pos hword1=0xF6C0 hword3=0xF940 hword5=0x0400
	ccs_end

ccs_8095DF2:
	ccs_simple_scroll hword1=0x002C hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8095DFC:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8095E09:
	ccs_simple_scroll hword1=0x001C hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0x0100 hword7=0xFFC0
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8095E25:
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0x0100 hword7=0xFFC0
	ccs_simple_scroll hword1=0x0038 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_8095E38:
	ccs_set_camera_pos hword1=0xF6C0 hword3=0xFB20 hword5=0x0400
	ccs_end

byte_8095E40::
	ccs_set_camera_pos hword1=0xF7A0 hword3=0x0500 hword5=0x0200
	ccs_end

ccs_8095E48:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFF80 hword7=0x0020
	ccs_end

byte_8095E5E::
	ccs_set_camera_pos hword1=0xF840 hword3=0xFCA0 hword5=0x0400
	ccs_end

ccs_8095E66:
	ccs_simple_scroll hword1=0x0020 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8095E70:
	ccs_simple_scroll hword1=0x0044 hword3=0x0000 hword5=0x0000 hword7=0x0100
	ccs_simple_scroll hword1=0x0034 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8095E83:
	ccs_set_camera_pos hword1=0xF980 hword3=0x0DC0 hword5=0x0000
	ccs_end

ccs_8095E8B:
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0x0000 hword7=0x0100
	ccs_simple_scroll hword1=0x005C hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8095E9E:
	ccs_set_camera_pos hword1=0xF980 hword3=0x0CC0 hword5=0x0000
	ccs_end

byte_8095EA6::
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0xFF00 hword7=0x0080
	ccs_simple_scroll hword1=0x0078 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_8095EB9::
	ccs_set_camera_pos hword1=0xF6A0 hword3=0xFB80 hword5=0x0400
	ccs_end

ccs_8095EC1:
	ccs_simple_scroll hword1=0x0038 hword3=0x0040 hword5=0x0040 hword7=0x0000
	ccs_end

ccs_8095ECB:
	ccs_simple_scroll hword1=0x0010 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8095EDE:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

cutscenescript_8095EE8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D2C44 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8095DE4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80649D0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_do_pet_effect byte1=0xFF byte2=0x05
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80963A0
	cs_pause byte1=0xFF byte2=0x3C
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_137
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8095DEA
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_8095DF2
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_run_cutscene_camera_script ptr1=ccs_8095DFC
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8095E09
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8095E25
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8095E38
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_8095E40
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_run_cutscene_camera_script ptr1=ccs_8095E48
	cs_pause byte1=0xFF byte2=0x20
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_80963A8
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x17
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_137
	cs_run_cutscene_camera_script ptr1=byte_8095E5E
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8064A10
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x04011000
	cs_pause byte1=0xFF byte2=0x02
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x05011000
	cs_pause byte1=0xFF byte2=0x02
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x07011000
	cs_pause byte1=0xFF byte2=0x02
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x08011000
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80963A0
	cs_pause byte1=0xFF byte2=0x78
	cs_free_all_ow_map_objects
	cs_set_var byte1=0x08 byte2=0x20
	cs_wait_var_equal byte1=0x08 byte2=0x21
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x000E
	cs_run_cutscene_camera_script ptr1=ccs_8095E66
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x22
	cs_wait_var_equal byte1=0x08 byte2=0x23
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x24
	cs_wait_var_equal byte1=0x08 byte2=0x25
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8095E70
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x26
	cs_wait_var_equal byte1=0x08 byte2=0x27
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8064A50
	cs_play_music hword1=0x000C
	cs_run_cutscene_camera_script ptr1=ccs_8095E83
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8095E8B
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8095E83
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x25
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_run_cutscene_camera_script ptr1=ccs_8095E9E
	cs_set_var byte1=0x08 byte2=0x30
	cs_pause byte1=0xFF byte2=0x78
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x00011000
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x01011000
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x03 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x03011000
	cs_pause byte1=0xFF byte2=0x01
	cs_spawn_ow_map_object nybble1=0x04 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x04011000
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80963A0
	cs_pause byte1=0xFF byte2=0x78
	cs_free_all_ow_map_objects
	cs_set_var byte1=0x08 byte2=0x31
	cs_wait_var_equal byte1=0x08 byte2=0x32
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x33
	cs_wait_var_equal byte1=0x08 byte2=0x34
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x29
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8095EA6
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x35
	cs_wait_var_equal byte1=0x08 byte2=0x36
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_137
	cs_run_cutscene_camera_script ptr1=byte_8095EB9
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8064F60
	cs_pause byte1=0xFF byte2=0x96
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_80963A0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x40
	cs_wait_var_equal byte1=0x08 byte2=0x41
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x42
	cs_wait_var_equal byte1=0x08 byte2=0x43
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x30
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x44
	cs_wait_var_equal byte1=0x08 byte2=0x45
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x34
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x46
	cs_wait_var_equal byte1=0x08 byte2=0x47
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x48
	cs_wait_var_equal byte1=0x08 byte2=0x4A
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x4B
	cs_wait_var_equal byte1=0x08 byte2=0x4C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x36
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x37
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x4D
	cs_wait_var_equal byte1=0x08 byte2=0x4E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x38
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x4F
	cs_run_cutscene_camera_script ptr1=ccs_8095EC1
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x50
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x51
	cs_wait_var_equal byte1=0x08 byte2=0x52
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x40
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x53
	cs_wait_var_equal byte1=0x08 byte2=0x54
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x55
	cs_wait_var_equal byte1=0x08 byte2=0x56
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x41
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x57
	cs_wait_var_equal byte1=0x08 byte2=0x58
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x59
	cs_wait_var_equal byte1=0x08 byte2=0x5A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x42
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x5B
	cs_wait_var_equal byte1=0x08 byte2=0x5C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x5D
	cs_wait_var_equal byte1=0x08 byte2=0x5E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x43
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x5F
	cs_wait_var_equal byte1=0x08 byte2=0x60
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x61
	cs_wait_var_equal byte1=0x08 byte2=0x62
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x44
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x63
	cs_wait_var_equal byte1=0x08 byte2=0x64
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x65
	cs_run_cutscene_camera_script ptr1=ccs_8095ECB
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x66
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x46
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8095EDE
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x67
	cs_wait_var_equal byte1=0x08 byte2=0x68
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x69
	cs_wait_var_equal byte1=0x08 byte2=0x6A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x4A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x6B
	cs_wait_var_equal byte1=0x08 byte2=0x6C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x6D
	cs_wait_var_equal byte1=0x08 byte2=0x6E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x51
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x6F
	cs_wait_var_equal byte1=0x08 byte2=0x70
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x52
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_809634C::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_free_all_ow_map_objects
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_137
	cs_write_gamestate_byte byte1=0x06 byte2=0x64
	cs_add_bbs_message_range hword1=0x187B byte3=0x04
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x08C0 signedhword6=-0x05E0 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E45
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_call_native_with_return_value ptr1=sub_80963C4+1
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0x000E
	cs_set_event_flag byte1=0xFF event16_2=EVENT_ED4
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_80963A0::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_809634C

cutscenescript_80963A8:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_809634C
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_80963C4:
	push {lr}
	mov r0, #1
	mov r1, #0xe3
	bl SetEventFlagFromImmediate
	bl notZero_eByte200AD04
	beq loc_80963E4
	mov r0, #0
	mov r1, #0x7a
	bl SetEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x7b
	bl ClearEventFlagFromImmediate
loc_80963E4:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_80963C4


ccs_80963E8:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_80963EE:
	ccs_set_camera_pos hword1=0xFDC0 hword3=0xFE80 hword5=0x1200
	ccs_simple_scroll hword1=0x0220 hword3=0x0000 hword5=0x0000 hword7=0xFF80
	ccs_wait hword1=0x003C
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0080 hword7=0xFFC0
	ccs_end

byte_8096414::
	ccs_wait hword1=0x0010
	ccs_simple_scroll hword1=0x0010 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

byte_8096421::
	ccs_simple_scroll hword1=0x0020 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

ccs_809642B:
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0xFFC0 hword5=0xFFC0 hword7=0x0000
	ccs_end

ccs_809643E:
	ccs_set_camera_pos hword1=0xFC00 hword3=0xFEC0 hword5=0x0200
	ccs_end

ccs_8096446:
	ccs_simple_scroll hword1=0x0016 hword3=0x0000 hword5=0x0000 hword7=0xFF80
	ccs_simple_scroll hword1=0x002A hword3=0x0040 hword5=0x0040 hword7=0xFF80
	ccs_end

ccs_8096459:
	ccs_simple_scroll hword1=0x0023 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_809646C:
	ccs_set_camera_pos hword1=0xFBA0 hword3=0xFE60 hword5=0x0200
	ccs_end

byte_8096474::
	ccs_set_camera_pos hword1=0xFDC0 hword3=0x0480 hword5=0x0000
	ccs_end

byte_809647C::
	ccs_set_camera_pos hword1=0xFDC0 hword3=0xFEC0 hword5=0x0300
	ccs_end

ccs_8096484:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0000 hword7=0xFF80
	ccs_simple_scroll hword1=0x0078 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0080 hword7=0xFFC0
	ccs_end
	ccs_end

ccs_80964A1:
	ccs_set_camera_pos hword1=0xFDC0 hword3=0x0480 hword5=0x0100
	ccs_end

ccs_80964A9:
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF80 hword7=0x0040
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_80964BC:
	.word 0x00000008

cutscenescript_80964C0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D3798 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80963E8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8065A74
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096782
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x0002
	cs_run_cutscene_camera_script ptr1=ccs_80963EE
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
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
	cs_play_sound hword1=0x00D3
	cs_do_camera_shake byte1=0x01 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_run_cutscene_camera_script ptr1=byte_8096414
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_run_cutscene_camera_script ptr1=byte_8096421
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_809642B
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x0A byte2=0x40
	cs_wait_var_equal byte1=0x0A byte2=0x41
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x0F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_138
	cs_run_cutscene_camera_script ptr1=ccs_809643E
	cs_decomp_text_archive ptr1=CompText87D4190 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x78
	cs_play_music hword1=0x0021
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096782
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1F
	cs_wait_var_equal byte1=0x09 byte2=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809678A
	cs_set_var byte1=0x09 byte2=0x81
	cs_wait_var_equal byte1=0x09 byte2=0x82
	cs_kill_cutscene_process byte1=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8096446
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x22
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x01
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096782
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8096459
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x25
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x14
	cs_wait_var_equal byte1=0x08 byte2=0x15
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x27
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x16
	cs_wait_var_equal byte1=0x08 byte2=0x17
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x18
	cs_wait_var_equal byte1=0x08 byte2=0x19
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1A
	cs_wait_var_equal byte1=0x08 byte2=0x1B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_809646C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2E
	cs_wait_var_equal byte1=0x09 byte2=0x83
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809678A
	cs_set_var byte1=0x09 byte2=0x84
	cs_wait_var_equal byte1=0x09 byte2=0x85
	cs_kill_cutscene_process byte1=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_8096474
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x30
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1C
	cs_wait_var_equal byte1=0x08 byte2=0x1D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x31
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_run_cutscene_camera_script ptr1=byte_809647C
	cs_set_var byte1=0x08 byte2=0x1E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_139
	cs_pause byte1=0xFF byte2=0x78
	cs_play_music hword1=0x001C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096782
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809678A
	cs_set_var byte1=0x09 byte2=0x86
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_var byte1=0x09 byte2=0x87
	cs_wait_var_equal byte1=0x09 byte2=0x88
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8096484
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x3A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_809647C
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x09 byte2=0x89
	cs_pause byte1=0xFF byte2=0x5A
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8096748:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_EC5
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_809679C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8096782::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8096748

cutscenescript_809678A:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_809678A
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_809679C::
	.word 0x04000702, 0x00000000, 0x00000000, 0x00000000

cutscenescript_80967AC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D4190 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_80964A1
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8065AA0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_138
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_139
	cs_play_music hword1=0x001C
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8096895
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809688D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x3C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1F
	cs_run_cutscene_camera_script ptr1=ccs_80964A9
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x40
	cs_wait_chatbox byte1=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_80968A4
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x21
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x00000014
	cs_wait_chatbox byte1=0x80
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_wait_var_equal byte1=0x08 byte2=0x22
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x000000B2
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8096847:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_80968B0+1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E47
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_set_event_flag byte1=0xFF event16_2=EVENT_PET_COMM_SAVE_DISABLED
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809688D:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8096847

byte_8096895::
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_8096895

byte_80968A4::
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_80968A4

	thumb_local_start
sub_80968B0:
	push {lr}
	mov r0, #0x1d
	bl sub_80355DE
	str r0, [r5, #0x34]
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_80968B0

ccs_80968C0:
	ccs_write_camera_field_03_14 ptr1=eOWPlayerObject_Coords
	ccs_end

byte_80968C6::
	ccs_simple_scroll hword1=0x00E0 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_wait hword1=0x003C
	ccs_simple_scroll hword1=0x00E0 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

cutscenescript_80968DC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87D4BA4 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_80968C0
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=byte_809698D
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_80968C6
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_wait_var_equal byte1=0x08 byte2=0x01
	cs_set_var byte1=0x08 byte2=0x02
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x00E3
	cs_do_camera_shake byte1=0x00 byte2=0x0A byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x02 byte2=0x0A byte3=0x00
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x31
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x0A
	cs_do_camera_shake byte1=0x00 byte2=0x03 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8096962:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E49
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_809698D::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8096962
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8096998:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_809699E:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF00 hword7=0x0080
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_80969BD:
	ccs_set_camera_pos hword1=0x06C0 hword3=0xEB40 hword5=0x0D40
	ccs_wait hword1=0x003C
	ccs_simple_scroll hword1=0x0158 hword3=0x0000 hword5=0x0000 hword7=0xFF80
	ccs_wait hword1=0x003C
	ccs_end

byte_80969D4::
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0040 hword7=0xFFC0
	ccs_end

ccs_80969DE:
	ccs_simple_scroll hword1=0x00E0 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_80969E8:
	ccs_set_camera_pos hword1=0x06C0 hword3=0xEC40 hword5=0x0280
	ccs_end

cutscenescript_80969F0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D4DE0 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8096998
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806BD18
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_809699E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8096AE7
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0x001C
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_80969BD
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_run_cutscene_camera_script ptr1=byte_80969D4
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_80969DE
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_80969E8
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_var_equal byte1=0x09 byte2=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8096AEF
	cs_set_var byte1=0x09 byte2=0x81
	cs_wait_var_equal byte1=0x09 byte2=0x82
	cs_kill_cutscene_process byte1=0x20
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_var_equal byte1=0x09 byte2=0x83
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8096AEF
	cs_set_var byte1=0x09 byte2=0x84
	cs_wait_var_equal byte1=0x09 byte2=0x85
	cs_kill_cutscene_process byte1=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8096ABC:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E4B
	cs_pause byte1=0xFF byte2=0x14
	cs_call_native_with_return_value ptr1=sub_8096B00+1
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=byte_8096ADC
	cs_start_fixed_battle hword1=0x0084
	cs_jump destination1=byte_8096ADF

byte_8096ADC::
	cs_start_fixed_battle hword1=0x0085

byte_8096ADF::
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8096AE7:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8096ABC

cutscenescript_8096AEF:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8096AEF
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8096AFF:
	.balign 4, 0

	thumb_local_start
sub_8096B00:
	push {r4-r7, lr}
	mov r4, #0
	bl GetTitleScreenIconCount
	ldr r0, =0xf6
	and r1, r0
	cmp r0, r1
	bne loc_8096B12
	mov r4, #1
loc_8096B12:
	strb r4, [r5, #4]
	mov r0, #0
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_8096B00

byte_8096B1C::
	ccs_set_camera_pos hword1=0x06C0 hword3=0xEC40 hword5=0x0180
	ccs_end

ccs_8096B24:
	ccs_simple_scroll hword1=0x00E0 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8096B2E:
	ccs_set_camera_pos hword1=0x06C0 hword3=0xEC40 hword5=0x0180
	ccs_end

ccs_8096B36:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0000 hword7=0x0080
	ccs_end

byte_8096B40::
	ccs_set_camera_pos hword1=0x06C0 hword3=0xEC40 hword5=0x0180
	ccs_end

byte_8096B48::
	ccs_simple_scroll hword1=0x0070 hword3=0xFE00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8096B52:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

cutscenescript_8096B5C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D5008 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8096B1C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806BE30
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x03010800
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x06010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096E05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8096B24
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8096E36
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000008
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_sound hword1=0x00C3
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_terminate_gfx_anim byte1=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_eStruct200a6a0_callback
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x5A
	cs_load_map_gfx_anims_bg_anim
	cs_decomp_text_archive ptr1=CompText87D5008 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096E05
	cs_pause byte1=0xFF byte2=0x5A
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x02010800
	cs_run_cutscene_camera_script ptr1=ccs_8096B2E
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8096B36
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_var_equal byte1=0x09 byte2=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8096E36
	cs_set_var byte1=0x09 byte2=0x81
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x0100
	cs_free_ow_map_object nybble1=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0x40
	cs_wait_screen_fade
	cs_wait_var_equal byte1=0x09 byte2=0x82
	cs_kill_cutscene_process byte1=0x20
	cs_set_cutscene_skip_script ptr1=cutscenescript_8096E0D
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x04
	cs_run_cutscene_camera_script ptr1=byte_8096B40
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096E05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_var_equal byte1=0x09 byte2=0x83
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8096E27
	cs_set_var byte1=0x09 byte2=0x84
	cs_wait_var_equal byte1=0x09 byte2=0x85
	cs_kill_cutscene_process byte1=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8096B48
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x1C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x0A
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x15
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096E05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x21
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x16
	cs_wait_var_equal byte1=0x08 byte2=0x17
	cs_pause byte1=0xFF byte2=0x0A
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x18
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x02
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8096E05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x27
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x19
	cs_wait_var_equal byte1=0x08 byte2=0x1A
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8096B52
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x29
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8096E27
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000009
	cs_pause byte1=0xFF byte2=0x78
	cs_kill_cutscene_process byte1=0x20
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x015F
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0F
	cs_run_eStruct200a6a0_callback
	cs_pause byte1=0xFF byte2=0x5A

cutscenescript_8096DDE:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E4D
	cs_pause byte1=0xFF byte2=0xB4
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=byte_8096E44
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8096E05::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8096DDE

cutscenescript_8096E0D:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8096DDE

byte_8096E27::
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_8096E27

cutscenescript_8096E36:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8096E36
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8096E44::
	.byte 0x6, 0x5, 0x0, 0x7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8096E54::
	ccs_set_camera_pos hword1=0xFDC0 hword3=0xFF20 hword5=0x0100
	ccs_end

byte_8096E5C::
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0x0080 hword7=0xFFC0
	ccs_simple_scroll hword1=0x008C hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8096E78:
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFFC0 hword7=0x0000
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFFC0 hword7=0x0020
	ccs_simple_scroll hword1=0x0098 hword3=0x0000 hword5=0xFFC0 hword7=0x0000
	ccs_end

ccs_8096E94:
	ccs_set_camera_pos hword1=0xFDC0 hword3=0x0460 hword5=0x0000
	ccs_end

byte_8096E9C::
	ccs_simple_scroll hword1=0x00A0 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_8096EA6:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject2_Coords
	ccs_end

ccs_8096EAC:
	ccs_set_camera_pos hword1=0xFDC0 hword3=0x0960 hword5=0x0000
	ccs_end

cutscenescript_8096EB4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D5728 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8096E54
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8065E2C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_event_flag byte1=0xFF event16_2=EVENT_138
	cs_set_event_flag byte1=0xFF event16_2=EVENT_139
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x80021000
	cs_pause byte1=0xFF byte2=0x08
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x81021000
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80970C7
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x80001000
	cs_pause byte1=0xFF byte2=0x08
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x81001000
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8097104
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8096E5C
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_8096E78
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8097113
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0xFF
	cs_wait_screen_fade
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_set_cutscene_skip_script ptr1=cutscenescript_80970CF
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_8096E94
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x80001000
	cs_pause byte1=0xFF byte2=0x08
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x81001000
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8097104
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_80970C7
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x15
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x16
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_run_cutscene_camera_script ptr1=byte_8096E9C
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x09
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_138
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_139
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_138
	cs_set_event_flag byte1=0xFF event16_2=EVENT_139
	cs_run_cutscene_camera_script ptr1=ccs_8096EA6
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_80970E9
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x80000800
	cs_pause byte1=0xFF byte2=0x04
	cs_spawn_ow_map_object nybble1=0x01 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0008 word9=0x81000800
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_138
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_139
	cs_run_cutscene_camera_script ptr1=ccs_8096EAC
	cs_wait_camera_script
	cs_set_var byte1=0x08 byte2=0x0C
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_80970F8
	cs_play_sound hword1=0x015C
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x78
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_sound hword1=0x015F

cutscenescript_8097096:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_138
	cs_set_event_flag byte1=0xFF event16_2=EVENT_139
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_free_ow_map_object nybble1=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E4F
	cs_pause byte1=0xFF byte2=0xB4
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8097120
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_80970C7::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8097096

cutscenescript_80970CF:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8097096

byte_80970E9::
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E4
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_80970E9

byte_80970F8::
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_80970F8

cutscenescript_8097104:
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8097104

cutscenescript_8097113:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8097113
	cs_end_for_map_reload_maybe_8037c64

unk_8097120:
	.word 0x04000100, 0x00000000, 0x00000000, 0x00000000
byte_8097130::
	ccs_set_camera_pos hword1=0x0240 hword3=0x00C0 hword5=0x0000
	ccs_end

ccs_8097138:
	ccs_simple_scroll hword1=0x00A0 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8097142:
	ccs_simple_scroll hword1=0x00A0 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0040 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

byte_8097155::
	ccs_simple_scroll hword1=0x0010 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_809715F:
	ccs_set_camera_pos hword1=0x0280 hword3=0x0080 hword5=0x0000
	ccs_end

byte_8097167::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_809716D:
	ccs_simple_scroll hword1=0x0060 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0050 hword3=0x0080 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_8097180:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

end_ccs_809718A:
	.byte 0x00
	.byte 0x00
cutscenescript_809718C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D5D48 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8097130
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_804E030
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_load_gfx_anims ptr1=off_80348FC
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0x04
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_cutscene_skip_script ptr1=byte_8097313
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809730B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8097138
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_8097142
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=byte_8097155
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097313
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=ccs_809715F
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809730B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_run_cutscene_camera_script ptr1=byte_8097167
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_804E070
	cs_pause byte1=0xFF byte2=0xB4
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809730B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x14
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_run_cutscene_camera_script ptr1=ccs_809716D
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_run_cutscene_camera_script ptr1=ccs_8097180
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80972D6:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x78
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E51
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8097330
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809730B:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80972D6

byte_8097313::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_80972D6
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_8097330:
	.word 0x04000000, 0x00000000, 0x00000000, 0x00000000
byte_8097340::
	ccs_set_camera_pos hword1=0x07C0 hword3=0x04A0 hword5=0x0000
	ccs_end

ccs_8097348:
	ccs_set_camera_pos hword1=0x0740 hword3=0x04A0 hword5=0x0000
	ccs_end

ccs_8097350:
	ccs_set_camera_pos hword1=0xF540 hword3=0xFDC0 hword5=0x0000
	ccs_end

cutscenescript_8097358:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D676C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8097340
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_804DB14
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_play_music hword1=0x0024
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097577
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x14
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x17
	cs_wait_var_equal byte1=0x08 byte2=0x18
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x21
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x19
	cs_wait_var_equal byte1=0x08 byte2=0x1A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x22
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1B
	cs_wait_var_equal byte1=0x08 byte2=0x1C
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_run_cutscene_camera_script ptr1=ccs_8097348
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_804DB34
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097577
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x30
	cs_wait_var_equal byte1=0x08 byte2=0x31
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x24
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x32
	cs_wait_var_equal byte1=0x08 byte2=0x33
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x29
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x34
	cs_wait_var_equal byte1=0x08 byte2=0x35
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x36
	cs_wait_var_equal byte1=0x08 byte2=0x37
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade
	cs_run_cutscene_camera_script ptr1=ccs_8097350
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_804DB58
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097577
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2D
	cs_wait_chatbox byte1=0x80
	cs_play_sound hword1=0x0075
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x40
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x00000014
	cs_wait_chatbox byte1=0x80
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_wait_var_equal byte1=0x08 byte2=0x41
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_npc nybble1=0x00 byte2=0x00 byte3=0x00 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000 word10=0x000000B2
	cs_pause byte1=0xFF byte2=0x78

cutscenescript_8097540:
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E00
	cs_pause byte1=0xFF byte2=0x78
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_E51
	cs_call_native_with_return_value ptr1=sub_8097580+1
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8097577::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8097540
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_8097580:
	push {lr}
	bl sub_8005DF0
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_8097580

ccs_809758C:
	ccs_set_camera_pos hword1=0x06A0 hword3=0x0260 hword5=0x0000
	ccs_end

cutscenescript_8097594:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D7318 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_free_all_ow_npc_objects_if_different_map
	cs_run_cutscene_camera_script ptr1=ccs_809758C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097639
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097631
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097639
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x78
	cs_call_native_with_return_value ptr1=sub_8097660+1
	cs_pause byte1=0xFF byte2=0xB4
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8097602:
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0xD2
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=sub_8097654+1
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8097631:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8097602

cutscenescript_8097639:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_8097602
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_8097654:
	push {lr}
	bl sub_8005E22
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_8097654

	thumb_local_start
sub_8097660:
	push {r4-r7, lr}
	mov r0, #0xe
	mov r1, #8
	mov r2, #0x1f
	bl sound_80006A2
	mov r0, #0x1f
	ldr r1, =0xffff
	mov r2, #0xff
	add r2, #1
	neg r2, r2
	bl sound_800065A
	mov r0, #0x1f
	mov r1, #0xd0
	bl sound_8000672
	mov r0, #0
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_8097660


byte_809768C::
	ccs_set_camera_pos hword1=0x0020 hword3=0xFEE0 hword5=0x0000
	ccs_end

cutscenescript_8097694:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D7A1C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_809768C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8058878
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097734
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0004 hword7=0x0008 word9=0x03010800
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809774E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x000C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809772C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80976F2::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x1E
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_EC7
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_809775C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809772C:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80976F2

cutscenescript_8097734:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_80976F2

cutscenescript_809774E:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_809774E
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_809775C:
	.word 0x04000403, 0x00000000, 0x00000000, 0x00000000
byte_809776C::
	ccs_set_camera_pos hword1=0xFDA0 hword3=0xFDC0 hword5=0x0000
	ccs_end

cutscenescript_8097774:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D7ADC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_809776C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_805DCEC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097814
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0004 hword7=0x0008 word9=0x01010800
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809782E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x000C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_809780C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80977D2::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x1E
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_EC9
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_809783C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_809780C:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80977D2

cutscenescript_8097814:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_80977D2

cutscenescript_809782E:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_809782E
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_809783C:
	.word 0x04000204, 0x00000000, 0x00000000, 0x00000000
byte_809784C::
	ccs_set_camera_pos hword1=0xFEA0 hword3=0x04E0 hword5=0x0000
	ccs_end

cutscenescript_8097854:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D7B28 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_809784C
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_805FE68
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_87
	cs_set_cutscene_skip_script ptr1=cutscenescript_80978FC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0xFFF4 hword7=0x0008 word9=0x01010800
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8097916
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x000C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80978F4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_80978B6::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_87
	cs_free_all_ow_map_objects
	cs_pause byte1=0xFF byte2=0x1E
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_ECB
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8097924
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80978F4:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_80978B6

cutscenescript_80978FC:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_80978B6

cutscenescript_8097916:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8097916
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_8097924:
	.word 0x04000305, 0x00000000, 0x00000000, 0x00000000
byte_8097934::
	ccs_set_camera_pos hword1=0xFCE0 hword3=0xFE40 hword5=0x0000
	ccs_end

cutscenescript_809793C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D7B68 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_8097934
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_80626B4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A99
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A9A
	cs_set_cutscene_skip_script ptr1=cutscenescript_80979EF
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x000C hword5=0x0000 hword7=0x0008 word9=0x01010800
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8097A09
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x000C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_80979E7
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_80979A2:
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A99
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_A9A
	cs_pause byte1=0xFF byte2=0x78
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_ECD
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_8097A18
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80979E7:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_80979A2

cutscenescript_80979EF:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_80979A2

cutscenescript_8097A09:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8097A09
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_8097A18:
	.word 0x04000506, 0x00000000, 0x00000000, 0x00000000
end_cutscenescript_8097A28:
	ccs_set_camera_pos hword1=0x0F00 hword3=0xE9A0 hword5=0x0000
	ccs_end

byte_8097A30::
	ccs_set_camera_pos hword1=0x1F80 hword3=0xFBC0 hword5=0x0000
	ccs_end

ccs_8097A38:
	ccs_set_camera_pos hword1=0xF780 hword3=0xF3C0 hword5=0x0000
	ccs_end

ccs_8097A40:
	ccs_set_camera_pos hword1=0xE780 hword3=0x0BC0 hword5=0x0000
	ccs_end

byte_8097A48::
	cs_disable_cutscene_skip_script
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x01
	cs_make_ow_player_invisible
	cs_call_native_with_return_value ptr1=sub_8083F34+1
	cs_decomp_text_archive ptr1=TextScript87DC12E
	cs_jump_if_var_equal byte1=0x04 byte2=0x00 destination3=cutscenescript_8097A74
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_8097A89
	cs_jump_if_var_equal byte1=0x04 byte2=0x02 destination3=byte_8097A9E

cutscenescript_8097A74:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806BA28
	cs_set_event_flag byte1=0xFF event16_2=EVENT_FDC
	cs_run_cutscene_camera_script ptr1=byte_8097A30
	cs_jump destination1=cutscenescript_8097AB3

cutscenescript_8097A89:
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806BAEC
	cs_set_event_flag byte1=0xFF event16_2=EVENT_FDD
	cs_run_cutscene_camera_script ptr1=ccs_8097A38
	cs_jump destination1=cutscenescript_8097AB3

byte_8097A9E::
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806BBB0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_FDE
	cs_run_cutscene_camera_script ptr1=ccs_8097A40
	cs_jump destination1=cutscenescript_8097AB3

cutscenescript_8097AB3:
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097B51
	cs_pause byte1=0xFF byte2=0x3C
	cs_pause byte1=0xFF byte2=0x28
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8097B68
	cs_wait_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8097AE8:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_FDF
	cs_clear_event_flag_range byte1=0x03 event16_2=EVENT_FE0
	cs_jump_if_var_equal byte1=0x04 byte2=0x00 destination3=cutscenescript_8097B0F
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=byte_8097B1E
	cs_jump_if_var_equal byte1=0x04 byte2=0x02 destination3=cutscenescript_8097B2D

cutscenescript_8097B0F:
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=0x1F60 signedhword6=-0x0240 signedhword8=0x0000
	cs_jump destination1=cutscenescript_8097B37

byte_8097B1E::
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=-0x08A0 signedhword6=-0x0A40 signedhword8=0x0000
	cs_jump destination1=cutscenescript_8097B37

cutscenescript_8097B2D:
	cs_ow_player_coord_special byte1=0x04 byte2=0xFF byte3=0x01 signedhword4=-0x18A0 signedhword6=0x0DC0 signedhword8=0x0000

cutscenescript_8097B37:
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_make_ow_player_visible
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8097B51::
	cs_set_chatbox_flags byte2=0x40
	cs_jump_if_flag_range_clear byte1=0x03 event16_2=EVENT_FDC destination4=byte_8097B60
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_FFF

byte_8097B60::
	cs_jump destination1=cutscenescript_8097AE8
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8097B68:
	cs_disable_cutscene_skip_script
	cs_jump_if_flag_range_clear byte1=0x03 event16_2=EVENT_FDC destination4=cutscenescript_8097B9D
	cs_set_event_flag_range byte1=0x09 event16_2=EVENT_FD3
	cs_pause byte1=0xFF byte2=0x28
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_8097A28
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_806BC74
	cs_pause byte1=0xFF byte2=0x1E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_FFF
	cs_set_cutscene_skip_script ptr1=byte_8097B51
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_cutscene_end

cutscenescript_8097B9D:
	cs_cutscene_end
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8097BA0:
	ccs_set_camera_pos hword1=0x0C00 hword3=0xECE0 hword5=0x0000
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_8097BB1::
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0074 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_8097BBE:
	.byte 0x00
	.byte 0x00

cutscenescript_8097BC0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D7BA8 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_8097BA0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807E024
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_7F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_80
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_8097BA0
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097CA6
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=byte_8097BB1
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8097CC3
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_kill_cutscene_process byte1=0x20
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_8097CAE
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097CA6
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80

cutscenescript_8097C8F:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1003
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0088
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8097CA6:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8097C8F

byte_8097CAE::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_jump destination1=cutscenescript_8097C8F

cutscenescript_8097CC3:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8097CC3
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8097CD4:
	ccs_set_camera_pos hword1=0x0C00 hword3=0xE740 hword5=0x0000
	ccs_end

ccs_8097CDC:
	ccs_wait hword1=0x0001
	ccs_end

cutscenescript_8097CE0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D82E4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8097CD4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807E0B8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_7F
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097DA1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097DA1
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x02
	cs_run_cutscene_camera_script ptr1=ccs_8097CDC
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8097D5E:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_give_item byte2=0x33 byte3=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_80
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0C60 signedhword6=-0x18E0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1005
	cs_set_event_flag byte1=0xFF event16_2=EVENT_100F
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8097DA1::
	.word 0x1540003C, cutscenescript_8097D5E
	.byte 0x00
	.byte 0x00
	.byte 0x00

ccs_8097DAC:
	ccs_set_camera_pos hword1=0x1240 hword3=0xEFA0 hword5=0x0400
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0040 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_simple_scroll hword1=0x0010 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8097DC9:
	ccs_simple_scroll hword1=0x0028 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_8097DD3:
	ccs_set_camera_pos hword1=0x1340 hword3=0xEA20 hword5=0x0400
	ccs_end

end_ccs_8097DDB:
	.byte 0x00

cutscenescript_8097DDC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D865C + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8097DAC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807F590
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8097DAC
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097E8A
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_8097DC9
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x0100
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_8097DD3
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8097E8A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80

cutscenescript_8097E6F:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1007
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1009
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0089
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8097E8A:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8097E6F

cutscenescript_8097E92:
	.word 0x0006015A, 0x1506FF02, 0x08097E92
	.byte 0x00
	.byte 0x00
ccs_8097EA0:
	ccs_set_camera_pos hword1=0x1340 hword3=0xEA20 hword5=0x0400
	ccs_end

cutscenescript_8097EA8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D8938 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8097EA0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807F5E8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097F59
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8097F59
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8097F17:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_call_native_with_return_value ptr1=sub_8098024+1
	cs_give_chips hword2=0x0132 byte4=0x05 byte5=0x01
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x1340 signedhword6=-0x15E0 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_100B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8097F59::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8097F17
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8097F64:
	ccs_set_camera_pos hword1=0x1340 hword3=0xEA20 hword5=0x0400
	ccs_end

byte_8097F6C::
	ccs_set_camera_pos hword1=0x1340 hword3=0xEBA0 hword5=0x0400
	ccs_end

cutscenescript_8097F74:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D8FA8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8097F64
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_807F654
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_8098019
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_8097F6C
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_cutscene_skip_script ptr1=byte_8098019
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8097FE1:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_call_native_with_return_value ptr1=sub_8098024+1
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x1340 signedhword6=-0x1460 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8098019::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8097FE1
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8098022:
	.balign 4, 0

	thumb_local_start
sub_8098024:
	push {r4-r7, lr}
	bl GetCurPETNavi
	cmp r0, #0
	beq loc_809803A
	sub r0, #1
	ldr r1, =0x3b8
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
loc_809803A:
	mov r0, #0
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_8098024


ccs_8098044:
	ccs_set_camera_pos hword1=0x00C0 hword3=0xE800 hword5=0x0400
	ccs_end

ccs_809804C:
	ccs_set_camera_pos hword1=0x00C0 hword3=0xE680 hword5=0x0400
	ccs_end

byte_8098054::
	ccs_set_camera_pos hword1=0x0000 hword3=0xE640 hword5=0x0400
	ccs_end

cutscenescript_809805C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87D9514 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_8098044
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8079E70
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_809813B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8098143
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x0100
	cs_kill_cutscene_process byte1=0x20
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_809804C
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_809813B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8098143
	cs_disable_cutscene_skip_script
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x0100
	cs_kill_cutscene_process byte1=0x20
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x02
	cs_run_cutscene_camera_script ptr1=byte_8098054
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_play_music hword1=0x001C
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_809813B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80

cutscenescript_8098124:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1019
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x008C
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

byte_809813B::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8098124

cutscenescript_8098143:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8098143
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8098154:
	ccs_set_camera_pos hword1=0x0000 hword3=0xE640 hword5=0x0400
	ccs_end

ccs_809815C:
	ccs_set_camera_pos hword1=0x00C0 hword3=0xE500 hword5=0x0400
	ccs_end

byte_8098164::
	ccs_simple_scroll hword1=0x0060 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

end_ccs_809816E:
	.byte 0x00
	.byte 0x00

cutscenescript_8098170:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D9B10 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_8098154
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8079ED0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8098266
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_809826E
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x0000000D
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
	cs_decomp_text_archive ptr1=CompText87D9B10 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_809815C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8098266
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_8098164
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_8098231:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_free_all_ow_map_objects
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x00C0 signedhword6=-0x1800 signedhword8=0x0400
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8098266:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8098231

cutscenescript_809826E:
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=cutscenescript_809826E
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_809827C:
	ccs_set_camera_pos hword1=0x0000 hword3=0xE640 hword5=0x0400
	ccs_end

cutscenescript_8098284:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87D9F50 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_809827C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8079F18
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8098341
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8098349
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x0000000C
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_sound hword1=0x00C3
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x01
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_eStruct200a6a0_callback
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x5A
	cs_load_map_gfx_anims_bg_anim
	cs_decomp_text_archive ptr1=CompText87D9F50 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8098341
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80

cutscenescript_809832A:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_100D
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x008D
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8098341:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_809832A

cutscenescript_8098349:
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=cutscenescript_8098349
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8098358::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_pause byte1=0xFF byte2=0x01
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_call_native_with_return_value ptr1=sub_8098370+1
	cs_wait_chatbox byte1=0x80
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_8098370:
	push {r4-r7, lr}
	ldr r0, =eTextScript2033404
	ldrb r1, [r5, #4]
	bl chatbox_runScript
	mov r0, #0
	pop {r4-r7, pc}
	.pool
	thumb_func_end sub_8098370

byte_8098384::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_call_native_with_return_value ptr1=sub_8098440+1
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_809839C
	cs_decomp_text_archive ptr1=byte_202FA04

cutscenescript_809839C:
	cs_run_text_script_from_mem byte1=0x05
	cs_wait_chatbox byte1=0x80
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_1726 destination4=byte_80983B5
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_80983BF
	cs_wait_cutscene_process byte1=0x20
	cs_jump destination1=cutscenescript_80983B8

byte_80983B5::
	cs_pause byte1=0xFF byte2=0x14

cutscenescript_80983B8:
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1726
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80983BF:
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0x06 byte3=0xFF
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x10

byte_80983C7::
	cs_move_player_in_facing_direction byte1=0x07 byte2=0xFF signedhword3=0x0010
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x01 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x02 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x03 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x04 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x05 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x06 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x07 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x08 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x09 signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x0A signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x0B signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x0C signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x0D signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x0E signedbyte2=0x00 destination3=byte_80983C7
	cs_coordinate_trigger_equals_cmd_8035afa byte1=0x0F signedbyte2=0x00 destination3=byte_80983C7
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x02 signedhword3=0x0010
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_cutscene_end
	cs_end_for_map_reload_maybe_8037c64

	thumb_local_start
sub_8098440:
	push {lr}
	ldrb r0, [r5, #6]
	cmp r0, #0xff
	bne loc_8098454
	bl GetOWPlayerFacingDirection
	add r0, #4
	mov r1, #7
	and r0, r1
	strb r0, [r5, #6]
loc_8098454:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8098440

byte_8098458::
	gfx_anim_manual_pal_transform transform_type=0x00000004 ptr5=iPalette3001B60 index=0x0E num_pals=0x0D
	gfx_anim_data data=0x80000842 delay=0x00000002
	gfx_anim_data data=0x80000C63 delay=0x00000002
	gfx_anim_data data=0x80001084 delay=0x00000002
	gfx_anim_data data=0x800014A5 delay=0x00000002
	gfx_anim_data data=0x800018C6 delay=0x00000002
	gfx_anim_end

byte_8098490::
	gfx_anim_manual_pal_transform transform_type=0x00000004 ptr5=unk_3001770 index=0x0F num_pals=0x0B
	gfx_anim_data data=0x80000842 delay=0x00000002
	gfx_anim_data data=0x80000C63 delay=0x00000002
	gfx_anim_data data=0x80001084 delay=0x00000002
	gfx_anim_data data=0x800014A5 delay=0x00000002
	gfx_anim_data data=0x800018C6 delay=0x00000002
	gfx_anim_end

byte_80984C8::
	.byte 0x8C, 0x0, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x88, 0x0, 0x0, 0x1, 0x0, 0x0
	.byte 0x4E, 0xFF, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0
	.byte 0x0, 0x8C, 0x2, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x7, 0x0
	.byte 0x0, 0x24, 0x1, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x8C, 0x3, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2
	.byte 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C, 0x4, 0x0, 0x1
	.byte 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x8C, 0x5, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0
	.byte 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C, 0x6, 0x0
	.byte 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x88, 0x3, 0x0, 0x1, 0x0, 0x0, 0x60, 0xFF, 0x0
	.byte 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0xF, 0x0, 0x0, 0x0, 0x81, 0x0
	.byte 0x0, 0x1, 0x0, 0x0, 0xE, 0xFF, 0x0, 0x0, 0xE2, 0xFE, 0x0, 0x0, 0x10
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C, 0x1, 0x0, 0x1, 0x0, 0x0, 0x60, 0xFF
	.byte 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C
	.byte 0x9, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C, 0xA, 0x0, 0x1, 0x0, 0x0, 0x60
	.byte 0xFF, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x82, 0x0, 0x0, 0x1, 0x0, 0x0, 0x30, 0xFE, 0x0, 0x0, 0xE0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C, 0x8, 0x0, 0x1, 0x0, 0x0
	.byte 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x88, 0x5, 0x0, 0x1, 0x0, 0x0, 0x60, 0xFF, 0x0, 0x0, 0xF2, 0xFF
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C, 0x7, 0x0, 0x1, 0x0
	.byte 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x8C, 0xB, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2
	.byte 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C, 0xC, 0x0, 0x1
	.byte 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x8C, 0xD, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0
	.byte 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8C, 0xE, 0x0
	.byte 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x83, 0x0, 0x0, 0x7, 0x0, 0x0, 0xCE, 0xFF, 0x0
	.byte 0x0, 0x92, 0x1, 0x0, 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x8C, 0xF
	.byte 0x0, 0x1, 0x0, 0x0, 0x60, 0xFF, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x88, 0x1, 0x0, 0x1, 0x0, 0x0, 0x60, 0xFF
	.byte 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x88
	.byte 0x6, 0x0, 0x1, 0x0, 0x0, 0x60, 0xFF, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x85, 0x0, 0x0, 0x7, 0x0, 0x0, 0xDC
	.byte 0x0, 0x0, 0x0, 0xE4, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x85, 0x1, 0x0, 0x7, 0x0, 0x0, 0xDA, 0xFF, 0x0, 0x0, 0xF6, 0x1, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x85, 0x2, 0x0, 0x7, 0x0, 0x0
	.byte 0xA4, 0xFF, 0x0, 0x0, 0xC, 0x2, 0x0, 0x0, 0x0, 0x0, 0x19, 0x0, 0x0
	.byte 0x0, 0x85, 0x3, 0x0, 0x1, 0x0, 0x0, 0xD8, 0xFF, 0x0, 0x0, 0x98, 0xFE
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x85, 0x4, 0x0, 0x7, 0x0
	.byte 0x0, 0x6C, 0x0, 0x0, 0x0, 0x86, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x8D, 0x2, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2
	.byte 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8D, 0x3, 0x0, 0x1
	.byte 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x8D, 0x4, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0
	.byte 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8D, 0x5, 0x0
	.byte 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x8D, 0x6, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0
	.byte 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8D, 0x7
	.byte 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x8D, 0x8, 0x0, 0x1, 0x0, 0x0, 0x60, 0xFF
	.byte 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8D
	.byte 0x9, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8D, 0xA, 0x0, 0x1, 0x0, 0x0, 0x10
	.byte 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x8D, 0xB, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8D, 0xC, 0x0, 0x1, 0x0, 0x0
	.byte 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x8D, 0xE, 0x0, 0x1, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8D, 0xF, 0x0, 0x1, 0x0
	.byte 0x0, 0x10, 0x0, 0x0, 0x0, 0xF2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
byte_8098824::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87385CC + COMPRESSED_PTR_FLAG
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_171E
	cs_call_native_with_return_value ptr1=sub_80988CC+1
	cs_run_text_script_from_mem byte1=0x05
	cs_pause byte1=0xFF byte2=0x01
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_171E destination4=cutscenescript_8098856
	cs_set_event_flag byte1=0xFF event16_2=EVENT_NPC_OBJECTS_DISABLED
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_play_sound hword1=0x0075
	cs_jump destination1=cutscenescript_8098859

cutscenescript_8098856:
	cs_play_sound hword1=0x0069

cutscenescript_8098859:
	cs_wait_chatbox byte1=0x80
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_171E destination4=cutscenescript_80988C0
	cs_load_gfx_anim ptr1=byte_8098458
	cs_load_gfx_anim ptr1=byte_8098490
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000014
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x19
	cs_pause byte1=0xFF byte2=0x01
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x01
	cs_play_sound hword1=0x00B7
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x02
	cs_free_ow_map_object nybble1=0x00
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x000000B2
	cs_pause byte1=0xFF byte2=0x03
	cs_play_music hword1=0x0063
	cs_play_sound hword1=0x0077
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_jump destination1=byte_80988C4

cutscenescript_80988C0:
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_171E

byte_80988C4::
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_NPC_OBJECTS_DISABLED
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_80988CB:
	.balign 4, 0

	thumb_local_start
sub_80988CC:
	ldrb r1, [r5, #4]
	ldr r0, =byte_80984C8
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	str r0, [r5, #0x34]
	ldrb r1, [r0, #0x10]
	strb r1, [r5, #5]
	mov r0, #0
	mov pc, lr
	.pool
	thumb_func_end sub_80988CC

CutsceneScript_80988E4::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_decomp_text_archive ptr1=CompText87388A8 + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_171E
	cs_call_native_with_return_value ptr1=sub_8098950+1
	cs_run_text_script_from_mem byte1=0x04
	cs_wait_chatbox byte1=0xA0
	cs_jump_if_flag_set byte1=0xFF event16_2=EVENT_171E destination4=cutscenescript_8098946
	cs_switch_case_from_chatbox_flags_bit0_to_2_2 [
		destination1: cutscenescript_8098916,
		destination5: cutscenescript_8098946,
	]

cutscenescript_8098916:
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x0A
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000001
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x21
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x0A
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x01 ptr3=NULL
	cs_jump destination1=cutscenescript_809894C

cutscenescript_8098946:
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_171E
	cs_wait_chatbox byte1=0x80

cutscenescript_809894C:
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_809894F:
	.balign 4, 0

	thumb_local_start
sub_8098950:
	mov r3, r10
	ldr r3, [r3, #0x3c]
	ldrb r0, [r3, #9]
	strb r0, [r5, #4]
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_8098950

byte_809895C::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_pause byte1=0xFF byte2=0x01
	cs_make_ow_player_invisible
	cs_wait_screen_fade
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8098976
	cs_wait_cutscene_process byte1=0x20
	cs_free_ow_map_object nybble1=0x00
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8098976:
	cs_make_ow_player_visible
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000000
	cs_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1724 destination4=cutscenescript_80989A7
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1724
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x01 byte2=0x00 signedhword3=0x0002 signedhword5=-0x0002 signedhword7=-0x0002 word9=0x00000002
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x2D
	cs_jump destination1=cutscenescript_80989AB

cutscenescript_80989A7:
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x19

cutscenescript_80989AB:
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x01
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x80
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x08
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x14 signedhword3=0x0010
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_cutscene_end

byte_80989C1::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_80989EF
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_80989E0
	cs_pause byte1=0xFF byte2=0x1E
	cs_kill_cutscene_process byte1=0x20
	cs_wait_screen_fade
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_80989E0:
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_80989E0

cutscenescript_80989EF:
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_80989EF
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_8098A00:
	ccs_auto_scroll_to_player
	ccs_end

CutsceneScript_8098a02::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000001
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x21
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x01
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x80
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x10
	cs_wait_screen_fade
	cs_warp_cmd_8038040_0
	cs_free_all_ow_map_objects
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

CutsceneScript_8098a2e::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000001
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x21
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x01
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x80
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_set_enter_map_screen_fade byte1=0x00 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x01 ptr3=off_8098A68
	cs_free_all_ow_map_objects
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

off_8098A68:: 
  .word 0x4000000
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
CutsceneScript_8098a78::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000001
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x21
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x01
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x80
	cs_make_ow_player_invisible
	cs_free_all_ow_map_objects
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_ow_player_interaction_locked_809e23c
	cs_call_native_with_return_value ptr1=sub_8098B8C+1
	cs_run_cutscene_camera_script ptr1=ccs_8098A00
	cs_wait_camera_script
	cs_stop_cutscene_camera_script
	cs_enable_ow_player_wall_collision_809e248
	cs_set_ow_player_interaction_locked_809e230
	cs_make_ow_player_visible
	cs_spawn_ow_map_object_rel_to_ow_player nybble1=0x00 byte2=0x00 signedhword3=0x0000 signedhword5=0x0000 signedhword7=0x0000 word9=0x00000000
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x19
	cs_play_sound hword1=0x0076
	cs_pause byte1=0xFF byte2=0x01
	cs_wait_if_player_sprite_cur_frame_not_equal_maybe byte1=0x80
	cs_free_all_ow_map_objects
	cs_jump_if_var_equal byte1=0x04 byte2=0x01 destination3=cutscenescript_8098AE1
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8098AEE
	cs_jump destination1=cutscenescript_8098AE7

cutscenescript_8098AE1:
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8098AFC

cutscenescript_8098AE7:
	cs_wait_cutscene_process byte1=0x20
	cs_free_all_ow_map_objects
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_8098AEE::
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x08
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x14 signedhword3=0x0010
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_cutscene_end

cutscenescript_8098AFC:
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x08
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x0A signedhword3=0x0010
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_cutscene_end
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_wait_chatbox byte1=0x00
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

CutsceneScript_8098b1c::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_set_event_flag byte1=0xFF event16_2=EVENT_127
	cs_pause byte1=0xFF byte2=0x1E
	cs_make_ow_player_invisible
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x08 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x00A01C47
	cs_play_sound hword1=0x01AD
	cs_pause byte1=0xFF byte2=0x10
	cs_play_sound hword1=0x00EA
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8098B6B
	cs_pause byte1=0xFF byte2=0x3C
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_8098B7A
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_enter_map_screen_fade byte1=0x08 byte2=0x08
	cs_warp_cmd_8038040_0
	cs_free_all_ow_map_objects
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8098B6B:
	cs_do_camera_shake byte1=0x00 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=cutscenescript_8098B6B

byte_8098B7A::
	cs_do_camera_shake byte1=0x01 byte2=0x20 byte3=0x00
	cs_play_sound hword1=0x00E3
	cs_pause byte1=0xFF byte2=0x20
	cs_jump destination1=byte_8098B7A
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8098B8A:
	.byte 0x00
	.byte 0x00

	thumb_local_start
sub_8098B8C:
	push {r4, lr}
	mov r4, r10
	ldr r4, [r4, #0x14]
	mov r0, #0
	strb r0, [r4, #0x10]
	mov r0, #0x10
	ldrb r1, [r4, #0x11]
	ldr r4, [r4, #0x14]
	sub r1, #1
	mul r1, r0
	add r4, r4, r1
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl owPlayer_copyCoordsToNextCoordsWritePlayerCoordsThenIndirectlySetPlayerCoordsMaybe_809e188
	ldrb r0, [r4, #3]
	bl SetOWPlayerFacingDirection
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_8098B8C

byte_8098BB8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_pause byte1=0xFF byte2=0x1E
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_decomp_text_archive ptr1=TextScriptCommError873B9E0
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0x05 byte2=0xFF
	cs_pause byte1=0xFF byte2=0x3E
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_call_native_with_return_value ptr1=sub_8098BE8+1
	cs_run_text_script_from_mem byte1=0x04
	cs_wait_chatbox byte1=0x80
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

/*For debugging purposes, connect comment at any range!*/
