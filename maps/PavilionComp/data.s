
byte_806AD2C:
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x01040000,
		y: -0x01600000,
		z: 0x00080000,
		object_id: 0x0000002D,
	]
	.word 0xFF

byte_806AD44:
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00B20000,
		y: -0x02020000,
		z: -0x00400000,
		object_id: 0x00000030,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x001E0000,
		y: 0x012C0000,
		z: 0x00000000,
		object_id: 0x0000002E,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00220000,
		y: 0x000C0000,
		z: 0x00000000,
		object_id: 0x0000002F,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x007E0000,
		y: -0x00920000,
		z: 0x00000000,
		object_id: 0x00000030,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00020000,
		y: -0x01B20000,
		z: 0x00000000,
		object_id: 0x00000031,
	]
	.word 0xFF

byte_806ADAC:
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x001C0000,
		y: -0x01A60000,
		z: -0x00400000,
		object_id: 0x00000031,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x00500000,
		y: -0x019C0000,
		z: -0x000C0000,
		object_id: 0x00000032,
	]
	.word 0xFF

byte_806ADD8:
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x01120000,
		y: -0x01A20000,
		z: -0x00400000,
		object_id: 0x00000032,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00F00000,
		y: -0x01660000,
		z: 0x00000000,
		object_id: 0x00000033,
	]
	.word 0xFF

dword_806AE04:

	.word 0xFF

off_806AE08: // [*const MapScript; PAVILION_COMP_NUM_MAPS]
	.word dword_806AEB0
	.word byte_806AF3C
	.word byte_806AFF0
	.word byte_806B10C
	.word byte_806B268
off_806AE1C: // [*const MapScript; PAVILION_COMP_NUM_MAPS]
  .word dword_806AED0
	.word MapScript_806AF9A
	.word byte_806B0B5
	.word byte_806B1E3
	.word byte_806B2AC
NPCScriptsPvavilionComp_806AE30: // [*const [*const NPCScript]; PAVILION_COMP_NUM_MAPS]
  .word off_806B310
	.word off_806B6B8
	.word off_806B83C
	.word off_806B940
	.word dword_806BD14
off_806AE44:
	.word byte_806AE58
	.word byte_806AE68
	.word byte_806AE78
	.word byte_806AE88
	.word byte_806AE98
byte_806AE58:
	.byte 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806AE68:
	.byte 0x0, 0x1, 0x2, 0x3, 0x4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806AE78:
	.byte 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806AE88:
	.byte 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806AE98:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806AEA8:
	.byte 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0
dword_806AEB0:
	ms_jump_if_flag_range_set byte1=0x03 event16_2=EVENT_FC2 destination4=byte_806AEC6
	ms_call_native_function ptr1=sub_8086DF8+1 word5=0x00000000
	ms_jump destination1=mapscript_806AECF

byte_806AEC6:
	ms_call_native_function ptr1=sub_8086E70+1 word5=0x00000000

mapscript_806AECF:
	ms_end

dword_806AED0:
	ms_jump_if_flag_range_set byte1=0x03 event16_2=EVENT_FC2 destination4=byte_806AEE1
	ms_call_native_function ptr1=sub_8086EA8+1 word5=0x00000000

byte_806AEE1:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=byte_806AEED
	ms_jump destination1=mapscript_806AF39

byte_806AEED:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=byte_806AEF9
	ms_jump destination1=mapscript_806AF39

byte_806AEF9:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E29 destination4=mapscript_806AF1B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E2A destination4=mapscript_806AF1B
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E2A
	ms_start_cutscene ptr1=cutscenescript_80950E0 word5=0x00000000
	ms_jump destination1=mapscript_806AF39

mapscript_806AF1B:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E67 destination4=mapscript_806AF39
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E2C destination4=mapscript_806AF39
	ms_start_cutscene ptr1=byte_8098CA2 word5=0x00000003
	ms_jump destination1=mapscript_806AF39

mapscript_806AF39:
	ms_end
	ms_end
	ms_end

byte_806AF3C:
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806AF50
	ms_call_native_function ptr1=sub_808CAD4+1 word5=0x00000000
	ms_jump destination1=byte_806AF59

mapscript_806AF50:
	ms_call_native_function ptr1=sub_808CA68+1 word5=0x00000000

byte_806AF59:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=byte_806AF65
	ms_jump destination1=mapscript_806AF99

byte_806AF65:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=byte_806AF71
	ms_jump destination1=mapscript_806AF99

byte_806AF71:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E31 destination4=mapscript_806AF99
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E32 destination4=mapscript_806AF99
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E32
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8095434 word5=0x00000000
	ms_jump destination1=mapscript_806AF99

mapscript_806AF99:
	ms_end

MapScript_806AF9A::
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_806AFA6
	ms_jump destination1=mapscript_806AFEC

mapscript_806AFA6:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=mapscript_806AFB2
	ms_jump destination1=mapscript_806AFEC

mapscript_806AFB2:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_806AFDB
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E2F destination4=mapscript_806AFDB
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E30 destination4=mapscript_806AFEC
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E30
	ms_start_cutscene ptr1=cutscenescript_80953C8 word5=0x00000000
	ms_jump destination1=mapscript_806AFEC

mapscript_806AFDB:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_FC5 destination4=mapscript_806AFEC
	ms_call_native_function ptr1=sub_808CB0C+1 word5=0x00000000

mapscript_806AFEC:
	ms_end
	ms_end
	ms_end
	ms_end

byte_806AFF0:
	ms_jump_if_current_navi_not_equal byte1=0x00 destination2=mapscript_806AFFF
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_jump destination1=mapscript_806B00C

mapscript_806AFFF:
	ms_write_word ptr1=unk_2011EB4 word5=0x08030202
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5

mapscript_806B00C:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x7F destination3=mapscript_806B018
	ms_jump destination1=byte_806B074

mapscript_806B018:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_FD2 destination4=byte_806B058
	ms_terminate_gfx_anim byte1=0x01
	ms_init_eStruct200a6a0 ptr1=sub_804CD20+1 ptr5=unk_804CD3D word9=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_BE0 destination4=mapscript_806B046
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806B046
	ms_set_event_flag byte1=0xFF event16_2=EVENT_BFB
	ms_jump destination1=mapscript_806B04A

mapscript_806B046:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_BFB

mapscript_806B04A:
	ms_call_native_function ptr1=sub_808FDC0+1 word5=0x00000000
	ms_jump destination1=byte_806B074

byte_806B058:
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_806B067
	ms_set_event_flag byte1=0xFF event16_2=EVENT_BFB
	ms_jump destination1=mapscript_806B06B

mapscript_806B067:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_BFB

mapscript_806B06B:
	ms_call_native_function ptr1=sub_808FE34+1 word5=0x00000000

byte_806B074:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_806B080
	ms_jump destination1=byte_806B0B4

mapscript_806B080:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=mapscript_806B08C
	ms_jump destination1=byte_806B0B4

mapscript_806B08C:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E39 destination4=byte_806B0B4
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E3A destination4=byte_806B0B4
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E3A
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8095948 word5=0x00000000
	ms_jump destination1=byte_806B0B4

byte_806B0B4:
	ms_end

byte_806B0B5:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x7F destination3=byte_806B0C1
	ms_jump destination1=mapscript_806B0CA

byte_806B0C1:
	ms_call_native_function ptr1=sub_808FE74+1 word5=0x00000000

mapscript_806B0CA:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_806B0D6
	ms_jump destination1=mapscript_806B10B

mapscript_806B0D6:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=mapscript_806B0E2
	ms_jump destination1=mapscript_806B10B

mapscript_806B0E2:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_806B10B
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E37 destination4=mapscript_806B10B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E38 destination4=mapscript_806B10B
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E38
	ms_start_cutscene ptr1=cutscenescript_80958E0 word5=0x00000000
	ms_jump destination1=mapscript_806B10B

mapscript_806B10B:
	ms_end

byte_806B10C:
	ms_call_native_function ptr1=sub_8083C3C+1 word5=0x00000000
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=byte_806B121
	ms_jump destination1=byte_806B1E2

byte_806B121:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=byte_806B12D
	ms_jump destination1=byte_806B1E2

byte_806B12D:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E41 destination4=mapscript_806B155
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E42 destination4=byte_806B1E2
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E42
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8095CD8 word5=0x00000000
	ms_jump destination1=byte_806B1E2

mapscript_806B155:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_FDF destination4=byte_806B1AF
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=mapscript_806B1A6
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_FE0 destination4=mapscript_806B17C
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8097A48 word5=0x00000000
	ms_jump destination1=byte_806B1AF

mapscript_806B17C:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_FE1 destination4=byte_806B195
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8097A48 word5=0x00000001
	ms_jump destination1=byte_806B1AF

byte_806B195:
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8097A48 word5=0x00000002
	ms_jump destination1=byte_806B1AF

mapscript_806B1A6:
	ms_call_native_function ptr1=sub_8083F34+1 word5=0x00000000

byte_806B1AF:
	ms_load_gfx_anim ptr1=byte_8140BAC
	ms_load_gfx_anim ptr1=byte_8140BF0
	ms_call_native_function ptr1=clear_8083D7C+1 word5=0x00000000
	ms_jump_if_map_group_not_equal_last_map_group destination2=dword_806B1DE
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_4E9 destination4=byte_806B1E2
	ms_call_native_function ptr1=sub_8083DC4+1 word5=0x00000000
	ms_jump destination1=byte_806B1E2

dword_806B1DE:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_4E9

byte_806B1E2:
	ms_end

byte_806B1E3:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_806B1EF
	ms_jump destination1=byte_806B266

mapscript_806B1EF:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=mapscript_806B1FB
	ms_jump destination1=byte_806B266

mapscript_806B1FB:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_806B224
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E3F destination4=mapscript_806B224
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E40 destination4=mapscript_806B224
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E40
	ms_start_cutscene ptr1=cutscenescript_8095C70 word5=0x00000000
	ms_jump destination1=byte_806B266

mapscript_806B224:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E42 destination4=byte_806B266
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_4EA destination4=byte_806B242
	ms_start_cutscene ptr1=cutscenescript_8083D04 word5=0x00000000
	ms_jump destination1=byte_806B266

byte_806B242:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_4E9 destination4=mapscript_806B258
	ms_call_native_function ptr1=sub_8083C6C+1 word5=0x00000000
	ms_jump destination1=byte_806B266

mapscript_806B258:
	ms_call_native_function ptr1=sub_8083DF0+1 word5=0x00000000
	ms_jump destination1=byte_806B266

byte_806B266:
	ms_end
	ms_end

byte_806B268:
	ms_write_gamestate_byte byte1=0x09 byte2=0x03
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_806B277
	ms_jump destination1=mapscript_806B2AB

mapscript_806B277:
	ms_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=mapscript_806B283
	ms_jump destination1=mapscript_806B2AB

mapscript_806B283:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E4B destination4=mapscript_806B2AB
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E4C destination4=mapscript_806B2AB
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E4C
	ms_set_enter_map_screen_fade byte1=0x04 byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8096B5C word5=0x00000000
	ms_jump destination1=mapscript_806B2AB

mapscript_806B2AB:
	ms_end

byte_806B2AC:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_806B2B8
	ms_jump destination1=byte_806B30F

mapscript_806B2B8:
	ms_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=mapscript_806B2C4
	ms_jump destination1=byte_806B30F

mapscript_806B2C4:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E47 destination4=byte_806B2E6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E48 destination4=byte_806B2E6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E48
	ms_start_cutscene ptr1=cutscenescript_80968DC word5=0x00000000
	ms_jump destination1=byte_806B30F

byte_806B2E6:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=byte_806B30F
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E49 destination4=byte_806B30F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E4A destination4=byte_806B30F
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E4A
	ms_start_cutscene ptr1=cutscenescript_80969F0 word5=0x00000000
	ms_jump destination1=byte_806B30F

byte_806B30F:
	ms_end

off_806B310:
	.word dword_806B334
	.word byte_806B353
	.word byte_806B372
	.word byte_806B391
	.word byte_806B3A4
	.word byte_806B3AF
	.word byte_806B3BA
	.word byte_806B3C5
	.word 0x000000FF
dword_806B334:
	ns_jump_if_flag_clear event16_1=EVENT_FC2 destination3=npcscript_806B352
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x49 byte2=0x1C
	ns_set_coords hword1=0x0148 hword3=0x0026 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_npc_palette_index byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B352:
	ns_free_and_end

byte_806B353:
	ns_jump_if_flag_clear event16_1=EVENT_FC3 destination3=npcscript_806B371
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x0148 hword3=0xFFC8 hword5=0x0000
	ns_set_animation_force_update byte1=0x12
	ns_set_npc_palette_index byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B371:
	ns_free_and_end

byte_806B372:
	ns_jump_if_flag_clear event16_1=EVENT_FC4 destination3=npcscript_806B390
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0F byte2=0x18
	ns_set_coords hword1=0x0142 hword3=0xFF6C hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_npc_palette_index byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B390:
	ns_free_and_end

byte_806B391:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x00BC hword3=0xFFC2 hword5=0x0020
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806B3A4:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1580
	ns_wait_mystery_data_taken hword1=0x1580
	ns_free_and_end

byte_806B3AF:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1581
	ns_wait_mystery_data_taken hword1=0x1581
	ns_free_and_end

byte_806B3BA:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1582
	ns_wait_mystery_data_taken hword1=0x1582
	ns_free_and_end

byte_806B3C5:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1583
	ns_wait_mystery_data_taken hword1=0x1583
	ns_free_and_end

npcscript_list_806B3D0::
	.word byte_806B3EC
	.word byte_806B3FF
	.word byte_806B417
	.word byte_806B432
	.word byte_806B451
	.word byte_806B470
	.word 0x000000FF
byte_806B3EC:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x00FE hword3=0x0052 hword5=0x0020
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806B3FF:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0144 hword3=0x002A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_806B417:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x49 byte2=0x1C
	ns_set_coords hword1=0x0148 hword3=0x0026 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_npc_palette_index byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

byte_806B432:
	ns_jump_if_flag_clear event16_1=EVENT_FC3 destination3=npcscript_806B450
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x0148 hword3=0xFFC8 hword5=0x0000
	ns_set_animation_force_update byte1=0x12
	ns_set_npc_palette_index byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B450:
	ns_free_and_end

byte_806B451:
	ns_jump_if_flag_clear event16_1=EVENT_FC4 destination3=byte_806B46F
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0F byte2=0x18
	ns_set_coords hword1=0x0142 hword3=0xFF6C hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_npc_palette_index byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_806B46F:
	ns_free_and_end

byte_806B470:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x00BC hword3=0xFFC2 hword5=0x0020
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_806B484::
	.word byte_806B4A0
	.word byte_806B4B3
	.word npcscript_806B4CB
	.word npcscript_806B4E6
	.word npcscript_806B505
	.word byte_806B524
	.word 0x000000FF
byte_806B4A0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x00FE hword3=0xFFF2 hword5=0x0020
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806B4B3:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0144 hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

npcscript_806B4CB:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x0148 hword3=0xFFC8 hword5=0x0000
	ns_set_animation_force_update byte1=0x12
	ns_set_npc_palette_index byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B4E6:
	ns_jump_if_flag_clear event16_1=EVENT_FC2 destination3=dword_806B504
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x49 byte2=0x1C
	ns_set_coords hword1=0x0148 hword3=0x0026 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_npc_palette_index byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

dword_806B504:
	ns_free_and_end

npcscript_806B505:
	ns_jump_if_flag_clear event16_1=EVENT_FC4 destination3=byte_806B523
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0F byte2=0x18
	ns_set_coords hword1=0x0142 hword3=0xFF6C hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_npc_palette_index byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_806B523:
	ns_free_and_end

byte_806B524:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x00BC hword3=0xFFC2 hword5=0x0020
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_806B538::
	.word byte_806B554
	.word byte_806B567
	.word byte_806B57F
	.word byte_806B59A
	.word byte_806B5B9
	.word byte_806B5D8
	.word 0x000000FF
byte_806B554:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x00FE hword3=0xFF92 hword5=0x0020
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806B567:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0144 hword3=0xFF68 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_806B57F:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0F byte2=0x18
	ns_set_coords hword1=0x0142 hword3=0xFF6C hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_npc_palette_index byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

byte_806B59A:
	ns_jump_if_flag_clear event16_1=EVENT_FC2 destination3=npcscript_806B5B8
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x49 byte2=0x1C
	ns_set_coords hword1=0x0148 hword3=0x0026 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_npc_palette_index byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B5B8:
	ns_free_and_end

byte_806B5B9:
	ns_jump_if_flag_clear event16_1=EVENT_FC3 destination3=byte_806B5D7
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x0148 hword3=0xFFC8 hword5=0x0000
	ns_set_animation_force_update byte1=0x12
	ns_set_npc_palette_index byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_806B5D7:
	ns_free_and_end

byte_806B5D8:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x00BC hword3=0xFFC2 hword5=0x0020
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_806B5EC::
	.word byte_806B604
	.word byte_806B629
	.word byte_806B64E
	.word byte_806B671
	.word byte_806B694
	.word 0x000000FF
byte_806B604:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x0078 hword3=0xFE26 hword5=0x0000
	ns_set_npc_palette_index byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x07
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x10
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_806B629:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x001A hword3=0xFFE4 hword5=0x0000
	ns_set_npc_palette_index byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x08
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x11
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_806B64E:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0xFEBA hword3=0xFFE8 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x05
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0E
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end

byte_806B671:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0xFF5A hword3=0x0064 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x07
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x10
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_free_and_end

byte_806B694:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0xFFBA hword3=0x00E6 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x05
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0E
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_free_and_end
	ns_end

off_806B6B8:
	.word byte_806B6D4
	.word byte_806B6F6
	.word byte_806B711
	.word byte_806B71C
	.word byte_806B727
	.word byte_806B732
	.word 0x000000FF
byte_806B6D4:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x55
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=npcscript_806B6DE

npcscript_806B6DE:
	ns_jump_if_flag_set event16_1=EVENT_E32 destination3=npcscript_806B6F5
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x0078 hword3=0xFDE0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B6F5:
	ns_free_and_end

byte_806B6F6:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_806B701
	ns_free_and_end

byte_806B701:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFFA hword3=0x01F4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806B711:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1584
	ns_wait_mystery_data_taken hword1=0x1584
	ns_free_and_end

byte_806B71C:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1585
	ns_wait_mystery_data_taken hword1=0x1585
	ns_free_and_end

byte_806B727:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1586
	ns_wait_mystery_data_taken hword1=0x1586
	ns_free_and_end

byte_806B732:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1587
	ns_wait_mystery_data_taken hword1=0x1587
	ns_free_and_end
	ns_end
	ns_end
	ns_end

npcscript_list_806B740::
	.word byte_806B74C
	.word byte_806B762
	.word 0x000000FF
byte_806B74C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0078 hword3=0xFE08 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806B762:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x55
	ns_set_coords hword1=0x0078 hword3=0xFDE0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B778:
	.word byte_806B784
	.word byte_806B7AA
	.word 0x000000FF
byte_806B784:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0078 hword3=0xFE08 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x07
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806B7AA:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x55
	ns_set_coords hword1=0x0078 hword3=0xFDE0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x1C
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

npcscript_list_806B7C4::
	.word dword_806B7D0
	.word byte_806B801
	.word 0x000000FF
dword_806B7D0:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x37
	ns_init_native_callback ptr1=sub_806B828+1
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x2F
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFF5A hword3=0x01F6 hword5=0x0000
	ns_set_active_and_visible
	ns_set_animation byte1=0x3A
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x04
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806B801:
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_sprite_with_category byte1=0x63 byte2=0x1C
	ns_init_native_callback ptr1=sub_806B828+1
	ns_set_npc_palette_index byte1=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x0105
	ns_set_animation_force_update byte1=0x00
	ns_set_npc_palette_index byte1=0x00
	ns_wait_anim_frame byte1=0xC0
	ns_play_sound hword1=0x00C0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end
	ns_end
	ns_end
	ns_end

	thumb_local_start
sub_806B828:
	push {r5, lr}
	bl ReadOWPlayerObjectCoords
	str r0, [r5, #0x24]
	str r1, [r5, #0x28]
	str r2, [r5, #0x2c]
	bl sub_809F904
	pop {r5, pc}
	.balign 4, 0
	thumb_func_end sub_806B828

off_806B83C:
	.word byte_806B858
	.word byte_806B87A
	.word byte_806B88D
	.word byte_806B898
	.word byte_806B8A3
	.word byte_806B8AE
	.word 0x000000FF
byte_806B858:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x56
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=npcscript_806B862

npcscript_806B862:
	ns_jump_if_flag_set event16_1=EVENT_E3A destination3=npcscript_806B879
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0xFFA4 hword3=0xFE30 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B879:
	ns_free_and_end

byte_806B87A:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFBC hword3=0xFFBC hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806B88D:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1588
	ns_wait_mystery_data_taken hword1=0x1588
	ns_free_and_end

byte_806B898:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1589
	ns_wait_mystery_data_taken hword1=0x1589
	ns_free_and_end

byte_806B8A3:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x158A
	ns_wait_mystery_data_taken hword1=0x158A
	ns_free_and_end

byte_806B8AE:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x158B
	ns_wait_mystery_data_taken hword1=0x158B
	ns_free_and_end
	ns_end
	ns_end
	ns_end

npcscript_list_806B8BC::
	.word byte_806B8C8
	.word byte_806B8DE
	.word 0x000000FF
byte_806B8C8:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFFA4 hword3=0xFE58 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806B8DE:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x56
	ns_set_coords hword1=0xFFA4 hword3=0xFE30 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_806B8F4::
	.word byte_806B900
	.word byte_806B926
	.word 0x000000FF
byte_806B900:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFFA4 hword3=0xFE58 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x07
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806B926:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x56
	ns_set_coords hword1=0xFFA4 hword3=0xFE30 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x1A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

off_806B940:
	.word byte_806B9C9
	.word dword_806B9E8
	.word byte_806BA07
	.word byte_806B968
	.word byte_806B98A
	.word byte_806B99D
	.word byte_806B9A8
	.word byte_806B9B3
	.word byte_806B9BE
	.word 0x000000FF
byte_806B968:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x54
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=npcscript_806B972

npcscript_806B972:
	ns_jump_if_flag_set event16_1=EVENT_E42 destination3=npcscript_806B989
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x0130 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B989:
	ns_free_and_end

byte_806B98A:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0x0072 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806B99D:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x158C
	ns_wait_mystery_data_taken hword1=0x158C
	ns_free_and_end

byte_806B9A8:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x158D
	ns_wait_mystery_data_taken hword1=0x158D
	ns_free_and_end

byte_806B9B3:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x158E
	ns_wait_mystery_data_taken hword1=0x158E
	ns_free_and_end

byte_806B9BE:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x158F
	ns_wait_mystery_data_taken hword1=0x158F
	ns_free_and_end

byte_806B9C9:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_FDC destination3=npcscript_806B9E7
	ns_set_sprite_with_category byte1=0x4E byte2=0x1C
	ns_set_animation_force_update byte1=0x01
	ns_set_npc_palette_index byte1=0x01
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x01F4 hword3=0xFFC0 hword5=0x0000
	ns_set_text_script_index byte1=0x00
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806B9E7:
	ns_free_and_end

dword_806B9E8:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_FDD destination3=byte_806BA06
	ns_set_sprite_with_category byte1=0x4E byte2=0x1C
	ns_set_animation_force_update byte1=0x01
	ns_set_npc_palette_index byte1=0x02
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0xFF74 hword3=0xFF40 hword5=0x0000
	ns_set_text_script_index byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806BA06:
	ns_free_and_end

byte_806BA07:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_FDE destination3=npcscript_806BA25
	ns_set_sprite_with_category byte1=0x4E byte2=0x1C
	ns_set_animation_force_update byte1=0x01
	ns_set_npc_palette_index byte1=0x00
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0xFE74 hword3=0x00C0 hword5=0x0000
	ns_set_text_script_index byte1=0x02
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806BA25:
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_806BA28::
	.word byte_806BA40
	.word byte_806BA63
	.word byte_806BA7D
	.word byte_806BAA2
	.word byte_806BAC7
	.word 0x000000FF
byte_806BA40:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x01F6 hword3=0xFFDC hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_jump_with_link destination1=byte_809F6CC

byte_806BA63:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x4E byte2=0x1C
	ns_set_coords hword1=0x01F4 hword3=0xFFC0 hword5=0x0000
	ns_set_animation_force_update byte1=0x05
	ns_set_npc_palette_index byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation_force_update byte1=0x0D
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_806BA7D:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0x01EE hword3=0xFFC0 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BA8C:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_806BAA1
	ns_pause byte1=0x0A
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BA8C

npcscript_806BAA1:
	ns_free_and_end

byte_806BAA2:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0x01F4 hword3=0xFFC0 hword5=0x0018
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BAB1:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=byte_806BAC6
	ns_pause byte1=0x05
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BAB1

byte_806BAC6:
	ns_free_and_end

byte_806BAC7:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0x020C hword3=0xFFC0 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BAD6:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_806BAEB
	ns_pause byte1=0x14
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BAD6

npcscript_806BAEB:
	ns_free_and_end

npcscript_list_806BAEC::
	.word byte_806BB04
	.word byte_806BB27
	.word byte_806BB41
	.word byte_806BB66
	.word byte_806BB8B
	.word 0x000000FF
byte_806BB04:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFF76 hword3=0xFF5C hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_jump_with_link destination1=byte_809F6CC

byte_806BB27:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x4E byte2=0x1C
	ns_set_coords hword1=0xFF74 hword3=0xFF40 hword5=0x0000
	ns_set_animation_force_update byte1=0x05
	ns_set_npc_palette_index byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation_force_update byte1=0x0D
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_806BB41:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0xFF6E hword3=0xFF40 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BB50:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_806BB65
	ns_pause byte1=0x0A
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BB50

npcscript_806BB65:
	ns_free_and_end

byte_806BB66:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0xFF74 hword3=0xFF40 hword5=0x0018
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BB75:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=byte_806BB8A
	ns_pause byte1=0x05
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BB75

byte_806BB8A:
	ns_free_and_end

byte_806BB8B:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0xFF8C hword3=0xFF40 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BB9A:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_806BBAF
	ns_pause byte1=0x14
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BB9A

npcscript_806BBAF:
	ns_free_and_end

npcscript_list_806BBB0::
	.word byte_806BBC8
	.word byte_806BBEB
	.word byte_806BC05
	.word byte_806BC2A
	.word byte_806BC4F
	.word 0x000000FF
byte_806BBC8:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFE76 hword3=0x00DC hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_jump_with_link destination1=byte_809F6CC

byte_806BBEB:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x4E byte2=0x1C
	ns_set_coords hword1=0xFE74 hword3=0x00C0 hword5=0x0000
	ns_set_animation_force_update byte1=0x05
	ns_set_npc_palette_index byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation_force_update byte1=0x0D
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_806BC05:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0xFE6E hword3=0x00C0 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BC14:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_806BC29
	ns_pause byte1=0x0A
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BC14

npcscript_806BC29:
	ns_free_and_end

byte_806BC2A:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0xFE74 hword3=0x00C0 hword5=0x0018
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BC39:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=byte_806BC4E
	ns_pause byte1=0x05
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BC39

byte_806BC4E:
	ns_free_and_end

byte_806BC4F:
	ns_set_active_and_invisible
	ns_set_sprite_with_category byte1=0x11 byte2=0x14
	ns_set_coords hword1=0xFE88 hword3=0x00C0 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible

npcscript_806BC5E:
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x03 destination3=npcscript_806BC73
	ns_pause byte1=0x14
	ns_set_animation_force_update byte1=0x00
	ns_play_sound hword1=0x0070
	ns_wait_anim_frame byte1=0xC0
	ns_jump destination1=npcscript_806BC5E

npcscript_806BC73:
	ns_free_and_end

npcscript_list_806BC74::
	.word byte_806BC7C
	.word 0x000000FF
byte_806BC7C:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x54
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x0130 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_806BC90::
	.word byte_806BC9C
	.word byte_806BCB2
	.word 0x000000FF
byte_806BC9C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0108 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806BCB2:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x54
	ns_set_coords hword1=0x0130 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_806BCC8::
	.word byte_806BCD4
	.word byte_806BCFA
	.word 0x000000FF
byte_806BCD4:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0108 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x07
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806BCFA:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x54
	ns_set_coords hword1=0x0130 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x33
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

dword_806BD14:
	.word 0x000000FF
npcscript_list_806BD18::
	.word byte_806BD38
	.word byte_806BD7E
	.word byte_806BDAA
	.word byte_806BDD6
	.word byte_806BDEC
	.word byte_806BE02
	.word byte_806BE19
	.word 0x000000FF
byte_806BD38:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x006C hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x0C
	ns_set_animation byte1=0x2C
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x0C
	ns_set_animation byte1=0x2C
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x31
	ns_move_in_direction byte1=0x03 byte2=0x04 byte3=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_set_animation byte1=0x2C
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_jump_with_link destination1=byte_809F6CC

byte_806BD7E:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x83 byte2=0x1C
	ns_set_coords hword1=0x0064 hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x09 byte2=0x81
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x09 byte2=0x82
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x09 byte2=0x84
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x09 byte2=0x85
	ns_set_animation byte1=0x00
	ns_jump_with_link destination1=byte_809F6CC

byte_806BDAA:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x97 byte2=0x1C
	ns_set_coords hword1=0x0064 hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x09 byte2=0x81
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x09 byte2=0x82
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x09 byte2=0x84
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x09 byte2=0x85
	ns_set_animation byte1=0x00
	ns_jump_with_link destination1=byte_809F6CC

byte_806BDD6:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x53
	ns_set_coords hword1=0xFF98 hword3=0xFEEC hword5=0x0020
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806BDEC:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0xFF80 hword3=0xFEEC hword5=0x0020
	ns_set_animation byte1=0x1D
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806BE02:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x84 byte2=0x1C
	ns_set_coords hword1=0xFF88 hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806BE19:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x94 byte2=0x1C
	ns_set_coords hword1=0xFF88 hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806BE30:
	.word byte_806BE58
	.word byte_806BEC3
	.word byte_806BEDA
	.word byte_806BEF7
	.word byte_806BF14
	.word byte_806BF6F
	.word byte_806BFBA
	.word byte_806BFCD
	.word byte_806BFE0
	.word 0x000000FF
byte_806BE58:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x006C hword3=0xFEEC hword5=0x0020
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation byte1=0x31
	ns_write_cutscene_var byte1=0x08 byte2=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_sprite byte1=0x59
	ns_set_coords hword1=0x0064 hword3=0xFECC hword5=0x0020
	ns_set_animation byte1=0x1B
	ns_wait_cutscene_var byte1=0x09 byte2=0x84
	ns_set_animation byte1=0x1A
	ns_wait_cutscene_var byte1=0x09 byte2=0x85
	ns_set_animation byte1=0x1B
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_play_sound hword1=0x0135
	ns_set_animation_force_update byte1=0x1E
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_active_and_visible
	ns_set_coords hword1=0xFF8C hword3=0xFEAC hword5=0x0020
	ns_play_sound hword1=0x0094
	ns_set_animation byte1=0x1F
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x18
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFF8C hword3=0xFEDC hword5=0x0020
	ns_set_animation byte1=0x47
	ns_wait_cutscene_var byte1=0x08 byte2=0x19
	ns_set_animation_force_update byte1=0x48
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x1A
	ns_free_and_end

byte_806BEC3:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0xFF8C hword3=0xFEDC hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x19
	ns_jump destination1=byte_809F880

byte_806BEDA:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x83 byte2=0x1C
	ns_set_coords hword1=0x0064 hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x09 byte2=0x81
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x09 byte2=0x82
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_free_and_end

byte_806BEF7:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x97 byte2=0x1C
	ns_set_coords hword1=0x0064 hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x09 byte2=0x81
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x09 byte2=0x82
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_free_and_end

byte_806BF14:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x53
	ns_set_coords hword1=0xFF98 hword3=0xFEEC hword5=0x0020
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_coords hword1=0xFF98 hword3=0xFEE0 hword5=0x0020
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_play_sound hword1=0x00FE
	ns_set_animation byte1=0x3F
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_move_in_direction byte1=0x05 byte2=0x02 byte3=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x15
	ns_set_coords hword1=0xFF8C hword3=0xFEE4 hword5=0x0020
	ns_wait_cutscene_var byte1=0x08 byte2=0x16
	ns_move_in_direction byte1=0x07 byte2=0x40 byte3=0x02
	ns_set_animation byte1=0x40
	ns_write_cutscene_var byte1=0x08 byte2=0x17
	ns_wait_cutscene_var byte1=0x08 byte2=0x18
	ns_set_coords hword1=0xFF8C hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x41
	ns_wait_cutscene_var byte1=0x08 byte2=0x19
	ns_jump_with_link destination1=byte_809F6CC

byte_806BF6F:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0xFF80 hword3=0xFEEC hword5=0x0020
	ns_set_animation byte1=0x1D
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_coords hword1=0xFF80 hword3=0xFEE0 hword5=0x0020
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x1D
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x10
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_set_animation byte1=0x1E
	ns_write_cutscene_var byte1=0x08 byte2=0x12
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_move_in_direction byte1=0x01 byte2=0x02 byte3=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x14
	ns_wait_cutscene_var byte1=0x08 byte2=0x15
	ns_free_and_end

byte_806BFBA:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x84 byte2=0x1C
	ns_set_coords hword1=0xFF88 hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_806BFCD:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x94 byte2=0x1C
	ns_set_coords hword1=0xFF88 hword3=0xFEB4 hword5=0x0020
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_806BFE0:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x8D byte2=0x1C
	ns_set_coords hword1=0xFF94 hword3=0xFEAC hword5=0x0018
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x18
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC






