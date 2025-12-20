
byte_8067D6C:
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00DC0000,
		y: -0x012A0000,
		z: 0x00100000,
		object_id: 0x00000004,
	]
	.word 0xFF

byte_8067D84:
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x01AE0000,
		y: -0x00640000,
		z: 0x00100000,
		object_id: 0x00000005,
	]
	.word 0xFF

byte_8067D9C:
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x01420000,
		y: -0x00840000,
		z: 0x00100000,
		object_id: 0x00000006,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x01920000,
		y: -0x00D60000,
		z: -0x00500000,
		object_id: 0x0000002C,
	]
	.word 0xFF

off_8067DC8: // [*const MapScript; AQUARIUM_COMP_NUM_MAPS]
	.word byte_8067E2C
	.word dword_8067F24
	.word dword_8067F74
off_8067DD4: // [*const MapScript; AQUARIUM_COMP_NUM_MAPS]
	.word byte_8067E8D
	.word byte_8067F4F
	.word byte_8067FDF
NPCScriptsAquariumComp_8067DE0: // [*const [*const NPCScript]; AQUARIUM_COMP_NUM_MAPS]
  .word off_8068044
	.word off_8068400
	.word off_8068734
pt_8067DEC:
	.word byte_8067DF8
	.word byte_8067E08
	.word byte_8067E18
byte_8067DF8::
	.byte 0x0
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_8067E08::
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_8067E18::
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
dword_8067E28::
	.word 0x111111
byte_8067E2C::
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump_if_flag_range_set byte1=0x03 event16_2=EVENT_5F5 destination4=byte_8067E5E
	ms_call_native_function ptr1=sub_8086DF8+1 word5=0x00000000
	ms_write_word ptr1=unk_2011EA8 word5=0x08070002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_5F2 destination4=mapscript_8067E59
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x23

mapscript_8067E59:
	ms_jump destination1=mapscript_8067E67

byte_8067E5E::
	ms_call_native_function ptr1=sub_8086E70+1 word5=0x00000000

mapscript_8067E67:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1138 destination4=byte_8067E8C
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1139 destination4=byte_8067E8C
	ms_set_event_flag byte1=0xFF event16_2=EVENT_1139
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000026
	ms_jump destination1=byte_8067E8C

byte_8067E8C::
	ms_end

byte_8067E8D::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_5E8 destination4=mapscript_8067EA6
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2

mapscript_8067EA6:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_5E6 destination4=mapscript_8067EC0
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_5E6
	ms_start_cutscene ptr1=byte_80865AC word5=0x00000000
	ms_jump destination1=byte_8067F03

mapscript_8067EC0:
	ms_call_native_function ptr1=sub_8086EA8+1 word5=0x00000000
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x1F destination3=byte_8067ED5
	ms_jump destination1=byte_8067F03

byte_8067ED5::
	ms_jump_if_progress_in_range byte1=0x14 byte2=0x14 destination3=byte_8067EE1
	ms_jump destination1=byte_8067F03

byte_8067EE1::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_52B destination4=byte_8067F03
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_52C destination4=byte_8067F03
	ms_set_event_flag byte1=0xFF event16_2=EVENT_52C
	ms_start_cutscene ptr1=cutscenescript_8085BDC word5=0x00000000
	ms_jump destination1=byte_8067F03

byte_8067F03::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1139 destination4=mapscript_8067F21
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1138 destination4=mapscript_8067F21
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00DF
	ms_jump destination1=mapscript_8067F21

mapscript_8067F21:
	ms_end
	ms_end
	ms_end

dword_8067F24::
	ms_jump_if_flag_range_set byte1=0x03 event16_2=EVENT_5F8 destination4=byte_8067F45
	ms_call_native_function ptr1=sub_8086DF8+1 word5=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_5F2 destination4=mapscript_8067F40
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x23

mapscript_8067F40:
	ms_jump destination1=mapscript_8067F4E

byte_8067F45::
	ms_call_native_function ptr1=sub_8086E70+1 word5=0x00000000

mapscript_8067F4E:
	ms_end

byte_8067F4F::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_5E6 destination4=mapscript_8067F69
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_5E6
	ms_start_cutscene ptr1=byte_80865AC word5=0x00000000
	ms_jump destination1=mapscript_8067F72

mapscript_8067F69:
	ms_call_native_function ptr1=sub_8086EA8+1 word5=0x00000000

mapscript_8067F72:
	ms_end
	ms_end

dword_8067F74::
	ms_jump_if_flag_range_set byte1=0x04 event16_2=EVENT_5FB destination4=byte_8067F95
	ms_call_native_function ptr1=sub_8086DF8+1 word5=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_5F2 destination4=mapscript_8067F90
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x23

mapscript_8067F90:
	ms_jump destination1=mapscript_8067F9E

byte_8067F95::
	ms_call_native_function ptr1=sub_8086E70+1 word5=0x00000000

mapscript_8067F9E:
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x1F destination3=mapscript_8067FAA
	ms_jump destination1=mapscript_8067FDE

mapscript_8067FAA:
	ms_jump_if_progress_in_range byte1=0x14 byte2=0x14 destination3=mapscript_8067FB6
	ms_jump destination1=mapscript_8067FDE

mapscript_8067FB6:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_52F destination4=mapscript_8067FDE
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_530 destination4=mapscript_8067FDE
	ms_set_event_flag byte1=0xFF event16_2=EVENT_530
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8085CD0 word5=0x00000000
	ms_jump destination1=mapscript_8067FDE

mapscript_8067FDE:
	ms_end

byte_8067FDF::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_5E6 destination4=mapscript_8067FF9
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_5E6
	ms_start_cutscene ptr1=byte_80865AC word5=0x00000000
	ms_jump destination1=mapscript_8068043

mapscript_8067FF9:
	ms_call_native_function ptr1=sub_8086EA8+1 word5=0x00000000
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x1F destination3=mapscript_806800E
	ms_jump destination1=mapscript_8068043

mapscript_806800E:
	ms_jump_if_progress_in_range byte1=0x14 byte2=0x14 destination3=mapscript_806801A
	ms_jump destination1=mapscript_8068043

mapscript_806801A:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_8068043
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_52D destination4=mapscript_8068043
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_52E destination4=mapscript_8068043
	ms_set_event_flag byte1=0xFF event16_2=EVENT_52E
	ms_start_cutscene ptr1=cutscenescript_8085C3C word5=0x00000000
	ms_jump destination1=mapscript_8068043

mapscript_8068043:
	ms_end

off_8068044::
	.word byte_8068070
	.word byte_806808D
	.word byte_80680AA
	.word byte_80680C7
	.word byte_80680E2
	.word byte_80680FD
	.word byte_8068153
	.word byte_806815E
	.word byte_8068169
	.word byte_8068174
	.word 0x000000FF
byte_8068070::
	ns_jump_if_flag_clear event16_1=EVENT_5F5 destination3=npcscript_806808C
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0xFF9E hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806808C:
	ns_free_and_end

byte_806808D::
	ns_jump_if_flag_clear event16_1=EVENT_5F6 destination3=byte_80680A9
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0xFFFE hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_80680A9::
	ns_free_and_end

byte_80680AA::
	ns_jump_if_flag_clear event16_1=EVENT_5F7 destination3=npcscript_80680C6
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0x0062 hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80680C6:
	ns_free_and_end

byte_80680C7::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_progress_in_range byte1=0x14 byte2=0x14 destination3=npcscript_80680D2
	ns_free_and_end

npcscript_80680D2:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x00D0 hword3=0xFED6 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_80680E2::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x41
	ns_jump_if_progress_in_range byte1=0x30 byte2=0xFF destination3=byte_80680ED
	ns_free_and_end

byte_80680ED::
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x00AE hword3=0xFEC2 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80680FD::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_flag_set event16_1=EVENT_1C3D destination3=byte_8068153
	ns_jump_if_flag_set event16_1=EVENT_11EF destination3=npcscript_806810F
	ns_free_and_end

npcscript_806810F:
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8068153
	ns_jump_if_flag_set event16_1=EVENT_11F8 destination3=npcscript_806812D
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0xFF32 hword3=0xFECA hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806812D:
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0x0148 hword3=0xFF6A hword5=0x0010
	ns_set_animation byte1=0x2E

npcscript_8068139:
	.word 0xF5050110, 0x06813911, 0x144C1208, 0x6A014814, 0x160010FF, 0xF6CC3603
	.byte 0x09
	.byte 0x08
byte_8068153::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1500
	ns_wait_mystery_data_taken hword1=0x1500
	ns_free_and_end

byte_806815E::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1501
	ns_wait_mystery_data_taken hword1=0x1501
	ns_free_and_end

byte_8068169::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1502
	ns_wait_mystery_data_taken hword1=0x1502
	ns_free_and_end

byte_8068174::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1503
	ns_wait_mystery_data_taken hword1=0x1503
	ns_free_and_end
	ns_end

npcscript_list_8068180::
	.word byte_806819C
	.word byte_80681AF
	.word byte_80681C7
	.word byte_80681E0
	.word byte_80681FD
	.word byte_806821A
	.word 0x000000FF
byte_806819C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFF7A hword3=0xFEC8 hword5=0x0010
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80681AF::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0xFF94 hword3=0xFE8C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_80681C7::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0xFF9E hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

byte_80681E0::
	ns_jump_if_flag_clear event16_1=EVENT_5F6 destination3=npcscript_80681FC
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0xFFFE hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80681FC:
	ns_free_and_end

byte_80681FD::
	ns_jump_if_flag_clear event16_1=EVENT_5F7 destination3=byte_8068219
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0x0062 hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_8068219::
	ns_free_and_end

byte_806821A::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x00D0 hword3=0xFED6 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_806822C::
	.word byte_8068248
	.word byte_806825B
	.word byte_8068273
	.word byte_806828C
	.word byte_80682A9
	.word byte_80682C6
	.word 0x000000FF
byte_8068248::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFFDC hword3=0xFEC8 hword5=0x0010
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_806825B::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0xFFF4 hword3=0xFE8C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_8068273::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0xFFFE hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

byte_806828C::
	ns_jump_if_flag_clear event16_1=EVENT_5F5 destination3=npcscript_80682A8
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0xFF9E hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80682A8:
	ns_free_and_end

byte_80682A9::
	ns_jump_if_flag_clear event16_1=EVENT_5F7 destination3=byte_80682C5
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0x0062 hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_80682C5::
	ns_free_and_end

byte_80682C6::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x00D0 hword3=0xFED6 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_80682D8::
	.word byte_80682F4
	.word byte_8068307
	.word byte_806831F
	.word byte_8068338
	.word byte_8068355
	.word byte_8068372
	.word 0x000000FF
byte_80682F4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x003E hword3=0xFEC8 hword5=0x0010
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8068307::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0056 hword3=0xFE8C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_806831F::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0x0062 hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

byte_8068338::
	ns_jump_if_flag_clear event16_1=EVENT_5F5 destination3=npcscript_8068354
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0xFF9E hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068354:
	ns_free_and_end

byte_8068355::
	ns_jump_if_flag_clear event16_1=EVENT_5F6 destination3=byte_8068371
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x45 byte2=0x1C
	ns_set_coords hword1=0xFFFE hword3=0xFE80 hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_8068371::
	ns_free_and_end

byte_8068372::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x00D0 hword3=0xFED6 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_8068384::
	.word byte_8068394
	.word byte_80683B9
	.word byte_80683DC
	.word 0x000000FF
byte_8068394::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x00E6 hword3=0xFF48 hword5=0x0000
	ns_set_npc_palette_index byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x06
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0F
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_80683B9::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0xFF9C hword3=0xFFC4 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x05
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0E
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_80683DC::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x005E hword3=0x00C6 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x07
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x10
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end
	ns_end

off_8068400::
	.word dword_8068424
	.word byte_806843F
	.word byte_806845A
	.word byte_8068475
	.word byte_80684CB
	.word byte_80684D6
	.word byte_80684E1
	.word byte_80684EC
	.word 0x000000FF
dword_8068424::
	ns_jump_if_flag_clear event16_1=EVENT_5F8 destination3=npcscript_806843E
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFF38 hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806843E:
	ns_free_and_end

byte_806843F::
	ns_jump_if_flag_clear event16_1=EVENT_5F9 destination3=npcscript_8068459
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFF98 hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068459:
	ns_free_and_end

byte_806845A::
	ns_jump_if_flag_clear event16_1=EVENT_5FA destination3=npcscript_8068474
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFFF8 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068474:
	ns_free_and_end

byte_8068475::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_flag_set event16_1=EVENT_1C3D destination3=byte_80684CB
	ns_jump_if_flag_set event16_1=EVENT_11EF destination3=npcscript_8068487
	ns_free_and_end

npcscript_8068487:
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_80684CB
	ns_jump_if_flag_set event16_1=EVENT_11F8 destination3=npcscript_80684A5
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0xFE58 hword3=0x0088 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80684A5:
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x00C4 hword3=0xFE4C hword5=0x0010
	ns_set_animation byte1=0x2F
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11F6 destination3=npcscript_80684A5
	ns_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x00C4 hword3=0xFE4C hword5=0x0010
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_80684CB::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1508
	ns_wait_mystery_data_taken hword1=0x1508
	ns_free_and_end

byte_80684D6::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1509
	ns_wait_mystery_data_taken hword1=0x1509
	ns_free_and_end

byte_80684E1::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x150A
	ns_wait_mystery_data_taken hword1=0x150A
	ns_free_and_end

byte_80684EC::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x150B
	ns_wait_mystery_data_taken hword1=0x150B
	ns_free_and_end
	ns_end

off_80684F8::
	.word byte_8068510
	.word byte_8068523
	.word byte_806853B
	.word dword_8068554
	.word byte_806856F
	.word 0x000000FF
byte_8068510::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0140 hword3=0xFF5C hword5=0x0010
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8068523::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x017C hword3=0xFF40 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_806853B::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFF38 hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

dword_8068554::
	ns_jump_if_flag_clear event16_1=EVENT_5F9 destination3=npcscript_806856E
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFF98 hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806856E:
	ns_free_and_end

byte_806856F::
	ns_jump_if_flag_clear event16_1=EVENT_5FA destination3=npcscript_8068589
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFFF8 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068589:
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_806858C::
	.word byte_80685A4
	.word byte_80685B7
	.word byte_80685CF
	.word dword_80685E8
	.word byte_8068603
	.word 0x000000FF
byte_80685A4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0140 hword3=0xFFBC hword5=0x0010
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80685B7::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x017C hword3=0xFFA0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_80685CF::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFF98 hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

dword_80685E8::
	ns_jump_if_flag_clear event16_1=EVENT_5F8 destination3=npcscript_8068602
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFF38 hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068602:
	ns_free_and_end

byte_8068603::
	ns_jump_if_flag_clear event16_1=EVENT_5FA destination3=npcscript_806861D
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFFF8 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806861D:
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_8068620::
	.word byte_8068638
	.word byte_806864B
	.word byte_8068663
	.word dword_806867C
	.word byte_8068697
	.word 0x000000FF
byte_8068638::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0140 hword3=0x001C hword5=0x0010
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806864B::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x017C hword3=0xFFFE hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_8068663::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFFF8 hword5=0x0000
	ns_set_animation_force_update byte1=0x02
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

dword_806867C::
	ns_jump_if_flag_clear event16_1=EVENT_5F8 destination3=npcscript_8068696
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFF38 hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068696:
	ns_free_and_end

byte_8068697::
	ns_jump_if_flag_clear event16_1=EVENT_5F9 destination3=npcscript_80686B1
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x46 byte2=0x1C
	ns_set_coords hword1=0x0186 hword3=0xFF98 hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80686B1:
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_80686B4::
	.word byte_80686C4
	.word byte_80686E9
	.word byte_806870E
	.word 0x000000FF
byte_80686C4::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0xFFC2 hword3=0xFE6A hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x06
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0F
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_80686E9::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x0044 hword3=0xFFAE hword5=0x0000
	ns_set_npc_palette_index byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x06
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0F
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_806870E::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x00C2 hword3=0x001E hword5=0x0000
	ns_set_animation_force_update byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x06
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0F
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end
	ns_end

off_8068734::
	.word dword_8068760
	.word byte_806877B
	.word byte_8068796
	.word byte_80687B1
	.word byte_80687D1
	.word byte_8068827
	.word byte_8068840
	.word byte_806884B
	.word byte_8068856
	.word byte_8068861
	.word 0x000000FF
dword_8068760::
	ns_jump_if_flag_clear event16_1=EVENT_5FB destination3=npcscript_806877A
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x33 byte2=0x1C
	ns_set_coords hword1=0x019C hword3=0xFF9E hword5=0x0000
	ns_set_animation_force_update byte1=0x06
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806877A:
	ns_free_and_end

byte_806877B::
	ns_jump_if_flag_clear event16_1=EVENT_5FC destination3=npcscript_8068795
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x30 byte2=0x1C
	ns_set_coords hword1=0x019E hword3=0x0000 hword5=0x0000
	ns_set_animation_force_update byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068795:
	ns_free_and_end

byte_8068796::
	ns_jump_if_flag_clear event16_1=EVENT_5FD destination3=npcscript_80687B0
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x31 byte2=0x1C
	ns_set_coords hword1=0x018C hword3=0x0060 hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80687B0:
	ns_free_and_end

byte_80687B1::
	ns_jump_if_flag_clear event16_1=EVENT_5FE destination3=byte_80687D0
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x2D byte2=0x1C
	ns_write_hidden_oam_pieces word1=0x10000000
	ns_set_coords hword1=0x018C hword3=0x00C8 hword5=0x0000
	ns_set_animation_force_update byte1=0x1C
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_80687D0::
	ns_free_and_end

byte_80687D1::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_flag_set event16_1=EVENT_1C3D destination3=byte_8068827
	ns_jump_if_flag_set event16_1=EVENT_11EF destination3=npcscript_80687E3
	ns_free_and_end

npcscript_80687E3:
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8068827
	ns_jump_if_flag_set event16_1=EVENT_11F8 destination3=npcscript_8068801
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x0138 hword3=0xFF14 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068801:
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0xFF82 hword3=0xFDFC hword5=0x0010
	ns_set_animation byte1=0x2E

npcscript_806880D:
	.word 0xF7050110, 0x06880D11, 0x0A4C1208, 0xFCFF8214, 0x160010FD, 0xF6CC3603
	.byte 0x09
	.byte 0x08
byte_8068827::
	ns_jump_if_flag_set event16_1=EVENT_530 destination3=npcscript_806883F
	ns_set_active_and_visible
	ns_set_sprite byte1=0x52
	ns_set_coords hword1=0x0138 hword3=0xFF10 hword5=0x0010
	ns_set_animation byte1=0x19
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806883F:
	ns_free_and_end

byte_8068840::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1510
	ns_wait_mystery_data_taken hword1=0x1510
	ns_free_and_end

byte_806884B::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1511
	ns_wait_mystery_data_taken hword1=0x1511
	ns_free_and_end

byte_8068856::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1512
	ns_wait_mystery_data_taken hword1=0x1512
	ns_free_and_end

byte_8068861::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1513
	ns_wait_mystery_data_taken hword1=0x1513
	ns_free_and_end

npcscript_list_806886C::
	.word byte_8068878
	.word byte_806889C
	.word 0x000000FF
byte_8068878::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0138 hword3=0xFF70 hword5=0x0010
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x2C
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806889C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x52
	ns_set_coords hword1=0x0138 hword3=0xFF10 hword5=0x0010
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_play_sound hword1=0x00E1
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_80688C0::
	.word byte_80688CC
	.word byte_8068902
	.word 0x000000FF
byte_80688CC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0138 hword3=0xFF40 hword5=0x0010
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x07
	ns_set_animation byte1=0x2C
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_jump_with_link destination1=byte_809F6CC

byte_8068902::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x52
	ns_set_coords hword1=0x0138 hword3=0xFF10 hword5=0x0010
	ns_set_animation byte1=0x1B
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_806891C::
	.word byte_8068938
	.word byte_806894B
	.word byte_8068963
	.word dword_806897C
	.word byte_8068997
	.word byte_80689B2
	.word 0x000000FF
byte_8068938::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0152 hword3=0xFFBA hword5=0x0010
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806894B::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x018C hword3=0xFF9E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_8068963::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x33 byte2=0x1C
	ns_set_coords hword1=0x019C hword3=0xFF9E hword5=0x0000
	ns_set_animation_force_update byte1=0x06
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

dword_806897C::
	ns_jump_if_flag_clear event16_1=EVENT_5FC destination3=npcscript_8068996
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x30 byte2=0x1C
	ns_set_coords hword1=0x019E hword3=0x0000 hword5=0x0000
	ns_set_animation_force_update byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068996:
	ns_free_and_end

byte_8068997::
	ns_jump_if_flag_clear event16_1=EVENT_5FD destination3=npcscript_80689B1
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x31 byte2=0x1C
	ns_set_coords hword1=0x018C hword3=0x0060 hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80689B1:
	ns_free_and_end

byte_80689B2::
	ns_jump_if_flag_clear event16_1=EVENT_5FE destination3=npcscript_80689D1
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x2D byte2=0x1C
	ns_write_hidden_oam_pieces word1=0x10000000
	ns_set_coords hword1=0x018C hword3=0x00C8 hword5=0x0000
	ns_set_animation_force_update byte1=0x1C
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80689D1:
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_80689D4::
	.word byte_80689F0
	.word byte_8068A03
	.word byte_8068A1B
	.word dword_8068A34
	.word byte_8068A4F
	.word byte_8068A6A
	.word 0x000000FF
byte_80689F0::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0152 hword3=0x001A hword5=0x0010
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8068A03::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x018C hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_8068A1B::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x30 byte2=0x1C
	ns_set_coords hword1=0x019E hword3=0x0000 hword5=0x0000
	ns_set_animation_force_update byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

dword_8068A34::
	ns_jump_if_flag_clear event16_1=EVENT_5FB destination3=npcscript_8068A4E
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x33 byte2=0x1C
	ns_set_coords hword1=0x019C hword3=0xFF9E hword5=0x0000
	ns_set_animation_force_update byte1=0x06
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068A4E:
	ns_free_and_end

byte_8068A4F::
	ns_jump_if_flag_clear event16_1=EVENT_5FD destination3=npcscript_8068A69
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x31 byte2=0x1C
	ns_set_coords hword1=0x018C hword3=0x0060 hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068A69:
	ns_free_and_end

byte_8068A6A::
	ns_jump_if_flag_clear event16_1=EVENT_5FE destination3=npcscript_8068A89
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x2D byte2=0x1C
	ns_write_hidden_oam_pieces word1=0x10000000
	ns_set_coords hword1=0x018C hword3=0x00C8 hword5=0x0000
	ns_set_animation_force_update byte1=0x1C
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068A89:
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_8068A8C::
	.word byte_8068AA8
	.word byte_8068ABB
	.word byte_8068AD3
	.word dword_8068AEC
	.word byte_8068B07
	.word byte_8068B22
	.word 0x000000FF
byte_8068AA8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0152 hword3=0x007A hword5=0x0010
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8068ABB::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x018C hword3=0x0060 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_8068AD3::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x31 byte2=0x1C
	ns_set_coords hword1=0x018C hword3=0x0060 hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

dword_8068AEC::
	ns_jump_if_flag_clear event16_1=EVENT_5FB destination3=npcscript_8068B06
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x33 byte2=0x1C
	ns_set_coords hword1=0x019C hword3=0xFF9E hword5=0x0000
	ns_set_animation_force_update byte1=0x06
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068B06:
	ns_free_and_end

byte_8068B07::
	ns_jump_if_flag_clear event16_1=EVENT_5FC destination3=npcscript_8068B21
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x30 byte2=0x1C
	ns_set_coords hword1=0x019E hword3=0x0000 hword5=0x0000
	ns_set_animation_force_update byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068B21:
	ns_free_and_end

byte_8068B22::
	ns_jump_if_flag_clear event16_1=EVENT_5FE destination3=npcscript_8068B41
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x2D byte2=0x1C
	ns_write_hidden_oam_pieces word1=0x10000000
	ns_set_coords hword1=0x018C hword3=0x00C8 hword5=0x0000
	ns_set_animation_force_update byte1=0x1C
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068B41:
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_8068B44::
	.word byte_8068B60
	.word byte_8068B73
	.word byte_8068B8B
	.word byte_8068BA9
	.word dword_8068BC4
	.word byte_8068BDF
	.word 0x000000FF
byte_8068B60::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0152 hword3=0x00DC hword5=0x0010
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8068B73::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x018C hword3=0x00C0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_set_color_shader hword1=0x4000
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_free_and_end

byte_8068B8B::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2D byte2=0x1C
	ns_write_hidden_oam_pieces word1=0x10000000
	ns_set_coords hword1=0x018C hword3=0x00C8 hword5=0x0000
	ns_set_animation_force_update byte1=0x1C
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

byte_8068BA9::
	ns_jump_if_flag_clear event16_1=EVENT_5FB destination3=byte_8068BC3
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x33 byte2=0x1C
	ns_set_coords hword1=0x019C hword3=0xFF9E hword5=0x0000
	ns_set_animation_force_update byte1=0x06
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_8068BC3::
	ns_free_and_end

dword_8068BC4::
	ns_jump_if_flag_clear event16_1=EVENT_5FC destination3=npcscript_8068BDE
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x30 byte2=0x1C
	ns_set_coords hword1=0x019E hword3=0x0000 hword5=0x0000
	ns_set_animation_force_update byte1=0x05
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068BDE:
	ns_free_and_end

byte_8068BDF::
	ns_jump_if_flag_clear event16_1=EVENT_5FD destination3=npcscript_8068BF9
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x31 byte2=0x1C
	ns_set_coords hword1=0x018C hword3=0x0060 hword5=0x0000
	ns_set_animation_force_update byte1=0x1B
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8068BF9:
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_8068BFC::
	.word byte_8068C14
	.word byte_8068C39
	.word byte_8068C5C
	.word byte_8068C7F
	.word byte_8068CA4
	.word 0x000000FF
byte_8068C14::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0xFF72 hword3=0xFE6E hword5=0x0000
	ns_set_npc_palette_index byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x05
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0E
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_8068C39::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x0032 hword3=0xFEC4 hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x06
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0F
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_8068C5C::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0x0032 hword3=0x004E hword5=0x0000
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

byte_8068C7F::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0xFF94 hword3=0x008C hword5=0x0000
	ns_set_npc_palette_index byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x05
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x0E
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_free_and_end

byte_8068CA4::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2F byte2=0x1C
	ns_set_coords hword1=0xFF14 hword3=0x008E hword5=0x0000
	ns_set_npc_palette_index byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_active_and_visible
	ns_play_sound hword1=0x00E1
	ns_set_animation_force_update byte1=0x07
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation_force_update byte1=0x10
	ns_pause byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_free_and_end
	ns_end
	ns_end
	ns_end

/*For debugging purposes, connect comment at any range!*/
