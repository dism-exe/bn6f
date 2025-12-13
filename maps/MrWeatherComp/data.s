
byte_806A204:
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x002A0000,
		y: -0x00B60000,
		z: -0x000C0000,
		object_id: 0x0000001D,
	]
	.word 0xFF

byte_806A21C:
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x01820000,
		y: 0x000E0000,
		z: 0x00000000,
		object_id: 0x0000001E,
	]
	.word 0xFF

byte_806A234:
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x01C20000,
		y: 0x000E0000,
		z: 0x00000000,
		object_id: 0x0000001F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x01D40000,
		y: -0x00320000,
		z: -0x00400000,
		object_id: 0x0000002E,
	]
	.word 0xFF

off_806A260: // [*const MapScript; MR_WEATHER_COMP_NUM_MAPS]
  .word byte_806A2C4
	.word byte_806A3C4
	.word byte_806A460
off_806A26C: // [*const MapScript; MR_WEATHER_COMP_NUM_MAPS]
  .word byte_806A35A
	.word byte_806A449
	.word byte_806A54A
NPCScriptsMrWeather_806A278: // [*const [*const NPCScript]; MR_WEATHER_COMP_NUM_MAPS]
  .word off_806A5C0
	.word off_806A650
	.word off_806A690
off_806A284:
	.word byte_806A290
	.word byte_806A2A0
	.word byte_806A2B0
byte_806A290:
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806A2A0:
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806A2B0:
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
dword_806A2C0:
	.word 0xA0A0A
byte_806A2C4:
	ms_jump_if_current_navi_not_equal byte1=0x00 destination2=mapscript_806A2D3
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F7
	ms_jump destination1=mapscript_806A2E0

mapscript_806A2D3:
	ms_write_word ptr1=unk_2011EBC word5=0x08050202
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F7

mapscript_806A2E0:
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x7F destination3=mapscript_806A2F0
	ms_jump destination1=byte_806A359

mapscript_806A2F0:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_BE1 destination4=byte_806A33D
	ms_terminate_gfx_anim byte1=0x01
	ms_init_eStruct200a6a0 ptr1=sub_804CD20+1 ptr5=unk_804CD3D word9=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_BE0 destination4=mapscript_806A31E
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806A31E
	ms_set_event_flag byte1=0xFF event16_2=EVENT_BFB
	ms_jump destination1=mapscript_806A322

mapscript_806A31E:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_BFB

mapscript_806A322:
	ms_call_native_function ptr1=sub_808FDC0+1 word5=0x00000000
	ms_write_word ptr1=unk_2011EA8 word5=0x08030102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_806A359

byte_806A33D:
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806A34C
	ms_set_event_flag byte1=0xFF event16_2=EVENT_BFB
	ms_jump destination1=off_806A350

mapscript_806A34C:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_BFB

off_806A350:
	ms_call_native_function ptr1=sub_808FE34+1 word5=0x00000000

byte_806A359:
	ms_end

byte_806A35A:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_BDF destination4=mapscript_806A373
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2

mapscript_806A373:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x7F destination3=mapscript_806A37F
	ms_jump destination1=mapscript_806A388

mapscript_806A37F:
	ms_call_native_function ptr1=sub_808FE74+1 word5=0x00000000

mapscript_806A388:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_806A394
	ms_jump destination1=byte_806A3C2

mapscript_806A394:
	ms_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=mapscript_806A3A0
	ms_jump destination1=byte_806A3C2

mapscript_806A3A0:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A2D destination4=byte_806A3C2
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A2E destination4=byte_806A3C2
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A2E
	ms_start_cutscene ptr1=cutscenescript_808EA88 word5=0x00000000
	ms_jump destination1=byte_806A3C2

byte_806A3C2:
	ms_end
	ms_end

byte_806A3C4:
	ms_jump_if_current_navi_not_equal byte1=0x00 destination2=mapscript_806A3D3
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F7
	ms_jump destination1=mapscript_806A3E0

mapscript_806A3D3:
	ms_write_word ptr1=unk_2011EBC word5=0x08030202
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F7

mapscript_806A3E0:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x7F destination3=mapscript_806A3EC
	ms_jump destination1=byte_806A448

mapscript_806A3EC:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_BE2 destination4=byte_806A42C
	ms_terminate_gfx_anim byte1=0x01
	ms_init_eStruct200a6a0 ptr1=sub_804CD20+1 ptr5=unk_804CD3D word9=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_BE0 destination4=mapscript_806A41A
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806A41A
	ms_set_event_flag byte1=0xFF event16_2=EVENT_BFB
	ms_jump destination1=mapscript_806A41E

mapscript_806A41A:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_BFB

mapscript_806A41E:
	ms_call_native_function ptr1=sub_808FDC0+1 word5=0x00000000
	ms_jump destination1=byte_806A448

byte_806A42C:
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806A43B
	ms_set_event_flag byte1=0xFF event16_2=EVENT_BFB
	ms_jump destination1=mapscript_806A43F

mapscript_806A43B:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_BFB

mapscript_806A43F:
	ms_call_native_function ptr1=sub_808FE34+1 word5=0x00000000

byte_806A448:
	ms_end

byte_806A449:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x7F destination3=byte_806A455
	ms_jump destination1=mapscript_806A45E

byte_806A455:
	ms_call_native_function ptr1=sub_808FE74+1 word5=0x00000000

mapscript_806A45E:
	ms_end
	ms_end

byte_806A460:
	ms_jump_if_current_navi_not_equal byte1=0x00 destination2=mapscript_806A46F
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F6
	ms_jump destination1=mapscript_806A47C

mapscript_806A46F:
	ms_write_word ptr1=unk_2011EB8 word5=0x08030202
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F6

mapscript_806A47C:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x7F destination3=mapscript_806A488
	ms_jump destination1=byte_806A4E4

mapscript_806A488:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_BE3 destination4=byte_806A4C8
	ms_terminate_gfx_anim byte1=0x01
	ms_init_eStruct200a6a0 ptr1=sub_804CD20+1 ptr5=unk_804CD3D word9=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_BE0 destination4=mapscript_806A4B6
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806A4B6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_BFB
	ms_jump destination1=mapscript_806A4BA

mapscript_806A4B6:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_BFB

mapscript_806A4BA:
	ms_call_native_function ptr1=sub_808FDC0+1 word5=0x00000000
	ms_jump destination1=byte_806A4E4

byte_806A4C8:
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806A4D7
	ms_set_event_flag byte1=0xFF event16_2=EVENT_BFB
	ms_jump destination1=mapscript_806A4DB

mapscript_806A4D7:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_BFB

mapscript_806A4DB:
	ms_call_native_function ptr1=sub_808FE34+1 word5=0x00000000

byte_806A4E4:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_806A4F0
	ms_jump destination1=dword_806A524

mapscript_806A4F0:
	ms_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=mapscript_806A4FC
	ms_jump destination1=dword_806A524

mapscript_806A4FC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A31 destination4=dword_806A524
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A32 destination4=dword_806A524
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A32
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808EB60 word5=0x00000000
	ms_jump destination1=dword_806A524

dword_806A524:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11D7 destination4=byte_806A549
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11D8 destination4=byte_806A549
	ms_set_event_flag byte1=0xFF event16_2=EVENT_11D8
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x0000003A
	ms_jump destination1=byte_806A549

byte_806A549:
	ms_end

byte_806A54A:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x7F destination3=mapscript_806A556
	ms_jump destination1=mapscript_806A55F

mapscript_806A556:
	ms_call_native_function ptr1=sub_808FE74+1 word5=0x00000000

mapscript_806A55F:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_806A56B
	ms_jump destination1=dword_806A5A0

mapscript_806A56B:
	ms_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=mapscript_806A577
	ms_jump destination1=dword_806A5A0

mapscript_806A577:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=dword_806A5A0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A2F destination4=dword_806A5A0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A30 destination4=dword_806A5A0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A30
	ms_start_cutscene ptr1=cutscenescript_808EAEC word5=0x00000000
	ms_jump destination1=dword_806A5A0

dword_806A5A0:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11D8 destination4=byte_806A5BE
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11D7 destination4=byte_806A5BE
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00F3
	ms_jump destination1=byte_806A5BE

byte_806A5BE:
	ms_end
	ms_end

off_806A5C0:
	.word byte_806A5DC
	.word byte_806A5F7
	.word byte_806A621
	.word byte_806A62C
	.word byte_806A637
	.word byte_806A642
	.word 0x000000FF
byte_806A5DC:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=npcscript_806A5E7
	ns_free_and_end

npcscript_806A5E7:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0000 hword3=0xFF74 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806A5F7:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x44
	ns_jump_if_flag_set event16_1=EVENT_11DB destination3=byte_806A620
	ns_jump_if_flag_set event16_1=EVENT_11D2 destination3=byte_806A609
	ns_free_and_end

byte_806A609:
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806A620
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0xFFD0 hword3=0xFFE2 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806A620:
	ns_free_and_end

byte_806A621:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1540
	ns_wait_mystery_data_taken hword1=0x1540
	ns_free_and_end

byte_806A62C:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1541
	ns_wait_mystery_data_taken hword1=0x1541
	ns_free_and_end

byte_806A637:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1542
	ns_wait_mystery_data_taken hword1=0x1542
	ns_free_and_end

byte_806A642:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1543
	ns_wait_mystery_data_taken hword1=0x1543
	ns_free_and_end
	ns_end
	ns_end
	ns_end

off_806A650:
	.word byte_806A664
	.word byte_806A66F
	.word byte_806A67A
	.word byte_806A685
	.word 0x000000FF
byte_806A664:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1548
	ns_wait_mystery_data_taken hword1=0x1548
	ns_free_and_end

byte_806A66F:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1549
	ns_wait_mystery_data_taken hword1=0x1549
	ns_free_and_end

byte_806A67A:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x154A
	ns_wait_mystery_data_taken hword1=0x154A
	ns_free_and_end

byte_806A685:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x154B
	ns_wait_mystery_data_taken hword1=0x154B
	ns_free_and_end

off_806A690:
	.word byte_806A6AC
	.word byte_806A6D6
	.word byte_806A6F9
	.word byte_806A704
	.word byte_806A70F
	.word byte_806A71A
	.word 0x000000FF
byte_806A6AC:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x44
	ns_jump_if_flag_set event16_1=EVENT_11DC destination3=npcscript_806A6D5
	ns_jump_if_flag_set event16_1=EVENT_11DB destination3=npcscript_806A6BE
	ns_free_and_end

npcscript_806A6BE:
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_806A6D5
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x0094 hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806A6D5:
	ns_free_and_end

byte_806A6D6:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x56
	ns_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=byte_806A6E1
	ns_free_and_end

byte_806A6E1:
	ns_jump_if_flag_set event16_1=EVENT_A32 destination3=byte_806A6F8
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0x0218 hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806A6F8:
	ns_free_and_end

byte_806A6F9:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1550
	ns_wait_mystery_data_taken hword1=0x1550
	ns_free_and_end

byte_806A704:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1551
	ns_wait_mystery_data_taken hword1=0x1551
	ns_free_and_end

byte_806A70F:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1552
	ns_wait_mystery_data_taken hword1=0x1552
	ns_free_and_end

byte_806A71A:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1553
	ns_wait_mystery_data_taken hword1=0x1553
	ns_free_and_end
	ns_end
	ns_end
	ns_end

npcscript_list_806A728::
	.word byte_806A734
	.word byte_806A758
	.word 0x000000FF
byte_806A734:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x01B8 hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x29
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806A758:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x56
	ns_set_coords hword1=0x0218 hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_806A770::
	.word byte_806A77C
	.word byte_806A792
	.word 0x000000FF
byte_806A77C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x01E8 hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806A792:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x56
	ns_set_coords hword1=0x0218 hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x19
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end






