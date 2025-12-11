
byte_806C5D0::
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00280000,
		y: -0x00880000,
		z: -0x00400000,
		object_id: 0x000000CB,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00840000,
		y: -0x001C0000,
		z: -0x00400000,
		object_id: 0x000000CC,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00880000,
		y: -0x00880000,
		z: -0x00400000,
		object_id: 0x000000CD,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00200000,
		y: -0x00200000,
		z: -0x00400000,
		object_id: 0x000000CE,
	]
	map_object_spawn_data_struct [
		index: 0x2D,
		x: 0x00000000,
		y: 0x00000000,
		z: 0x00000000,
		object_id: 0x00000000,
	]
	.word 0xFF

byte_806C638::
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00660000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000010,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00660000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000012,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00FA0000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000011,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00A00000,
		y: -0x00B00000,
		z: -0x00400000,
		object_id: 0x000000D2,
	]
	.word 0xFF

byte_806C68C::
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00A00000,
		y: 0x00100000,
		z: -0x00400000,
		object_id: 0x000000CF,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00660000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000010,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00660000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000012,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00FA0000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000011,
	]
	.word 0xFF

byte_806C6E0::
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00000000,
		y: -0x00B00000,
		z: -0x00400000,
		object_id: 0x000000D0,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00940000,
		y: 0x00660000,
		z: -0x000C0000,
		object_id: 0x00000049,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00660000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000010,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00660000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000012,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00FA0000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000011,
	]
	.word 0xFF

byte_806C748::
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00020000,
		y: 0x000E0000,
		z: -0x00400000,
		object_id: 0x000000D1,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00160000,
		y: -0x00A40000,
		z: -0x000C0000,
		object_id: 0x00000048,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00660000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000010,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00660000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000012,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00FA0000,
		y: -0x00480000,
		z: -0x00400000,
		object_id: 0x00000011,
	]
	.word 0xFF

off_806C7B0:: // [*const MapScript; HOMEPAGES_NUM_MAPS]
  .word byte_806C878
	.word byte_806C8FC
	.word 0x0
	.word byte_806C970
	.word 0x0
	.word byte_806CA6C
	.word byte_806CAE4
off_806C7CC:: // [*const MapScript; HOMEPAGES_NUM_MAPS]
  .word byte_806C8B9
	.word byte_806C93C
	.word 0x0
	.word byte_806C9E8
	.word 0x0
	.word byte_806CAB0
	.word byte_806CAF6
NPCScriptsHomePages_806C7E8:: // [Nullable<*const [*const NPCScript]>]; HOMEPAGES_NUM_MAPS]
  .word off_806CAF8
	.word off_806CCB0
	.word NULL
	.word off_806CDC0
	.word NULL
	.word off_806D22C
	.word off_806D510
off_806C804::
	.word byte_806C820
	.word byte_806C830
	.word 0x0
	.word byte_806C840
	.word 0x0
	.word byte_806C850
	.word byte_806C860
byte_806C820::
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806C830::
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806C840::
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806C850::
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806C860::
	.byte 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806C870::
	.byte 0x13, 0x13, 0x0, 0x13, 0x0, 0x13, 0x13, 0x0
byte_806C878::
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_806C884
	ms_jump destination1=byte_806C8B8

mapscript_806C884:
	ms_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=mapscript_806C890
	ms_jump destination1=byte_806C8B8

mapscript_806C890:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_61B destination4=byte_806C8B8
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_61C destination4=byte_806C8B8
	ms_set_event_flag byte1=0xFF event16_2=EVENT_61C
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_8088514 word5=0x00000000
	ms_jump destination1=byte_806C8B8

byte_806C8B8::
	ms_end

byte_806C8B9::
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=byte_806C8C5
	ms_jump destination1=mapscript_806C8FB

byte_806C8C5::
	ms_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_806C8D1
	ms_jump destination1=mapscript_806C8FB

byte_806C8D1::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_635 destination4=mapscript_806C8FB
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_621 destination4=mapscript_806C8FB
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_622 destination4=mapscript_806C8FB
	ms_set_event_flag byte1=0xFF event16_2=EVENT_622
	ms_start_cutscene ptr1=byte_8088708 word5=0x00000000
	ms_jump destination1=mapscript_806C8FB

mapscript_806C8FB:
	ms_end

byte_806C8FC::
	ms_call_native_function ptr1=reqBBS_setFlags_8140A40+1 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F6
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=byte_806C915
	ms_jump destination1=mapscript_806C93B

byte_806C915::
	ms_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=byte_806C921
	ms_jump destination1=mapscript_806C93B

byte_806C921::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_CD0 destination4=mapscript_806C93B
	ms_write_word ptr1=unk_2011EA8 word5=0x08FF0F02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=mapscript_806C93B

mapscript_806C93B:
	ms_end

byte_806C93C::
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_806C948
	ms_jump destination1=byte_806C96E

mapscript_806C948:
	ms_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=mapscript_806C954
	ms_jump destination1=byte_806C96E

mapscript_806C954:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_CD0 destination4=byte_806C96E
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_806C96E

byte_806C96E::
	ms_end
	ms_end

byte_806C970::
	ms_call_native_function ptr1=reqBBS_setFlags_8140A40+1 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=byte_806C989
	ms_jump destination1=mapscript_806C9AF

byte_806C989::
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=byte_806C995
	ms_jump destination1=mapscript_806C9AF

byte_806C995::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_680 destination4=mapscript_806C9AF
	ms_init_eStruct200a6a0 ptr1=sub_804CBA4+1 ptr5=sub_804CBC0+1 word9=0x00000003
	ms_jump destination1=mapscript_806C9AF

mapscript_806C9AF:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11A2 destination4=mapscript_806C9E7
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_11A2
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=mapscript_806C9D2
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000015
	ms_jump destination1=mapscript_806C9E7

mapscript_806C9D2:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_11A2
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000016
	ms_jump destination1=mapscript_806C9E7

mapscript_806C9E7:
	ms_end

byte_806C9E8::
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_806C9F4
	ms_jump destination1=dword_806CA54

mapscript_806C9F4:
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=mapscript_806CA00
	ms_jump destination1=dword_806CA54

mapscript_806CA00:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_646 destination4=byte_806CA2A
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_66E destination4=byte_806CA2A
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_66F destination4=byte_806CA2A
	ms_set_event_flag byte1=0xFF event16_2=EVENT_66F
	ms_start_cutscene ptr1=cutscenescript_8088DC8 word5=0x00000000
	ms_jump destination1=dword_806CA54

byte_806CA2A::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_67C destination4=dword_806CA54
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_678 destination4=dword_806CA54
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_679 destination4=dword_806CA54
	ms_set_event_flag byte1=0xFF event16_2=EVENT_679
	ms_start_cutscene ptr1=cutscenescript_8088F1C word5=0x00000000
	ms_jump destination1=dword_806CA54

dword_806CA54::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11A2 destination4=byte_806CA6A
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00CD
	ms_jump destination1=byte_806CA6A

byte_806CA6A::
	ms_end
	ms_end

byte_806CA6C::
	ms_call_native_function ptr1=reqBBS_setFlags_8140A40+1 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16C0
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=byte_806CA89
	ms_jump destination1=mapscript_806CAAF

byte_806CA89::
	ms_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=byte_806CA95
	ms_jump destination1=mapscript_806CAAF

byte_806CA95::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_863 destination4=mapscript_806CAAF
	ms_write_word ptr1=unk_2011EA8 word5=0x08FF0002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=mapscript_806CAAF

mapscript_806CAAF:
	ms_end

byte_806CAB0::
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_806CABC
	ms_jump destination1=byte_806CAE2

mapscript_806CABC:
	ms_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=mapscript_806CAC8
	ms_jump destination1=byte_806CAE2

mapscript_806CAC8:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_863 destination4=byte_806CAE2
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_806CAE2

byte_806CAE2::
	ms_end
	ms_end

byte_806CAE4::
	ms_call_native_function ptr1=reqBBS_setFlags_8140A40+1 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16C1
	ms_end

byte_806CAF6::
	ms_end
	ms_end

off_806CAF8::
	.word byte_806CB04
	.word byte_806CB17
	.word 0x000000FF
byte_806CB04::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0xFFAC hword3=0xFFD8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806CB17::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x37
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=npcscript_806CB22
	ns_free_and_end

npcscript_806CB22:
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0x0016 hword3=0xFFF2 hword5=0x0000
	ns_set_animation byte1=0x3D
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_806CB38:
	.word byte_806CB40
	.word 0x000000FF
byte_806CB40::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x000A hword3=0xFFF6 hword5=0x0000
	ns_set_animation byte1=0x3D
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_run_secondary_script ptr1=npcscript_806CB6D
	ns_set_animation byte1=0x3E
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_run_secondary_script ptr1=npcscript_806CB77
	ns_set_animation byte1=0x3D
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806CB6D:
	ns_play_sound hword1=0x019A
	ns_pause_secondary_script byte1=0x10
	ns_jump destination1=npcscript_806CB6D

npcscript_806CB77:
	ns_end_secondary_script

npcscript_list_806CB78::
	.word byte_806CB90
	.word byte_806CBE2
	.word byte_806CC2F
	.word byte_806CC70
	.word byte_806CC87
	.word 0x000000FF
byte_806CB90::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x000A hword3=0xFFF6 hword5=0x0000
	ns_set_animation byte1=0x3D
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x3E
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x2B
	ns_run_secondary_script ptr1=byte_809F889
	ns_pause byte1=0x1E
	ns_run_secondary_script ptr1=npcscript_809F897
	ns_pause byte1=0x14
	ns_run_secondary_script ptr1=byte_809F8A5
	ns_pause byte1=0x3C
	ns_play_sound hword1=0x008E
	ns_run_secondary_script ptr1=byte_809F8B3
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x3F
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_jump_with_link destination1=byte_809F6CC

byte_806CBE2::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x59
	ns_set_coords hword1=0x000A hword3=0xFFF6 hword5=0x0000
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x1A
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x90
	ns_set_animation byte1=0x1A
	ns_write_cutscene_var byte1=0x08 byte2=0x91
	ns_wait_cutscene_var byte1=0x08 byte2=0x92
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_run_secondary_script ptr1=npcscript_809F8B4
	ns_pause byte1=0x1E
	ns_run_secondary_script ptr1=npcscript_809F8BF
	ns_pause byte1=0x14
	ns_run_secondary_script ptr1=byte_809F8CA
	ns_pause byte1=0x3C
	ns_run_secondary_script ptr1=npcscript_809F8D5
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_free_and_end

byte_806CC2F::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x48
	ns_set_coords hword1=0xFFEA hword3=0xFFF6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_animation_force_update byte1=0x22
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x10
	ns_free_and_end

byte_806CC70::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0xFFEA hword3=0xFFF6 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_jump destination1=byte_809F880

byte_806CC87::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2C byte2=0x1C
	ns_set_coords hword1=0xFFE8 hword3=0xFFF6 hword5=0xFFF6
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_active_and_visible
	ns_run_secondary_script ptr1=npcscript_806CCA5
	ns_set_animation_force_update byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_free_and_end

npcscript_806CCA5:
	ns_play_sound hword1=0x01D7
	ns_pause_secondary_script byte1=0x3B
	ns_jump destination1=npcscript_806CCA5
	ns_end

off_806CCB0::
	.word byte_806CCD0
	.word npcscript_806CCF3
	.word byte_806CD16
	.word byte_806CD29
	.word byte_806CD6D
	.word byte_806CDAA
	.word byte_806CDB5
	.word 0x000000FF
byte_806CCD0::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x38
	ns_jump_if_flag_set event16_1=EVENT_C14 destination3=npcscript_806CCF2
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=npcscript_806CCE2
	ns_free_and_end

npcscript_806CCE2:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x009C hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806CCF2:
	ns_free_and_end

npcscript_806CCF3:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x41
	ns_jump_if_progress_in_range byte1=0x60 byte2=0xFF destination3=npcscript_806CCFE
	ns_free_and_end

npcscript_806CCFE:
	ns_jump_if_flag_clear event16_1=EVENT_112E destination3=npcscript_806CD15
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0x0042 hword3=0x0072 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806CD15:
	ns_free_and_end

byte_806CD16::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0xFF9A hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806CD29::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x52 byte2=0xFF destination3=npcscript_806CD32
	ns_free_and_end

npcscript_806CD32:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806CD6C
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806CD6C
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806CD6C
	ns_jump_if_flag_set event16_1=EVENT_1E7 destination3=byte_806CD6C
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0x007A hword3=0xFF9C hword5=0x0000
	ns_set_animation byte1=0x03

byte_806CD5B::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_1E7 destination3=byte_806CD5B
	ns_set_event_flag event16_1=EVENT_90
	ns_disable_npc_interaction
	ns_set_animation byte1=0x26
	ns_wait_anim_frame byte1=0xC0

byte_806CD6C::
	ns_free_and_end

byte_806CD6D::
	ns_jump_if_progress_in_range byte1=0x52 byte2=0xFF destination3=byte_806CD75
	ns_free_and_end

byte_806CD75::
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806CDA9
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806CDA9
	ns_jump_if_flag_set event16_1=EVENT_1E7 destination3=byte_806CDA9
	ns_set_active_and_invisible
	ns_disable_npc_interaction
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x007A hword3=0xFF9C hword5=0x0000

npcscript_806CD96:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_90 destination3=npcscript_806CD96
	ns_clear_event_flag event16_1=EVENT_90
	ns_set_active_and_visible
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x05

byte_806CDA9::
	ns_free_and_end

byte_806CDAA::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x15C4
	ns_wait_mystery_data_taken hword1=0x15C4
	ns_free_and_end

byte_806CDB5::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x15C5
	ns_wait_mystery_data_taken hword1=0x15C5
	ns_free_and_end

off_806CDC0::
	.word byte_806CDF0
	.word dword_806CE60
	.word byte_806CE8A
	.word byte_806CEAD
	.word byte_806CF18
	.word byte_806CFC6
	.word byte_806D056
	.word byte_806D087
	.word byte_806D0E9
	.word byte_806D144
	.word npcscript_806D14F
	.word 0x000000FF
byte_806CDF0::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=npcscript_806CE3F
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=npcscript_806CE02
	ns_free_and_end

npcscript_806CE02:
	ns_jump_if_flag_set event16_1=EVENT_679 destination3=npcscript_806CE5F
	ns_jump_if_flag_set event16_1=EVENT_677 destination3=byte_806CE2F
	ns_jump_if_flag_set event16_1=EVENT_66F destination3=npcscript_806CE5F
	ns_jump_if_flag_set event16_1=EVENT_66D destination3=npcscript_806CE1F
	ns_free_and_end

npcscript_806CE1F:
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0x005E hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_806CE2F::
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0x005E hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806CE3F:
	ns_jump_if_flag_clear event16_1=EVENT_857 destination3=npcscript_806CE5F
	ns_jump_if_flag_set event16_1=EVENT_859 destination3=npcscript_806CE5F
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x34
	ns_set_coords hword1=0x0040 hword3=0xFF74 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806CE5F:
	ns_free_and_end

dword_806CE60::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=byte_806CE69
	ns_free_and_end

byte_806CE69::
	ns_jump_if_flag_clear event16_1=EVENT_857 destination3=byte_806CE89
	ns_jump_if_flag_set event16_1=EVENT_859 destination3=byte_806CE89
	ns_set_sprite byte1=0x46
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x005C hword3=0xFF74 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806CE89::
	ns_free_and_end

byte_806CE8A::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3E
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=byte_806CEAC
	ns_jump_if_progress_in_range byte1=0x10 byte2=0xFF destination3=npcscript_806CE9C
	ns_free_and_end

npcscript_806CE9C:
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0xFF9C hword3=0xFF72 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806CEAC::
	ns_free_and_end

byte_806CEAD::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x40
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_806CF17
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_806CF07
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806CF0F

npcscript_806CEC5:
	ns_jump_if_flag_set event16_1=EVENT_1C27 destination3=byte_806CF17
	ns_jump_if_flag_set event16_1=EVENT_1BE7 destination3=npcscript_806CED4
	ns_free_and_end

npcscript_806CED4:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806CF17
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_806CF17
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_806CF17
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806CF17
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806CF17
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x004A hword3=0xFF8A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806CF07:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806CEC5
	ns_free_and_end

npcscript_806CF0F:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806CEC5
	ns_free_and_end

byte_806CF17::
	ns_free_and_end

byte_806CF18::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x43
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_806CFC5
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_806CFB6
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=byte_806CFBE

npcscript_806CF30:
	ns_jump_if_flag_set event16_1=EVENT_1C27 destination3=byte_806CFC5
	ns_jump_if_flag_set event16_1=EVENT_1BE7 destination3=npcscript_806CF3F
	ns_free_and_end

npcscript_806CF3F:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806CFC5
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_806CFC5
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_806CFC5
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806CFC5
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806CFC5
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0E
	ns_set_coords hword1=0x007C hword3=0xFF94 hword5=0x0000
	ns_set_animation byte1=0x07

npcscript_806CF6D:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11A0 destination3=npcscript_806CF6D
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0E
	ns_set_coords hword1=0x007C hword3=0xFF94 hword5=0x0000
	ns_set_animation byte1=0x07

npcscript_806CF82:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_1217 destination3=npcscript_806CF82
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0E
	ns_set_coords hword1=0x007C hword3=0xFF94 hword5=0x0000
	ns_set_animation byte1=0x2D

npcscript_806CF96:
	ns_jump_if_flag_clear event16_1=EVENT_1217 destination3=npcscript_806CF3F
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11A3 destination3=npcscript_806CF96
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0E
	ns_set_coords hword1=0x007C hword3=0xFF94 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806CFB6:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806CF30
	ns_free_and_end

byte_806CFBE::
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806CF30

byte_806CFC5::
	ns_free_and_end

byte_806CFC6::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x45
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_806D055
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_806D046
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D04E

npcscript_806CFDE:
	ns_jump_if_flag_set event16_1=EVENT_1C27 destination3=byte_806D055
	ns_jump_if_flag_set event16_1=EVENT_11A2 destination3=byte_806D036
	ns_jump_if_flag_set event16_1=EVENT_1BE7 destination3=npcscript_806CFF4
	ns_free_and_end

npcscript_806CFF4:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806D055
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_806D055
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_806D055
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D055
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D055
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x15
	ns_set_coords hword1=0x007C hword3=0xFF78 hword5=0x0000
	ns_set_animation byte1=0x03

byte_806D022::
	ns_jump_if_flag_set event16_1=EVENT_11A0 destination3=npcscript_806D030
	ns_pause byte1=0x01
	ns_jump destination1=byte_806D022

npcscript_806D030:
	ns_do_not_face_player_when_interacted
	ns_jump_with_link destination1=byte_809F6CC

byte_806D036::
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x15
	ns_set_coords hword1=0x007C hword3=0xFF78 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806D046:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806CFDE
	ns_free_and_end

npcscript_806D04E:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806CFDE

byte_806D055::
	ns_free_and_end

byte_806D056::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=npcscript_806D066
	ns_jump_if_progress_in_range byte1=0x10 byte2=0xFF destination3=npcscript_806D074
	ns_free_and_end

npcscript_806D066:
	ns_jump_if_flag_set event16_1=EVENT_679 destination3=npcscript_806D074
	ns_jump_if_flag_set event16_1=EVENT_66F destination3=byte_806D086

npcscript_806D074:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x1E
	ns_set_coords hword1=0x007C hword3=0xFFCC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806D086::
	ns_free_and_end

byte_806D087::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_806D0D9
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D0E1

byte_806D096::
	ns_jump_if_progress_in_range byte1=0x30 byte2=0xFF destination3=npcscript_806D09E
	ns_free_and_end

npcscript_806D09E:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=dword_806D0D8
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=dword_806D0D8
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=dword_806D0D8
	ns_jump_if_flag_set event16_1=EVENT_1E4 destination3=dword_806D0D8
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x28
	ns_set_coords hword1=0x0084 hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x05

byte_806D0C7::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_1E4 destination3=byte_806D0C7
	ns_set_event_flag event16_1=EVENT_90
	ns_disable_npc_interaction
	ns_set_animation byte1=0x26
	ns_wait_anim_frame byte1=0xC0

dword_806D0D8::
	ns_free_and_end

npcscript_806D0D9:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=byte_806D096
	ns_free_and_end

npcscript_806D0E1:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=byte_806D096
	ns_free_and_end

byte_806D0E9::
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=byte_806D134
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D13C

npcscript_806D0F7:
	ns_jump_if_progress_in_range byte1=0x30 byte2=0xFF destination3=npcscript_806D0FF
	ns_free_and_end

npcscript_806D0FF:
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D133
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D133
	ns_jump_if_flag_set event16_1=EVENT_1E4 destination3=byte_806D133
	ns_set_active_and_invisible
	ns_disable_npc_interaction
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x0084 hword3=0x0052 hword5=0x0000

npcscript_806D120:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_90 destination3=npcscript_806D120
	ns_clear_event_flag event16_1=EVENT_90
	ns_set_active_and_visible
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x05

byte_806D133::
	ns_free_and_end

byte_806D134::
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806D0F7
	ns_free_and_end

npcscript_806D13C:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806D0F7
	ns_free_and_end

byte_806D144::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x15CC
	ns_wait_mystery_data_taken hword1=0x15CC
	ns_free_and_end

npcscript_806D14F:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x15CD
	ns_wait_mystery_data_taken hword1=0x15CD
	ns_free_and_end
	ns_end
	ns_end

npcscript_806D15C:
	.word byte_806D16C
	.word npcscript_806D187
	.word byte_806D1B3
	.word 0x000000FF
byte_806D16C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x48
	ns_set_coords hword1=0x0046 hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806D187:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0x005E hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01

npcscript_806D198:
	ns_set_animation byte1=0x03
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x05
	ns_pause byte1=0x0A
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x01 destination3=npcscript_806D198
	ns_write_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation_force_update byte1=0x26
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_free_and_end

byte_806D1B3::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x005E hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump destination1=byte_809F880
	ns_end
	ns_end

npcscript_806D1CC:
	.word byte_806D1DC
	.word byte_806D1FE
	.word byte_806D215
	.word 0x000000FF
byte_806D1DC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x48
	ns_set_coords hword1=0x0046 hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation_force_update byte1=0x25
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_free_and_end

byte_806D1FE::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x0046 hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump destination1=byte_809F880

byte_806D215::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0x005E hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

off_806D22C::
	.word byte_806D25C
	.word byte_806D2A6
	.word byte_806D2F2
	.word byte_806D33E
	.word byte_806D3A9
	.word byte_806D414
	.word byte_806D427
	.word byte_806D489
	.word byte_806D4E4
	.word byte_806D4F7
	.word byte_806D502
	.word 0x000000FF
byte_806D25C::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x41
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x33 destination3=npcscript_806D267
	ns_free_and_end

npcscript_806D267:
	ns_jump_if_flag_set event16_1=EVENT_872 destination3=npcscript_806D295
	ns_jump_if_flag_set event16_1=EVENT_864 destination3=npcscript_806D285
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x007E hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806D285:
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x007E hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806D295:
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0x007E hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_806D2A6::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3E
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x33 destination3=byte_806D2B1
	ns_free_and_end

byte_806D2B1::
	ns_jump_if_flag_set event16_1=EVENT_872 destination3=byte_806D2E0
	ns_jump_if_flag_set event16_1=EVENT_864 destination3=npcscript_806D2D0
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x07
	ns_set_coords hword1=0x005E hword3=0xFFE2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806D2D0:
	ns_set_text_script_index byte1=0x08
	ns_set_coords hword1=0x005E hword3=0xFFE2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_806D2E0::
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x07
	ns_set_coords hword1=0x005E hword3=0xFFE2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_806D2F2::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x40
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x33 destination3=byte_806D2FD
	ns_free_and_end

byte_806D2FD::
	ns_jump_if_flag_set event16_1=EVENT_872 destination3=byte_806D32C
	ns_jump_if_flag_set event16_1=EVENT_864 destination3=npcscript_806D31C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x07
	ns_set_coords hword1=0x005E hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806D31C:
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0x005E hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806D32C::
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x07
	ns_set_coords hword1=0x005E hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_806D33E::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x40
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_806D3A8
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_806D398
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D3A0

npcscript_806D356:
	ns_jump_if_flag_set event16_1=EVENT_1C2A destination3=byte_806D3A8
	ns_jump_if_flag_set event16_1=EVENT_1BEA destination3=byte_806D365
	ns_free_and_end

byte_806D365::
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806D3A8
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_806D3A8
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_806D3A8
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D3A8
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D3A8
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x0066 hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806D398:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806D356
	ns_free_and_end

npcscript_806D3A0:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806D356
	ns_free_and_end

byte_806D3A8::
	ns_free_and_end

byte_806D3A9::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_806D413
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=byte_806D403
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D40B

npcscript_806D3BF:
	ns_jump_if_flag_set event16_1=EVENT_1C42 destination3=byte_806D413
	ns_jump_if_flag_set event16_1=EVENT_1C02 destination3=npcscript_806D3CE
	ns_free_and_end

npcscript_806D3CE:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806D413
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_806D413
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_806D413
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D413
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D413
	ns_set_sprite byte1=0x42
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0x003C hword3=0xFF74 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806D403::
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806D3BF
	ns_free_and_end

npcscript_806D40B:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806D3BF
	ns_free_and_end

byte_806D413::
	ns_free_and_end

byte_806D414::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x05
	ns_set_coords hword1=0xFFBE hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806D427::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_806D479
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D481

byte_806D436::
	ns_jump_if_progress_in_range byte1=0x40 byte2=0xFF destination3=npcscript_806D43E
	ns_free_and_end

npcscript_806D43E:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=dword_806D478
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=dword_806D478
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=dword_806D478
	ns_jump_if_flag_set event16_1=EVENT_1E5 destination3=dword_806D478
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x1E
	ns_set_coords hword1=0xFF9C hword3=0xFF74 hword5=0x0000
	ns_set_animation byte1=0x03

byte_806D467::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_1E5 destination3=byte_806D467
	ns_set_event_flag event16_1=EVENT_90
	ns_disable_npc_interaction
	ns_set_animation byte1=0x26
	ns_wait_anim_frame byte1=0xC0

dword_806D478::
	ns_free_and_end

npcscript_806D479:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=byte_806D436
	ns_free_and_end

npcscript_806D481:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=byte_806D436
	ns_free_and_end

byte_806D489::
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=byte_806D4D4
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D4DC

npcscript_806D497:
	ns_jump_if_progress_in_range byte1=0x40 byte2=0xFF destination3=npcscript_806D49F
	ns_free_and_end

npcscript_806D49F:
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D4D3
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D4D3
	ns_jump_if_flag_set event16_1=EVENT_1E5 destination3=byte_806D4D3
	ns_set_active_and_invisible
	ns_disable_npc_interaction
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0xFF9C hword3=0xFF74 hword5=0x0000

npcscript_806D4C0:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_90 destination3=npcscript_806D4C0
	ns_clear_event_flag event16_1=EVENT_90
	ns_set_active_and_visible
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x05

byte_806D4D3::
	ns_free_and_end

byte_806D4D4::
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806D497
	ns_free_and_end

npcscript_806D4DC:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806D497
	ns_free_and_end

byte_806D4E4::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x41
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x28
	ns_set_coords hword1=0xFFDC hword3=0xFF72 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806D4F7::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x15D4
	ns_wait_mystery_data_taken hword1=0x15D4
	ns_free_and_end

byte_806D502::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x15D5
	ns_wait_mystery_data_taken hword1=0x15D5
	ns_free_and_end
	ns_end
	ns_end
	ns_end

off_806D510::
	.word byte_806D530
	.word byte_806D576
	.word byte_806D5C4
	.word byte_806D5DA
	.word byte_806D63C
	.word byte_806D697
	.word byte_806D6A2
	.word 0x000000FF
byte_806D530::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x43
	ns_jump_if_flag_set event16_1=EVENT_1C32 destination3=byte_806D575
	ns_jump_if_flag_set event16_1=EVENT_1BF2 destination3=npcscript_806D542
	ns_free_and_end

npcscript_806D542:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806D575
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_806D575
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_806D575
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D575
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D575
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0x003C hword3=0xFF70 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806D575::
	ns_free_and_end

byte_806D576::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x45
	ns_jump_if_flag_set event16_1=EVENT_1C32 destination3=byte_806D5C3
	ns_jump_if_flag_set event16_1=EVENT_1BF2 destination3=npcscript_806D588
	ns_free_and_end

npcscript_806D588:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806D5C3
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_806D5C3
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_806D5C3
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D5C3
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D5C3
	ns_jump_if_flag_clear event16_1=EVENT_1153 destination3=byte_806D5C3
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x06
	ns_set_coords hword1=0x003C hword3=0xFF8A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_806D5C3::
	ns_free_and_end

byte_806D5C4::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0xFFBE hword3=0xFF92 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x09 destination4=byte_809F6EC

byte_806D5DA::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_806D62C
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D634

npcscript_806D5E9:
	ns_jump_if_progress_in_range byte1=0x40 byte2=0xFF destination3=byte_806D5F1
	ns_free_and_end

byte_806D5F1::
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_806D62B
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D62B
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D62B
	ns_jump_if_flag_set event16_1=EVENT_1E6 destination3=byte_806D62B
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0xFF9C hword3=0x0032 hword5=0x0000
	ns_set_animation byte1=0x07

npcscript_806D61A:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_1E6 destination3=npcscript_806D61A
	ns_set_event_flag event16_1=EVENT_90
	ns_disable_npc_interaction
	ns_set_animation byte1=0x26
	ns_wait_anim_frame byte1=0xC0

byte_806D62B::
	ns_free_and_end

npcscript_806D62C:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806D5E9
	ns_free_and_end

npcscript_806D634:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806D5E9
	ns_free_and_end

byte_806D63C::
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_806D687
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806D68F

npcscript_806D64A:
	ns_jump_if_progress_in_range byte1=0x40 byte2=0xFF destination3=npcscript_806D652
	ns_free_and_end

npcscript_806D652:
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_806D686
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_806D686
	ns_jump_if_flag_set event16_1=EVENT_1E6 destination3=byte_806D686
	ns_set_active_and_invisible
	ns_disable_npc_interaction
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0xFF9C hword3=0x0032 hword5=0x0000

byte_806D673::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_90 destination3=byte_806D673
	ns_clear_event_flag event16_1=EVENT_90
	ns_set_active_and_visible
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x05

byte_806D686::
	ns_free_and_end

npcscript_806D687:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_806D64A
	ns_free_and_end

npcscript_806D68F:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_806D64A
	ns_free_and_end

byte_806D697::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x15D8
	ns_wait_mystery_data_taken hword1=0x15D8
	ns_free_and_end

byte_806D6A2::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x15D9
	ns_wait_mystery_data_taken hword1=0x15D9
	ns_free_and_end
	ns_end
	ns_end
	ns_end








