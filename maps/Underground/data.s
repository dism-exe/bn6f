
byte_80794AC::
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x017C0000,
		y: 0x00AC0000,
		z: 0x00000000,
		object_id: 0x0000003B,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x01060000,
		y: -0x00B60000,
		z: 0x00000000,
		object_id: 0x0000003A,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00D60000,
		y: -0x01DE0000,
		z: -0x00120000,
		object_id: 0x0000002A,
	]
	.word 0xFF

byte_80794EC::
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x01B40000,
		y: -0x00B00000,
		z: 0x00000000,
		object_id: 0x000000BD,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x01120000,
		y: 0x00920000,
		z: 0x00000000,
		object_id: 0x0000003C,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x001E0000,
		y: 0x00080000,
		z: -0x00120000,
		object_id: 0x0000002B,
	]
	.word 0xFF

off_807952C:: // [*const MapScript; UNDERGROUND_NUM_MAPS]
	.word byte_8079570
	.word byte_807960C
off_8079534:: // [*const MapScript; UNDERGROUND_NUM_MAPS]
	.word byte_80795C4
	.word byte_8079706
NPCScriptsUnderground_807953C:: // [*const [*const NPCScript]; UNDERGROUND_NUM_MAPS]
  .word off_8079798
	.word off_807994C
off_8079544::
	.word byte_807954C
	.word byte_807955C
byte_807954C::
	.byte 0xFF, 0x1, 0x2, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_807955C::
	.byte 0xFF, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_807956C::
	.byte 0x14, 0x14
byte_807956E::
	.byte 0x21, 0x21
byte_8079570::
	ms_set_event_flag_range byte1=0x18 event16_2=EVENT_1650
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_8079584
	ms_jump destination1=byte_80795C3

mapscript_8079584:
	ms_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=mapscript_8079590
	ms_jump destination1=byte_80795C3

mapscript_8079590:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_80795C3
	ms_call_native_function ptr1=sub_8142510+1 word5=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C26 destination4=byte_80795C3
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_68C destination4=byte_80795C3
	ms_write_word ptr1=unk_2011EAC word5=0x08070101
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump destination1=byte_80795C3

byte_80795C3::
	ms_end

byte_80795C4::
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_80795D0
	ms_jump destination1=byte_807960B

mapscript_80795D0:
	ms_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=mapscript_80795DC
	ms_jump destination1=byte_807960B

mapscript_80795DC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_807960B
	ms_call_native_function ptr1=sub_8142618+1 word5=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_68C destination4=byte_807960B
	ms_write_word ptr1=unk_2011EAC word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump destination1=byte_807960B

byte_807960B::
	ms_end

byte_807960C::
	ms_set_event_flag_range byte1=0x18 event16_2=EVENT_1650
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_807961C
	ms_jump destination1=byte_8079695

mapscript_807961C:
	ms_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=mapscript_807962F
	ms_jump_if_progress_in_range byte1=0x53 byte2=0x53 destination3=mapscript_8079645
	ms_jump destination1=byte_8079695

mapscript_807962F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_8079695
	ms_call_native_function ptr1=sub_8142510+1 word5=0x00000000
	ms_jump destination1=byte_8079695

mapscript_8079645:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C29 destination4=mapscript_807966D
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C2A destination4=mapscript_807966D
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C2A
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8091F48 word5=0x00000000
	ms_jump destination1=byte_8079695

mapscript_807966D:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C2B destination4=byte_8079695
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C2C destination4=byte_8079695
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C2C
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_80922F4 word5=0x00000000
	ms_jump destination1=byte_8079695

byte_8079695::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1019 destination4=mapscript_80796CD
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C00 destination4=mapscript_8079705
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E00 destination4=mapscript_80796CD
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_101A destination4=mapscript_80796CD
	ms_set_event_flag byte1=0xFF event16_2=EVENT_101A
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8098284 word5=0x00000000
	ms_jump destination1=mapscript_8079705

mapscript_80796CD:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_100D destination4=mapscript_8079705
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C00 destination4=mapscript_8079705
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E00 destination4=mapscript_8079705
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_100E destination4=mapscript_8079705
	ms_set_event_flag byte1=0xFF event16_2=EVENT_100E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8098170 word5=0x00000000
	ms_jump destination1=mapscript_8079705

mapscript_8079705:
	ms_end

byte_8079706::
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_8079712
	ms_jump destination1=mapscript_807975D

mapscript_8079712:
	ms_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=mapscript_807971E
	ms_jump destination1=mapscript_807975D

mapscript_807971E:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_8079747
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C27 destination4=mapscript_8079747
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C28 destination4=mapscript_8079747
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C28
	ms_start_cutscene ptr1=cutscenescript_8091E34 word5=0x00000000
	ms_jump destination1=mapscript_807975D

mapscript_8079747:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=mapscript_807975D
	ms_call_native_function ptr1=sub_8142618+1 word5=0x00000000
	ms_jump destination1=mapscript_807975D

mapscript_807975D:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=byte_8079796
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C00 destination4=byte_8079796
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E00 destination4=byte_8079796
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_100B destination4=byte_8079796
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_100C destination4=byte_8079796
	ms_set_event_flag byte1=0xFF event16_2=EVENT_100C
	ms_start_cutscene ptr1=cutscenescript_809805C word5=0x00000000
	ms_jump destination1=byte_8079796

byte_8079796::
	ms_end
	ms_end

off_8079798::
	.word byte_80797C4
	.word byte_80797EC
	.word byte_8079800
	.word byte_8079814
	.word byte_8079863
	.word byte_80798B2
	.word byte_8079901
	.word byte_8079913
	.word byte_8079925
	.word byte_8079937
	.word 0x000000FF
byte_80797C4::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=npcscript_80797CF
	ns_free_and_end

npcscript_80797CF:
	ns_jump_if_flag_set event16_1=EVENT_C26 destination3=npcscript_80797D7
	ns_free_and_end

npcscript_80797D7:
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0022 hword3=0x000A hword5=0x0040
	ns_set_animation byte1=0x2B
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_80797EC::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x43
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0x0176 hword3=0xFF7A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8079800::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x43
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x01
	ns_set_coords hword1=0xFE46 hword3=0x00AA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8079814::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_807984D
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_807983D
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x61 destination3=byte_807982D
	ns_free_and_end

byte_807982D::
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0x0024 hword3=0x012A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807983D:
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0x00B6 hword3=0xFEBA hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807984D:
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0x00C6 hword3=0xFE6A hword5=0x0000
	ns_set_animation byte1=0x29
	ns_jump_with_link destination1=byte_809F6CC

byte_8079863::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_807989C
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=byte_807988C
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x61 destination3=npcscript_807987C
	ns_free_and_end

npcscript_807987C:
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFFC6 hword3=0x00CC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F7E4

byte_807988C::
	ns_set_text_script_index byte1=0x07
	ns_set_coords hword1=0x00D6 hword3=0xFEBA hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807989C:
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x0B
	ns_set_coords hword1=0x00A8 hword3=0xFECA hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_jump_with_link destination1=byte_809F6CC

byte_80798B2::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_80798EB
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_80798DB
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x61 destination3=npcscript_80798CB
	ns_free_and_end

npcscript_80798CB:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0020 hword3=0x00F2 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80798DB:
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0x00C4 hword3=0xFEA2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80798EB::
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x0C
	ns_set_coords hword1=0x00E2 hword3=0xFE8A hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_jump_with_link destination1=byte_809F6CC

byte_8079901::
	ns_jump_if_flag_set event16_1=EVENT_7F6 destination3=byte_8079949
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1460
	ns_wait_mystery_data_taken hword1=0x1460
	ns_free_and_end

byte_8079913::
	ns_jump_if_flag_set event16_1=EVENT_7F6 destination3=byte_8079949
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1461
	ns_wait_mystery_data_taken hword1=0x1461
	ns_free_and_end

byte_8079925::
	ns_jump_if_flag_set event16_1=EVENT_7F6 destination3=byte_8079949
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1462
	ns_wait_mystery_data_taken hword1=0x1462
	ns_free_and_end

byte_8079937::
	ns_jump_if_flag_set event16_1=EVENT_7F6 destination3=byte_8079949
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1463
	ns_wait_mystery_data_taken hword1=0x1463
	ns_free_and_end

byte_8079949::
	ns_free_and_end
	ns_end
	ns_end

off_807994C::
	.word byte_807996C
	.word byte_8079994
	.word byte_80799BB
	.word byte_80799CD
	.word byte_80799DF
	.word byte_80799F1
	.word byte_8079A03
	.word 0x000000FF
byte_807996C::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=npcscript_8079977
	ns_free_and_end

npcscript_8079977:
	ns_jump_if_flag_set event16_1=EVENT_C26 destination3=npcscript_807997F
	ns_free_and_end

npcscript_807997F:
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x002C hword3=0x01F2 hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_8079994::
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x99 byte2=0x1C

npcscript_8079998:
	.word 0x0E050110, 0x07999810, 0x99250808, 0x004C131C, 0x54000C14, 0x160040FE, 0x05011000, 0x99B10223
	.byte 0x07
	.byte 0x08
	.byte 0x03
byte_80799BB::
	ns_jump_if_flag_set event16_1=EVENT_7F7 destination3=byte_8079A15
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1468
	ns_wait_mystery_data_taken hword1=0x1468
	ns_free_and_end

byte_80799CD::
	ns_jump_if_flag_set event16_1=EVENT_7F7 destination3=byte_8079A15
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1469
	ns_wait_mystery_data_taken hword1=0x1469
	ns_free_and_end

byte_80799DF::
	ns_jump_if_flag_set event16_1=EVENT_7F7 destination3=byte_8079A15
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x146A
	ns_wait_mystery_data_taken hword1=0x146A
	ns_free_and_end

byte_80799F1::
	ns_jump_if_flag_set event16_1=EVENT_7F7 destination3=byte_8079A15
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x146B
	ns_wait_mystery_data_taken hword1=0x146B
	ns_free_and_end

byte_8079A03::
	ns_jump_if_flag_set event16_1=EVENT_7F7 destination3=byte_8079A15
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x146C
	ns_wait_mystery_data_taken hword1=0x146C
	ns_free_and_end

byte_8079A15::
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_8079A18::
	.word byte_8079A24
	.word byte_8079A39
	.word 0x000000FF
byte_8079A24::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_to_cur_pet_navi
	ns_set_coords hword1=0x000C hword3=0xFE64 hword5=0x0040
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8079A39::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x000C hword3=0xFE34 hword5=0x0040
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_sprite byte1=0x59
	ns_set_animation byte1=0x1C
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x1D
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_8079A68::
	.word byte_8079AA0
	.word byte_8079AF3
	.word byte_8079B0F
	.word byte_8079B26
	.word byte_8079BA9
	.word byte_8079BC7
	.word byte_8079C1F
	.word byte_8079C36
	.word byte_8079C4D
	.word byte_8079C6B
	.word byte_8079C92
	.word byte_8079CF9
	.word byte_8079D20
	.word 0x000000FF
byte_8079AA0::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_to_cur_pet_navi
	ns_set_coords hword1=0x000C hword3=0xFE64 hword5=0x0040
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_set_animation byte1=0x29
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_pause byte1=0x02
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x17
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x19
	ns_pause byte1=0x05
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x27
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x28
	ns_wait_cutscene_var byte1=0x08 byte2=0x31
	ns_set_animation_force_update byte1=0x24
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x32
	ns_free_and_end

byte_8079AF3::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2C byte2=0x1C
	ns_set_coords hword1=0x000A hword3=0xFE4C hword5=0x0036
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_set_active_and_visible
	ns_run_secondary_script ptr1=byte_8079E62
	ns_set_animation_force_update byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x31
	ns_free_and_end

byte_8079B0F::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x000C hword3=0xFE4C hword5=0x0040
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x31
	ns_jump destination1=byte_809F880

byte_8079B26::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x59
	ns_set_animation byte1=0x1C
	ns_set_coords hword1=0x000C hword3=0xFE34 hword5=0x0040
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x1D
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_sprite byte1=0x37
	ns_set_animation byte1=0x3D
	ns_wait_cutscene_var byte1=0x08 byte2=0x1D
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x1E
	ns_wait_cutscene_var byte1=0x08 byte2=0x1F
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x20
	ns_wait_cutscene_var byte1=0x08 byte2=0x21
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x22
	ns_wait_cutscene_var byte1=0x08 byte2=0x23
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x24
	ns_wait_cutscene_var byte1=0x08 byte2=0x27
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x33
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x2A
	ns_write_cutscene_var byte1=0x08 byte2=0x34
	ns_wait_cutscene_var byte1=0x08 byte2=0x35
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x36
	ns_wait_cutscene_var byte1=0x08 byte2=0x3B
	ns_set_animation byte1=0x2F
	ns_wait_cutscene_var byte1=0x08 byte2=0x3C
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x3D
	ns_wait_cutscene_var byte1=0x08 byte2=0x42
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x43
	ns_wait_cutscene_var byte1=0x08 byte2=0x44
	ns_set_animation byte1=0x07
	ns_pause byte1=0x14
	ns_set_animation byte1=0x2C
	ns_write_cutscene_var byte1=0x08 byte2=0x45
	ns_wait_cutscene_var byte1=0x08 byte2=0x46
	ns_jump_with_link destination1=byte_809F6CC

byte_8079BA9::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x12 byte2=0x0C
	ns_set_coords hword1=0x000C hword3=0xFE34 hword5=0x0040
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x1B
	ns_play_sound hword1=0x008A
	ns_set_active_and_visible
	ns_set_animation_force_update byte1=0x00
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x1C
	ns_free_and_end

byte_8079BC7::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x54
	ns_set_coords hword1=0x003C hword3=0xFE4C hword5=0x0040
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_active_and_visible
	ns_set_animation byte1=0x1E
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_animation byte1=0x30
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x0D
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x07
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x03 byte2=0x04 byte3=0x02
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x14
	ns_wait_cutscene_var byte1=0x08 byte2=0x15
	ns_set_animation_force_update byte1=0x28
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x16
	ns_free_and_end

byte_8079C1F::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x0034 hword3=0xFE4C hword5=0x0040
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_jump destination1=npcscript_809F86C

byte_8079C36::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x0034 hword3=0xFE5C hword5=0x0040
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x15
	ns_jump destination1=byte_809F880

byte_8079C4D::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2C byte2=0x1C
	ns_set_coords hword1=0x0032 hword3=0xFE4C hword5=0x0036
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_active_and_visible
	ns_run_secondary_script ptr1=byte_8079E62
	ns_set_animation_force_update byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_free_and_end

byte_8079C6B::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x5A
	ns_set_coords hword1=0x0034 hword3=0xFE2C hword5=0x0040
	ns_set_animation byte1=0x2A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x10
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_play_sound hword1=0x00CF
	ns_set_animation byte1=0x2B
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8079C92::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3B
	ns_set_coords hword1=0x0034 hword3=0xFE2C hword5=0x0040
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_set_active_and_visible
	ns_set_animation byte1=0x2B
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x12
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x17
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x18
	ns_wait_cutscene_var byte1=0x08 byte2=0x19
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x1A
	ns_wait_cutscene_var byte1=0x08 byte2=0x25
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x26
	ns_wait_cutscene_var byte1=0x08 byte2=0x33
	ns_pause byte1=0x06
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x3B
	ns_set_animation byte1=0x2A
	ns_set_coords hword1=0x000C hword3=0xFE44 hword5=0x0040
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x42
	ns_jump_with_link destination1=byte_809F6CC

byte_8079CF9::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2C byte2=0x1C
	ns_set_coords hword1=0x000C hword3=0xFE44 hword5=0x0036
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x3B
	ns_set_active_and_visible
	ns_run_secondary_script ptr1=byte_8079E62
	ns_set_animation_force_update byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_set_active_and_invisible
	ns_run_secondary_script ptr1=dword_8079E6C
	ns_write_cutscene_var byte1=0x08 byte2=0x41
	ns_free_and_end

byte_8079D20::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x53
	ns_set_coords hword1=0x000C hword3=0xFE64 hword5=0x0040
	ns_set_animation byte1=0x3E
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x33
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x37
	ns_set_animation byte1=0x2C
	ns_write_cutscene_var byte1=0x08 byte2=0x38
	ns_wait_cutscene_var byte1=0x08 byte2=0x39
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x3A
	ns_wait_cutscene_var byte1=0x08 byte2=0x3B
	ns_set_coords hword1=0x000C hword3=0xFE0C hword5=0x0040
	ns_set_animation byte1=0x3E
	ns_wait_cutscene_var byte1=0x08 byte2=0x3E
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x3F
	ns_wait_cutscene_var byte1=0x08 byte2=0x46
	ns_set_animation byte1=0x2A
	ns_write_cutscene_var byte1=0x08 byte2=0x47
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_8079D6C::
	.word byte_8079D80
	.word byte_8079DAE
	.word byte_8079DC4
	.word byte_8079E45
	.word 0x000000FF
byte_8079D80::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x000C hword3=0xFE3C hword5=0x0040
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x31
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8079DAE::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3B
	ns_set_coords hword1=0x000C hword3=0xFE50 hword5=0x0040
	ns_set_animation byte1=0x2D
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8079DC4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x53
	ns_set_coords hword1=0x000C hword3=0xFE0C hword5=0x0040
	ns_set_animation byte1=0x3C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_play_sound hword1=0x00C7
	ns_set_animation byte1=0x32
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x3C
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_play_sound hword1=0x0135
	ns_set_animation byte1=0x35
	ns_wait_anim_frame byte1=0xC0
	ns_set_coords hword1=0x000C hword3=0xFDEC hword5=0x0040
	ns_pause byte1=0x1E
	ns_play_sound hword1=0x0094
	ns_set_animation byte1=0x39
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x3C
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_clear_unk_flags_60_flag_0x200
	ns_run_secondary_script ptr1=npcscript_8079E17
	ns_move_in_direction byte1=0x07 byte2=0x02 byte3=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_free_and_end

npcscript_8079E17:
	ns_pause_secondary_script byte1=0x40
	ns_set_color_shader hword1=0x18C6
	ns_set_alpha byte1=0x0C
	ns_pause_secondary_script byte1=0x04
	ns_set_color_shader hword1=0x14A5
	ns_set_alpha byte1=0x0A
	ns_pause_secondary_script byte1=0x04
	ns_set_color_shader hword1=0x0C63
	ns_set_alpha byte1=0x08
	ns_pause_secondary_script byte1=0x04
	ns_set_color_shader hword1=0x0842
	ns_set_alpha byte1=0x06
	ns_pause_secondary_script byte1=0x04
	ns_set_color_shader hword1=0x0421
	ns_set_alpha byte1=0x04
	ns_pause_secondary_script byte1=0x04
	ns_set_color_shader hword1=0x0000
	ns_set_alpha byte1=0x02
	ns_pause_secondary_script byte1=0x04
	ns_set_active_and_invisible
	ns_end_secondary_script

byte_8079E45::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2C byte2=0x1C
	ns_set_coords hword1=0x000C hword3=0xFE0C hword5=0x0036
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_run_secondary_script ptr1=byte_8079E62
	ns_set_animation_force_update byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_8079E62::
	ns_play_sound hword1=0x01D7
	ns_pause_secondary_script byte1=0x3B
	ns_jump destination1=byte_8079E62

dword_8079E6C::
	ns_end_secondary_script
	ns_end
	ns_end
	ns_end

npcscript_list_8079E70::
	.word byte_8079E80
	.word byte_8079E9A
	.word byte_8079EB4
	.word 0x000000FF
byte_8079E80::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_to_cur_pet_navi
	ns_set_coords hword1=0x000C hword3=0xFE80 hword5=0x0040
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_jump_with_link destination1=byte_809F6CC

byte_8079E9A::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x59
	ns_set_coords hword1=0x000C hword3=0xFE50 hword5=0x0040
	ns_set_animation byte1=0x1C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_jump_with_link destination1=byte_809F6CC

byte_8079EB4::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x5B
	ns_set_coords hword1=0x000C hword3=0xFE30 hword5=0x0040
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_8079ED0::
	.word byte_8079EDC
	.word byte_8079EFE
	.word 0x000000FF
byte_8079EDC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_to_cur_pet_navi
	ns_set_coords hword1=0x000C hword3=0xFE80 hword5=0x0040
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC

byte_8079EFE::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x5B
	ns_set_coords hword1=0x000C hword3=0xFE40 hword5=0x0040
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x1A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

npcscript_list_8079F18::
	.word byte_8079F28
	.word byte_8079F3D
	.word byte_8079F4F
	.word 0x000000FF
byte_8079F28::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_to_cur_pet_navi
	ns_set_coords hword1=0x000C hword3=0xFE80 hword5=0x0040
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8079F3D::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x59
	ns_set_coords hword1=0x000C hword3=0xFE50 hword5=0x0040
	ns_set_animation byte1=0x1D
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_8079F4F::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x5B
	ns_set_coords hword1=0x000C hword3=0xFE30 hword5=0x0040
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_jump_with_link destination1=byte_809F6CC
	ns_end






