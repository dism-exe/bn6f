
byte_8069224:
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x01260000,
		y: 0x00D60000,
		z: 0x00000000,
		object_id: 0x0000000D,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x005A0000,
		y: 0x00B60000,
		z: 0x00000000,
		object_id: 0x0000000E,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x019A0000,
		y: -0x00AA0000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	.word 0xFF

byte_8069264:
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x008E0000,
		y: -0x00800000,
		z: 0x00000000,
		object_id: 0x00000010,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00B40000,
		y: -0x00420000,
		z: 0x00000000,
		object_id: 0x00000011,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x01920000,
		y: -0x00420000,
		z: 0x00000000,
		object_id: 0x00000012,
	]
	.word 0xFF

byte_80692A4:
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x01640000,
		y: -0x01320000,
		z: -0x00400000,
		object_id: 0x0000002D,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00120000,
		y: 0x00BE0000,
		z: 0x00000000,
		object_id: 0x00000013,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00F20000,
		y: 0x005E0000,
		z: 0x00000000,
		object_id: 0x00000014,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00D20000,
		y: -0x00620000,
		z: 0x00000000,
		object_id: 0x00000015,
	]
	.word 0xFF

off_80692F8: // [*const MapScript; JUDGETREE_COMP_NUM_MAPS]
	.word byte_806935C
	.word byte_80693C8
	.word byte_8069404
off_8069304: // [*const MapScript; JUDGETREE_COMP_NUM_MAPS]
	.word byte_806937A
	.word byte_80693E6
	.word byte_8069462
NPCScriptsJudgetreeComp_8069310: // [*const [*const NPCScript]; JUDGETREE_COMP_NUM_MAPS]
  .word off_80694B8
	.word off_8069590
	.word off_8069648
off_806931C:
	.word byte_8069328
	.word byte_8069338
	.word byte_8069348
byte_8069328:
	.byte 0x0, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_8069338:
	.byte 0x0, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_8069348:
	.byte 0x0, 0x1, 0x2, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
dword_8069358:
	.word 0x121212
byte_806935C:
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_8069370
	ms_call_native_function ptr1=sub_808CAD4+1 word5=0x00000000
	ms_jump destination1=byte_8069379

mapscript_8069370:
	ms_call_native_function ptr1=sub_808CA68+1 word5=0x00000000

byte_8069379:
	ms_end

byte_806937A:
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_8069386
	ms_jump destination1=byte_80693C5

mapscript_8069386:
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=mapscript_8069392
	ms_jump destination1=mapscript_80693B4

mapscript_8069392:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_829 destination4=mapscript_80693B4
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_82A destination4=mapscript_80693B4
	ms_set_event_flag byte1=0xFF event16_2=EVENT_82A
	ms_start_cutscene ptr1=cutscenescript_808B9B0 word5=0x00000000
	ms_jump destination1=byte_80693C5

mapscript_80693B4:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_9DA destination4=byte_80693C5
	ms_call_native_function ptr1=sub_808CB0C+1 word5=0x00000000

byte_80693C5:
	ms_end
	ms_end
	ms_end

byte_80693C8:
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_80693DC
	ms_call_native_function ptr1=sub_808CAD4+1 word5=0x00000000
	ms_jump destination1=byte_80693E5

mapscript_80693DC:
	ms_call_native_function ptr1=sub_808CA68+1 word5=0x00000000

byte_80693E5:
	ms_end

byte_80693E6:
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_80693F2
	ms_jump destination1=mapscript_8069403

mapscript_80693F2:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_9DB destination4=mapscript_8069403
	ms_call_native_function ptr1=sub_808CB0C+1 word5=0x00000000

mapscript_8069403:
	ms_end

byte_8069404:
	ms_jump_if_map_group_not_equal_last_map_group destination2=mapscript_8069418
	ms_call_native_function ptr1=sub_808CAD4+1 word5=0x00000000
	ms_jump destination1=byte_8069421

mapscript_8069418:
	ms_call_native_function ptr1=sub_808CA68+1 word5=0x00000000

byte_8069421:
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=byte_806942D
	ms_jump destination1=mapscript_8069461

byte_806942D:
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=byte_8069439
	ms_jump destination1=mapscript_8069461

byte_8069439:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_82D destination4=mapscript_8069461
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_82E destination4=mapscript_8069461
	ms_set_event_flag byte1=0xFF event16_2=EVENT_82E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808BB8C word5=0x00000000
	ms_jump destination1=mapscript_8069461

mapscript_8069461:
	ms_end

byte_8069462:
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_806946E
	ms_jump destination1=mapscript_80694B4

mapscript_806946E:
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=mapscript_806947A
	ms_jump destination1=mapscript_80694A3

mapscript_806947A:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_80694A3
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_82B destination4=mapscript_80694A3
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_82C destination4=mapscript_80694A3
	ms_set_event_flag byte1=0xFF event16_2=EVENT_82C
	ms_start_cutscene ptr1=cutscenescript_808BA20 word5=0x00000000
	ms_jump destination1=mapscript_80694B4

mapscript_80694A3:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_9DC destination4=mapscript_80694B4
	ms_call_native_function ptr1=sub_808CB0C+1 word5=0x00000000

mapscript_80694B4:
	ms_end
	ms_end
	ms_end
	ms_end

off_80694B8:
	.word byte_80694FC
	.word byte_80694D0
	.word byte_80694DB
	.word byte_80694E6
	.word byte_80694F1
	.word 0x000000FF
byte_80694D0:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1520
	ns_wait_mystery_data_taken hword1=0x1520
	ns_free_and_end

byte_80694DB:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1521
	ns_wait_mystery_data_taken hword1=0x1521
	ns_free_and_end

byte_80694E6:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1522
	ns_wait_mystery_data_taken hword1=0x1522
	ns_free_and_end

byte_80694F1:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1523
	ns_wait_mystery_data_taken hword1=0x1523
	ns_free_and_end

byte_80694FC:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=npcscript_8069507
	ns_free_and_end

npcscript_8069507:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFE48 hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_8069518::
	.word dword_8069524
	.word byte_8069555
	.word 0x000000FF
dword_8069524:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x37
	ns_init_native_callback ptr1=sub_806957C+1
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x2F
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFE30 hword3=0x005E hword5=0x0000
	ns_set_active_and_visible
	ns_set_animation byte1=0x3A
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x04
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8069555:
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_sprite_with_category byte1=0x63 byte2=0x1C
	ns_init_native_callback ptr1=sub_806957C+1
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

end_npcscript_8069579::
	.byte 0x00, 0x00, 0x00

	thumb_local_start
sub_806957C:
	push {r5, lr}
	bl ReadOWPlayerObjectCoords
	str r0, [r5, #0x24]
	str r1, [r5, #0x28]
	str r2, [r5, #0x2c]
	bl sub_809F904
	pop {r5, pc}
	.balign 4, 0
	thumb_func_end sub_806957C

off_8069590:
	.word byte_80695A4
	.word byte_80695AF
	.word byte_80695BA
	.word byte_80695C5
	.word 0x000000FF
byte_80695A4:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1528
	ns_wait_mystery_data_taken hword1=0x1528
	ns_free_and_end

byte_80695AF:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1529
	ns_wait_mystery_data_taken hword1=0x1529
	ns_free_and_end

byte_80695BA:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x152A
	ns_wait_mystery_data_taken hword1=0x152A
	ns_free_and_end

byte_80695C5:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x152B
	ns_wait_mystery_data_taken hword1=0x152B
	ns_free_and_end

npcscript_list_80695D0::
	.word dword_80695DC
	.word byte_806960D
	.word 0x000000FF
dword_80695DC:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x37
	ns_init_native_callback ptr1=sub_8069634+1
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x2F
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFDCA hword3=0x0046 hword5=0x0000
	ns_set_active_and_visible
	ns_set_animation byte1=0x3A
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x04
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_806960D:
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_sprite_with_category byte1=0x63 byte2=0x1C
	ns_init_native_callback ptr1=sub_8069634+1
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
sub_8069634:
	push {r5, lr}
	bl ReadOWPlayerObjectCoords
	str r0, [r5, #0x24]
	str r1, [r5, #0x28]
	str r2, [r5, #0x2c]
	bl sub_809F904
	pop {r5, pc}
	.balign 4, 0
	thumb_func_end sub_8069634

off_8069648:
	.word byte_8069660
	.word byte_806968C
	.word byte_8069697
	.word byte_80696A2
	.word byte_80696AD
	.word 0x000000FF
byte_8069660:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x41
	ns_jump_if_flag_set event16_1=EVENT_11DC destination3=npcscript_806968B
	ns_jump_if_flag_set event16_1=EVENT_11DA destination3=npcscript_8069672
	ns_free_and_end

npcscript_8069672:
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_806968B
	ns_set_sprite byte1=0x41
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0xFE2C hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806968B:
	ns_free_and_end

byte_806968C:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1530
	ns_wait_mystery_data_taken hword1=0x1530
	ns_free_and_end

byte_8069697:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1531
	ns_wait_mystery_data_taken hword1=0x1531
	ns_free_and_end

byte_80696A2:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1532
	ns_wait_mystery_data_taken hword1=0x1532
	ns_free_and_end

byte_80696AD:
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1533
	ns_wait_mystery_data_taken hword1=0x1533
	ns_free_and_end

npcscript_list_80696B8::
	.word dword_80696C4
	.word byte_80696F5
	.word 0x000000FF
dword_80696C4:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x37
	ns_init_native_callback ptr1=sub_806971C+1
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x2F
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFE2A hword3=0x0128 hword5=0x0000
	ns_set_active_and_visible
	ns_set_animation byte1=0x3A
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x04
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_80696F5:
	ns_set_active_and_invisible
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_sprite_with_category byte1=0x63 byte2=0x1C
	ns_init_native_callback ptr1=sub_806971C+1
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
sub_806971C:
	push {r5, lr}
	bl ReadOWPlayerObjectCoords
	str r0, [r5, #0x24]
	str r1, [r5, #0x28]
	str r2, [r5, #0x2c]
	bl sub_809F904
	pop {r5, pc}
	.balign 4, 0
	thumb_func_end sub_806971C

npcscript_list_8069730::
	.word byte_806974C
	.word byte_8069781
	.word byte_80697B0
	.word byte_80697DD
	.word byte_8069818
	.word byte_806982F
	.word 0x000000FF
byte_806974C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0160 hword3=0xFF0C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x2E
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_jump_with_link destination1=byte_809F6CC

byte_8069781:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x55
	ns_set_coords hword1=0x01C8 hword3=0xFF2C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_pause byte1=0x14
	ns_set_coords hword1=0x01A0 hword3=0xFF0C hword5=0x0000
	ns_set_active_and_visible
	ns_set_animation byte1=0x1B
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x12
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_jump_with_link destination1=byte_809F6CC

byte_80697B0:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x0D byte2=0x14
	ns_set_coords hword1=0x01C8 hword3=0xFF2C hword5=0x000E
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_set_active_and_visible
	ns_play_sound hword1=0x0135
	ns_set_animation_force_update byte1=0x06
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_pause byte1=0x14
	ns_set_coords hword1=0x01A0 hword3=0xFF0C hword5=0x000E
	ns_set_active_and_visible
	ns_play_sound hword1=0x0094
	ns_set_animation_force_update byte1=0x07
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_80697DD:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x53
	ns_set_coords hword1=0x01B0 hword3=0xFF0C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x2B
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_animation_force_update byte1=0x24
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x10
	ns_free_and_end

byte_8069818:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x01A0 hword3=0xFF0C hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_jump destination1=byte_809F880

byte_806982F:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2C byte2=0x1C
	ns_set_coords hword1=0x01A0 hword3=0xFF0C hword5=0xFFFC
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_set_animation_force_update byte1=0x00
	ns_run_secondary_script ptr1=byte_806986D
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_active_and_invisible
	ns_run_secondary_script ptr1=npcscript_8069877
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_set_active_and_visible
	ns_set_animation_force_update byte1=0x00
	ns_run_secondary_script ptr1=byte_806986D
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_active_and_invisible
	ns_run_secondary_script ptr1=npcscript_8069877
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_free_and_end

byte_806986D:
	ns_play_sound hword1=0x01D7
	ns_pause_secondary_script byte1=0x3B
	ns_jump destination1=byte_806986D

npcscript_8069877:
	ns_end_secondary_script

npcscript_list_8069878::
	.word byte_8069884
	.word byte_80698BF
	.word 0x000000FF
byte_8069884:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0180 hword3=0xFF0C hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x29
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_pause byte1=0x1E
	ns_play_sound hword1=0x00D4
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_jump_with_link destination1=byte_809F6CC

byte_80698BF:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x55
	ns_set_coords hword1=0x01A0 hword3=0xFF0C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x19
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end
	ns_end
	ns_end
	ns_end


