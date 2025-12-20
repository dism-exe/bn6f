
byte_8066560:
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x01220000,
		y: -0x00AC0000,
		z: 0x00000000,
		object_id: 0x00000000,
	]
	.word 0xFF

byte_8066578:
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00220000,
		y: -0x006C0000,
		z: 0x00000000,
		object_id: 0x00000001,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00620000,
		y: -0x00900000,
		z: -0x00400000,
		object_id: 0x0000002B,
	]
	.word 0xFF

off_80665A4: // [*const MapScript; ROBOT_CONTROL_COMP_NUM_MAPS]
	.word byte_80665E8
	.word byte_8066754
off_80665AC: // [*const MapScript; ROBOT_CONTROL_COMP_NUM_MAPS]
	.word byte_8066639
	.word byte_8066807
NPCScriptsRobotControlComp_80665B4: // [*const [*const NPCScript]; ROBOT_CONTROL_COMP_NUM_MAPS]
  .word off_8066988
	.word off_8066E10
off_80665BC:
	.word byte_80665C4
	.word byte_80665D4
byte_80665C4:
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_80665D4:
	.byte 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
dword_80665E4:
	.word 0x1010
byte_80665E8:
	ms_call_native_function ptr1=sub_8083C3C+1 word5=0x00000000
	ms_jump_if_progress_in_range byte1=0x04 byte2=0x04 destination3=byte_80665FD
	ms_jump destination1=byte_8066638

byte_80665FD:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_434 destination4=byte_8066638
	ms_load_gfx_anim ptr1=byte_8140BAC
	ms_load_gfx_anim ptr1=byte_8140BF0
	ms_call_native_function ptr1=clear_8083D7C+1 word5=0x00000000
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_8066634
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_4E9 destination4=byte_8066638
	ms_call_native_function ptr1=sub_8083DC4+1 word5=0x00000000
	ms_jump destination1=byte_8066638

mapscript_8066634:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_4E9

byte_8066638:
	ms_end

byte_8066639:
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=byte_8066645
	ms_jump destination1=dword_8066750

byte_8066645:
	ms_jump_if_progress_in_range byte1=0x04 byte2=0x04 destination3=byte_8066651
	ms_jump destination1=dword_8066750

byte_8066651:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_431 destination4=mapscript_8066673
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_432 destination4=mapscript_8066673
	ms_set_event_flag byte1=0xFF event16_2=EVENT_432
	ms_start_cutscene ptr1=cutscenescript_8082D48 word5=0x00000000
	ms_jump destination1=dword_8066750

mapscript_8066673:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_434 destination4=dword_8066750
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_80666A4
	ms_set_event_flag byte1=0xFF event16_2=EVENT_443
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_443 destination4=mapscript_80666A4
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_444 destination4=mapscript_80666A4
	ms_start_cutscene ptr1=cutscenescript_8083B68 word5=0x00000000
	ms_jump destination1=dword_8066750

mapscript_80666A4:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_445 destination4=byte_80666CA
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_446 destination4=byte_80666CA
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4FF destination4=byte_8066716
	ms_start_cutscene ptr1=cutscenescript_8083A98 word5=0x00000000
	ms_jump destination1=dword_8066750

byte_80666CA:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_447 destination4=mapscript_80666F0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_448 destination4=mapscript_80666F0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4FF destination4=byte_8066716
	ms_start_cutscene ptr1=cutscenescript_80839C8 word5=0x00000000
	ms_jump destination1=dword_8066750

mapscript_80666F0:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_449 destination4=byte_8066716
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_44A destination4=byte_8066716
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4FF destination4=byte_8066716
	ms_start_cutscene ptr1=cutscenescript_80838F8 word5=0x00000000
	ms_jump destination1=dword_8066750

byte_8066716:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_4EA destination4=mapscript_806672C
	ms_start_cutscene ptr1=cutscenescript_8083D04 word5=0x00000000
	ms_jump destination1=dword_8066750

mapscript_806672C:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4E9 destination4=byte_8066742
	ms_call_native_function ptr1=sub_8083C6C+1 word5=0x00000000
	ms_jump destination1=dword_8066750

byte_8066742:
	ms_call_native_function ptr1=sub_8083DF0+1 word5=0x00000000
	ms_jump destination1=dword_8066750

dword_8066750:
	ms_end
	ms_end
	ms_end
	ms_end

byte_8066754:
	ms_call_native_function ptr1=sub_8083C3C+1 word5=0x00000000
	ms_jump_if_progress_in_range byte1=0x04 byte2=0x04 destination3=byte_8066769
	ms_jump destination1=byte_80667A4

byte_8066769:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_43E destination4=byte_80667A4
	ms_load_gfx_anim ptr1=byte_8140BAC
	ms_load_gfx_anim ptr1=byte_8140BF0
	ms_call_native_function ptr1=clear_8083D7C+1 word5=0x00000000
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_80667A0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_4E9 destination4=byte_80667A4
	ms_call_native_function ptr1=sub_8083DC4+1 word5=0x00000000
	ms_jump destination1=byte_80667A4

mapscript_80667A0:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_4E9

byte_80667A4:
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=mapscript_80667B0
	ms_jump destination1=byte_8066806

mapscript_80667B0:
	ms_jump_if_progress_in_range byte1=0x04 byte2=0x04 destination3=mapscript_80667BC
	ms_jump destination1=byte_8066806

mapscript_80667BC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_439 destination4=byte_80667E1
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_43A destination4=byte_80667E1
	ms_set_event_flag byte1=0xFF event16_2=EVENT_43A
	ms_set_enter_map_screen_fade byte1=0x04 byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_808310C word5=0x00000000
	ms_jump destination1=byte_8066806

byte_80667E1:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_43D destination4=byte_8066806
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_43E destination4=byte_8066806
	ms_set_event_flag byte1=0xFF event16_2=EVENT_43E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_8083210 word5=0x00000000
	ms_jump destination1=byte_8066806

byte_8066806:
	ms_end

byte_8066807:
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=mapscript_806681A
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_8066952
	ms_jump destination1=dword_8066984

mapscript_806681A:
	ms_jump_if_progress_in_range byte1=0x04 byte2=0x04 destination3=mapscript_8066826
	ms_jump destination1=dword_8066984

mapscript_8066826:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_806684F
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_435 destination4=mapscript_806684F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_436 destination4=mapscript_806684F
	ms_set_event_flag byte1=0xFF event16_2=EVENT_436
	ms_start_cutscene ptr1=cutscenescript_8082EF8 word5=0x00000000
	ms_jump destination1=dword_8066984

mapscript_806684F:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x11 signedbyte2=0x00 destination3=mapscript_8066878
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_43B destination4=mapscript_8066878
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_43C destination4=mapscript_8066878
	ms_set_event_flag byte1=0xFF event16_2=EVENT_43C
	ms_start_cutscene ptr1=cutscenescript_80831A4 word5=0x00000000
	ms_jump destination1=dword_8066984

mapscript_8066878:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_43E destination4=dword_8066984
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_44B destination4=byte_80668A6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_44C destination4=byte_80668A6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4FF destination4=dword_8066918
	ms_start_cutscene ptr1=cutscenescript_8083828 word5=0x00000000
	ms_jump destination1=dword_8066984

byte_80668A6:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_44D destination4=mapscript_80668CC
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_44E destination4=mapscript_80668CC
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4FF destination4=dword_8066918
	ms_start_cutscene ptr1=cutscenescript_8083758 word5=0x00000000
	ms_jump destination1=dword_8066984

mapscript_80668CC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_44F destination4=byte_80668F2
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_450 destination4=byte_80668F2
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4FF destination4=dword_8066918
	ms_start_cutscene ptr1=cutscenescript_8083688 word5=0x00000000
	ms_jump destination1=dword_8066984

byte_80668F2:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_451 destination4=dword_8066918
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_452 destination4=dword_8066918
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4FF destination4=dword_8066918
	ms_start_cutscene ptr1=cutscenescript_80835B8 word5=0x00000000
	ms_jump destination1=dword_8066984

dword_8066918:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_4EA destination4=byte_806692E
	ms_start_cutscene ptr1=cutscenescript_8083D04 word5=0x00000000
	ms_jump destination1=dword_8066984

byte_806692E:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4E9 destination4=mapscript_8066944
	ms_call_native_function ptr1=sub_8083C6C+1 word5=0x00000000
	ms_jump destination1=dword_8066984

mapscript_8066944:
	ms_call_native_function ptr1=sub_8083DF0+1 word5=0x00000000
	ms_jump destination1=dword_8066984

mapscript_8066952:
	ms_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=mapscript_806695E
	ms_jump destination1=dword_8066984

mapscript_806695E:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_87A destination4=dword_8066984
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_81B destination4=dword_8066984
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_81C destination4=dword_8066984
	ms_start_cutscene ptr1=byte_8098C78 word5=0x00000000
	ms_jump destination1=dword_8066984

dword_8066984:
	ms_end
	ms_end
	ms_end
	ms_end

off_8066988:
	.word dword_80669B0
	.word byte_80669D3
	.word dword_80669F8
	.word byte_8066A1D
	.word byte_8066A4E
	.word byte_8066AA5
	.word byte_8066AB0
	.word byte_8066ABB
	.word byte_8066AC6
	.word 0x000000FF
dword_80669B0:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_446 destination3=byte_80669D2
	ns_set_text_script_index byte1=0x00
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x00A8 hword3=0x010C hword5=0x0000
	ns_set_animation byte1=0x30
	ns_do_not_face_player_when_interacted

npcscript_80669C6:
	.word 0xDC9E1122, 0x020A1021, 0x080669C6
byte_80669D2:
	ns_free_and_end

byte_80669D3:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_448 destination3=npcscript_80669F7
	ns_set_text_script_index byte1=0x01
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0024 hword3=0x0108 hword5=0x0000
	ns_set_animation byte1=0x2F
	ns_do_not_face_player_when_interacted

npcscript_80669E9:
	.word 0x11220310, 0x1021DC9E, 0x69E90205
	.byte 0x06
	.byte 0x08
npcscript_80669F7:
	ns_free_and_end

dword_80669F8:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_44A destination3=byte_8066A1C
	ns_set_text_script_index byte1=0x02
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x00A8 hword3=0xFF10 hword5=0x0000
	ns_set_animation byte1=0x2F
	ns_do_not_face_player_when_interacted

byte_8066A0E:
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x08
	ns_jump destination1=byte_8066A0E

byte_8066A1C:
	ns_free_and_end

byte_8066A1D:
	ns_jump_if_progress_in_range byte1=0x10 byte2=0xFF destination3=byte_8066A4D
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_flag_set event16_1=EVENT_444 destination3=npcscript_8066A3D
	ns_set_coords hword1=0x013A hword3=0xFFA4 hword5=0x0000
	ns_init_movement byte1=0x05 byte2=0x20 byte3=0x05 destination4=npcscript_809F770

npcscript_8066A3D:
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0x0126 hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8066A4D:
	ns_free_and_end

byte_8066A4E:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3E
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_8066AA4
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_8066A8C
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8066A94

npcscript_8066A66:
	ns_jump_if_flag_set event16_1=EVENT_1C24 destination3=npcscript_8066A9C
	ns_jump_if_flag_set event16_1=EVENT_1BE4 destination3=byte_8066A75
	ns_free_and_end

byte_8066A75:
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8066AA4
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0x00C8 hword3=0xFF0A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8066A8C:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_8066A66
	ns_free_and_end

npcscript_8066A94:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_8066A66
	ns_free_and_end

npcscript_8066A9C:
	ns_jump_if_flag_clear event16_1=EVENT_1114 destination3=byte_8066A75
	ns_free_and_end

byte_8066AA4:
	ns_free_and_end

byte_8066AA5:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x14E0
	ns_wait_mystery_data_taken hword1=0x14E0
	ns_free_and_end

byte_8066AB0:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x14E1
	ns_wait_mystery_data_taken hword1=0x14E1
	ns_free_and_end

byte_8066ABB:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x14E2
	ns_wait_mystery_data_taken hword1=0x14E2
	ns_free_and_end

byte_8066AC6:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x14E3
	ns_wait_mystery_data_taken hword1=0x14E3
	ns_free_and_end
	ns_end
	ns_end
	ns_end

npcscript_list_8066AD4::
	.word byte_8066AF0
	.word byte_8066B23
	.word byte_8066AA5
	.word byte_8066AB0
	.word byte_8066ABB
	.word byte_8066AC6
	.word 0x000000FF
byte_8066AF0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0126 hword3=0xFFB6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x18
	ns_write_cutscene_var byte1=0x08 byte2=0x80
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8066B23:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x013A hword3=0xFFA4 hword5=0x0000

npcscript_8066B2E:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x01 destination3=byte_8066B4D
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x05
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x05
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x01 destination3=byte_8066B4D
	ns_jump destination1=npcscript_8066B2E

byte_8066B4D:
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x03
	ns_pause byte1=0x14
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_8066B78::
	.word byte_8066BA0
	.word byte_8066BCF
	.word byte_8066C26
	.word byte_8066C3E
	.word byte_8066C63
	.word byte_8066AA5
	.word byte_8066AB0
	.word byte_8066ABB
	.word byte_8066AC6
	.word 0x000000FF
byte_8066BA0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x00A4 hword3=0x00F0 hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x34
	ns_pause byte1=0x5A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_pause byte1=0x05
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_pause byte1=0x05
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8066BCF:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x00A8 hword3=0x010C hword5=0x0000
	ns_set_animation byte1=0x30

npcscript_8066BDC:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_8066BF6
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_jump destination1=npcscript_8066BDC
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_8066BF6

npcscript_8066BF6:
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x05
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x08
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x08
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_8066C26:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x1A byte2=0x1C
	ns_set_coords hword1=0x00A4 hword3=0x00F0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x011E
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_8066C3E:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_448 destination3=npcscript_8066C62
	ns_set_text_script_index byte1=0x01
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0024 hword3=0x0108 hword5=0x0000
	ns_set_animation byte1=0x2F
	ns_do_not_face_player_when_interacted

npcscript_8066C54:
	ns_pause byte1=0x03
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_jump destination1=npcscript_8066C54

npcscript_8066C62:
	ns_free_and_end

byte_8066C63:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0126 hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_8066C74::
	.word byte_8066C98
	.word byte_8066CCE
	.word byte_8066D25
	.word byte_8066D3D
	.word byte_8066AA5
	.word byte_8066AB0
	.word byte_8066ABB
	.word byte_8066AC6
	.word 0x000000FF
byte_8066C98:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x000E hword3=0x0104 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x33
	ns_pause byte1=0x5A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0x0012 hword3=0x010A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_pause byte1=0x05
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_pause byte1=0x05
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8066CCE:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0024 hword3=0x0108 hword5=0x0000
	ns_set_animation byte1=0x2F

npcscript_8066CDB:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_8066CF5
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_jump destination1=npcscript_8066CDB
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_8066CF5

npcscript_8066CF5:
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x0A
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_8066D25:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x1A byte2=0x1C
	ns_set_coords hword1=0x000E hword3=0x0104 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x011E
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_8066D3D:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0126 hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_8066D50::
	.word byte_8066D74
	.word byte_8066DA3
	.word byte_8066DE5
	.word byte_8066DFD
	.word byte_8066AA5
	.word byte_8066AB0
	.word byte_8066ABB
	.word byte_8066AC6
	.word 0x000000FF
byte_8066D74:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0092 hword3=0xFF08 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x33
	ns_pause byte1=0x5A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0x0092 hword3=0xFF0C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_pause byte1=0x05
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8066DA3:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x00A8 hword3=0xFF10 hword5=0x0000
	ns_set_animation byte1=0x2F

npcscript_8066DB0:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_8066DCA
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_jump destination1=npcscript_8066DB0
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_8066DCA

npcscript_8066DCA:
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x0C
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x03
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_8066DE5:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x1A byte2=0x1C
	ns_set_coords hword1=0x0092 hword3=0xFF08 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x011E
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_8066DFD:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0126 hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

off_8066E10:
	.word dword_8066E38
	.word byte_8066E5D
	.word byte_8066E79
	.word byte_8066E9E
	.word byte_8066EC1
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
dword_8066E38:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_44C destination3=byte_8066E5C
	ns_set_text_script_index byte1=0x00
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0xFEC4 hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_do_not_face_player_when_interacted

byte_8066E4E:
	ns_pause byte1=0x06
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x03
	ns_jump destination1=byte_8066E4E

byte_8066E5C:
	ns_free_and_end

byte_8066E5D:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_44E destination3=npcscript_8066E78
	ns_set_text_script_index byte1=0x01
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x014A hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x2F
	ns_do_not_face_player_when_interacted
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8066E78:
	ns_free_and_end

byte_8066E79:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_450 destination3=npcscript_8066E9D
	ns_set_text_script_index byte1=0x02
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0xFEA2 hword3=0xFFAA hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_do_not_face_player_when_interacted

npcscript_8066E8F:
	.word 0x11220310, 0x1021DC9E, 0x6E8F0205
	.byte 0x06
	.byte 0x08
npcscript_8066E9D:
	ns_free_and_end

byte_8066E9E:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_452 destination3=npcscript_8066EC0
	ns_set_text_script_index byte1=0x03
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0128 hword3=0xFF2E hword5=0x0000
	ns_set_animation byte1=0x30
	ns_do_not_face_player_when_interacted

byte_8066EB4:
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_jump destination1=byte_8066EB4

npcscript_8066EC0:
	ns_free_and_end

byte_8066EC1:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x51
	ns_jump_if_progress_in_range byte1=0x04 byte2=0x04 destination3=npcscript_8066ECB

npcscript_8066ECB:
	ns_jump_if_flag_set event16_1=EVENT_43E destination3=npcscript_8066EE2
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8066EE2:
	ns_free_and_end

byte_8066EE3:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x14E8
	ns_wait_mystery_data_taken hword1=0x14E8
	ns_free_and_end

byte_8066EEE:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x14E9
	ns_wait_mystery_data_taken hword1=0x14E9
	ns_free_and_end

byte_8066EF9:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x14EA
	ns_wait_mystery_data_taken hword1=0x14EA
	ns_free_and_end

byte_8066F04:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x14EB
	ns_wait_mystery_data_taken hword1=0x14EB
	ns_free_and_end
	ns_end

npcscript_list_8066F10::
	.word byte_8066F34
	.word byte_8066F5C
	.word byte_8066F98
	.word byte_8066FB0
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
byte_8066F34:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFEE2 hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x35
	ns_pause byte1=0x5A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_pause byte1=0x14
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8066F5C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0xFEC4 hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x2D

byte_8066F69:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=byte_8066F83
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_jump destination1=byte_8066F69
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=byte_8066F83

byte_8066F83:
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x01
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x12
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_8066F98:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x1A byte2=0x1C
	ns_set_coords hword1=0xFEE2 hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x011E
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_8066FB0:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x51
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_8066FC4::
	.word byte_8066FE8
	.word byte_8067010
	.word byte_806704F
	.word byte_8067067
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
byte_8066FE8:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x012E hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x33
	ns_pause byte1=0x5A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_pause byte1=0x14
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8067010:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x014A hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x2F
	ns_wait_cutscene_var byte1=0x08 byte2=0x80

npcscript_8067020:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_806703A
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_jump destination1=npcscript_8067020
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_806703A

npcscript_806703A:
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x01
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x12
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_806704F:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x1A byte2=0x1C
	ns_set_coords hword1=0x012E hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x011E
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_8067067:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x51
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_806707C::
	.word byte_80670A0
	.word byte_80670D6
	.word byte_8067127
	.word byte_806713F
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
byte_80670A0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFEBC hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x35
	ns_pause byte1=0x5A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFEBC hword3=0xFFAA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_pause byte1=0x05
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_pause byte1=0x05
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80670D6:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0xFEA2 hword3=0xFFAA hword5=0x0000
	ns_set_animation byte1=0x2D

npcscript_80670E3:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_80670FD
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_jump destination1=npcscript_80670E3
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_80670FD

npcscript_80670FD:
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x06
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x0A
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_8067127:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x1A byte2=0x1C
	ns_set_coords hword1=0xFEBC hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x011E
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_806713F:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x51
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_8067154::
	.word byte_8067178
	.word byte_80671AE
	.word byte_8067205
	.word byte_806721D
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
byte_8067178:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0124 hword3=0xFF14 hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x34
	ns_pause byte1=0x5A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0x0128 hword3=0xFF14 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_pause byte1=0x05
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_pause byte1=0x05
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80671AE:
	ns_set_active_and_visible
	ns_disable_collision
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0128 hword3=0xFF2E hword5=0x0000
	ns_set_animation byte1=0x30

npcscript_80671BB:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_80671D5
	ns_give_detatched_shadow
	ns_init_hop byte1=0x9E byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_jump destination1=npcscript_80671BB
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_80671D5

npcscript_80671D5:
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x06
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x08
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x04
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_8067205:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x1A byte2=0x1C
	ns_set_coords hword1=0x0124 hword3=0xFF14 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x011E
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_806721D:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x51
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

off_8067230:
	.word byte_8067268
	.word byte_8067296
	.word byte_80672BA
	.word byte_80672DE
	.word byte_8067302
	.word byte_8067326
	.word byte_806734A
	.word byte_806736E
	.word byte_8067392
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
byte_8067268:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0026 hword3=0x0128 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x31
	ns_jump_with_link destination1=byte_809F6CC

byte_8067296:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x000C hword3=0x00C6 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x18
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_80673B6
	ns_jump_with_link destination1=byte_809F6CC

byte_80672BA:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x0000 hword3=0x00E0 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x40
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_80673B6
	ns_jump_with_link destination1=byte_809F6CC

byte_80672DE:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x000A hword3=0x00F6 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x20
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_80673B6
	ns_jump_with_link destination1=byte_809F6CC

byte_8067302:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x0022 hword3=0x00C0 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x08
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_80673B6
	ns_jump_with_link destination1=byte_809F6CC

byte_8067326:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x0020 hword3=0x0100 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x28
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_80673B6
	ns_jump_with_link destination1=byte_809F6CC

byte_806734A:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x003C hword3=0x00CA hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x30
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_80673B6
	ns_jump_with_link destination1=byte_809F6CC

byte_806736E:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x003E hword3=0x00E0 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x10
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_80673B6
	ns_jump_with_link destination1=byte_809F6CC

byte_8067392:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x003A hword3=0x00F8 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x38
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_80673B6
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80673B6:
	ns_set_color_shader hword1=0x8010
	ns_set_transform byte1=0x00 byte2=0x70 byte3=0x70
	ns_pause_secondary_script byte1=0x02
	ns_set_color_shader hword1=0x8008
	ns_set_transform byte1=0x00 byte2=0x50 byte3=0x50
	ns_pause_secondary_script byte1=0x02
	ns_set_color_shader hword1=0x8004
	ns_set_transform byte1=0x00 byte2=0x30 byte3=0x30
	ns_pause_secondary_script byte1=0x02
	ns_set_color_shader hword1=0x8000
	ns_set_transform byte1=0x00 byte2=0x40 byte3=0x40
	ns_pause_secondary_script byte1=0x02
	ns_remove_transform
	ns_end_secondary_script

npcscript_list_80673DC::
	.word byte_8067414
	.word byte_8067440
	.word byte_806745C
	.word byte_8067478
	.word byte_8067494
	.word byte_80674B0
	.word byte_80674CC
	.word byte_80674E8
	.word byte_8067504
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
byte_8067414:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0026 hword3=0x00E0 hword5=0x0000
	ns_set_animation byte1=0x31
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8067440:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x000C hword3=0x00C6 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x01
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_806745C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x0000 hword3=0x00E0 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x07
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8067478:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x000A hword3=0x00F6 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x04
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8067494:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x0022 hword3=0x00C0 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x07
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_80674B0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x0020 hword3=0x0100 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x03
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_80674CC:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x003C hword3=0x00CA hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x06
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_80674E8:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x003E hword3=0x00E0 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x02
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8067504:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x003A hword3=0x00F8 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x0A
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_free_and_end
	ns_end

off_8067524:
	.word byte_8067540
	.word byte_8067556
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
byte_8067540:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0026 hword3=0xFF74 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8067556:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x51
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_806756C::
	.word byte_80675A0
	.word byte_80675C6
	.word byte_80675DD
	.word byte_80675F7
	.word byte_806760E
	.word byte_806763A
	.word byte_806766C
	.word byte_80676BE
	.word byte_8066EE3
	.word byte_8066EEE
	.word byte_8066EF9
	.word byte_8066F04
	.word 0x000000FF
byte_80675A0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0026 hword3=0xFF74 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x14
	ns_set_animation byte1=0x31
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation_force_update byte1=0x28
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_free_and_end

byte_80675C6:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x0026 hword3=0xFF74 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump destination1=byte_809F880

byte_80675DD:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x51
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation_force_update byte1=0x1B
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_free_and_end

byte_80675F7:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump destination1=byte_809F880

byte_806760E:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x003E hword3=0xFF66 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x03
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_8067698
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_pause byte1=0x03
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_806763A:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x0026 hword3=0xFF60 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x08
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_8067698
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_pause byte1=0x08
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_free_and_end

byte_806766C:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0E byte2=0x1C
	ns_set_coords hword1=0x000E hword3=0xFF64 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x04
	ns_set_active_and_visible
	ns_set_animation byte1=0x00
	ns_play_sound hword1=0x017C
	ns_run_secondary_script ptr1=npcscript_8067698
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_pause byte1=0x04
	ns_play_sound hword1=0x017D
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

npcscript_8067698:
	ns_set_color_shader hword1=0x8010
	ns_set_transform byte1=0x00 byte2=0x70 byte3=0x70
	ns_pause_secondary_script byte1=0x02
	ns_set_color_shader hword1=0x8008
	ns_set_transform byte1=0x00 byte2=0x50 byte3=0x50
	ns_pause_secondary_script byte1=0x02
	ns_set_color_shader hword1=0x8004
	ns_set_transform byte1=0x00 byte2=0x30 byte3=0x30
	ns_pause_secondary_script byte1=0x02
	ns_set_color_shader hword1=0x8000
	ns_set_transform byte1=0x00 byte2=0x40 byte3=0x40
	ns_pause_secondary_script byte1=0x02
	ns_remove_transform
	ns_end_secondary_script

byte_80676BE:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2C byte2=0x1C
	ns_set_coords hword1=0x0026 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation_force_update byte1=0x00
	ns_run_secondary_script ptr1=npcscript_80676DB
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

npcscript_80676DB:
	ns_play_sound hword1=0x01D7
	ns_pause_secondary_script byte1=0x3B
	ns_jump destination1=npcscript_80676DB
	ns_end
	ns_end
	ns_end







