
byte_805E01C::
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00160000,
		y: -0x009A0000,
		z: 0x00000000,
		object_id: 0x00000072,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x001C0000,
		y: -0x007A0000,
		z: 0x00000000,
		object_id: 0x000000BE,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00860000,
		y: -0x016A0000,
		z: 0x00900000,
		object_id: 0x00000067,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00060000,
		y: -0x01EA0000,
		z: 0x00100000,
		object_id: 0x0000006C,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00860000,
		y: -0x016A0000,
		z: 0x00900000,
		object_id: 0x0000008B,
	]
	.word 0xFF

byte_805E084::
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00A20000,
		y: 0x000A0000,
		z: 0x00000000,
		object_id: 0x00000013,
	]
	.word 0xFF

byte_805E09C::
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00040000,
		y: 0x00400000,
		z: 0x00000000,
		object_id: 0x00000087,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00360000,
		y: 0x00160000,
		z: -0x00080000,
		object_id: 0x00000084,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00460000,
		y: 0x00260000,
		z: 0x00100000,
		object_id: 0x00000085,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00360000,
		y: 0x00760000,
		z: -0x00080000,
		object_id: 0x00000084,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00460000,
		y: 0x00860000,
		z: 0x00100000,
		object_id: 0x00000085,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x006A0000,
		y: 0x004A0000,
		z: 0x00040000,
		object_id: 0x00000086,
	]
	.word 0xFF

byte_805E118::
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00060000,
		y: -0x00540000,
		z: 0x00000000,
		object_id: 0x00000088,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00060000,
		y: 0x00320000,
		z: 0x00000000,
		object_id: 0x00000088,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00060000,
		y: 0x00BA0000,
		z: 0x00000000,
		object_id: 0x00000088,
	]
	.word 0xFF

dword_805E158::

	.word 0xFF

off_805E15C:: // [*const MapScript; GREEN_TOWN_NUM_MAPS]
  .word byte_805E248
	.word byte_805E490
	.word byte_805E6B8
	.word byte_805E8E4
	.word byte_805E940
off_805E170:: // [*const MapScript; GREEN_TOWN_NUM_MAPS]
  .word off_805E36C
	.word byte_805E5FC
	.word byte_805E804
	.word byte_805E93E
	.word byte_805E952
NPCScriptsGreenTown_805E184:: // [*const [*const NPCScript]; GREEN_TOWN_NUM_MAPS]
  .word off_805E9AC
	.word off_805EEE4
	.word off_805F3B0
	.word off_805FEBC
	.word off_80600C4
off_805E198:: 
  .word byte_805E1AC
	.word byte_805E1BC
	.word byte_805E1CC
	.word byte_805E1DC
	.word byte_805E1EC
byte_805E1AC::
	.byte 0x14, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
byte_805E1BC::
	.byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_805E1CC::
	.byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
byte_805E1DC::
	.byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
byte_805E1EC::
	.byte 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
off_805E1FC::
	.word byte_805E210
	.word byte_805E218
	.word byte_805E220
	.word byte_805E228
	.word byte_805E230
byte_805E210::
	.byte 0x20, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_805E218::
	.byte 0xF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_805E220::
	.byte 0xD, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_805E228::
	.byte 0x1E, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_805E230::
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_805E238::
	.byte 0x8, 0x8, 0x8, 0x8, 0x8
byte_805E23D::
	.byte 0xC, 0xC, 0xC, 0xC, 0xC
byte_805E242::
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0x0
byte_805E248::
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A9C destination4=byte_805E25E
	ms_load_gfx_anim ptr1=byte_808D9F8
	ms_load_gfx_anim ptr1=unk_808DA48

byte_805E25E::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_3A destination4=mapscript_805E26F
	ms_start_cutscene ptr1=unk_809BBE9 word5=0x00000000

mapscript_805E26F:
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_805E27B
	ms_jump destination1=byte_805E325

mapscript_805E27B:
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=mapscript_805E295
	ms_jump_if_progress_in_range byte1=0x34 byte2=0x34 destination3=mapscript_805E2BC
	ms_jump_if_progress_in_range byte1=0x35 byte2=0x35 destination3=byte_805E2C1
	ms_jump destination1=byte_805E325

mapscript_805E295:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_879 destination4=mapscript_805E2AA
	ms_write_word ptr1=unk_2011EAC word5=0x08051502
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3

mapscript_805E2AA:
	ms_write_word ptr1=unk_2011EA4 word5=0x08031402
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_jump destination1=byte_805E325

mapscript_805E2BC:
	ms_jump destination1=byte_805E325

byte_805E2C1::
	ms_write_word ptr1=unk_2011EB4 word5=0x08011C02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_877 destination4=byte_805E325
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_855 destination4=byte_805E325
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_856 destination4=byte_805E325
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=byte_805E313
	ms_set_event_flag byte1=0xFF event16_2=EVENT_856
	ms_set_event_flag byte1=0xFF event16_2=EVENT_878
	ms_write_word ptr1=unk_2011EB4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_start_cutscene ptr1=cutscenescript_808C1A0 word5=0x00000000
	ms_jump destination1=byte_805E325

byte_805E313::
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_877
	ms_start_cutscene ptr1=byte_80990DC word5=0x01070053
	ms_jump destination1=byte_805E325

byte_805E325::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1319 destination4=mapscript_805E342
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_131A destination4=mapscript_805E342
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_131B destination4=mapscript_805E342
	ms_jump destination1=mapscript_805E36B

mapscript_805E342:
	ms_clear_event_flag_range byte1=0x03 event16_2=EVENT_1319
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=mapscript_805E35D
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000041
	ms_jump destination1=mapscript_805E36B

mapscript_805E35D:
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000042
	ms_jump destination1=mapscript_805E36B

mapscript_805E36B:
	ms_end

off_805E36C::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_861 destination4=byte_805E382
	ms_start_cutscene ptr1=byte_809BFB0 word5=0x00000001
	ms_jump destination1=dword_805E44C

byte_805E382::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_103 destination4=mapscript_805E3B9
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_849 destination4=mapscript_805E3B9
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_84A destination4=mapscript_805E3B9
	ms_set_event_flag byte1=0xFF event16_2=EVENT_84A
	ms_write_word ptr1=unk_2011EB4 word5=0x08011C02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_start_cutscene ptr1=byte_808C248 word5=0x00000000
	ms_jump destination1=dword_805E44C

mapscript_805E3B9:
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=byte_805E3C5
	ms_jump destination1=dword_805E44C

byte_805E3C5::
	ms_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=byte_805E3E6
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=mapscript_805E40F
	ms_jump_if_progress_in_range byte1=0x34 byte2=0x34 destination3=mapscript_805E429
	ms_jump_if_progress_in_range byte1=0x35 byte2=0x35 destination3=mapscript_805E42E
	ms_jump destination1=dword_805E44C

byte_805E3E6::
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=dword_805E44C
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_805 destination4=dword_805E44C
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_806 destination4=dword_805E44C
	ms_set_event_flag byte1=0xFF event16_2=EVENT_806
	ms_start_cutscene ptr1=cutscenescript_808A4B0 word5=0x00000000
	ms_jump destination1=dword_805E44C

mapscript_805E40F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_879 destination4=dword_805E44C
	ms_write_word ptr1=unk_2011EAC word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump destination1=dword_805E44C

mapscript_805E429:
	ms_jump destination1=dword_805E44C

mapscript_805E42E:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_878 destination4=dword_805E44C
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_877 destination4=dword_805E44C
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0053
	ms_jump destination1=dword_805E44C

dword_805E44C::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1319 destination4=byte_805E462
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF000E
	ms_jump destination1=byte_805E48E

byte_805E462::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_131A destination4=mapscript_805E478
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF000F
	ms_jump destination1=byte_805E48E

mapscript_805E478:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_131B destination4=byte_805E48E
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0010
	ms_jump destination1=byte_805E48E

byte_805E48E::
	ms_end
	ms_end

byte_805E490::
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_805E4A7
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_805E5CA
	ms_jump destination1=byte_805E5FB

mapscript_805E4A7:
	ms_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=mapscript_805E4C1
	ms_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=mapscript_805E53F
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=byte_805E598
	ms_jump destination1=byte_805E5FB

mapscript_805E4C1:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_80A destination4=mapscript_805E4D6
	ms_write_word ptr1=unk_2011EB4 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5

mapscript_805E4D6:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_80C destination4=mapscript_805E4F3
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_808 destination4=mapscript_805E4F3
	ms_write_word ptr1=unk_2011EA4 word5=0x08010402
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1

mapscript_805E4F3:
	ms_write_word ptr1=unk_2011EA8 word5=0x08050102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_write_word ptr1=unk_2011EB0 word5=0x08030202
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_807 destination4=byte_805E5FB
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_808 destination4=byte_805E5FB
	ms_set_event_flag byte1=0xFF event16_2=EVENT_808
	ms_write_word ptr1=unk_2011EA4 word5=0x08010402
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_808A5BC word5=0x00000000
	ms_jump destination1=byte_805E5FB

mapscript_805E53F:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_870 destination4=mapscript_805E554
	ms_write_word ptr1=unk_2011EA8 word5=0x08050102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2

mapscript_805E554:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_86D destination4=byte_805E569
	ms_write_word ptr1=unk_2011EA4 word5=0x08010402
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1

byte_805E569::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_81E destination4=mapscript_805E586
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_81C destination4=mapscript_805E586
	ms_write_word ptr1=unk_2011EAC word5=0x08050302
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3

mapscript_805E586:
	ms_write_word ptr1=unk_2011EB0 word5=0x08030202
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_jump destination1=byte_805E5FB

byte_805E598::
	ms_write_word ptr1=unk_2011EAC word5=0x08050302
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_823 destination4=byte_805E5FB
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_824 destination4=byte_805E5FB
	ms_set_event_flag byte1=0xFF event16_2=EVENT_824
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_808B774 word5=0x00000000
	ms_jump destination1=byte_805E5FB

mapscript_805E5CA:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_805E5D6
	ms_jump destination1=byte_805E5FB

mapscript_805E5D6:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E8F destination4=byte_805E5FB
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E90 destination4=byte_805E5FB
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E90
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000066
	ms_jump destination1=byte_805E5FB

byte_805E5FB::
	ms_end

byte_805E5FC::
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_805E60F
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_805E68B
	ms_jump destination1=mapscript_805E6B5

mapscript_805E60F:
	ms_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=mapscript_805E622
	ms_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=mapscript_805E671
	ms_jump destination1=mapscript_805E6B5

mapscript_805E622:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x11 signedbyte2=0x00 destination3=mapscript_805E6B5
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_874 destination4=mapscript_805E6B5
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_809 destination4=mapscript_805E6B5
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_80A destination4=mapscript_805E6B5
	ms_set_event_flag byte1=0xFF event16_2=EVENT_80A
	ms_write_word ptr1=unk_2011EAC word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_write_word ptr1=unk_2011EB4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_start_cutscene ptr1=byte_808A6C8 word5=0x00000000
	ms_jump destination1=mapscript_805E6B5

mapscript_805E671:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_870 destination4=mapscript_805E6B5
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=mapscript_805E6B5

mapscript_805E68B:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_805E697
	ms_jump destination1=mapscript_805E6B5

mapscript_805E697:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E8F destination4=mapscript_805E6B5
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E90 destination4=mapscript_805E6B5
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00A2
	ms_jump destination1=mapscript_805E6B5

mapscript_805E6B5:
	ms_end
	ms_end
	ms_end

byte_805E6B8::
	ms_write_word ptr1=unk_2011EAC word5=0x08070002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_85E
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_805E6DC
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_805E7A3
	ms_jump destination1=mapscript_805E803

mapscript_805E6DC:
	ms_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=mapscript_805E6F6
	ms_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=mapscript_805E722
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=mapscript_805E756
	ms_jump destination1=mapscript_805E803

mapscript_805E6F6:
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_80D destination4=mapscript_805E803
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_80E destination4=mapscript_805E803
	ms_set_event_flag byte1=0xFF event16_2=EVENT_80E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808AAA4 word5=0x00000000
	ms_jump destination1=mapscript_805E803

mapscript_805E722:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_81E destination4=mapscript_805E72E
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2

mapscript_805E72E:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_813 destination4=mapscript_805E803
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_814 destination4=mapscript_805E803
	ms_set_event_flag byte1=0xFF event16_2=EVENT_814
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808AF0C word5=0x00000000
	ms_jump destination1=mapscript_805E803

mapscript_805E756:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_827 destination4=mapscript_805E77B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_828 destination4=mapscript_805E77B
	ms_set_event_flag byte1=0xFF event16_2=EVENT_828
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_808B8B0 word5=0x00000000
	ms_jump destination1=mapscript_805E803

mapscript_805E77B:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_82F destination4=mapscript_805E803
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_830 destination4=mapscript_805E803
	ms_set_event_flag byte1=0xFF event16_2=EVENT_830
	ms_set_enter_map_screen_fade byte1=0x04 byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808BCD8 word5=0x00000000
	ms_jump destination1=mapscript_805E803

mapscript_805E7A3:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=mapscript_805E7DE
	ms_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=mapscript_805E7B6
	ms_jump destination1=mapscript_805E803

mapscript_805E7B6:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_EC9 destination4=mapscript_805E7DE
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_ECA destination4=mapscript_805E7DE
	ms_set_event_flag byte1=0xFF event16_2=EVENT_ECA
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x0C
	ms_start_cutscene ptr1=cutscenescript_8097854 word5=0x00000000
	ms_jump destination1=mapscript_805E803

mapscript_805E7DE:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E91 destination4=mapscript_805E803
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E92 destination4=mapscript_805E803
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E92
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000067
	ms_jump destination1=mapscript_805E803

mapscript_805E803:
	ms_end

byte_805E804::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_85E destination4=mapscript_805E819
	ms_write_word ptr1=unk_2011EAC word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F3

mapscript_805E819:
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_805E82C
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_805E8B7
	ms_jump destination1=mapscript_805E8E1

mapscript_805E82C:
	ms_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=mapscript_805E83F
	ms_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=mapscript_805E88E
	ms_jump destination1=mapscript_805E8E1

mapscript_805E83F:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_805E870
	ms_jump_if_flag_range_clear byte1=0x04 event16_2=EVENT_868 destination4=mapscript_805E870
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_80B destination4=mapscript_805E870
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_80C destination4=mapscript_805E870
	ms_set_event_flag byte1=0xFF event16_2=EVENT_80C
	ms_start_cutscene ptr1=cutscenescript_808A824 word5=0x00000000
	ms_jump destination1=mapscript_805E8E1

mapscript_805E870:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_80E destination4=mapscript_805E8E1
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1CF2 destination4=mapscript_805E8E1
	ms_start_cutscene ptr1=byte_8098BB8 word5=0x00520214
	ms_jump destination1=mapscript_805E8E1

mapscript_805E88E:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x11 signedbyte2=0x00 destination3=mapscript_805E8E1
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_81F destination4=mapscript_805E8E1
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_820 destination4=mapscript_805E8E1
	ms_set_event_flag byte1=0xFF event16_2=EVENT_820
	ms_start_cutscene ptr1=cutscenescript_808B5DC word5=0x00000000
	ms_jump destination1=mapscript_805E8E1

mapscript_805E8B7:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_805E8C3
	ms_jump destination1=mapscript_805E8E1

mapscript_805E8C3:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E91 destination4=mapscript_805E8E1
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E92 destination4=mapscript_805E8E1
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00A3
	ms_jump destination1=mapscript_805E8E1

mapscript_805E8E1:
	ms_end
	ms_end
	ms_end

byte_805E8E4::
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_805E8F0
	ms_jump destination1=mapscript_805E93D

mapscript_805E8F0:
	ms_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=mapscript_805E903
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=mapscript_805E92B
	ms_jump destination1=mapscript_805E93D

mapscript_805E903:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_81D destination4=mapscript_805E93D
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_81E destination4=mapscript_805E93D
	ms_set_event_flag byte1=0xFF event16_2=EVENT_81E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808B4F8 word5=0x00000000
	ms_jump destination1=mapscript_805E93D

mapscript_805E92B:
	ms_write_word ptr1=unk_2011EA4 word5=0x08010002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_jump destination1=mapscript_805E93D

mapscript_805E93D:
	ms_end

byte_805E93E::
	ms_end
	ms_end

byte_805E940::
	ms_write_word ptr1=unk_2011EA8 word5=0x08030002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_85E
	ms_end

byte_805E952::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_85E destination4=mapscript_805E967
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2

mapscript_805E967:
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_805E973
	ms_jump destination1=mapscript_805E9A8

mapscript_805E973:
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=mapscript_805E97F
	ms_jump destination1=mapscript_805E9A8

mapscript_805E97F:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_805E9A8
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_825 destination4=mapscript_805E9A8
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_826 destination4=mapscript_805E9A8
	ms_set_event_flag byte1=0xFF event16_2=EVENT_826
	ms_start_cutscene ptr1=cutscenescript_808B810 word5=0x00000000
	ms_jump destination1=mapscript_805E9A8

mapscript_805E9A8:
	ms_end
	ms_end
	ms_end
	ms_end

off_805E9AC::
	.word off_805E9D4
	.word npcscript_805EA96
	.word npcscript_805EAB7
	.word npcscript_805EAE8
	.word npcscript_805EAFB
	.word npcscript_805EBA9
	.word npcscript_805EBDA
	.word npcscript_805EC98
	.word npcscript_805ED4A
	.word 0x000000FF
off_805E9D4::
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_80E destination3=npcscript_805E9DD
	ns_free_and_end

npcscript_805E9DD:
	ns_jump_alt unuseddestination1=npcscript_805E9E6 destination5=npcscript_805EA18

npcscript_805E9E6:
	ns_jump_if_flag_set event16_1=EVENT_848 destination3=npcscript_805EA4A
	ns_jump_if_flag_set event16_1=EVENT_997 destination3=npcscript_805EA06
	ns_set_sprite byte1=0x22
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0xFFFA hword3=0xFFF6 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EA06:
	ns_set_sprite byte1=0x22
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x02
	ns_set_coords hword1=0xFFFA hword3=0xFFF6 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EA18:
	ns_jump_if_flag_set event16_1=EVENT_856 destination3=npcscript_805EA70
	ns_jump_if_flag_set event16_1=EVENT_96F destination3=npcscript_805EA38
	ns_set_sprite byte1=0x23
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0xFFFA hword3=0xFFF6 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EA38:
	ns_set_sprite byte1=0x23
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0C
	ns_set_coords hword1=0xFFFA hword3=0xFFF6 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EA4A:
	ns_set_sprite byte1=0x22
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x32
	ns_set_coords hword1=0xFFFA hword3=0xFFF6 hword5=0x0010

npcscript_805EA55:
	ns_set_animation byte1=0x05
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_10C destination3=npcscript_805EA55

npcscript_805EA60:
	.word 0x01100316, 0x60010C04, 0x020805EA, npcscript_805EA55
npcscript_805EA70:
	ns_set_sprite byte1=0x23
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x3C
	ns_set_coords hword1=0xFFFA hword3=0xFFF6 hword5=0x0010

npcscript_805EA7B:
	ns_set_animation byte1=0x05
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_10C destination3=npcscript_805EA7B

npcscript_805EA86:
	.word 0x01100316, 0x86010C04, 0x020805EA, npcscript_805EA7B
npcscript_805EA96:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805EA9F
	ns_free_and_end

npcscript_805EA9F:
	ns_jump_if_flag_set event16_1=EVENT_806 destination3=npcscript_805EAB6
	ns_set_sprite byte1=0x2C
	ns_set_coords hword1=0xFFC0 hword3=0x009C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EAB6:
	ns_free_and_end

npcscript_805EAB7:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_1C28 destination3=npcscript_805EAE7
	ns_jump_if_flag_set event16_1=EVENT_1BE8 destination3=npcscript_805EAC7
	ns_free_and_end

npcscript_805EAC7:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_805EAE7
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_805EAE7
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x1E
	ns_set_coords hword1=0xFFC4 hword3=0x0158 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EAE7:
	ns_free_and_end

npcscript_805EAE8:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x10
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x64
	ns_set_coords hword1=0xFF4A hword3=0x0164 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EAFB:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_1C36 destination3=npcscript_805EB0A
	ns_jump_if_flag_set event16_1=EVENT_115A destination3=npcscript_805EB2E

npcscript_805EB0A:
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_805EB96
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_805EB84
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805EB60
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x46 destination3=npcscript_805EB72
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x33 destination3=npcscript_805EB4E
	ns_free_and_end

npcscript_805EB2E:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_805EBA8
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_805EBA8
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x6E
	ns_set_coords hword1=0xFFEE hword3=0xFEF6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EB4E:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFFE8 hword3=0xFEF6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EB60:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0x0006 hword3=0xFEFA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EB72:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0x0006 hword3=0xFEFA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EB84:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x0006 hword3=0xFEFA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EB96:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFE8 hword3=0xFEF6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EBA8:
	ns_free_and_end

npcscript_805EBA9:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x15
	ns_jump_if_flag_set event16_1=EVENT_1C2C destination3=npcscript_805EBD9
	ns_jump_if_flag_set event16_1=EVENT_1BEC destination3=npcscript_805EBBB
	ns_free_and_end

npcscript_805EBBB:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_805EBD9
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_805EBD9
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x23
	ns_set_coords hword1=0xFFC6 hword3=0x0102 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EBD9:
	ns_free_and_end

npcscript_805EBDA:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x61 destination3=npcscript_805EC82
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_805EC6D
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805EC46
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x42 destination3=npcscript_805EC58
	ns_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=npcscript_805EC34
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=npcscript_805EC1F
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805EC0D
	ns_free_and_end

npcscript_805EC0D:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0xFF40 hword3=0x0052 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EC1F:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0xFF40 hword3=0xFFEC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x10 destination4=byte_809F6EC

npcscript_805EC34:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFF56 hword3=0x0064 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EC46:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x2A
	ns_set_coords hword1=0x0064 hword3=0x0098 hword5=0x0030
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EC58:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF7C hword3=0x0084 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x08 destination4=byte_809F71C

npcscript_805EC6D:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0xFF7C hword3=0x0084 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x08 destination4=byte_809F71C

npcscript_805EC82:
	ns_set_sprite byte1=0x0B
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0xFF7C hword3=0x0084 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x08 destination4=byte_809F71C
	ns_free_and_end

npcscript_805EC98:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x61 destination3=npcscript_805ED37
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_805ED25
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805ED01
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x46 destination3=npcscript_805ED13
	ns_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=npcscript_805ECEF
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=npcscript_805ECDD
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805ECCB
	ns_free_and_end

npcscript_805ECCB:
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0xFF28 hword3=0xFF82 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805ECDD:
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x0B
	ns_set_coords hword1=0xFF1A hword3=0xFF52 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805ECEF:
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0xFF7C hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805ED01:
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x29
	ns_set_coords hword1=0xFF72 hword3=0x00B0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805ED13:
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFF46 hword3=0xFFAC hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805ED25:
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x33
	ns_set_coords hword1=0xFF4E hword3=0xFF60 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805ED37:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF4E hword3=0xFF60 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

npcscript_805ED4A:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x61 destination3=npcscript_805EDC1
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_805EDAC
	ns_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=npcscript_805ED9A
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=npcscript_805ED88
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805ED6F
	ns_free_and_end

npcscript_805ED6F:
	ns_jump_if_flag_set event16_1=EVENT_80E destination3=npcscript_805EDD3
	ns_set_sprite byte1=0x0C
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0xFFD4 hword3=0x0002 hword5=0x0010
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805ED88:
	ns_set_sprite byte1=0x0C
	ns_set_text_script_index byte1=0x0D
	ns_set_coords hword1=0xFFA8 hword3=0x00B4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805ED9A:
	ns_set_sprite byte1=0x0C
	ns_set_text_script_index byte1=0x13
	ns_set_coords hword1=0xFFA8 hword3=0x00B4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EDAC:
	ns_set_sprite byte1=0x0C
	ns_set_text_script_index byte1=0x34
	ns_set_coords hword1=0xFFEC hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x09 destination4=byte_809F71C

npcscript_805EDC1:
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x07
	ns_set_coords hword1=0xFFC2 hword3=0x016A hword5=0x0010
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EDD3:
	ns_free_and_end

npcscript_805EDD4:
	.word end_npcscript_list_805EDE0
	.word npcscript_805EE37
	.word 0x000000FF
end_npcscript_list_805EDE0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x005C hword3=0x00B4 hword5=0x0030
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_clear_unk_flags_60_flag_0x200
	ns_run_secondary_script ptr1=npcscript_805EE13
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x08
	ns_set_animation byte1=0x09
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_free_and_end

npcscript_805EE13:
	ns_pause_secondary_script byte1=0x44
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

npcscript_805EE37:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2C
	ns_set_coords hword1=0xFFC0 hword3=0x009C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0F
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_805EE64:
	.word end_npcscript_list_805EE70
	.word npcscript_805EE94
	.word 0x000000FF
end_npcscript_list_805EE70:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFFA hword3=0x000E hword5=0x0010
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EE94:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x23
	ns_set_coords hword1=0xFFFA hword3=0xFFF6 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

end_npcscript_805EEAC:
	.word end_npcscript_list_805EEB8
	.word npcscript_805EECE
	.word 0x000000FF
end_npcscript_list_805EEB8:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFFA hword3=0x000E hword5=0x0010
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EECE:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x23
	ns_set_coords hword1=0xFFFA hword3=0xFFF6 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

off_805EEE4::
	.word byte_805EF00
	.word npcscript_805F015
	.word npcscript_805F037
	.word npcscript_805F06C
	.word npcscript_805F088
	.word npcscript_805F0C4
	.word 0x000000FF
byte_805EF00::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_805EFEA
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_805EFD8
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_805EFC6
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805EFA2
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x46 destination3=npcscript_805EFB4
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_805EF45
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805EF33
	ns_free_and_end

npcscript_805EF33:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0x0004 hword3=0x0088 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F7E4

npcscript_805EF45:
	ns_jump_if_flag_set event16_1=EVENT_820 destination3=npcscript_805EF90
	ns_jump_if_flag_set event16_1=EVENT_81E destination3=npcscript_805EF7E
	ns_jump_if_flag_set event16_1=EVENT_81C destination3=npcscript_805EF6C
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0xFF7C hword3=0x0010 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EF6C:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFFC hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EF7E:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFBE hword3=0x0020 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EF90:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0xFF40 hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EFA2:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0x000C hword3=0xFFE4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EFB4:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0014 hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EFC6:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0xFFD4 hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EFD8:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0014 hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805EFEA:
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFF5A hword3=0x0026 hword5=0x0000
	ns_set_animation byte1=0x07

npcscript_805EFF7:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E90 destination3=npcscript_805EFF7
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFF5A hword3=0x0026 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

npcscript_805F015:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x32 destination3=npcscript_805F01E
	ns_free_and_end

npcscript_805F01E:
	ns_do_not_face_player_when_interacted
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0x0060 hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x02

npcscript_805F02D:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_870 destination3=npcscript_805F02D
	ns_free_and_end

npcscript_805F037:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=npcscript_805F059
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x32 destination3=npcscript_805F047
	ns_free_and_end

npcscript_805F047:
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF42 hword3=0xFFC0 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F059:
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0xFFDC hword3=0xFFBA hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

npcscript_805F06C:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x10
	ns_jump_if_progress_in_range byte1=0x60 byte2=0xFF destination3=npcscript_805F077
	ns_free_and_end

npcscript_805F077:
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x32
	ns_set_coords hword1=0xFF38 hword3=0xFFD8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

npcscript_805F088:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805F091
	ns_free_and_end

npcscript_805F091:
	ns_jump_if_flag_set event16_1=EVENT_874 destination3=npcscript_805F0AA
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0xFF6A hword3=0x0050 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F0AA:
	ns_jump_if_flag_set event16_1=EVENT_80C destination3=npcscript_805F0C3
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x07
	ns_set_coords hword1=0x0012 hword3=0xFFE2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F0C3:
	ns_free_and_end

npcscript_805F0C4:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805F0CD
	ns_free_and_end

npcscript_805F0CD:
	ns_jump_if_flag_set event16_1=EVENT_80C destination3=npcscript_805F0ED
	ns_jump_if_flag_clear event16_1=EVENT_874 destination3=npcscript_805F0ED
	ns_set_sprite byte1=0x2D
	ns_set_text_script_index byte1=0x08
	ns_set_coords hword1=0x0012 hword3=0xFFCE hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F0ED:
	ns_free_and_end
	ns_end
	ns_end

npcscript_805F0F0:
	.word end_npcscript_list_805F108
	.word npcscript_805F174
	.word npcscript_805F1A7
	.word npcscript_805F1F2
	.word npcscript_805F23C
	.word 0x000000FF
end_npcscript_list_805F108:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF28 hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0E
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x05
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_pause byte1=0x14
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_pause byte1=0x14
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F174:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0xFF28 hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_active_and_visible
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x0E
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F1A7:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFFF2 hword3=0x00A6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x0E
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x04
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x06
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x0E
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_free_and_end

npcscript_805F1F2:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFFF2 hword3=0x00A6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x0C
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x04
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x06
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x0E
	ns_free_and_end

npcscript_805F23C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFFF2 hword3=0x00A6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x0A
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x04
	ns_set_animation byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x06
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x0E
	ns_free_and_end
	ns_end

end_npcscript_805F288:
	.word end_npcscript_list_805F298
	.word npcscript_805F2FA
	.word npcscript_805F31F
	.word 0x000000FF
end_npcscript_list_805F298:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF7C hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x01
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x05
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x05
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x0B
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x0E
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F2FA:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0x0012 hword3=0xFFE2 hword5=0x0000
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_pause byte1=0x5A
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F31F:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0x0012 hword3=0xFFCE hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x10
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_805F348:
	.word end_npcscript_list_805F350
	.word 0x000000FF
end_npcscript_list_805F350:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0018 hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_run_secondary_script ptr1=npcscript_805F389
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x05
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F389:
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
	ns_end
	ns_end
	ns_end

off_805F3B0::
	.word byte_805F3D4
	.word npcscript_805F471
	.word npcscript_805F4C8
	.word npcscript_805F504
	.word npcscript_805F527
	.word npcscript_805F565
	.word npcscript_805F596
	.word npcscript_805F5CD
	.word 0x000000FF
byte_805F3D4::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_805F446
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_805F3FD
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805F3EB
	ns_free_and_end

npcscript_805F3EB:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFF28 hword3=0xFFEC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F3FD:
	ns_jump_if_flag_set event16_1=EVENT_828 destination3=npcscript_805F436
	ns_jump_if_flag_set event16_1=EVENT_81E destination3=npcscript_805F424
	ns_jump_if_flag_clear event16_1=EVENT_814 destination3=npcscript_805F470
	ns_set_sprite byte1=0x2D
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x000E hword3=0x0098 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F424:
	ns_set_sprite byte1=0x2D
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0xFF8E hword3=0x0034 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F436:
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0xFFD2 hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F446:
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0x000E hword3=0x00A2 hword5=0x0000
	ns_set_animation byte1=0x07

npcscript_805F453:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E92 destination3=npcscript_805F453
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0x000E hword3=0x00A2 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F470:
	ns_free_and_end

npcscript_805F471:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_805F4B4
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805F4A1
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805F488
	ns_free_and_end

npcscript_805F488:
	ns_jump_if_flag_set event16_1=EVENT_80E destination3=npcscript_805F4C7
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF5A hword3=0x0090 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F4A1:
	ns_set_sprite byte1=0x10
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0xFF8D hword3=0x0090 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F4B4:
	ns_set_sprite byte1=0x10
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0xFF7A hword3=0x0076 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F4C7:
	ns_free_and_end

npcscript_805F4C8:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_805F4F1
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805F4D8
	ns_free_and_end

npcscript_805F4D8:
	ns_jump_if_flag_set event16_1=EVENT_80E destination3=npcscript_805F503
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0xFF70 hword3=0xFFF4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F4F1:
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0010 hword3=0x009E hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F503:
	ns_free_and_end

npcscript_805F504:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_805F50D
	ns_free_and_end

npcscript_805F50D:
	ns_jump_if_flag_set event16_1=EVENT_80E destination3=npcscript_805F526
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0xFFFA hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F526:
	ns_free_and_end

npcscript_805F527:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x33 destination3=npcscript_805F530
	ns_free_and_end

npcscript_805F530:
	ns_jump_if_flag_set event16_1=EVENT_81C destination3=npcscript_805F54B
	ns_do_not_face_player_when_interacted
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0x0040 hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F54B:
	ns_jump_if_flag_clear event16_1=EVENT_828 destination3=npcscript_805F564
	ns_do_not_face_player_when_interacted
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFFE2 hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F564:
	ns_free_and_end

npcscript_805F565:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_11FD destination3=npcscript_805F595
	ns_jump_if_flag_set event16_1=EVENT_11FB destination3=npcscript_805F575
	ns_free_and_end

npcscript_805F575:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_805F595
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_805F595
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0xFF3A hword3=0x0090 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F595:
	ns_free_and_end

npcscript_805F596:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_805F5B9
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805F5A6
	ns_free_and_end

npcscript_805F5A6:
	ns_set_sprite byte1=0x18
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0xFF7E hword3=0x0090 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F5B9:
	ns_set_sprite byte1=0x18
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0xFF7A hword3=0x008A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

npcscript_805F5CD:
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_1C29 destination3=npcscript_805F5FD
	ns_jump_if_flag_set event16_1=EVENT_1BE9 destination3=npcscript_805F5DD
	ns_free_and_end

npcscript_805F5DD:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_805F5FD
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_805F5FD
	ns_set_sprite byte1=0x0C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x16
	ns_set_coords hword1=0xFF52 hword3=0x0098 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F5FD:
	ns_free_and_end
	ns_end
	ns_end

npcscript_805F600:
	.word end_npcscript_list_805F61C
	.word npcscript_805F6B9
	.word npcscript_805F6EE
	.word npcscript_805F73C
	.word npcscript_805F797
	.word npcscript_805F7ED
	.word 0x000000FF
end_npcscript_list_805F61C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFAE hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x05
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x03
	ns_pause byte1=0x14
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_coords hword1=0xFF8E hword3=0x006C hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_set_animation byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x11
	ns_wait_cutscene_var byte1=0x08 byte2=0x14
	ns_set_animation byte1=0x05
	ns_pause byte1=0x5A
	ns_set_animation byte1=0x04
	ns_pause byte1=0x5A
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x18
	ns_set_animation byte1=0x03
	ns_pause byte1=0x78
	ns_set_animation byte1=0x04
	ns_pause byte1=0x64
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x1A
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F6B9:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2C
	ns_set_coords hword1=0xFFA8 hword3=0x0098 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x12
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x13
	ns_wait_cutscene_var byte1=0x08 byte2=0x18
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x10
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x0A
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x19
	ns_free_and_end

npcscript_805F6EE:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0xFF24 hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x14
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x0C
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x0D
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x15
	ns_wait_cutscene_var byte1=0x08 byte2=0x16
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x17
	ns_wait_cutscene_var byte1=0x08 byte2=0x18
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_pause byte1=0x64
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x1A
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x1B
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F73C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0x0044 hword3=0x00A2 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x14
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x01
	ns_pause byte1=0x02
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_pause byte1=0x28
	ns_play_sound hword1=0x00C6
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_animation_force_update byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_animation_force_update byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F797:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFF24 hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x0C
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x0D
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_pause byte1=0x14
	ns_play_sound hword1=0x00C6
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_animation_force_update byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_animation_force_update byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F7ED:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFF24 hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x0C
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x0A
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x01
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_play_sound hword1=0x00C6
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_animation_force_update byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_animation_force_update byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_805F84C:
	.word end_npcscript_list_805F868
	.word npcscript_805F8AD
	.word npcscript_805F8D3
	.word npcscript_805F921
	.word npcscript_805F974
	.word npcscript_805F9B3
	.word 0x000000FF
end_npcscript_list_805F868:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFB4 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFF8E hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_coords hword1=0xFFB4 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_coords hword1=0xFFA0 hword3=0x009C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x03
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F8AD:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0xFFC4 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFFB8 hword3=0x000E hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_coords hword1=0xFFC4 hword3=0x000E hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_free_and_end

npcscript_805F8D3:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0xFFD4 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFFC8 hword3=0x000E hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_coords hword1=0xFFD4 hword3=0x000E hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_coords hword1=0xFFB8 hword3=0x009C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x12
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x08
	ns_write_cutscene_var byte1=0x08 byte2=0x0F
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805F921:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2A
	ns_set_coords hword1=0xFFC4 hword3=0x008C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x09

npcscript_805F932:
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x14
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x0A destination3=npcscript_805F95C
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x1E
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x0A destination3=npcscript_805F95C
	ns_pause byte1=0x1E
	ns_jump_if_cutscene_var_equals byte1=0x08 byte2=0x0A destination3=npcscript_805F95C
	ns_jump destination1=npcscript_805F932

npcscript_805F95C:
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x02
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0E
	ns_free_and_end

npcscript_805F974:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFF2C hword3=0x005A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_active_and_visible
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x0A
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x13
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x03
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x02
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0E
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_free_and_end

npcscript_805F9B3:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x60 byte2=0x1C
	ns_set_coords hword1=0x0004 hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_805F9EC:
	.word end_npcscript_list_805FA00
	.word npcscript_805FA1D
	.word npcscript_805FA51
	.word npcscript_805FA8D
	.word 0x000000FF
end_npcscript_list_805FA00:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF2E hword3=0x0048 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FA1D:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x05
	ns_set_coords hword1=0xFF8E hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0B
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0C
	ns_free_and_end
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x10
	ns_set_coords hword1=0xFFC4 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FA51:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFF28 hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_active_and_visible
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x0B
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x0D
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x09
	ns_set_animation byte1=0x03
	ns_pause byte1=0x3C
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x09
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0C
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

npcscript_805FA8D:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x60 byte2=0x1C
	ns_set_coords hword1=0x0004 hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

end_npcscript_805FAB4:
	.word end_npcscript_list_805FAD8
	.word npcscript_805FB18
	.word npcscript_805FB42
	.word npcscript_805FB66
	.word npcscript_805FB81
	.word npcscript_805FB9C
	.word npcscript_805FBC9
	.word npcscript_805FBF8
	.word 0x000000FF
end_npcscript_list_805FAD8:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF8E hword3=0x0064 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_coords hword1=0xFF8A hword3=0x008C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_pause byte1=0x5A
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x0C
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x0E
	ns_write_cutscene_var byte1=0x08 byte2=0x0D
	ns_free_and_end

npcscript_805FB18:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0xFF8E hword3=0x0034 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_free_and_end

npcscript_805FB42:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x60 byte2=0x1C
	ns_set_coords hword1=0x0004 hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FB66:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFF96 hword3=0x0074 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FB81:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFF7E hword3=0x0074 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FB9C:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x0050 hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_run_secondary_script ptr1=npcscript_805FC2A
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x14
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x03
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FBC9:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x0050 hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_pause byte1=0x1E
	ns_run_secondary_script ptr1=npcscript_805FC2A
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x14
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x01
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FBF8:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x0050 hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_pause byte1=0x3C
	ns_run_secondary_script ptr1=npcscript_805FC2A
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x14
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x01
	ns_set_animation byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FC2A:
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
	ns_end
	ns_end

npcscript_805FC50:
	.word end_npcscript_list_805FC68
	.word npcscript_805FCA0
	.word npcscript_805FCD8
	.word npcscript_805FCEF
	.word npcscript_805FD06
	.word 0x000000FF
end_npcscript_list_805FC68:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0020 hword3=0x0060 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x19
	ns_pause byte1=0x01
	ns_wait_anim_frame byte1=0x01
	ns_play_sound hword1=0x00B7
	ns_wait_anim_frame byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_pause byte1=0x03
	ns_play_music hword1=0x0063
	ns_play_sound hword1=0x0077
	ns_wait_anim_frame byte1=0xC0
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FCA0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0xFF84 hword3=0x0064 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x06
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FCD8:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFF90 hword3=0x0018 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FCEF:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFF68 hword3=0x009E hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FD06:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFFE2 hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_805FD20:
	.word npcscript_805FD4C
	.word npcscript_805FD67
	.word npcscript_805FD7D
	.word npcscript_805FDA6
	.word npcscript_805FDCB
	.word npcscript_805FDF0
	.word 0x000000FF
npcscript_805FD3C:
	.word npcscript_805FE15
	.word npcscript_805FE2B
	.word npcscript_805FE41
	.word 0x000000FF
npcscript_805FD4C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0020 hword3=0x0060 hword5=0x0000
	ns_set_animation byte1=0x1B
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FD67:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0xFFCC hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FD7D:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2C
	ns_set_coords hword1=0xFF28 hword3=0x0060 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x0C
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x06
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FDA6:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFF90 hword3=0x0018 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_play_sound hword1=0x017D
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_animation_force_update byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FDCB:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFF68 hword3=0x009E hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_play_sound hword1=0x017D
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_animation_force_update byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FDF0:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFFE2 hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_play_sound hword1=0x017D
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_animation_force_update byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FE15:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x15
	ns_set_coords hword1=0xFFB8 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FE2B:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0xFF8E hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FE41:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x60 byte2=0x1C
	ns_set_coords hword1=0x0004 hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation_force_update byte1=0x01
	ns_pause byte1=0x20
	ns_set_animation byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x11
	ns_wait_cutscene_var byte1=0x08 byte2=0x12
	ns_jump_with_link destination1=byte_809F6CC

end_npcscript_805FE68:
	.word end_npcscript_list_805FE78
	.word npcscript_805FE8E
	.word npcscript_805FEA4
	.word 0x000000FF
end_npcscript_list_805FE78:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x15
	ns_set_coords hword1=0xFFD2 hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FE8E:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x15
	ns_set_coords hword1=0xFFD2 hword3=0x008C hword5=0x0040
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FEA4:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x60 byte2=0x1C
	ns_set_coords hword1=0x0004 hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_set_layer_priority_override_to_3
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC

off_805FEBC::
	.word byte_805FED8
	.word npcscript_805FF3B
	.word npcscript_805FF56
	.word npcscript_805FF8E
	.word npcscript_805FFB0
	.word npcscript_805FFD2
	.word 0x000000FF
byte_805FED8::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_805FF28
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805FEEF
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x33 destination3=npcscript_805FF0F
	ns_free_and_end

npcscript_805FEEF:
	ns_jump_if_flag_set event16_1=EVENT_C09 destination3=npcscript_805FF3A
	ns_jump_if_flag_clear event16_1=EVENT_CC2 destination3=npcscript_805FF3A
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x14

byte_805FF01::
	ns_set_coords hword1=0xFF92 hword3=0xFF70 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FF0F:
	ns_jump_if_flag_clear event16_1=EVENT_81E destination3=npcscript_805FF3A
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFA4 hword3=0x0026 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FF28:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFF92 hword3=0x0038 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FF3A:
	ns_free_and_end

npcscript_805FF3B:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x50 byte2=0xFF destination3=npcscript_805FF44
	ns_free_and_end

npcscript_805FF44:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x05
	ns_set_coords hword1=0xFFCC hword3=0xFF7A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FF56:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_805FF78
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805FF66
	ns_free_and_end

npcscript_805FF66:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x19
	ns_set_coords hword1=0xFFA0 hword3=0x00BE hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FF78:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0xFFA8 hword3=0x0054 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x09 destination4=byte_809F6EC
	ns_free_and_end

npcscript_805FF8E:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_805FF97
	ns_free_and_end

npcscript_805FF97:
	ns_jump_if_flag_clear event16_1=EVENT_81E destination3=npcscript_805FFAF
	ns_set_sprite_with_category byte1=0x62 byte2=0x1C
	ns_set_coords hword1=0x0006 hword3=0x00BA hword5=0x0000
	ns_set_animation byte1=0x00
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FFAF:
	ns_free_and_end

npcscript_805FFB0:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_805FFB9
	ns_free_and_end

npcscript_805FFB9:
	ns_jump_if_flag_clear event16_1=EVENT_81E destination3=npcscript_805FFD1
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFFF0 hword3=0x00DA hword5=0x0000
	ns_set_animation_force_update byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FFD1:
	ns_free_and_end

npcscript_805FFD2:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_805FFDB
	ns_free_and_end

npcscript_805FFDB:
	ns_jump_if_flag_clear event16_1=EVENT_81E destination3=npcscript_805FFF3
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0xFFF0 hword3=0x009A hword5=0x0000
	ns_set_animation_force_update byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805FFF3:
	ns_free_and_end

npcscript_805FFF4:
	.word end_npcscript_list_806000C
	.word npcscript_806004C
	.word npcscript_8060063
	.word npcscript_8060079
	.word npcscript_806009B
	.word 0x000000FF
end_npcscript_list_806000C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF3C hword3=0x00EE hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x0D
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x07
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x0E
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806004C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x62 byte2=0x1C
	ns_set_coords hword1=0x0006 hword3=0x00BA hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8060063:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0D
	ns_set_coords hword1=0xFFA4 hword3=0x0026 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8060079:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFFF0 hword3=0x00DA hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_play_sound hword1=0x00C6
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_animation_force_update byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806009B:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x55 byte2=0x1C
	ns_set_coords hword1=0xFFF0 hword3=0x009A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x0A
	ns_play_sound hword1=0x00C6
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_animation_force_update byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

off_80600C4::
	.word byte_80600D8
	.word npcscript_8060111
	.word npcscript_806012C
	.word npcscript_8060147
	.word 0x000000FF
byte_80600D8::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x19
	ns_jump_if_progress_in_range byte1=0x60 byte2=0xFF destination3=npcscript_80600E3
	ns_free_and_end

npcscript_80600E3:
	ns_jump_if_flag_clear event16_1=EVENT_1120 destination3=npcscript_8060110
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0xFF4C hword3=0xFFE4 hword5=0x0000
	ns_set_animation byte1=0x03

npcscript_80600F5:
	.word 0x22050110, 0x0600F511, 0x4C3E1708, 0xFF4C140A, 0x0000FFE4, 0xCC360316
	.byte 0xF6
	.byte 0x09
	.byte 0x08
npcscript_8060110:
	ns_free_and_end

npcscript_8060111:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=npcscript_806011A
	ns_free_and_end

npcscript_806011A:
	ns_set_sprite byte1=0x03
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x001C hword3=0x00B4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806012C:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=npcscript_8060135
	ns_free_and_end

npcscript_8060135:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0xFFFE hword3=0x00B4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8060147:
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=npcscript_8060150
	ns_free_and_end

npcscript_8060150:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x001E hword3=0x0094 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_8060164:
	.word end_npcscript_list_806016C
	.word 0x000000FF
end_npcscript_list_806016C:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF5C hword3=0x004C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

/*For debugging purposes, connect comment at any range!*/
