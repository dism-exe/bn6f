
unk_8089D58::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=TextScript87DCE1C
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_8089DCD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_jump destination1=cutscenescript_8089DAE
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8089D84:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScript87DCE1C
	cs_pause byte1=0xFF byte2=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_8089DCD
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

cutscenescript_8089DAE:
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

cutscenescript_8089DCD:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_8089DAE
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8089DD8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B3D0C + COMPRESSED_PTR_FLAG
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_from_mem byte1=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_8089DF4::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScript87DCE1C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_pause byte1=0xFF byte2=0x01
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_call_native_with_return_value ptr1=byte_8089E29
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_8089E26:
	.byte 0x00
	.byte 0x00
	.byte 0xF0
byte_8089E29:: 
  .byte 0xB5, 0x14, 0xF0, 0x76, 0xFA, 0x14, 0xF0, 0xC0, 0xFA
	.byte 0xB6, 0xF0, 0xEB, 0xFD, 0x7, 0x20, 0x1, 0x21, 0xA5
	.byte 0xF7, 0x77, 0xF9, 0x0, 0x20, 0xF0, 0xBD, 0x0, 0x0
byte_8089E44::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_clear_ow_player_interaction_locked_809e23c
	cs_disable_ow_player_wall_collision_809e254
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_call_native_with_return_value ptr1=sub_81418AA+1
	cs_call_native_with_return_value ptr1=unk_8089E91
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_8089E76
	cs_wait_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_event_flag byte1=0xFF event16_2=EVENT_701
	cs_call_native_with_return_value ptr1=sub_81418B6+1
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_set_ow_player_interaction_locked_809e230
	cs_enable_ow_player_wall_collision_809e248
	cs_clear_ow_player_layer_index_override
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_8089E76:
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x10
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x0A signedhword3=0x0020
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x0A signedhword3=0x0010
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x0A signedhword3=0x0008
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_cutscene_end

end_cutscenescript_8089E8E:
	.byte 0x00
	.byte 0x00
	.byte 0xF0

unk_8089E91:
	.word 0x56686FB5, 0xB66BF646, 0x03782869, 0x08008049, 0x0046FE58, 0xF0420047, 0xB00000BD
	.byte 0x9E
	.byte 0x08
	.byte 0x08
off_8089EB0:: 
  .word byte_8089EBD
	.word byte_8089F41
	.word byte_8089F5F
	.byte 0xF0
byte_8089EBD:: 
  .byte 0xB5, 0x14, 0xF0, 0x76, 0xF9, 0xFB, 0x68, 0xC0, 0x1A
	.byte 0x3B, 0x69, 0xC9, 0x1A, 0x3, 0xB4, 0x77, 0xF7, 0x56
	.byte 0xF9, 0x68, 0x70, 0x3, 0xBC, 0x77, 0xF7, 0xFE, 0xFA
	.byte 0x40, 0x13, 0x28, 0x83, 0x14, 0xF0, 0x3F, 0xFA, 0xB6
	.byte 0xF0, 0x8E, 0xFD, 0xB8, 0xF0, 0xCC, 0xF8, 0x8, 0x4B
	.byte 0x0, 0x1, 0x1B, 0x18, 0x18, 0x68, 0x59, 0x68, 0x9A
	.byte 0x68, 0xDB, 0x68, 0x14, 0xF0, 0x65, 0xFA, 0x9C, 0x20
	.byte 0xFF, 0x30, 0x76, 0xF7, 0x65, 0xFB, 0x1, 0x20, 0x28
	.byte 0x70, 0x1, 0x20, 0xF0, 0xBD, 0x0, 0x0
	.word byte_8089F10
byte_8089F10:: 
  .byte 0x0, 0x0, 0xBC, 0xFD, 0x0, 0x0, 0x84, 0xFE, 0x0, 0x0, 0x54, 0x1
	.byte 0x0, 0x0, 0xF4, 0x1, 0x0, 0x0, 0xC, 0xFE, 0x0, 0x0, 0x34, 0xFE
	.byte 0x0, 0x0, 0xB8, 0x1, 0x0, 0x0, 0x8, 0x2, 0x0, 0x0, 0xC, 0xFE
	.byte 0x0, 0x0, 0xBC, 0xFD, 0x0, 0x0, 0x12, 0x2, 0x0, 0x0, 0x80, 0x2
	.byte 0xF0
byte_8089F41:: 
  .byte 0xB5, 0xB8, 0xF0, 0xB5, 0xF8, 0x4, 0x1C, 0x0, 0xF0, 0x12
	.byte 0xF8, 0x29, 0x8B, 0x1, 0x31, 0x29, 0x83, 0xA0, 0x42, 0x1
	.byte 0xD1, 0x2, 0x20, 0x28, 0x70, 0x1, 0x20, 0xF0, 0xBD, 0xF0
byte_8089F5F:: 
  .byte 0xB5, 0xF8, 0x68, 0x39, 0x69, 0x7A, 0x69, 0x7B, 0x68
	.byte 0xB7, 0xF0, 0xD4, 0xFC, 0x0, 0x20, 0xF0, 0xBD, 0xF0
	.byte 0xB5, 0x14, 0xF0, 0x1C, 0xF9, 0x16, 0x1C, 0x6B, 0x78
	.byte 0x4, 0x21, 0x58, 0x1A, 0x68, 0x70, 0x5B, 0x0, 0x13
	.byte 0x4C, 0xE2, 0x5E, 0x28, 0x8B, 0xC0, 0x8, 0x50, 0x43
	.byte 0x11, 0x4C, 0xE2, 0x5E, 0x29, 0x8B, 0xC9, 0x8, 0x51
	.byte 0x43, 0x0, 0x2, 0x9, 0x2, 0xFA, 0x68, 0x3B, 0x69
	.byte 0x80, 0x18, 0xC9, 0x18, 0x7A, 0x69, 0x1, 0x23, 0xDB
	.byte 0x3, 0xF2, 0x18, 0x16, 0x1C, 0x14, 0xF0, 0xFA, 0xF8
	.byte 0x68, 0x78, 0x40, 0x9, 0xC0, 0x43, 0x2, 0x38, 0x7
	.byte 0x21, 0x8, 0x40, 0x4, 0x1C, 0x10, 0x30, 0x14, 0xF0
	.byte 0xBC, 0xF8, 0x20, 0x1C, 0x14, 0xF0, 0x72, 0xF9, 0x30
	.byte 0x1C, 0xF0, 0xBD, 0x0, 0x0, 0xE0, 0x65, 0x0, 0x8
	.byte 0x60, 0x66, 0x0, 0x8
byte_8089FD8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_clear_ow_player_interaction_locked_809e23c
	cs_disable_ow_player_wall_collision_809e254
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_call_native_with_return_value ptr1=sub_81418AA+1
	cs_call_native_with_return_value ptr1=unk_808A029
	cs_pause byte1=0xFF byte2=0x1E
	cs_spawn_cutscene_process byte1=0x20 ptr2=cutscenescript_808A00D
	cs_wait_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x1E
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_701
	cs_call_native_with_return_value ptr1=sub_81418B6+1
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_set_ow_player_interaction_locked_809e230
	cs_enable_ow_player_wall_collision_809e248
	cs_clear_ow_player_layer_index_override
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808A00D:
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x10
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x0A signedhword3=0x0020
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x0A signedhword3=0x0010
	cs_move_player_in_facing_direction byte1=0xFF byte2=0x0A signedhword3=0x0008
	cs_offset_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x00
	cs_cutscene_end

end_cutscenescript_808A025:
	.word 0xF0000000

unk_808A029:
	.word 0x56686FB5, 0xB66BF646, 0x03782869, 0x08008049, 0x0046FE58, 0xF0420047, 0x480000BD
	.byte 0xA0
	.byte 0x08
	.byte 0x08
off_808A048:: 
  .word byte_808A055
	.word byte_808A085
	.word byte_808A0A7
	.byte 0xF0
byte_808A055:: 
  .byte 0xB5, 0x14, 0xF0, 0xAA, 0xF8, 0xFB, 0x68, 0xC0, 0x1A
	.byte 0x3B, 0x69, 0xC9, 0x1A, 0x3, 0xB4, 0x77, 0xF7, 0x8A
	.byte 0xF8, 0x68, 0x70, 0x3, 0xBC, 0x77, 0xF7, 0x32, 0xFA
	.byte 0x40, 0x13, 0x28, 0x83, 0x9D, 0x20, 0xFF, 0x30, 0x76
	.byte 0xF7, 0xA8, 0xFA, 0x1, 0x20, 0x28, 0x70, 0x1, 0x20
	.byte 0xF0, 0xBD, 0xF0
byte_808A085:: 
  .byte 0xB5, 0x7C, 0x69, 0x0, 0xF0, 0x19, 0xF8, 0x29, 0x8B
	.byte 0x1, 0x39, 0x0, 0xDB, 0x29, 0x83, 0xA0, 0x42, 0x4
	.byte 0xD1, 0x28, 0x8B, 0x0, 0x42, 0x1, 0xD1, 0x2, 0x20
	.byte 0x28, 0x70, 0x1, 0x20, 0xF0, 0xBD, 0xF0
byte_808A0A7:: 
  .byte 0xB5, 0x14, 0xF0, 0x37, 0xF9, 0x14, 0xF0, 0x81, 0xF9
	.byte 0xB6, 0xF0, 0xAC, 0xFC, 0x38, 0x79, 0x14, 0xF0, 0xFA
	.byte 0xF8, 0x0, 0x20, 0xF0, 0xBD, 0xF0, 0xB5, 0x14, 0xF0
	.byte 0x75, 0xF8, 0x16, 0x1C, 0x6B, 0x78, 0x18, 0x1F, 0x68
	.byte 0x70, 0x5B, 0x0, 0x14, 0x4C, 0xE2, 0x5E, 0x28, 0x8B
	.byte 0xC0, 0x8, 0x50, 0x43, 0x12, 0x4C, 0xE2, 0x5E, 0x29
	.byte 0x8B, 0xC9, 0x8, 0x51, 0x43, 0x0, 0x2, 0x9, 0x2
	.byte 0xFA, 0x68, 0x3B, 0x69, 0x80, 0x18, 0xC9, 0x18, 0x0
	.byte 0x23, 0x7A, 0x69, 0xB2, 0x42, 0x1, 0xDA, 0x1, 0x23
	.byte 0xDB, 0x3, 0xF2, 0x1A, 0x16, 0x1C, 0x14, 0xF0, 0x51
	.byte 0xF8, 0x68, 0x78, 0x40, 0x9, 0xC0, 0x43, 0x2, 0x38
	.byte 0x7, 0x21, 0x8, 0x40, 0x4, 0x1C, 0x14, 0xF0, 0x14
	.byte 0xF8, 0x20, 0x1C, 0x14, 0xF0, 0xCA, 0xF8, 0x30, 0x1C
	.byte 0xF0, 0xBD, 0x0, 0x0, 0xE0, 0x65, 0x0, 0x8, 0x60
	.byte 0x66, 0x0, 0x8
byte_808A128::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=TextScript87DCE1C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1731
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_from_mem byte1=0x04
	cs_wait_chatbox byte1=0x80
	cs_jump_if_var_equal byte1=0x04 byte2=0x05 destination3=byte_808A16F
	cs_jump_if_var_equal byte1=0x04 byte2=0x06 destination3=byte_808A16F
	cs_pause byte1=0xFF byte2=0x1E
	cs_call_native_with_return_value ptr1=unk_808A175
	cs_play_sound hword1=0x019D
	cs_set_screen_fade byte1=0x06 byte2=0xFF byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x1E
	cs_warp_cmd_8038040_2 byte1=0x80 byte2=0x00 ptr3=NULL
	cs_call_native_with_return_value ptr1=unk_808A19D
	cs_jump destination1=byte_808A16F

byte_808A16F::
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

end_cutscenescript_808A172:
	.byte 0x00
	.byte 0x00
	.byte 0xF0
unk_808A175:
	.word 0x0FF0B7B5, 0x016368FC, 0x4171A97C, 0x5271E97C, 0x816BD246, 0xC175917C, 0x0775D17C, 0xA4210220
	.word 0x00FFBCF7, 0xF0BDF020

unk_808A19D:
	.word 0xB0F0B7B5, 0x6DF0B7FF, 0x080040FF, 0x005A0849, 0xBFF7A41C, 0x772006FF, 0xB9F7A421, 0x782006FF
	.word 0xB5F7A421, 0x6AF0B7FF, 0xF02000FB, 0xD00000BD
	.byte 0xA1
	.byte 0x08
	.byte 0x08
byte_808A1D0::
	.byte 0x71, 0x6, 0x73, 0x6, 0x75, 0x6, 0x0, 0x0
byte_808A1D8::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

byte_808A1DE::
	ccs_simple_scroll hword1=0x0078 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808A1E8:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0028 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808A1F5:
	ccs_simple_scroll hword1=0x00B8 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808A1FF:
	ccs_simple_scroll hword1=0x00B8 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808A209:
	ccs_simple_scroll hword1=0x0028 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

byte_808A213::
	ccs_simple_scroll hword1=0x0014 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808A21D:
	.byte 0x00
	.byte 0x00
	.byte 0x00
byte_808A220::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B4730 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_808A1D8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8057170
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
	cs_set_cutscene_skip_script ptr1=cutscenescript_808A3C3
	cs_pause byte1=0xFF byte2=0x5A
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_disable_cutscene_skip_script
	cs_set_var byte1=0x08 byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808A3BB
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808A1DE
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
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_run_cutscene_camera_script ptr1=ccs_808A1E8
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_not_from_mem byte2=0x22
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808A1F5
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x23
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808A1FF
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x24
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808A209
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x26
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x13
	cs_wait_var_equal byte1=0x08 byte2=0x14
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x27
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x15
	cs_wait_var_equal byte1=0x08 byte2=0x16
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808A213
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x17
	cs_wait_var_equal byte1=0x08 byte2=0x18
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808A375:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0200 signedhword6=-0x0140 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_803
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_add_mail_range hword1=0x1CE4 byte3=0x01
	cs_add_mail_range hword1=0x1CE5 byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808A3BB::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808A375

cutscenescript_808A3C3:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808A375
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808A3E0:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_808A3E6:
	.byte 0x00
	.byte 0x00
cutscenescript_808A3E8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B5294 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808A3E0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055C9C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x10
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808A468
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808A427::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_35
	cs_write_gamestate_byte byte1=0x06 byte2=0x31
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x04A0 signedhword6=0x0720 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_805
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808A468:
	.word 0x1540003C, byte_808A427

ccs_808A470:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808A476:
	ccs_simple_scroll hword1=0x0008 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0060 hword3=0xFF00 hword5=0x0000 hword7=0xFF80
	ccs_simple_scroll hword1=0x0028 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808A492:
	ccs_simple_scroll hword1=0x0070 hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_simple_scroll hword1=0x0088 hword3=0x0080 hword5=0x0000 hword7=0x0040
	ccs_end

ccs_808A4A5:
	ccs_simple_scroll hword1=0x0020 hword3=0xFF80 hword5=0x0000 hword7=0xFFC0
	ccs_end

end_ccs_808A4AF:
	.byte 0x00
cutscenescript_808A4B0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B56E4 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808A470
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805EDD4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808A57B
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
	cs_run_cutscene_camera_script ptr1=ccs_808A476
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x31
	cs_run_cutscene_camera_script ptr1=ccs_808A492
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808A4A5
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808A549:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_807
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808A584
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808A57B:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808A549
	cs_end_for_map_reload_maybe_8037c64

unk_808A584:
	.word 0x01000104, 0xFF280000, 0x00400000, 0x00000000
ccs_808A594:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808A59A:
	ccs_simple_scroll hword1=0x0020 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_808A5A4:
	ccs_wait hword1=0x000B
	ccs_simple_scroll hword1=0x0010 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808A5B1:
	ccs_simple_scroll hword1=0x0020 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_808A5BB:
	.byte 0x00
cutscenescript_808A5BC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B590C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808A594
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805F0F0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808A6AF
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_808A59A
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_808A5A4
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=ccs_808A5A4
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_run_cutscene_camera_script ptr1=ccs_808A5B1
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808A674:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_give_item byte2=0x42 byte3=0x01
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0800 signedhword6=0x03A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_809
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808A6AF:
	.word 0x1540003C, cutscenescript_808A674
	.byte 0x00

ccs_808A6B8:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808A6BE:
	ccs_simple_scroll hword1=0x006C hword3=0x0100 hword5=0xFF00 hword7=0x0000
	ccs_end

byte_808A6C8::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B6094 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808A6B8
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_805F288
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808A7C1
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
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808A6BE
	cs_wait_camera_script
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
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x14
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x14
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808A78A:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0140 signedhword6=-0x02E0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_80B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808A7C1:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808A78A
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808A7CC:
	ccs_set_camera_pos hword1=0x00E0 hword3=0x04C0 hword5=0x0500
	ccs_end

ccs_808A7D4:
	ccs_simple_scroll hword1=0x00A0 hword3=0x0000 hword5=0x0000 hword7=0xFF80
	ccs_end

ccs_808A7DE:
	ccs_simple_scroll hword1=0x0060 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

byte_808A7E8::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808A7EE:
	ccs_simple_scroll hword1=0x0098 hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_808A7F8:
	ccs_wait hword1=0x000B
	ccs_simple_scroll hword1=0x0010 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_808A805:
	ccs_set_camera_pos hword1=0xF8A0 hword3=0x0900 hword5=0x0000
	ccs_end

ccs_808A80D:
	ccs_simple_scroll hword1=0x0024 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

byte_808A817::
	ccs_simple_scroll hword1=0x0024 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_808A821:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_808A824:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B6758 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808A7CC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805F600
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808A7D4
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808AA19
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808A7DE
	cs_wait_camera_script
	cs_run_cutscene_camera_script ptr1=byte_808A7E8
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
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_808AA21
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808AA19
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=ccs_808A7EE
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_run_cutscene_camera_script ptr1=ccs_808A7F8
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x19
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00BC
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_808AA3B
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x1A
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x0F
	cs_run_cutscene_camera_script ptr1=ccs_808A805
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808AA19
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x10
	cs_run_cutscene_camera_script ptr1=ccs_808A80D
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x11
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x12
	cs_wait_var_equal byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x20
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808A817
	cs_wait_camera_script
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
	cs_run_text_script_not_from_mem byte2=0x2A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x18
	cs_wait_var_equal byte1=0x08 byte2=0x19
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x2E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x1A
	cs_wait_var_equal byte1=0x08 byte2=0x1B
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x30
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808A9E4:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_80D
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808AA58
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808AA19::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808A9E4

cutscenescript_808AA21:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808A9E4

byte_808AA3B::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808A9E4
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808AA58:
	.word 0x04000204, 0xFFB80000, 0x00480000, 0x00000000
ccs_808AA68:
	ccs_set_camera_pos hword1=0x0040 hword3=0x0500 hword5=0x0000
	ccs_end

ccs_808AA70:
	ccs_simple_scroll hword1=0x0040 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808AA7A:
	ccs_set_camera_pos hword1=0xFB20 hword3=0x05A0 hword5=0x0000
	ccs_end

byte_808AA82::
	ccs_set_camera_pos hword1=0xFAC0 hword3=0x09C0 hword5=0x0000
	ccs_end

ccs_808AA8A:
	ccs_simple_scroll hword1=0x0030 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

ccs_808AA94:
	ccs_wait hword1=0x0021
	ccs_simple_scroll hword1=0x0018 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808AAA1:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_808AAA4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B71A8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808AA68
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805F84C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_87
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808AC2A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808AA70
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_808AC32
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_run_cutscene_camera_script ptr1=ccs_808AA7A
	cs_set_var byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808AC2A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808AA68
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808AC2A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808AA70
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=ccs_808AA8A
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x0D
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_808AA82
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808AC2A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x16
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0E
	cs_run_cutscene_camera_script ptr1=ccs_808AA94
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x1D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808ABE8::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_87
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x05
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x05
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0640 signedhword6=0x09C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_80F
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808AC2A::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808ABE8

byte_808AC32::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_808ABE8

ccs_808AC4C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808AC52:
	ccs_simple_scroll hword1=0x0122 hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

ccs_808AC5C:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x00F0 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_808AC69:
	ccs_simple_scroll hword1=0x00C8 hword3=0xFF80 hword5=0x0080 hword7=0x0000
	ccs_end

end_ccs_808AC73:
	.byte 0x00
byte_808AC74::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B7CBC + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808AC4C
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_8050BB0
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808AD26
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808AC52
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_run_cutscene_camera_script ptr1=ccs_808AC5C
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=ccs_808AC69
	cs_pause byte1=0xFF byte2=0x5A
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x04
	cs_wait_screen_fade

cutscenescript_808ACF3:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0200 signedhword6=0x10A0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808AD26::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808ACF3
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808AD30::
	ccs_set_camera_pos hword1=0x0200 hword3=0x0100 hword5=0x0000
	ccs_end

ccs_808AD38:
	ccs_simple_scroll hword1=0x0030 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x0068 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808AD4B:
	ccs_simple_scroll hword1=0x0040 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_end

ccs_808AD55:
	ccs_set_camera_pos hword1=0xF9E0 hword3=0xFFA0 hword5=0x0000
	ccs_end

end_ccs_808AD5D:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_808AD60:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B7DE8 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_808AD30
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055CC8
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808AED3
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808AECB
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808AD38
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_var byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x96
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808AECB
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808AD4B
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_808AED3
	cs_pause byte1=0xFF byte2=0x78
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x06
	cs_run_cutscene_camera_script ptr1=ccs_808AD55
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808AECB
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x12
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x0A
	cs_run_text_script_not_from_mem byte2=0x1B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808AE73:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_terminate_gfx_anim byte1=0x0E
	cs_terminate_gfx_anim byte1=0x0F
	cs_write_gamestate_byte byte1=0x06 byte2=0x32
	cs_write_gamestate_byte byte1=0x07 byte2=0x31
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0680 signedhword6=0x0080 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_813
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_add_request_range hword1=0x1B64 byte3=0x01
	cs_add_request_range hword1=0x1B65 byte3=0x01
	cs_add_request_range hword1=0x1B66 byte3=0x01
	cs_add_request_range hword1=0x1B67 byte3=0x01
	cs_add_request_range hword1=0x1B7C byte3=0x01
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808AECB:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808AE73

cutscenescript_808AED3:
	.word 0x3740003C, off_80348FC, 0xFF18FF27, 0x01FF0207, 0x080CFF27, 0xAE731507, 0x00000808
	.byte 0x00

ccs_808AEF0:
	ccs_set_camera_pos hword1=0x0080 hword3=0x0500 hword5=0x0000
	ccs_end

ccs_808AEF8:
	ccs_simple_scroll hword1=0x0064 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808AF02:
	ccs_simple_scroll hword1=0x0060 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

cutscenescript_808AF0C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B83EC + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808AEF0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805F9EC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_87
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808AFA0
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808AEF8
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808AF02
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808AF65::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_87
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0D20 signedhword6=0x0480 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_815
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808AFA0:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808AF65

ccs_808AFA8:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

byte_808AFAE::
	ccs_simple_scroll hword1=0x0018 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

cutscenescript_808AFB8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B8680 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808AFA8
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_806F834
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B05D
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
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=byte_808AFAE
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808B02B:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_817
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808B068
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B05D:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808B02B
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808B068:
	.word 0x04000002, 0x00000000, 0x00000000, 0x00000000

ccs_808B078:
	ccs_set_camera_pos hword1=0x0480 hword3=0x01C0 hword5=0x0000
	ccs_end

ccs_808B080:
	ccs_simple_scroll hword1=0x00D4 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808B08A:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0080 hword7=0x0000
	ccs_end

ccs_808B094:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0080 hword3=0x0000 hword5=0xFF80 hword7=0x0000
	ccs_end

end_ccs_808B0A1:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_808B0A4:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B8D1C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808B078
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055DD4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_init_eStruct200a6a0 ptr1=sub_804CBA4+1 ptr5=sub_804CBC0+1 word9=0x00000004
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808B21A
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808B080
	cs_wait_camera_script
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
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_run_cutscene_camera_script ptr1=ccs_808B08A
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_run_cutscene_camera_script ptr1=ccs_808B094
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x08
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x10
	cs_wait_screen_fade
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_808B222
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0B
	cs_wait_chatbox byte1=0x80
	cs_set_var byte1=0x08 byte2=0x13
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808B21A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_808B222
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808B1DC::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_set_event_flag byte1=0xFF event16_2=EVENT_171B
	cs_run_eStruct200a6a0_callback
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_819
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_808B23C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

byte_808B21A::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808B1DC

byte_808B222::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_808B1DC

byte_808B23C::
	.word 0x0400098C, 0x00720000, 0xFFD20000, 0x00000000

ccs_808B24C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808B252:
	ccs_simple_scroll hword1=0x0020 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

cutscenescript_808B25C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B9074 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808B24C
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_8055EAC
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B324
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
	cs_run_cutscene_camera_script ptr1=ccs_808B252
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_wait_camera_script
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
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808B2ED::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x03
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x03
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x08C0 signedhword6=-0x0240 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_81B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B324:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808B2ED

byte_808B32C::
	ccs_set_camera_pos hword1=0xF740 hword3=0x01C0 hword5=0x0000
	ccs_end

byte_808B334::
	ccs_simple_scroll hword1=0x00D4 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808B33E:
	ccs_simple_scroll hword1=0x0050 hword3=0x0000 hword5=0x0100 hword7=0x0000
	ccs_end

cutscenescript_808B348:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B956C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_run_cutscene_camera_script ptr1=byte_808B32C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8055F80
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B4A6
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_init_eStruct200a6a0 ptr1=sub_804CBA4+1 ptr5=sub_804CBC0+1 word9=0x00000004
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x20
	cs_wait_screen_fade
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B49E
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808B334
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_event_flag byte1=0xFF event16_2=EVENT_171C
	cs_terminate_gfx_anim byte1=0x00
	cs_load_gfx_anim ptr1=gfx_anim_script_80524A8
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_808B32C
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B49E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808B334
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0D
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808B33E
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x02
	cs_wait_var_equal byte1=0x08 byte2=0x03
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x10
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x04
	cs_wait_var_equal byte1=0x08 byte2=0x05
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B4A6
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x18
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808B458::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_give_item byte2=0x0D byte3=0x01
	cs_set_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_set_event_flag byte1=0xFF event16_2=EVENT_171B
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_171C
	cs_run_eStruct200a6a0_callback
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_81D
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_808B4C0
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B49E:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808B458

cutscenescript_808B4A6:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_808B458

byte_808B4C0::
	.word 0x07000180, 0x002C0000, 0xFF280000, 0x00000000

ccs_808B4D0:
	ccs_set_camera_pos hword1=0xFE80 hword3=0x0C40 hword5=0x0000
	ccs_end

ccs_808B4D8:
	ccs_simple_scroll hword1=0x0040 hword3=0xFF80 hword5=0x0000 hword7=0x0000
	ccs_end

byte_808B4E2::
	ccs_simple_scroll hword1=0x0048 hword3=0xFF80 hword5=0xFF80 hword7=0x0000
	ccs_simple_scroll hword1=0x006A hword3=0x0000 hword5=0xFF00 hword7=0x0000
	ccs_end

end_ccs_808B4F5:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_808B4F8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87B998C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808B4D0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805FFF4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B5AC
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808B4D8
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
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
	cs_run_cutscene_camera_script ptr1=byte_808B4E2
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808B575::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x05C0 signedhword6=0x0460 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_81F
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B5AC:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808B575

ccs_808B5B4:
	ccs_set_camera_pos hword1=0xF8E0 hword3=0x04C0 hword5=0x0000
	ccs_end

byte_808B5BC::
	ccs_simple_scroll hword1=0x0080 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808B5C6:
	ccs_simple_scroll hword1=0x0090 hword3=0x0080 hword5=0x0080 hword7=0x0000
	ccs_end

byte_808B5D0::
	ccs_simple_scroll hword1=0x00CC hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808B5DA:
	.byte 0x00
	.byte 0x00
cutscenescript_808B5DC:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87B9D10 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808B5B4
	cs_spawn_ow_npc_objects_from_list ptr2=end_npcscript_805FAB4
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_87
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B6CD
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
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=byte_808B5BC
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808B5C6
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x09
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0A
	cs_run_cutscene_camera_script ptr1=byte_808B5D0

byte_808B67C::
	.word 0x0B080908, 0x3A1EFF02, 0x800413FF, 0x351EFF02, 0xFF020C08
	.byte 0x78

cutscenescript_808B691:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_87
	cs_write_gamestate_byte byte1=0x06 byte2=0x33
	cs_write_gamestate_byte byte1=0x07 byte2=0x32
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_821
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808B6D8
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B6CD:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808B691
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808B6D8:
	.word 0x04000001, 0x00000000, 0x00000000, 0x00000000
ccs_808B6E8:
	ccs_set_camera_pos hword1=0x0500 hword3=0xFC60 hword5=0x0000
	ccs_end

byte_808B6F0::
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BA318 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808B6E8
	cs_spawn_ow_npc_objects_from_list ptr2=unk_8050C7C
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B752
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x78

cutscenescript_808B720:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_823
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=byte_808B75C
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B752:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808B720
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808B75C::
	.word 0x04000104, 0x00000000, 0x00000000, 0x00000000

ccs_808B76C:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_808B772:
	.byte 0x00
	.byte 0x00
cutscenescript_808B774:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BA470 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808B76C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805F348
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_var byte1=0x08 byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B7F2
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808B7BB:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0180 signedhword6=0x0420 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_825
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B7F2:
	.word 0x1540003C, cutscenescript_808B7BB
	.byte 0x00
	.byte 0x00

ccs_808B7FC:
	ccs_set_camera_pos hword1=0xFB40 hword3=0x04C0 hword5=0x0A00
	ccs_end

ccs_808B804:
	ccs_simple_scroll hword1=0x0140 hword3=0x0000 hword5=0x0000 hword7=0xFF80
	ccs_end

end_ccs_808B80E:
	.byte 0x00
	.byte 0x00
cutscenescript_808B810:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BA764 + COMPRESSED_PTR_FLAG
	cs_run_cutscene_camera_script ptr1=ccs_808B7FC
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_8060164
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808B804
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B886
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

cutscenescript_808B84F:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x01
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x01
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=-0x0A40 signedhword6=0x04C0 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_827
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B886:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808B84F
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

ccs_808B890:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

ccs_808B896:
	ccs_simple_scroll hword1=0x0098 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808B8A0:
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x00CC hword3=0x0080 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808B8AD:
	.byte 0x00
	.byte 0x00
	.byte 0x00
cutscenescript_808B8B0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BA81C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808B890
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805FC50
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B997
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808B896
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
	cs_run_cutscene_camera_script ptr1=ccs_808B8A0
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
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

cutscenescript_808B95D:
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x07
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x07
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0200 signedhword6=0x0600 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_call_native_with_return_value ptr1=byte_808B9A1
	cs_pause byte1=0xFF byte2=0x0F
	cs_warp_cmd_8038040_2 byte1=0x81 byte2=0x00 ptr3=NULL
	cs_set_event_flag byte1=0xFF event16_2=EVENT_829
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_1703
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B997:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808B95D
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

byte_808B9A1::
	.word 0xA9200DB5, 0x68FE1BF7, 0x00200063
	.byte 0xBD
	.byte 0x00
	.byte 0x00

cutscenescript_808B9B0:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_pause byte1=0xFF byte2=0x1E
	cs_decomp_text_archive ptr1=CompText87BAD5C + COMPRESSED_PTR_FLAG
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_disable_ow_player_wall_collision_809e254
	cs_set_cutscene_skip_script ptr1=cutscenescript_808B9F8
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E

byte_808B9D5::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_spawn_ow_npc_objects_from_map
	cs_stop_cutscene_camera_script
	cs_chatbox_cmd_8037a70
	cs_set_event_flag byte1=0xFF event16_2=EVENT_82B
	cs_pause byte1=0xFF byte2=0x3C
	cs_play_music hword1=0xFFFF
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808B9F8:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808B9D5

end_cutscenescript_808BA00::
	ccs_set_camera_pos hword1=0x1700 hword3=0xF0C0 hword5=0xFFC0
	ccs_end

byte_808BA08::
	ccs_wait hword1=0x0001
	ccs_simple_scroll hword1=0x0028 hword3=0x0100 hword5=0x0000 hword7=0x0000
	ccs_end

byte_808BA15::
	ccs_simple_scroll hword1=0x0008 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808BA1F:
	.byte 0x00

cutscenescript_808BA20:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_decomp_text_archive ptr1=CompText87BB08C + COMPRESSED_PTR_FLAG
	cs_set_event_flag byte1=0xFF event16_2=EVENT_9FF
	cs_run_cutscene_camera_script ptr1=end_cutscenescript_808BA00
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8069730
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_pause byte1=0xFF byte2=0x78
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808BB59
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_808BA08
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x01
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x24 byte3=0xFF
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=cutscenescript_808BB61
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x09
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x78
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_var byte1=0x08 byte2=0x05
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808BB59
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0A
	cs_wait_chatbox byte1=0x80
	cs_disable_cutscene_skip_script
	cs_play_sound hword1=0x00D7
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x08
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=byte_808BB59
	cs_pause byte1=0xFF byte2=0x78
	cs_set_var byte1=0x08 byte2=0x09
	cs_wait_var_equal byte1=0x08 byte2=0x0A
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0C
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0B
	cs_wait_var_equal byte1=0x08 byte2=0x0C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0E
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0D
	cs_wait_var_equal byte1=0x08 byte2=0x0E
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x0F
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x0F
	cs_wait_var_equal byte1=0x08 byte2=0x10
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x11
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x11
	cs_run_cutscene_camera_script ptr1=byte_808BA15
	cs_wait_camera_script
	cs_wait_var_equal byte1=0x08 byte2=0x12
	cs_pause byte1=0xFF byte2=0x1E
	cs_play_music hword1=0x001C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x13
	cs_wait_chatbox byte1=0x80

cutscenescript_808BB42:
	cs_disable_cutscene_skip_script
	cs_set_event_flag byte1=0xFF event16_2=EVENT_82D
	cs_pause byte1=0xFF byte2=0x14
	cs_start_fixed_battle hword1=0x0051
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_pause byte1=0xFF byte2=0x01
	cs_end_for_map_reload_maybe_8037c64

byte_808BB59::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=cutscenescript_808BB42

cutscenescript_808BB61:
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_8034938
	cs_set_screen_fade byte1=0xFF byte2=0x20 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=cutscenescript_808BB42
	cs_end_for_map_reload_maybe_8037c64

ccs_808BB7C:
	ccs_set_camera_pos hword1=0x1900 hword3=0xF0C0 hword5=0xFFC0
	ccs_end

ccs_808BB84:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject0_Coords
	ccs_end

end_ccs_808BB8A:
	.byte 0x00
	.byte 0x00

cutscenescript_808BB8C:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BB91C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808BB7C
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8069878
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_spawn_ow_map_object nybble1=0x00 byte2=0x01 hword3=0x0000 hword5=0x0000 hword7=0x0000 word9=0x01010800
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808BC7C
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_disable_cutscene_skip_script
	cs_spawn_cutscene_process byte1=0x20 ptr2=byte_808BC84
	cs_load_gfx_anims ptr1=gfx_anim_script_8034994
	cs_pause byte1=0xFF byte2=0x10
	cs_terminate_bg_scroll_effect
	cs_init_eStruct200a6a0 ptr1=sub_804CA90+1 ptr5=sub_804CAE0+1 word9=0x00000002
	cs_pause byte1=0xFF byte2=0x5A
	cs_play_sound hword1=0x00C3
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x04
	cs_wait_screen_fade
	cs_set_var byte1=0x08 byte2=0x03
	cs_run_cutscene_camera_script ptr1=ccs_808BB84
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_eStruct200a6a0_callback
	cs_kill_cutscene_process byte1=0x20
	cs_pause byte1=0xFF byte2=0x5A
	cs_load_map_gfx_anims_bg_anim
	cs_decomp_text_archive ptr1=CompText87BB91C + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808BC7C
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
	cs_set_var byte1=0x08 byte2=0x06
	cs_wait_var_equal byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808BC54::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x04 byte3=0x10
	cs_wait_screen_fade
	cs_write_gamestate_byte byte1=0x07 byte2=0x33
	cs_do_camera_shake byte1=0x00 byte2=0x00 byte3=0x00
	cs_free_ow_map_object nybble1=0x00
	cs_terminate_gfx_anim byte1=0x0F
	cs_set_event_flag byte1=0xFF event16_2=EVENT_82F
	cs_pause byte1=0xFF byte2=0x3C
	cs_warp_cmd_8038040_2 byte1=0x1 byte2=0x00 ptr3=unk_808BC90
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808BC7C:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808BC54

byte_808BC84::
	cs_do_camera_shake byte1=0x01 byte2=0x06 byte3=0x00
	cs_pause byte1=0xFF byte2=0x06
	cs_jump destination1=byte_808BC84

unk_808BC90:
	.word 0x04000204, 0x00000000, 0x00000000, 0x00000000
byte_808BCA0::
	ccs_set_camera_pos hword1=0xFEE0 hword3=0x0600 hword5=0x0000
	ccs_end

ccs_808BCA8:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject3_Coords
	ccs_end

byte_808BCAE::
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject4_Coords
	ccs_end

ccs_808BCB4:
	ccs_write_camera_field_03_14 ptr1=eOverworldNPCObject5_Coords
	ccs_end

ccs_808BCBA:
	ccs_simple_scroll hword1=0x00C6 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

ccs_808BCC4:
	ccs_set_camera_pos hword1=0x0080 hword3=0x0500 hword5=0x0000
	ccs_end

ccs_808BCCC:
	ccs_simple_scroll hword1=0x0064 hword3=0xFF00 hword5=0x0000 hword7=0x0000
	ccs_end

end_ccs_808BCD6:
	.byte 0x00
	.byte 0x00
cutscenescript_808BCD8:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BBA60 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=byte_808BCA0
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805FD20
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_set_screen_fade byte1=0xFF byte2=0x00 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808BE24
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808BCA8
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x01
	cs_wait_var_equal byte1=0x08 byte2=0x02
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_808BCAE
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x03
	cs_wait_var_equal byte1=0x08 byte2=0x04
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808BCB4
	cs_pause byte1=0xFF byte2=0x3C
	cs_set_var byte1=0x08 byte2=0x05
	cs_wait_var_equal byte1=0x08 byte2=0x06
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=byte_808BCA0
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x02
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_cutscene_camera_script ptr1=ccs_808BCBA
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x03
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_set_var byte1=0x08 byte2=0x07
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x04
	cs_wait_screen_fade
	cs_wait_var_equal byte1=0x08 byte2=0x08
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_808BE2C
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x04
	cs_wait_chatbox byte1=0x80
	cs_clear_event_flag byte1=0xFF event16_2=EVENT_87
	cs_run_cutscene_camera_script ptr1=ccs_808BCC4
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_805FD3C
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x08
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=cutscenescript_808BE24
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x05
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_cutscene_camera_script ptr1=ccs_808BCCC
	cs_wait_camera_script
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x06
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x5A
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x1C byte3=0x08
	cs_wait_screen_fade
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_cutscene_skip_script ptr1=byte_808BE2C
	cs_pause byte1=0xFF byte2=0x3C
	cs_run_text_script_not_from_mem byte2=0x07
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C
	cs_disable_cutscene_skip_script

byte_808BDE8::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_87
	cs_pause byte1=0xFF byte2=0x3C
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_831
	cs_do_pet_effect byte1=0xFF byte2=0x01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808BE48
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

cutscenescript_808BE24:
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808BDE8

byte_808BE2C::
	cs_set_chatbox_flags byte2=0x40
	cs_load_gfx_anims ptr1=off_80348FC
	cs_set_screen_fade byte1=0xFF byte2=0x18 byte3=0xFF
	cs_wait_screen_fade
	cs_pause byte1=0xFF byte2=0x01
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x08
	cs_wait_screen_fade
	cs_jump destination1=byte_808BDE8
	cs_end_for_map_reload_maybe_8037c64
	cs_end_for_map_reload_maybe_8037c64

unk_808BE48:
	.word 0x04000502, 0x00000000, 0x00000000, 0x00000000
ccs_808BE58:
	ccs_set_camera_pos hword1=0xFA80 hword3=0xFDE0 hword5=0x0000
	ccs_end

cutscenescript_808BE60:
	cs_lock_player_for_non_npc_dialogue_809e0b0
	cs_nop_80377d0
	cs_decomp_text_archive ptr1=CompText87BBEE4 + COMPRESSED_PTR_FLAG
	cs_pause byte1=0xFF byte2=0x01
	cs_run_cutscene_camera_script ptr1=ccs_808BE58
	cs_spawn_ow_npc_objects_from_list ptr2=npcscript_list_8057518
	cs_make_ow_player_invisible
	cs_disable_ow_player_wall_collision_809e254
	cs_do_pet_effect byte1=0xFF byte2=0x00
	cs_set_screen_fade byte1=0xFF byte2=0x08 byte3=0x04
	cs_wait_screen_fade
	cs_set_cutscene_skip_script ptr1=dword_808BEE4
	cs_pause byte1=0xFF byte2=0x1E
	cs_run_text_script_not_from_mem byte2=0x00
	cs_wait_chatbox byte1=0x80
	cs_pause byte1=0xFF byte2=0x3C

byte_808BE93::
	cs_disable_cutscene_skip_script
	cs_set_screen_fade byte1=0xFF byte2=0x0C byte3=0x02
	cs_wait_screen_fade
	cs_set_event_flag byte1=0xFF event16_2=EVENT_800
	cs_write_gamestate_byte byte1=0x06 byte2=0x40
	cs_write_gamestate_byte byte1=0x08 byte2=0x02
	cs_write_gamestate_byte byte1=0x07 byte2=0x40
	cs_add_bbs_message_range hword1=0x17B6 byte3=0x08
	cs_add_bbs_message_range hword1=0x17E8 byte3=0x07
	cs_add_bbs_message_range hword1=0x1820 byte3=0x08
	cs_sound_cmd_803810e byte1=0x08 byte2=0x1F
	cs_pause byte1=0xFF byte2=0xB4
	cs_ow_player_sprite_special_with_arg byte1=0x04 byte2=0xFF byte3=0x04
	cs_write_ow_player_fixed_anim_select_8037dac byte2=0xFF byte3=0x04
	cs_ow_player_coord_special byte1=0x00 byte2=0xFF byte3=0x01 signedhword4=0x0000 signedhword6=0x0000 signedhword8=0x0000
	cs_make_ow_player_visible
	cs_set_event_flag byte1=0xFF event16_2=EVENT_A01
	cs_set_enter_map_screen_fade byte1=0xFF byte2=0xFF
	cs_warp_cmd_8038040_2 byte1=0x0 byte2=0x00 ptr3=unk_808BEEC
	cs_chatbox_cmd_8037a70
	cs_enable_ow_player_wall_collision_809e248
	cs_unlock_player_after_non_npc_dialogue_809e122
	cs_end_for_map_reload_maybe_8037c64

dword_808BEE4::
	cs_set_chatbox_flags byte2=0x40
	cs_jump destination1=byte_808BE93

unk_808BEEC:
	.word 0x04000106, 0x00000000, 0x00000000, 0x00000000
/*For debugging purposes, connect comment at any range!*/
