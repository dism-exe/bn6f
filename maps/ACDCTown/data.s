
byte_804CFBC::
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00A60000,
		y: -0x00640000,
		z: 0x00000000,
		object_id: 0x000000BC,
	]
	.word 0xFF

byte_804CFD4::
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00160000,
		y: -0x001E0000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x001A0000,
		y: -0x001E0000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x004A0000,
		y: -0x001E0000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00160000,
		y: 0x00120000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x001A0000,
		y: 0x00120000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x004A0000,
		y: 0x00120000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00160000,
		y: 0x00420000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x001A0000,
		y: 0x00420000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x004A0000,
		y: 0x00420000,
		z: 0x00000000,
		object_id: 0x0000000F,
	]
	.word 0xFF

dword_804D08C::
	.word 0xFF
dword_804D090::
	.word 0xFF
dword_804D094::
	.word 0xFF
dword_804D098::
	.word 0xFF
dword_804D09C::
	.word 0xFF
dword_804D0A0::
	.word 0xFF
map00_ACDC_804D0A4:: // [*const MapScript; ACDC_TOWN_NUM_MAPS]
	.word MapScriptACDC804D104
	.word byte_804D334
off_804D0AC:: // [*const MapScript; ACDC_TOWN_NUM_MAPS]
  .word MapScript804D2A0
	.word dword_804D3B0
NPCScriptsACDC_804D0B4:: // [*const [*const NPCScript]; ACDC_TOWN_NUM_MAPS]
  .word off_804D3B4
	.word dword_804DEEC
off_804D0BC::
	.word byte_804D0C4
	.word byte_804D0D4
byte_804D0C4::
	.byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_804D0D4::
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
off_804D0E4::
	.word byte_804D0EC
	.word byte_804D0F4
byte_804D0EC::
	.byte 0x17, 0x29, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_804D0F4::
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_804D0FC::
	.byte 0x24, 0x5
byte_804D0FE::
	.byte 0xC, 0xC
dword_804D100::
	.word 0xB0B
MapScriptACDC804D104::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_3A destination4=byte_804D115
	ms_start_cutscene ptr1=unk_809BBE9 word5=0x00000000

byte_804D115::
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=byte_804D12F
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_804D163
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_804D1ED
	ms_jump destination1=dword_804D23C

byte_804D12F::
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x00 destination3=mapscript_804D13B
	ms_jump destination1=dword_804D23C

mapscript_804D13B:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_403 destination4=dword_804D23C
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_404 destination4=dword_804D23C
	ms_set_event_flag byte1=0xFF event16_2=EVENT_404
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=CutsceneScriptNewGameAcdc word5=0x00000000
	ms_jump destination1=dword_804D23C

mapscript_804D163:
	ms_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=mapscript_804D16F
	ms_jump destination1=dword_804D23C

mapscript_804D16F:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C1A destination4=mapscript_804D184
	ms_write_word ptr1=unk_2011EA4 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1

mapscript_804D184:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C12 destination4=dword_804D190
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16D0

dword_804D190::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C0F destination4=dword_804D1B8
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C10 destination4=dword_804D1B8
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C10
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8090C04 word5=0x00000000
	ms_jump destination1=dword_804D23C

dword_804D1B8::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C19 destination4=dword_804D23C
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C1A destination4=dword_804D23C
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C1A
	ms_set_enter_map_screen_fade byte1=0x04 byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_write_word ptr1=unk_2011EA4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_start_cutscene ptr1=byte_80911A0 word5=0x00000000
	ms_jump destination1=dword_804D23C

mapscript_804D1ED:
	ms_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=dword_804D200
	ms_jump_if_progress_in_range byte1=0x65 byte2=0x65 destination3=mapscript_804D228
	ms_jump destination1=dword_804D23C

dword_804D200::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E51 destination4=dword_804D23C
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E52 destination4=dword_804D23C
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E52
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8097358 word5=0x00000000
	ms_jump destination1=dword_804D23C

mapscript_804D228:
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8097594 word5=0x00000000
	ms_jump destination1=dword_804D23C

dword_804D23C::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_133D destination4=byte_804D251
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_133E destination4=byte_804D251
	ms_jump destination1=byte_804D27A

byte_804D251::
	ms_clear_event_flag_range byte1=0x02 event16_2=EVENT_133D
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=mapscript_804D26C
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000047
	ms_jump destination1=byte_804D27A

mapscript_804D26C:
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000048
	ms_jump destination1=byte_804D27A

byte_804D27A::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_113E destination4=mapscript_804D29F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_113F destination4=mapscript_804D29F
	ms_set_event_flag byte1=0xFF event16_2=EVENT_113F
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000028
	ms_jump destination1=mapscript_804D29F

mapscript_804D29F:
	ms_end

MapScript804D2A0::
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_804D2AC
	ms_jump destination1=byte_804D2E6

mapscript_804D2AC:
	ms_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=mapscript_804D2B8
	ms_jump destination1=byte_804D2E6

mapscript_804D2B8:
	ms_jump_if_flag_range_clear byte1=0x05 event16_2=EVENT_CC9 destination4=byte_804D2E6
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C11 destination4=byte_804D2E6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C12 destination4=byte_804D2E6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C12
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16D0
	ms_start_cutscene ptr1=cutscenescript_8090D34 word5=0x00000000
	ms_jump destination1=byte_804D2E6

byte_804D2E6::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_133D destination4=mapscript_804D2FC
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0017
	ms_jump destination1=byte_804D312

mapscript_804D2FC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_133E destination4=byte_804D312
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0018
	ms_jump destination1=byte_804D312

byte_804D312::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_113F destination4=dword_804D330
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_113E destination4=dword_804D330
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00E1
	ms_jump destination1=dword_804D330

dword_804D330::
	ms_end
	ms_end
	ms_end
	ms_end

byte_804D334::
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=mapscript_804D347
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_804D37B
	ms_jump destination1=mapscript_804D3AF

mapscript_804D347:
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x00 destination3=mapscript_804D353
	ms_jump destination1=mapscript_804D3AF

mapscript_804D353:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_401 destination4=mapscript_804D3AF
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_402 destination4=mapscript_804D3AF
	ms_set_event_flag byte1=0xFF event16_2=EVENT_402
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=CutsceneScriptNewGame word5=0x00000000
	ms_jump destination1=mapscript_804D3AF

mapscript_804D37B:
	ms_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=mapscript_804D387
	ms_jump destination1=mapscript_804D3AF

mapscript_804D387:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E4F destination4=mapscript_804D3AF
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E50 destination4=mapscript_804D3AF
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E50
	ms_set_enter_map_screen_fade byte1=0x24 byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_809718C word5=0x00000000
	ms_jump destination1=mapscript_804D3AF

mapscript_804D3AF:
	ms_end

dword_804D3B0::
	ms_end
	ms_end
	ms_end
	ms_end

off_804D3B4::
	.word byte_804D3EC
	.word byte_804D426
	.word byte_804D47A
	.word byte_804D4B6
	.word npcscript_804D50B
	.word byte_804D52E
	.word byte_804D551
	.word byte_804D564
	.word byte_804D595
	.word byte_804D5B0
	.word byte_804D5D3
	.word byte_804D65E
	.word byte_804D6DD
	.word 0x000000FF
byte_804D3EC::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x09
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_804D415
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=npcscript_804D3FE
	ns_free_and_end

npcscript_804D3FE:
	ns_jump_if_flag_set event16_1=EVENT_C1C destination3=npcscript_804D425
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFF7C hword3=0x00A2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D415:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFF3C hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D425:
	ns_free_and_end

byte_804D426::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x64 destination3=npcscript_804D464
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_804D436
	ns_free_and_end

npcscript_804D436:
	ns_jump_if_flag_set event16_1=EVENT_C1C destination3=npcscript_804D44F
	ns_set_text_script_index byte1=0x02
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0xFF0A hword3=0xFF7E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D44F:
	ns_set_text_script_index byte1=0x10
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0x00A4 hword3=0x00A0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x0A destination4=byte_809F71C

npcscript_804D464:
	ns_set_text_script_index byte1=0x01
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0xFF8E hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x10 destination4=byte_809F71C
	ns_free_and_end

byte_804D47A::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x0C
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x64 destination3=byte_804D4A5
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=npcscript_804D48C
	ns_free_and_end

npcscript_804D48C:
	ns_jump_if_flag_set event16_1=EVENT_C1C destination3=npcscript_804D4B5
	ns_set_text_script_index byte1=0x04
	ns_set_sprite byte1=0x0C
	ns_set_coords hword1=0x004C hword3=0xFF62 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804D4A5::
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF1A hword3=0xFFA8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D4B5:
	ns_free_and_end

byte_804D4B6::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_804D4F8
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x61 destination3=npcscript_804D4F8
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=byte_804D4CD
	ns_free_and_end

byte_804D4CD::
	ns_jump_if_flag_set event16_1=EVENT_C1C destination3=byte_804D4E6
	ns_set_text_script_index byte1=0x06
	ns_set_sprite byte1=0x0E
	ns_set_coords hword1=0x00FC hword3=0xFF65 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804D4E6::
	ns_set_text_script_index byte1=0x0F
	ns_set_sprite byte1=0x0E
	ns_set_coords hword1=0xFFF2 hword3=0xFF60 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D4F8:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0x00B4 hword3=0x00A0 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

npcscript_804D50B:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=npcscript_804D514
	ns_free_and_end

npcscript_804D514:
	ns_jump_if_flag_set event16_1=EVENT_C1C destination3=npcscript_804D52D
	ns_set_text_script_index byte1=0x08
	ns_set_sprite byte1=0x19
	ns_set_coords hword1=0x005A hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D52D:
	ns_free_and_end

byte_804D52E::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x10
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=byte_804D550
	ns_jump_if_progress_in_range byte1=0x60 byte2=0xFF destination3=npcscript_804D540
	ns_free_and_end

npcscript_804D540:
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x0132 hword3=0x00A2 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804D550::
	ns_free_and_end

byte_804D551::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x10
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x32
	ns_set_coords hword1=0x012C hword3=0xFF62 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804D564::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x1A
	ns_jump_if_flag_set event16_1=EVENT_1C36 destination3=byte_804D594
	ns_jump_if_flag_set event16_1=EVENT_115D destination3=npcscript_804D576
	ns_free_and_end

npcscript_804D576:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=byte_804D594
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_804D594
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0x0102 hword3=0x0020 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804D594::
	ns_free_and_end

byte_804D595::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x15
	ns_jump_if_progress_in_range byte1=0x52 byte2=0xFF destination3=npcscript_804D5A0
	ns_free_and_end

npcscript_804D5A0:
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x05
	ns_set_coords hword1=0xFFF0 hword3=0x00A2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804D5B0::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x04
	ns_jump_if_progress_in_range byte1=0x60 byte2=0xFF destination3=npcscript_804D5BB
	ns_free_and_end

npcscript_804D5BB:
	ns_jump_if_flag_set event16_1=EVENT_E00 destination3=npcscript_804D5C3
	ns_free_and_end

npcscript_804D5C3:
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x1E
	ns_set_coords hword1=0x008E hword3=0x0038 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_804D5D3::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_804D5DC
	ns_free_and_end

npcscript_804D5DC:
	ns_jump_if_flag_set event16_1=EVENT_C1C destination3=npcscript_804D649
	ns_jump_if_flag_set event16_1=EVENT_C1A destination3=npcscript_804D637
	ns_jump_if_flag_set event16_1=EVENT_C14 destination3=npcscript_804D622
	ns_jump_if_flag_set event16_1=EVENT_C12 destination3=byte_804D60D
	ns_set_text_script_index byte1=0x11
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFF6A hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x0A destination4=byte_809F71C

byte_804D60D::
	ns_set_text_script_index byte1=0x11
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0x00F8 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_init_movement byte1=0x07 byte2=0x06 byte3=0x0A destination4=npcscript_809F704

npcscript_804D622:
	ns_set_text_script_index byte1=0x11
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFF72 hword3=0xFFAC hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x15 byte3=0x08 destination4=byte_809F71C

npcscript_804D637:
	ns_set_text_script_index byte1=0x11
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFF72 hword3=0xFFAC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D649:
	ns_set_text_script_index byte1=0x11
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFFCA hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x0A destination4=byte_809F6EC

byte_804D65E::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_804D667
	ns_free_and_end

npcscript_804D667:
	ns_jump_if_flag_set event16_1=EVENT_C1C destination3=npcscript_804D6CB
	ns_jump_if_flag_set event16_1=EVENT_C1A destination3=npcscript_804D6B9
	ns_jump_if_flag_set event16_1=EVENT_C14 destination3=byte_804D6A7
	ns_jump_if_flag_set event16_1=EVENT_C12 destination3=npcscript_804D695
	ns_set_text_script_index byte1=0x12
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFF58 hword3=0x0034 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D695:
	ns_set_text_script_index byte1=0x12
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0x00A4 hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_804D6A7::
	ns_set_text_script_index byte1=0x12
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFF60 hword3=0x0004 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D6B9:
	ns_set_text_script_index byte1=0x12
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFF6A hword3=0xFFFA hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D6CB:
	ns_set_text_script_index byte1=0x12
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0x0104 hword3=0xFFDA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804D6DD::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_804D6E6
	ns_free_and_end

npcscript_804D6E6:
	ns_jump_if_flag_set event16_1=EVENT_C1C destination3=npcscript_804D74A
	ns_jump_if_flag_set event16_1=EVENT_C1A destination3=byte_804D738
	ns_jump_if_flag_set event16_1=EVENT_C14 destination3=npcscript_804D726
	ns_jump_if_flag_set event16_1=EVENT_C12 destination3=npcscript_804D714
	ns_set_text_script_index byte1=0x13
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFF38 hword3=0x0004 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D714:
	ns_set_text_script_index byte1=0x13
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0x011C hword3=0x0048 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D726:
	ns_set_text_script_index byte1=0x13
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFF34 hword3=0xFFD0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804D738::
	ns_set_text_script_index byte1=0x13
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFF42 hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D74A:
	ns_set_text_script_index byte1=0x13
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFF6A hword3=0x0016 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

unk_804D75C:
	.word byte_804D790
	.word byte_804D7B6
	.word byte_804D7DD
	.word npcscript_804D7F7
	.word byte_804D829
	.word byte_804D849
	.word byte_804D867
	.word byte_804D885
	.word byte_804D8A5
	.word byte_804D8C5
	.word byte_804D8E5
	.word byte_804D905
	.word 0x000000FF
byte_804D790::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0080 hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0D
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_jump_with_link destination1=byte_809F6CC

byte_804D7B6::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x05
	ns_set_coords hword1=0x0070 hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end

byte_804D7DD::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x06
	ns_set_coords hword1=0x008C hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end

npcscript_804D7F7:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0x0092 hword3=0x005C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804D829::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0x0082 hword3=0x005C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_pause byte1=0x03
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804D849::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0x0074 hword3=0x005A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804D867::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x09
	ns_set_coords hword1=0x0068 hword3=0x006C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804D885::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0x0078 hword3=0x0070 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_pause byte1=0x04
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804D8A5::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0C
	ns_set_coords hword1=0x0086 hword3=0x006A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_pause byte1=0x01
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804D8C5::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x08
	ns_set_coords hword1=0x0098 hword3=0x006C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_pause byte1=0x08
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x04 byte3=0x01
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804D8E5::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x13
	ns_set_coords hword1=0x0066 hword3=0x005C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_pause byte1=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804D905::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0x009E hword3=0x0060 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_pause byte1=0x01
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_list_804D928::
	.word byte_804D93C
	.word byte_804D997
	.word byte_804D9C4
	.word byte_804D9F6
	.word 0x000000FF
byte_804D93C::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFE2 hword3=0xFF94 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_run_secondary_script ptr1=npcscript_804D971
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFF64 hword3=0x0006 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804D971:
	ns_pause_secondary_script byte1=0x01
	ns_set_active_and_visible
	ns_set_alpha byte1=0x02
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x04
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x06
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x08
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0A
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0C
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0E
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x10
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x00
	ns_end_secondary_script

byte_804D997::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFFAA hword3=0xFF84 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFF56 hword3=0xFFF2 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC

byte_804D9C4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFFAA hword3=0xFF94 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x06
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFF48 hword3=0x0006 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC

byte_804D9F6::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFFAA hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x04
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFF5A hword3=0x0012 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_804DA28::
	.word byte_804DA3C
	.word byte_804DA52
	.word byte_804DA68
	.word byte_804DA7E
	.word 0x000000FF
byte_804DA3C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0106 hword3=0x0022 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DA52::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0x00F2 hword3=0x0022 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DA68::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0x0102 hword3=0x0030 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DA7E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0x00FE hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804DA94:
	.word byte_804DAA8
	.word byte_804DAC3
	.word byte_804DAD9
	.word npcscript_804DAFD
	.word 0x000000FF
byte_804DAA8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF5E hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_jump_with_link destination1=byte_809F6CC

byte_804DAC3::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFF5C hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DAD9::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFF46 hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804DAFD:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFF5C hword3=0xFFE2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_804DB14::
	.word byte_804DB7C
	.word byte_804DBF5
	.word byte_804DC40
	.word byte_804DC73
	.word byte_804DC9B
	.word byte_804DCCF
	.word byte_804DCFA
	.word 0x000000FF
npcscript_list_804DB34::
	.word byte_804DD1E
	.word byte_804DD4C
	.word byte_804DD62
	.word byte_804DD78
	.word byte_804DD8E
	.word byte_804DDA4
	.word byte_804DDBA
	.word byte_804DDD0
	.word 0x000000FF
npcscript_list_804DB58::
	.word byte_804DE1F
	.word byte_804DE4F
	.word byte_804DE65
	.word byte_804DE7B
	.word byte_804DE91
	.word byte_804DEA7
	.word byte_804DEBD
	.word byte_804DED3
	.word 0x000000FF
byte_804DB7C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0080 hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x12
	ns_wait_cutscene_var byte1=0x09 byte2=0x80
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x09 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x19
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x1A
	ns_wait_cutscene_var byte1=0x08 byte2=0x1B
	ns_run_secondary_script ptr1=npcscript_804DBD1
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x1C
	ns_free_and_end

npcscript_804DBD1:
	ns_pause_secondary_script byte1=0x10
	ns_set_alpha byte1=0x10
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0E
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0C
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0A
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x08
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x06
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x04
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x02
	ns_pause_secondary_script byte1=0x01
	ns_set_active_and_invisible
	ns_end_secondary_script

byte_804DBF5::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0x0090 hword3=0x0054 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_pause byte1=0x02
	ns_set_animation byte1=0x01
	ns_pause byte1=0xC0
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_pause byte1=0x02
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_pause byte1=0x02
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x17
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x18
	ns_wait_cutscene_var byte1=0x08 byte2=0x19
	ns_jump_with_link destination1=byte_809F6CC

byte_804DC40::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0x0080 hword3=0x0058 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_pause byte1=0x04
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_pause byte1=0x04
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_pause byte1=0x04
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x15
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x16
	ns_wait_cutscene_var byte1=0x08 byte2=0x17
	ns_jump_with_link destination1=byte_809F6CC

byte_804DC73::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0x0072 hword3=0x0054 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x15
	ns_jump_with_link destination1=byte_809F6CC

byte_804DC9B::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x006E hword3=0x003A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_pause byte1=0x06
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_pause byte1=0x06
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x10
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_pause byte1=0x06
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x14
	ns_wait_cutscene_var byte1=0x08 byte2=0x15
	ns_jump_with_link destination1=byte_809F6CC

byte_804DCCF::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0x006A hword3=0x0048 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_pause byte1=0x03
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_pause byte1=0x03
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x13
	ns_pause byte1=0x03
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x15
	ns_jump_with_link destination1=byte_809F6CC

byte_804DCFA::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x04
	ns_set_coords hword1=0x0110 hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x0E
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_jump_with_link destination1=byte_809F6CC

byte_804DD1E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x008C hword3=0x003E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x32
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x33
	ns_wait_cutscene_var byte1=0x08 byte2=0x34
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x35
	ns_wait_cutscene_var byte1=0x08 byte2=0x36
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x37
	ns_wait_cutscene_var byte1=0x08 byte2=0x38
	ns_jump_with_link destination1=byte_809F6CC

byte_804DD4C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0x0084 hword3=0x005A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_jump_with_link destination1=byte_809F6CC

byte_804DD62::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0x0076 hword3=0x0058 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_jump_with_link destination1=byte_809F6CC

byte_804DD78::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0x006A hword3=0x0054 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_jump_with_link destination1=byte_809F6CC

byte_804DD8E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x0066 hword3=0x003A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_jump_with_link destination1=byte_809F6CC

byte_804DDA4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0x0062 hword3=0x0048 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_jump_with_link destination1=byte_809F6CC

byte_804DDBA::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x04
	ns_set_coords hword1=0x0090 hword3=0x0058 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_jump_with_link destination1=byte_809F6CC

byte_804DDD0::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x0080 hword3=0x0026 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_run_secondary_script ptr1=npcscript_804DDF9
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x31
	ns_wait_cutscene_var byte1=0x08 byte2=0x32
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804DDF9:
	ns_pause_secondary_script byte1=0x01
	ns_set_active_and_visible
	ns_set_alpha byte1=0x02
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x04
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x06
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x08
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0A
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0C
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0E
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x10
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x00
	ns_end_secondary_script

byte_804DE1F::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF5C hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x19
	ns_pause byte1=0x01
	ns_wait_anim_frame byte1=0x01
	ns_play_sound hword1=0x00B7
	ns_wait_anim_frame byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x41
	ns_pause byte1=0x03
	ns_play_music hword1=0x0063
	ns_play_sound hword1=0x0077
	ns_wait_anim_frame byte1=0xC0
	ns_jump_with_link destination1=byte_809F6CC

byte_804DE4F::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFF52 hword3=0xFFEE hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_jump_with_link destination1=byte_809F6CC

byte_804DE65::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFF44 hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_jump_with_link destination1=byte_809F6CC

byte_804DE7B::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFF46 hword3=0xFFE0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_jump_with_link destination1=byte_809F6CC

byte_804DE91::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0xFF44 hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_jump_with_link destination1=byte_809F6CC

byte_804DEA7::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0xFF56 hword3=0xFFBC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_jump_with_link destination1=byte_809F6CC

byte_804DEBD::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x04
	ns_set_coords hword1=0xFF62 hword3=0xFFEE hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_jump_with_link destination1=byte_809F6CC

byte_804DED3::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_set_coords hword1=0xFF5E hword3=0xFFC2 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x40
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

dword_804DEEC::
	.word 0x000000FF

unk_804DEF0:
	.word byte_804DF1C
	.word byte_804DF62
	.word byte_804DF78
	.word byte_804DF8E
	.word byte_804DFA4
	.word byte_804DFBA
	.word byte_804DFD0
	.word byte_804DFE6
	.word byte_804DFFC
	.word byte_804E012
	.word 0x000000FF
byte_804DF1C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFDE hword3=0x004A hword5=0x0008
	ns_set_animation byte1=0x1C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_coords hword1=0xFFDC hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0D
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x05
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x07
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_jump_with_link destination1=byte_809F6CC

byte_804DF62::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFFAE hword3=0x004A hword5=0x0008
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DF78::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0x000E hword3=0x001A hword5=0x0008
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DF8E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFFDE hword3=0xFFEA hword5=0x0008
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DFA4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0x000E hword3=0xFFEA hword5=0x0008
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DFBA::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0xFFAE hword3=0xFFEA hword5=0x0008
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DFD0::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0C
	ns_set_coords hword1=0xFFDE hword3=0x001A hword5=0x0008
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DFE6::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x08
	ns_set_coords hword1=0xFFAE hword3=0x001A hword5=0x0008
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804DFFC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x09
	ns_set_coords hword1=0x000E hword3=0x004A hword5=0x0008
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E012::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x13
	ns_set_coords hword1=0x0048 hword3=0x001E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_804E030::
	.word byte_804E090
	.word byte_804E0A6
	.word byte_804E0BC
	.word byte_804E0D2
	.word byte_804E0E8
	.word byte_804E0FE
	.word byte_804E114
	.word byte_804E12A
	.word byte_804E140
	.word byte_804E156
	.word byte_804E180
	.word byte_804E1DF
	.word npcscript_804E203
	.word byte_804E235
	.word npcscript_804E267
	.word 0x000000FF
npcscript_list_804E070::
	.word byte_804E29C
	.word byte_804E306
	.word byte_804E31C
	.word byte_804E332
	.word byte_804E348
	.word byte_804E35E
	.word byte_804E374
	.word 0x000000FF
byte_804E090::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFCE hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E0A6::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFF9E hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E0BC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFFFE hword3=0x0016 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E0D2::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFFCE hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E0E8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0xFFFE hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E0FE::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0xFF9E hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E114::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0C
	ns_set_coords hword1=0xFFCE hword3=0x0016 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E12A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x08
	ns_set_coords hword1=0xFF9E hword3=0x0016 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E140::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x09
	ns_set_coords hword1=0xFFFE hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E156::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x13
	ns_set_coords hword1=0x0058 hword3=0x000E hword5=0x0004
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_coords hword1=0x0058 hword3=0x0002 hword5=0x0004
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_jump_with_link destination1=byte_809F6CC

byte_804E180::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x12
	ns_set_coords hword1=0x004C hword3=0x0094 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_run_secondary_script ptr1=npcscript_804E1BB
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x0D
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_coords hword1=0x0058 hword3=0x001A hword5=0x0004
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804E1BB:
	ns_set_active_and_visible
	ns_set_alpha byte1=0x02
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x04
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x06
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x08
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0A
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0C
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0E
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x10
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x00
	ns_end_secondary_script

byte_804E1DF::
	ns_set_active_and_visible

byte_804E1E0::
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0xFF84 hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFA8 hword3=0x0028 hword5=0x0000
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x12
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end

npcscript_804E203:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0xFF84 hword3=0x001C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFA8 hword3=0x0030 hword5=0x0000
	ns_pause byte1=0x10
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x10
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end

byte_804E235::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0xFF84 hword3=0xFFFA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFA8 hword3=0x0028 hword5=0x0000
	ns_pause byte1=0x20
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x10
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end

npcscript_804E267:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0C
	ns_set_coords hword1=0xFF84 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFA8 hword3=0x002A hword5=0x0000
	ns_pause byte1=0x30
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x10
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end

byte_804E29C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFCE hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x11
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x11
	ns_wait_cutscene_var byte1=0x08 byte2=0x12
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x01
	ns_run_secondary_script ptr1=byte_804E2E2
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x13
	ns_free_and_end

byte_804E2E2::
	ns_pause_secondary_script byte1=0x30
	ns_set_alpha byte1=0x10
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0E
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0C
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x0A
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x08
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x06
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x04
	ns_pause_secondary_script byte1=0x01
	ns_set_alpha byte1=0x02
	ns_pause_secondary_script byte1=0x01
	ns_set_active_and_invisible
	ns_end_secondary_script

byte_804E306::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0xFFE0 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E31C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0xFFF6 hword3=0x002E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E332::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0xFFFE hword3=0x003C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E348::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0xFFCE hword3=0x0028 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E35E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0xFFBC hword3=0x0030 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_804E374::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x13
	ns_set_coords hword1=0x0058 hword3=0x000E hword5=0x0004
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

/*For debugging purposes, connect comment at any range!*/
