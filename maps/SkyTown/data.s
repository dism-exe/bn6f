
byte_8060474::
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00EE0000,
		y: -0x00920000,
		z: 0x00F00000,
		object_id: 0x00000068,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00EE0000,
		y: -0x00920000,
		z: 0x00F00000,
		object_id: 0x0000006D,
	]
	.word 0xFF

byte_80604A0::
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00540000,
		y: 0x004C0000,
		z: 0x00600000,
		object_id: 0x00000020,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00540000,
		y: 0x000C0000,
		z: 0x00600000,
		object_id: 0x00000021,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00540000,
		y: 0x000C0000,
		z: 0x00600000,
		object_id: 0x00000022,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00540000,
		y: -0x00320000,
		z: 0x00600000,
		object_id: 0x00000023,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00520000,
		y: -0x00740000,
		z: 0x00600000,
		object_id: 0x00000025,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00520000,
		y: 0x012E0000,
		z: 0x00600000,
		object_id: 0x00000037,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x01520000,
		y: -0x00C40000,
		z: 0x00000000,
		object_id: 0x00000037,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x010E0000,
		y: -0x00B20000,
		z: -0x00200000,
		object_id: 0x0000009A,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x010E0000,
		y: -0x00B20000,
		z: -0x00800000,
		object_id: 0x0000009B,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x01320000,
		y: -0x00DA0000,
		z: -0x00200000,
		object_id: 0x000000BC,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x003C0000,
		y: -0x00760000,
		z: 0x00600000,
		object_id: 0x00000090,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00660000,
		y: -0x003E0000,
		z: 0x00620000,
		object_id: 0x00000091,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x006A0000,
		y: -0x002A0000,
		z: 0x00600000,
		object_id: 0x00000092,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x003A0000,
		y: 0x00060000,
		z: 0x00600000,
		object_id: 0x00000093,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x003C0000,
		y: 0x00160000,
		z: 0x00600000,
		object_id: 0x00000094,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x006C0000,
		y: 0x004C0000,
		z: 0x00620000,
		object_id: 0x00000095,
	]
	.word 0xFF

dword_80605E4::

	.word 0xFF

byte_80605E8::
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x001E0000,
		y: -0x00420000,
		z: 0x00000000,
		object_id: 0x00000096,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x001E0000,
		y: -0x00420000,
		z: 0x00000000,
		object_id: 0x00000097,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x001E0000,
		y: -0x00420000,
		z: 0x00000000,
		object_id: 0x00000098,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x001E0000,
		y: -0x00420000,
		z: 0x00000000,
		object_id: 0x00000099,
	]
	.word 0xFF

off_806063C:: // [*const MapScript; SKY_TOWN_NUM_MAPS]
  .word byte_80606FC
	.word byte_806096C
	.word byte_8060C9C
	.word byte_8060E30
off_806064C:: // [*const MapScript; SKY_TOWN_NUM_MAPS]
  .word dword_8060834
	.word byte_8060B2F
	.word byte_8060D71
	.word byte_8060F00
NPCScriptsSkyTown_806065C:: // [*const [*const NPCScript]; SKY_TOWN_NUM_MAPS]
  .word off_8060F70
	.word off_8061448
	.word off_8061D00
	.word off_8062210
off_806066C::
	.word byte_806067C
	.word byte_806068C
	.word byte_806069C
	.word byte_80606AC
byte_806067C::
	.byte 0x0, 0x1, 0x2, 0x14, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806068C::
	.byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF
byte_806069C::
	.byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_80606AC::
	.byte 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
off_80606BC::
	.word byte_80606CC
	.word byte_80606D4
	.word byte_80606DC
	.word byte_80606E4
byte_80606CC::
	.byte 0x10, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_80606D4::
	.byte 0x11, 0x12, 0x13, 0x14, 0x18, 0xFF, 0xFF, 0xFF
byte_80606DC::
	.byte 0x25, 0x26, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_80606E4::
	.byte 0x15, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
dword_80606EC::
	.word 0x7070707
dword_80606F0::
	.word 0xC0C0C0C
byte_80606F4::
	.byte 0xB, 0xB, 0xB, 0xB
byte_80606F8::
  .byte 0xC, 0xC, 0xC, 0x63
byte_80606FC::
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_3A destination4=byte_8060711
	ms_start_cutscene ptr1=unk_809BBE9 word5=0x00000000

byte_8060711::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A9C destination4=mapscript_8060723
	ms_load_gfx_anim ptr1=byte_808D9F8
	ms_load_gfx_anim ptr1=unk_808DA48

mapscript_8060723:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_806072F
	ms_jump destination1=byte_80607ED

mapscript_806072F:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=mapscript_8060750
	ms_jump_if_progress_in_range byte1=0x43 byte2=0x43 destination3=mapscript_806076A
	ms_jump_if_progress_in_range byte1=0x48 byte2=0x49 destination3=byte_8060784
	ms_jump_if_progress_in_range byte1=0x4B byte2=0x4B destination3=mapscript_8060789
	ms_jump destination1=byte_80607ED

mapscript_8060750:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A60 destination4=byte_80607ED
	ms_write_word ptr1=unk_2011EA8 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_80607ED

mapscript_806076A:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A18 destination4=byte_80607ED
	ms_write_word ptr1=unk_2011EA8 word5=0x08050102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_80607ED

byte_8060784::
	ms_jump destination1=byte_80607ED

mapscript_8060789:
	ms_write_word ptr1=unk_2011EAC word5=0x08050502
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A8E destination4=byte_80607ED
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A43 destination4=byte_80607ED
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A44 destination4=byte_80607ED
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=byte_80607DB
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A44
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A8F
	ms_write_word ptr1=unk_2011EAC word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_start_cutscene ptr1=cutscenescript_808F220 word5=0x00000000
	ms_jump destination1=byte_80607ED

byte_80607DB::
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_A8E
	ms_start_cutscene ptr1=byte_80990DC word5=0x010D0072
	ms_jump destination1=byte_80607ED

byte_80607ED::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1323 destination4=mapscript_806080A
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1324 destination4=mapscript_806080A
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1325 destination4=mapscript_806080A
	ms_jump destination1=mapscript_8060833

mapscript_806080A:
	ms_clear_event_flag_range byte1=0x03 event16_2=EVENT_1323
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=mapscript_8060825
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000043
	ms_jump destination1=mapscript_8060833

mapscript_8060825:
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000044
	ms_jump destination1=mapscript_8060833

mapscript_8060833:
	ms_end

dword_8060834::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_ABC destination4=byte_806084A
	ms_start_cutscene ptr1=byte_809BFB0 word5=0x00000002
	ms_jump destination1=mapscript_8060928

byte_806084A::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A80 destination4=mapscript_8060881
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A3F destination4=mapscript_8060881
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A40 destination4=mapscript_8060881
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A40
	ms_write_word ptr1=unk_2011EAC word5=0x08050502
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_start_cutscene ptr1=cutscenescript_808F114 word5=0x00000000
	ms_jump destination1=mapscript_8060928

mapscript_8060881:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_8060894
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_80608EB
	ms_jump destination1=mapscript_8060928

mapscript_8060894:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=mapscript_80608AE
	ms_jump_if_progress_in_range byte1=0x48 byte2=0x49 destination3=mapscript_80608C8
	ms_jump_if_progress_in_range byte1=0x4B byte2=0x4B destination3=mapscript_80608CD
	ms_jump destination1=mapscript_8060928

mapscript_80608AE:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A60 destination4=mapscript_8060928
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=mapscript_8060928

mapscript_80608C8:
	ms_jump destination1=mapscript_8060928

mapscript_80608CD:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A8F destination4=mapscript_8060928
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A8E destination4=mapscript_8060928
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0072
	ms_jump destination1=mapscript_8060928

mapscript_80608EB:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=mapscript_80608F7
	ms_jump destination1=mapscript_8060928

mapscript_80608F7:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E5A destination4=mapscript_8060928
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=mapscript_8060928
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E05 destination4=mapscript_8060928
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E06 destination4=mapscript_8060928
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E06
	ms_start_cutscene ptr1=cutscenescript_8093710 word5=0x00000000
	ms_jump destination1=mapscript_8060928

mapscript_8060928:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1323 destination4=mapscript_806093E
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0011
	ms_jump destination1=mapscript_806096A

mapscript_806093E:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1324 destination4=mapscript_8060954
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0012
	ms_jump destination1=mapscript_806096A

mapscript_8060954:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1325 destination4=mapscript_806096A
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0013
	ms_jump destination1=mapscript_806096A

mapscript_806096A:
	ms_end
	ms_end

byte_806096C::
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_1640
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A28 destination4=byte_8060989
	ms_init_eStruct200a6a0 ptr1=sub_804C404+1 ptr5=sub_804C42C+1 word9=0x00000000
	ms_set_event_flag byte1=0xFF event16_2=EVENT_1640

byte_8060989::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A9C destination4=mapscript_806099B
	ms_load_gfx_anim ptr1=byte_808D9F8
	ms_load_gfx_anim ptr1=unk_808DA48

mapscript_806099B:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_80609AE
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_8060AB3
	ms_jump destination1=byte_8060B2E

mapscript_80609AE:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A26 destination4=mapscript_80609C3
	ms_write_word ptr1=unk_2011EA8 word5=0x08050502
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2

mapscript_80609C3:
	ms_jump_if_progress_in_range byte1=0x43 byte2=0x43 destination3=mapscript_80609DD
	ms_jump_if_progress_in_range byte1=0x44 byte2=0x44 destination3=mapscript_8060A05
	ms_jump_if_progress_in_range byte1=0x45 byte2=0x45 destination3=byte_8060A99
	ms_jump destination1=byte_8060B2E

mapscript_80609DD:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A13 destination4=byte_8060B2E
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A14 destination4=byte_8060B2E
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A14
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_808DD60 word5=0x00000000
	ms_jump destination1=byte_8060B2E

mapscript_8060A05:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A6E destination4=mapscript_8060A2A
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A1C destination4=mapscript_8060A2A
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A1C
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_808E140 word5=0x00000000
	ms_jump destination1=byte_8060B2E

mapscript_8060A2A:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A70 destination4=mapscript_8060A4F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A1E destination4=mapscript_8060A4F
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A1E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_808E1EC word5=0x00000000
	ms_jump destination1=byte_8060B2E

mapscript_8060A4F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A72 destination4=mapscript_8060A74
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A20 destination4=mapscript_8060A74
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A20
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_808E298 word5=0x00000000
	ms_jump destination1=byte_8060B2E

mapscript_8060A74:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A74 destination4=byte_8060B2E
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A22 destination4=byte_8060B2E
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A22
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_808E344 word5=0x00000000
	ms_jump destination1=byte_8060B2E

byte_8060A99::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A2A destination4=byte_8060B2E
	ms_write_word ptr1=unk_2011EAC word5=0x08051E02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump destination1=byte_8060B2E

mapscript_8060AB3:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_8060ABF
	ms_jump destination1=byte_8060B2E

mapscript_8060ABF:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E93 destination4=mapscript_8060AE4
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E94 destination4=mapscript_8060AE4
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E94
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000068
	ms_jump destination1=byte_8060B2E

mapscript_8060AE4:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E95 destination4=byte_8060B09
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E96 destination4=byte_8060B09
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E96
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000069
	ms_jump destination1=byte_8060B2E

byte_8060B09::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E97 destination4=byte_8060B2E
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E98 destination4=byte_8060B2E
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E98
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x0000006A
	ms_jump destination1=byte_8060B2E

byte_8060B2E::
	ms_end

byte_8060B2F::
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_8060B49
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_8060BF0
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=byte_8060C35
	ms_jump destination1=byte_8060C9B

mapscript_8060B49:
	ms_jump_if_progress_in_range byte1=0x43 byte2=0x43 destination3=byte_8060B5C
	ms_jump_if_progress_in_range byte1=0x45 byte2=0x45 destination3=mapscript_8060B85
	ms_jump destination1=byte_8060C9B

byte_8060B5C::
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=byte_8060C9B
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A19 destination4=byte_8060C9B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A1A destination4=byte_8060C9B
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A1A
	ms_start_cutscene ptr1=cutscenescript_808E058 word5=0x00000000
	ms_jump destination1=byte_8060C9B

mapscript_8060B85:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x11 signedbyte2=0x08 destination3=byte_8060BB2
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A27 destination4=byte_8060BB2
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A28 destination4=byte_8060BB2
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A28
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_1640
	ms_start_cutscene ptr1=cutscenescript_808E608 word5=0x00000000
	ms_jump destination1=byte_8060C9B

byte_8060BB2::
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x12 signedbyte2=0x00 destination3=byte_8060C9B
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_COPYBOT_ACTIVE destination4=byte_8060C9B
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A29 destination4=byte_8060C9B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A2A destination4=byte_8060C9B
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A2A
	ms_write_word ptr1=unk_2011EAC word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_start_cutscene ptr1=cutscenescript_808E7DC word5=0x00000000
	ms_jump destination1=byte_8060C9B

mapscript_8060BF0:
	ms_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=mapscript_8060BFC
	ms_jump destination1=byte_8060C9B

mapscript_8060BFC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1CA8 destination4=byte_8060C9B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1D28 destination4=byte_8060C9B
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x13 signedbyte2=0x00 destination3=byte_8060C9B
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C2F destination4=byte_8060C9B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C30 destination4=byte_8060C9B
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C30
	ms_start_cutscene ptr1=cutscenescript_8092758 word5=0x00000000
	ms_jump destination1=byte_8060C9B

byte_8060C35::
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_8060C41
	ms_jump destination1=byte_8060C9B

byte_8060C41::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E93 destination4=mapscript_8060C5F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E94 destination4=mapscript_8060C5F
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00A4
	ms_jump destination1=byte_8060C9B

mapscript_8060C5F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E95 destination4=mapscript_8060C7D
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E96 destination4=mapscript_8060C7D
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00A5
	ms_jump destination1=byte_8060C9B

mapscript_8060C7D:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E97 destination4=byte_8060C9B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E98 destination4=byte_8060C9B
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00A6
	ms_jump destination1=byte_8060C9B

byte_8060C9B::
	ms_end

byte_8060C9C::
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_8060CAF
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_8060D3F
	ms_jump destination1=byte_8060D70

mapscript_8060CAF:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A26 destination4=mapscript_8060CC4
	ms_write_word ptr1=unk_2011EAC word5=0x08030102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3

mapscript_8060CC4:
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=mapscript_8060CDE
	ms_jump_if_progress_in_range byte1=0x45 byte2=0x45 destination3=mapscript_8060CF8
	ms_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=mapscript_8060D2D
	ms_jump destination1=byte_8060D70

mapscript_8060CDE:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A06 destination4=byte_8060D70
	ms_write_word ptr1=unk_2011EA8 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_8060D70

mapscript_8060CF8:
	ms_write_word ptr1=unk_2011EA8 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A23 destination4=byte_8060D70
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A24 destination4=byte_8060D70
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A24
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808E40C word5=0x00000000
	ms_jump destination1=byte_8060D70

mapscript_8060D2D:
	ms_write_word ptr1=unk_2011EA8 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_8060D70

mapscript_8060D3F:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_8060D4B
	ms_jump destination1=byte_8060D70

mapscript_8060D4B:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E99 destination4=byte_8060D70
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E9A destination4=byte_8060D70
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E9A
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x0000006B
	ms_jump destination1=byte_8060D70

byte_8060D70::
	ms_end

byte_8060D71::
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=byte_8060D84
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_8060E05
	ms_jump destination1=byte_8060E2F

byte_8060D84::
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=mapscript_8060D97
	ms_jump_if_progress_in_range byte1=0x45 byte2=0x45 destination3=mapscript_8060DCE
	ms_jump destination1=byte_8060E2F

mapscript_8060D97:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A61 destination4=byte_8060E2F
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A05 destination4=byte_8060E2F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A06 destination4=byte_8060E2F
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A06
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_start_cutscene ptr1=cutscenescript_808D344 word5=0x00000000
	ms_jump destination1=byte_8060E2F

mapscript_8060DCE:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A75 destination4=byte_8060E2F
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A25 destination4=byte_8060E2F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A26 destination4=byte_8060E2F
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A26
	ms_write_word ptr1=unk_2011EAC word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_start_cutscene ptr1=cutscenescript_808E4F8 word5=0x00000000
	ms_jump destination1=byte_8060E2F

mapscript_8060E05:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_8060E11
	ms_jump destination1=byte_8060E2F

byte_8060E11::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E99 destination4=byte_8060E2F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E9A destination4=byte_8060E2F
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00A7
	ms_jump destination1=byte_8060E2F

byte_8060E2F::
	ms_end

byte_8060E30::
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_8060E43
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_8060ECB
	ms_jump destination1=byte_8060EFF

mapscript_8060E43:
	ms_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=mapscript_8060E5D
	ms_jump_if_progress_in_range byte1=0x45 byte2=0x45 destination3=mapscript_8060E84
	ms_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=byte_8060E96
	ms_jump destination1=byte_8060EFF

mapscript_8060E5D:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A62 destination4=byte_8060EFF
	ms_write_word ptr1=unk_2011EA4 word5=0x08070002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_write_word ptr1=unk_2011EA8 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_8060EFF

mapscript_8060E84:
	ms_write_word ptr1=unk_2011EA8 word5=0x08050102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_8060EFF

byte_8060E96::
	ms_write_word ptr1=unk_2011EA8 word5=0x08050102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A33 destination4=byte_8060EFF
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A34 destination4=byte_8060EFF
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A34
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808ECBC word5=0x00000000
	ms_jump destination1=byte_8060EFF

mapscript_8060ECB:
	ms_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=mapscript_8060ED7
	ms_jump destination1=byte_8060EFF

mapscript_8060ED7:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_ECB destination4=byte_8060EFF
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_ECC destination4=byte_8060EFF
	ms_set_event_flag byte1=0xFF event16_2=EVENT_ECC
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x0C
	ms_start_cutscene ptr1=cutscenescript_809793C word5=0x00000000
	ms_jump destination1=byte_8060EFF

byte_8060EFF::
	ms_end

byte_8060F00::
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_8060F0C
	ms_jump destination1=byte_8060F6F

mapscript_8060F0C:
	ms_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=mapscript_8060F1F
	ms_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=mapscript_8060F46
	ms_jump destination1=byte_8060F6F

mapscript_8060F1F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A62 destination4=byte_8060F6F
	ms_write_word ptr1=unk_2011EA4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_8060F6F

mapscript_8060F46:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=byte_8060F6F
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A2B destination4=byte_8060F6F
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A2C destination4=byte_8060F6F
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A2C
	ms_start_cutscene ptr1=cutscenescript_808E930 word5=0x00000000
	ms_jump destination1=byte_8060F6F

byte_8060F6F::
	ms_end

off_8060F70::
	.word dword_8060F9C
	.word byte_8061003
	.word byte_80610ED
	.word byte_806110B
	.word byte_8061126
	.word byte_8061141
	.word dword_806116C
	.word byte_8061197
	.word byte_80611C2
	.word byte_80611ED
	.word 0x000000FF
dword_8060F9C::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x62 destination3=byte_8060FF0
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8060FDE
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_8060FCC
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x42 destination3=npcscript_8060FBA
	ns_free_and_end

npcscript_8060FBA:
	ns_set_text_script_index byte1=0x00
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0xFFF8 hword3=0xFFA6 hword5=0x0060
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8060FCC:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0x001E hword3=0xFFC4 hword5=0x0060
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8060FDE:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0xFFF8 hword3=0xFFA6 hword5=0x0060
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8060FF0::
	ns_set_text_script_index byte1=0x05
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0xFFF8 hword3=0xFFA6 hword5=0x0060
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_8061003::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_80610B6
	ns_jump_if_progress_in_range byte1=0x41 byte2=0xFF destination3=npcscript_806101A
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=npcscript_8061088
	ns_free_and_end

npcscript_806101A:
	ns_jump_alt unuseddestination1=npcscript_8061024 destination5=npcscript_8061044
	ns_free_and_end

npcscript_8061024:
	ns_jump_if_flag_set event16_1=EVENT_A3E destination3=npcscript_8061064
	ns_jump_if_flag_clear event16_1=EVENT_A06 destination3=npcscript_80610EC
	ns_set_sprite byte1=0x20
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0xFF5C hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061044:
	ns_jump_if_flag_set event16_1=EVENT_A44 destination3=npcscript_8061076
	ns_jump_if_flag_clear event16_1=EVENT_A06 destination3=npcscript_80610EC
	ns_set_sprite byte1=0x21
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0xFF5C hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061064:
	ns_set_sprite byte1=0x20
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x32
	ns_set_coords hword1=0xFF5C hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061076:
	ns_set_sprite byte1=0x21
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x3C
	ns_set_coords hword1=0xFF5C hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061088:
	ns_jump_alt unuseddestination1=npcscript_8061092 destination5=npcscript_80610A4
	ns_free_and_end

npcscript_8061092:
	ns_set_sprite byte1=0x20
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0x0042 hword3=0x0004 hword5=0x0060
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80610A4:
	ns_set_sprite byte1=0x21
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0x0042 hword3=0x0004 hword5=0x0060
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80610B6:
	ns_jump_if_flag_set event16_1=EVENT_E08 destination3=npcscript_806101A
	ns_free_and_end
	ns_jump_alt unuseddestination1=npcscript_80610C8 destination5=npcscript_80610DA
	ns_free_and_end

npcscript_80610C8:
	ns_set_sprite byte1=0x20
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x23
	ns_set_coords hword1=0xFF5C hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80610DA:
	ns_set_sprite byte1=0x21
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x24
	ns_set_coords hword1=0xFF5C hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80610EC:
	ns_free_and_end

byte_80610ED::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=npcscript_80610F6
	ns_free_and_end

npcscript_80610F6:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x0002 hword3=0xFFF2 hword5=0x0060
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x07 byte2=0x06 byte3=0x06 destination4=npcscript_809F704

byte_806110B::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x41 destination3=npcscript_8061114
	ns_free_and_end

npcscript_8061114:
	ns_set_sprite byte1=0x0A
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0xFFD6 hword3=0xFFEA hword5=0x0060
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061126::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x43 byte2=0x46 destination3=npcscript_806112F
	ns_free_and_end

npcscript_806112F:
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x0004 hword3=0xFFDA hword5=0x0060
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061141::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_806114A
	ns_free_and_end

npcscript_806114A:
	ns_jump_if_flag_set event16_1=EVENT_E06 destination3=npcscript_806116B
	ns_jump_if_flag_set event16_1=EVENT_E5A destination3=byte_8061159
	ns_free_and_end

byte_8061159::
	ns_set_sprite byte1=0x2B
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0xFF78 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806116B:
	ns_free_and_end

dword_806116C::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=byte_8061175
	ns_free_and_end

byte_8061175::
	ns_jump_if_flag_set event16_1=EVENT_E06 destination3=byte_8061196
	ns_jump_if_flag_set event16_1=EVENT_E5A destination3=npcscript_8061184
	ns_free_and_end

npcscript_8061184:
	ns_set_sprite byte1=0x2D
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0xFF56 hword3=0x003C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8061196::
	ns_free_and_end

byte_8061197::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_80611A0
	ns_free_and_end

npcscript_80611A0:
	ns_jump_if_flag_set event16_1=EVENT_E06 destination3=npcscript_80611C1
	ns_jump_if_flag_set event16_1=EVENT_E5A destination3=npcscript_80611AF
	ns_free_and_end

npcscript_80611AF:
	ns_set_sprite byte1=0x2E
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0xFF54 hword3=0x001E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80611C1:
	ns_free_and_end

byte_80611C2::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_80611CB
	ns_free_and_end

npcscript_80611CB:
	ns_jump_if_flag_set event16_1=EVENT_E06 destination3=npcscript_80611EC
	ns_jump_if_flag_set event16_1=EVENT_E5A destination3=npcscript_80611DA
	ns_free_and_end

npcscript_80611DA:
	ns_set_sprite byte1=0x2F
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0xFF38 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x19
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80611EC:
	ns_free_and_end

byte_80611ED::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_80611F6
	ns_free_and_end

npcscript_80611F6:
	ns_jump_if_flag_set event16_1=EVENT_E06 destination3=npcscript_8061217
	ns_jump_if_flag_set event16_1=EVENT_E5A destination3=byte_8061205
	ns_free_and_end

byte_8061205::
	ns_set_sprite byte1=0x11
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0xFF74 hword3=0x003A hword5=0x0000
	ns_set_animation byte1=0x1C
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061217:
	ns_free_and_end

npcscript_list_8061218::
	.word byte_8061224
	.word byte_806123A
	.word 0x000000FF
byte_8061224::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF5C hword3=0x0024 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806123A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x21
	ns_set_coords hword1=0xFF5C hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_8061250::
	.word byte_806125C
	.word byte_8061280
	.word 0x000000FF
byte_806125C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF5C hword3=0x0024 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8061280::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x21
	ns_set_coords hword1=0xFF5C hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_8061298::
	.word byte_80612B8
	.word byte_80612F4
	.word byte_806130A
	.word byte_8061328
	.word byte_8061362
	.word byte_806139F
	.word byte_80613B5
	.word 0x000000FF
byte_80612B8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFE2 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_coords hword1=0xFF78 hword3=0x002C hword5=0x0000
	ns_wait_cutscene_var byte1=0x08 byte2=0x0F
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x10
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_jump_with_link destination1=byte_809F6CC

byte_80612F4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2F
	ns_set_coords hword1=0xFF38 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_806130A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2B
	ns_set_coords hword1=0xFF78 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x02
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_free_and_end

byte_8061328::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2D
	ns_set_coords hword1=0xFF56 hword3=0x003C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_pause byte1=0x02
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x03
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_coords hword1=0xFF50 hword3=0x003C hword5=0x0000
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_free_and_end

byte_8061362::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2E
	ns_set_coords hword1=0xFF54 hword3=0x001E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_pause byte1=0x03
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x03
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_coords hword1=0xFF50 hword3=0x001E hword5=0x0000
	ns_set_animation byte1=0x1C
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_free_and_end

byte_806139F::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0xFF74 hword3=0x003A hword5=0x0000
	ns_set_animation byte1=0x1C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80613B5::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x12
	ns_set_coords hword1=0xFF5C hword3=0x002C hword5=0x0040
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_play_sound hword1=0x0105
	ns_set_animation byte1=0x1A
	ns_clear_unk_flags_60_flag_0x200
	ns_give_detatched_shadow
	ns_init_native_callback ptr1=sub_8061408+1
	ns_init_native_callback ptr1=sub_8061422+1
	ns_give_attached_shadow
	ns_play_sound hword1=0x01AE
	ns_set_animation byte1=0x1B
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x0E
	ns_wait_cutscene_var byte1=0x08 byte2=0x11
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x12
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

	thumb_local_start
sub_8061408:
	push {r4-r7, lr}
	mov r7, r10
	ldr r7, [r7, #oToolkit_CutsceneStatePtr]
	mov r0, #4
	neg r0, r0
	lsl r0, r0, #0x10
	str r0, [r7, #0x74]
	mov r0, #1
	lsl r0, r0, #0xF
	str r0, [r7, #0x78]
	bl sub_809F904
	pop {r4-r7, pc}
	thumb_func_end sub_8061408

	thumb_local_start
sub_8061422:
	push {r4-r7, lr}
	mov r7, r10
	ldr r7, [r7, #0x10]
	ldr r0, [r5, #0x2c]
	ldr r1, [r7, #0x74]
	ldr r2, [r7, #0x78]
	sub r1, r1, r2
	str r1, [r7, #0x74]
	add r0, r0, r1
	str r0, [r5, #0x2c]
	cmp r0, #0
	ble loc_806143C
	pop {r4-r7, pc}
loc_806143C:
	mov r0, #0
	str r0, [r5, #0x2c]
	bl sub_809F904
	pop {r4-r7, pc}
	.balign 4, 0
	thumb_func_end sub_8061422


off_8061448::
	.word byte_8061478
	.word byte_806149D
	.word byte_80614B0
	.word byte_80614E1
	.word byte_8061512
	.word dword_8061594
	.word byte_8061600
	.word byte_80616F8
	.word byte_806172B
	.word byte_8061747
	.word byte_8061780
	.word 0x000000FF
byte_8061478::
	ns_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=npcscript_8061480
	ns_free_and_end

npcscript_8061480:
	ns_jump_if_flag_clear event16_1=EVENT_A2A destination3=npcscript_806149C
	ns_set_active_and_visible
	ns_do_not_face_player_when_interacted
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFEE8 hword3=0xFF6C hword5=0xFFE0
	ns_set_animation byte1=0x00
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806149C:
	ns_free_and_end

byte_806149D::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x10
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0xFEEE hword3=0xFF34 hword5=0xFF80
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_80614B0::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x46
	ns_jump_if_flag_set event16_1=EVENT_1C37 destination3=byte_80614E0
	ns_jump_if_flag_set event16_1=EVENT_1BF7 destination3=npcscript_80614C2
	ns_free_and_end

npcscript_80614C2:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=byte_80614E0
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_80614E0
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x0024 hword3=0xFECE hword5=0x00A0
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80614E0::
	ns_free_and_end

byte_80614E1::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x15
	ns_jump_if_flag_set event16_1=EVENT_1C38 destination3=npcscript_8061511
	ns_jump_if_flag_set event16_1=EVENT_1BF8 destination3=npcscript_80614F3
	ns_free_and_end

npcscript_80614F3:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_8061511
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_8061511
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_set_coords hword1=0x0074 hword3=0xFFEC hword5=0xFF80
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061511:
	ns_free_and_end

byte_8061512::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_8061569
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_8061530
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x42 destination3=byte_8061557
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=npcscript_8061545
	ns_free_and_end

npcscript_8061530:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0x0048 hword3=0xFF9C hword5=0x0060
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x08 byte3=0x20 destination4=byte_809F6EC

npcscript_8061545:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0x004C hword3=0x0144 hword5=0x0060
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8061557::
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0x0150 hword3=0xFF52 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061569:
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0x00B4 hword3=0x004C hword5=0x0060
	ns_set_animation byte1=0x05

npcscript_8061576:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E94 destination3=npcscript_8061576
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0x00B4 hword3=0x004C hword5=0x0060
	ns_set_animation byte1=0x02
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

dword_8061594::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_80615D5
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_80615C0
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_80615AB
	ns_free_and_end

npcscript_80615AB:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x29
	ns_set_coords hword1=0x0132 hword3=0xFF9C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x08 byte3=0x20 destination4=byte_809F71C

npcscript_80615C0:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x34
	ns_set_coords hword1=0x00BA hword3=0xFFCE hword5=0x0060
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x08 byte3=0x0A destination4=byte_809F6EC

byte_80615D5::
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0x0170 hword3=0xFF58 hword5=0x0000
	ns_set_animation byte1=0x05

npcscript_80615E2:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E96 destination3=npcscript_80615E2
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0x0170 hword3=0xFF58 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_8061600::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x15
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_80616CD
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_80616BB
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x61 destination3=byte_80616A9
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_8061697
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8061685
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_8061673
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=byte_8061663
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=npcscript_8061653
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=npcscript_8061643
	ns_free_and_end

npcscript_8061643:
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0x0056 hword3=0xFFCC hword5=0x0060
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061653:
	ns_set_text_script_index byte1=0x0B
	ns_set_coords hword1=0xFFE8 hword3=0xFF84 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F7E4

byte_8061663::
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0x0174 hword3=0xFF32 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061673:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x2B
	ns_set_coords hword1=0x0060 hword3=0xFF28 hword5=0x00A0
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061685:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x0052 hword3=0x013E hword5=0x0060
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061697:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0054 hword3=0x00AA hword5=0x0060
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80616A9::
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0xFFDA hword3=0xFF82 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80616BB:
	ns_set_sprite byte1=0x15
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0x016C hword3=0xFF3E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80616CD:
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x12
	ns_set_coords hword1=0x0024 hword3=0xFF1A hword5=0x00A0
	ns_set_animation byte1=0x03

npcscript_80616DA:
	.word 0x98050110, 0x0616DA0E, 0x1C172508, 0x14121813, 0xFF1A0024, 0x011600A0, 0x09F6CC36
	.byte 0x08
	.byte 0x03
byte_80616F8::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x0D
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_806171A
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x42 destination3=npcscript_806170A
	ns_free_and_end

npcscript_806170A:
	ns_set_text_script_index byte1=0x0C
	ns_set_coords hword1=0x013C hword3=0xFF30 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_806171A:
	ns_set_text_script_index byte1=0x33
	ns_set_coords hword1=0x0148 hword3=0xFF6C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_806172B::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x0B
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x42 destination3=npcscript_8061736
	ns_free_and_end

npcscript_8061736:
	ns_set_text_script_index byte1=0x0D
	ns_set_coords hword1=0xFF54 hword3=0xFFF2 hword5=0xFF80
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_8061747::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x14
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x42 destination3=npcscript_8061752
	ns_free_and_end

npcscript_8061752:
	ns_jump_if_flag_set event16_1=EVENT_A67 destination3=byte_806176F
	ns_jump_if_flag_set event16_1=EVENT_A68 destination3=byte_806176F
	ns_jump_if_flag_set event16_1=EVENT_A69 destination3=byte_806176F
	ns_jump_if_flag_set event16_1=EVENT_A6A destination3=byte_806176F
	ns_free_and_end

byte_806176F::
	ns_set_text_script_index byte1=0x0E
	ns_set_coords hword1=0x015A hword3=0xFF1A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_8061780::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x12
	ns_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=npcscript_806178B
	ns_free_and_end

npcscript_806178B:
	ns_jump_if_flag_set event16_1=EVENT_C30 destination3=npcscript_80617A7
	ns_jump_if_flag_clear event16_1=EVENT_C20 destination3=npcscript_80617A7
	ns_set_coords hword1=0xFF52 hword3=0xFF6D hword5=0x0060
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80617A7:
	ns_free_and_end

npcscript_list_80617A8::
	.word byte_80617B4
	.word byte_80617CA
	.word 0x000000FF
byte_80617B4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0x0098 hword3=0xFF10 hword5=0x00A0
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80617CA::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0x006C hword3=0x0130 hword5=0x0060
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_list_80617E0::
	.word byte_8061800
	.word byte_8061816
	.word byte_8061837
	.word byte_8061856
	.word byte_8061873
	.word byte_8061890
	.word byte_80618AD
	.word 0x000000FF
byte_8061800::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0054 hword3=0x00EC hword5=0x0060
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061816::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0x009C hword3=0xFF10 hword5=0x00A0
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0E
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_free_and_end

byte_8061837::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x4B byte2=0x1C
	ns_set_coords hword1=0x0054 hword3=0x004C hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x80
	ns_pause byte1=0x80
	ns_set_active_and_visible
	ns_play_sound hword1=0x00B8
	ns_jump_with_link destination1=byte_809F6CC

byte_8061856::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x90 byte2=0x1C
	ns_set_coords hword1=0x0054 hword3=0x000C hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0xC0
	ns_set_active_and_visible
	ns_play_sound hword1=0x0118
	ns_jump_with_link destination1=byte_809F6CC

byte_8061873::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x91 byte2=0x1C
	ns_set_coords hword1=0x0054 hword3=0x000C hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0xC0
	ns_set_active_and_visible
	ns_play_sound hword1=0x00AD
	ns_jump_with_link destination1=byte_809F6CC

byte_8061890::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x58 byte2=0x1C
	ns_set_coords hword1=0x0054 hword3=0xFFCE hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x80
	ns_set_active_and_visible
	ns_play_sound hword1=0x00F7
	ns_jump_with_link destination1=byte_809F6CC

byte_80618AD::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x41 byte2=0x1C
	ns_set_coords hword1=0x0052 hword3=0xFF8C hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x40
	ns_set_active_and_visible
	ns_play_sound hword1=0x0185
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_list_80618D0::
	.word byte_80618DC
	.word byte_80618F2
	.word 0x000000FF
byte_80618DC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0084 hword3=0x004C hword5=0x0060
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80618F2::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x4B byte2=0x1C
	ns_set_coords hword1=0x0054 hword3=0x004C hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_play_sound hword1=0x0074
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_free_and_end
	ns_end

npcscript_list_8061910::
	.word byte_8061920
	.word byte_8061936
	.word byte_8061950
	.word 0x000000FF
byte_8061920::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0024 hword3=0x000C hword5=0x0060
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061936::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x90 byte2=0x1C
	ns_set_coords hword1=0x0054 hword3=0x000C hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_play_sound hword1=0x0074
	ns_free_and_end

byte_8061950::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x91 byte2=0x1C
	ns_set_coords hword1=0x0054 hword3=0x000C hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_free_and_end
	ns_end
	ns_end

npcscript_list_806196C::
	.word byte_806197C
	.word byte_8061992
	.word byte_8061C26
	.word 0x000000FF
byte_806197C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0084 hword3=0xFFCC hword5=0x0060
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061992::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x58 byte2=0x1C
	ns_set_coords hword1=0x0054 hword3=0xFFCE hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_play_sound hword1=0x0074
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_free_and_end
	ns_end

npcscript_list_80619B0::
	.word byte_80619BC
	.word byte_80619D2
	.word 0x000000FF
byte_80619BC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0024 hword3=0xFF8E hword5=0x0060
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80619D2::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x41 byte2=0x1C
	ns_set_coords hword1=0x0052 hword3=0xFF8C hword5=0x0060
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_play_sound hword1=0x0074
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_free_and_end
	ns_end

npcscript_list_80619F0::
	.word byte_80619F8
	.word 0x000000FF
byte_80619F8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF70 hword3=0xFF4C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x22
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x08
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_list_8061A4C::
	.word byte_8061A5C
	.word byte_8061AE8
	.word byte_8061C26
	.word 0x000000FF
byte_8061A5C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF94 hword3=0xFF6C hword5=0x0060
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_coords hword1=0xFF54 hword3=0xFF6C hword5=0x0060
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x05
	ns_set_animation byte1=0x23
	ns_play_sound hword1=0x01AD
	ns_clear_unk_flags_60_flag_0x200
	ns_remove_shadow
	ns_init_native_callback ptr1=sub_8061B6C+1
	ns_init_native_callback ptr1=sub_8061BB6+1
	ns_play_sound hword1=0x01AF
	ns_set_animation byte1=0x24
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x25
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_move_in_direction byte1=0x05 byte2=0x01 byte3=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x26
	ns_play_sound hword1=0x0105
	ns_init_native_callback ptr1=sub_8061BE6+1
	ns_init_native_callback ptr1=sub_8061BFE+1
	ns_give_attached_shadow
	ns_set_coords hword1=0xFF20 hword3=0xFF6C hword5=0xFFE0
	ns_set_animation byte1=0x28
	ns_play_sound hword1=0x014B
	ns_write_cutscene_var byte1=0x08 byte2=0x0C
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_coords hword1=0xFF00 hword3=0xFF6C hword5=0xFFE0
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_jump_with_link destination1=byte_809F6CC

byte_8061AE8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFF54 hword3=0xFF6C hword5=0x0060
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x05
	ns_set_animation byte1=0x43
	ns_play_sound hword1=0x01AD
	ns_clear_unk_flags_60_flag_0x200
	ns_remove_shadow
	ns_init_native_callback ptr1=sub_8061B6C+1
	ns_init_native_callback ptr1=sub_8061B84+1
	ns_give_attached_shadow
	ns_play_sound hword1=0x01AE
	ns_set_animation byte1=0x44
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x05
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_coords hword1=0xFF20 hword3=0xFF6C hword5=0xFFE0
	ns_set_animation byte1=0x45
	ns_wait_cutscene_var byte1=0x08 byte2=0x0D
	ns_set_coords hword1=0xFEE8 hword3=0xFF6C hword5=0xFFE0
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_run_secondary_script ptr1=npcscript_809F8B4
	ns_pause byte1=0x1E
	ns_run_secondary_script ptr1=npcscript_809F8BF
	ns_pause byte1=0x14
	ns_run_secondary_script ptr1=byte_809F8CA
	ns_pause byte1=0x3C
	ns_run_secondary_script ptr1=npcscript_809F8D5
	ns_write_cutscene_var byte1=0x08 byte2=0x0F
	ns_free_and_end
	ns_end
	ns_end

	thumb_local_start
sub_8061B6C::
	push {r4-r7, lr}
	mov r7, r10
	ldr r7, [r7, #oToolkit_CutsceneStatePtr]
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [r7, #0x74]
	mov r0, #1
	lsl r0, r0, #0xF
	str r0, [r7, #0x78]
	bl sub_809F904
	pop {r4-r7, pc}
	thumb_func_end sub_8061B6C

	thumb_local_start
sub_8061B84::
	push {r4-r7, lr}
	mov r7, r10
	ldr r7, [r7, #oToolkit_CutsceneStatePtr]
	ldr r0, [r5, #0x2C]
	ldr r1, [r7, #0x74]
	ldr r2, [r7, #0x78]
	sub r1, r1, r2
	str r1, [r7, #0x74]
	add r0, r0, r1
	str r0, [r5, #0x2C]
	mov r1, #0x20
	neg r1, r1
	lsl r1, r1, #0x10
	cmp r0, r1
	ble loc_8061BAE
	ldr r0, [r5, #0x24]
	mov r1, #3
	lsl r1, r1, #0xF
	sub r0, r0, r1
	str r0, [r5, #0x24]
	pop {r4-r7, pc}
loc_8061BAE:
	str r1, [r5, #0x2C]
  bl sub_809F904
	pop {r4-r7, pc}
	thumb_func_end sub_8061B84

	thumb_local_start
sub_8061BB6::
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#0x10]
	ldr r0, [r5,#0x2c]
	ldr r1, [r7,#0x74]
	ldr r2, [r7,#0x78]
	sub r1, r1, r2
	str r1, [r7,#0x74]
	add r0, r0, r1
	str r0, [r5,#0x2c]
	mov r1, #0x50 
	lsl r1, r1, #0x10
	cmp r0, r1
	ble loc_8061BDE
	ldr r0, [r5,#0x24]
	mov r1, #3
	lsl r1, r1, #0xf
	sub r0, r0, r1
	str r0, [r5,#0x24]
	pop {r4-r7,pc}
loc_8061BDE::
	str r1, [r5,#0x2c]
	bl sub_809F904
	pop {r4-r7,pc}
	thumb_func_end sub_8061BB6

	thumb_local_start
sub_8061BE6::
	push {r4-r7, lr}
	mov r7, r10
	ldr r7, [r7, #oToolkit_CutsceneStatePtr]
	mov r0, #0
	lsl r0, r0, #0x10
	str r0, [r7, #0x74]
	mov r0, #1
	lsl r0, r0, #0xF
	str r0, [r7, #0x78]
	bl sub_809F904
	pop {r4-r7, pc}
	thumb_func_end sub_8061BE6

	thumb_local_start
sub_8061BFE::
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#0x10]
	ldr r0, [r5,#0x2c]
	ldr r1, [r7,#0x74]
	ldr r2, [r7,#0x78]
	sub r1, r1, r2
	str r1, [r7,#0x74]
	add r0, r0, r1
	str r0, [r5,#0x2c]
	mov r1, #0x20 
	neg r1, r1
	lsl r1, r1, #0x10
	cmp r0, r1
	ble loc_8061C1E
	pop {r4-r7,pc}
loc_8061C1E::
	str r1, [r5,#0x2c]
	bl sub_809F904
	pop {r4-r7,pc}
	thumb_func_end sub_8061BFE

byte_8061C26::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_set_coords hword1=0xFEE8 hword3=0xFF6C hword5=0xFFE0
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_run_secondary_script ptr1=byte_809F889
	ns_pause byte1=0x1E
	ns_run_secondary_script ptr1=npcscript_809F897
	ns_pause byte1=0x14
	ns_run_secondary_script ptr1=byte_809F8A5
	ns_pause byte1=0x3C
	ns_play_sound hword1=0x008E
	ns_run_secondary_script ptr1=byte_809F8B3
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_8061C5C::
	.word byte_8061C6C
	.word byte_8061C8F
	.word byte_8061CE8
	.word 0x000000FF
byte_8061C6C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFF94 hword3=0xFF6C hword5=0x0060
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8061C8F::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x12
	ns_set_coords hword1=0xFF54 hword3=0xFF6C hword5=0x0060
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFF4 hword3=0xFEDA hword5=0x0000
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_run_secondary_script ptr1=npcscript_8061CC4
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x06
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_free_and_end

npcscript_8061CC4:
	ns_pause_secondary_script byte1=0x26
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

byte_8061CE8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0x004C hword3=0xFF64 hword5=0x0060
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

off_8061D00::
	.word dword_8061D18
	.word byte_8061DE3
	.word byte_8061E45
	.word byte_8061E68
	.word byte_8061EB7
	.word 0x000000FF
dword_8061D18::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_8061DB8
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_8061DA3
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8061D8E
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_8061D5D
	ns_jump_if_progress_in_range byte1=0x45 byte2=0x46 destination3=byte_8061D72
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=npcscript_8061D44
	ns_free_and_end

npcscript_8061D44:
	ns_jump_if_flag_set event16_1=EVENT_A06 destination3=npcscript_8061DE2
	ns_set_text_script_index byte1=0x00
	ns_set_sprite byte1=0x41
	ns_set_coords hword1=0xFFEA hword3=0xFFF4 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061D5D:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0x0016 hword3=0xFFD8 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x08 byte3=0x0A destination4=byte_809F71C

byte_8061D72::
	ns_jump_if_flag_clear event16_1=EVENT_A26 destination3=npcscript_8061DE2
	ns_set_sprite byte1=0x0F
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x003A hword3=0x0038 hword5=0x0000
	ns_set_animation byte1=0x19
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061D8E:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0x0016 hword3=0xFFD8 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x08 byte3=0x0A destination4=byte_809F71C

npcscript_8061DA3:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0012 hword3=0xFFD4 hword5=0x0010
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x08 byte3=0x0A destination4=byte_809F71C

byte_8061DB8::
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFFE0 hword3=0xFFE8 hword5=0x0010
	ns_set_animation byte1=0x07

npcscript_8061DC5:
	.word 0x9A050110, 0x061DC50E, 0x1C172508, 0x14101813, 0xFFE8FFE0, 0x03160010, 0x09F6CC36
	.byte 0x08

npcscript_8061DE2:
	ns_free_and_end

byte_8061DE3::
	ns_jump_if_progress_in_range byte1=0x45 byte2=0x45 destination3=npcscript_8061DEB
	ns_free_and_end

npcscript_8061DEB:
	ns_jump_if_flag_clear event16_1=EVENT_A28 destination3=npcscript_8061E2F
	ns_jump_if_flag_set event16_1=EVENT_A2A destination3=byte_8061E44
	ns_jump_if_flag_set event16_1=EVENT_171A destination3=byte_8061E44
	ns_jump_if_flag_clear event16_1=EVENT_COPYBOT_ACTIVE destination3=npcscript_8061E1A
	ns_set_active_and_visible
	ns_set_sprite byte1=0x00
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0xFF4A hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061E1A:
	ns_set_active_and_visible
	ns_do_not_face_player_when_interacted
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0xFF4A hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061E2F:
	ns_set_active_and_visible
	ns_do_not_face_player_when_interacted
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_set_text_script_index byte1=0x0D
	ns_set_coords hword1=0xFF4A hword3=0xFFA4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061E44::
	ns_free_and_end

byte_8061E45::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x16
	ns_jump_if_progress_in_range byte1=0x50 byte2=0xFF destination3=npcscript_8061E50
	ns_free_and_end

npcscript_8061E50:
	ns_jump_if_flag_clear event16_1=EVENT_112C destination3=npcscript_8061E67
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x05
	ns_set_coords hword1=0xFF78 hword3=0xFFEE hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061E67:
	ns_free_and_end

byte_8061E68::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x14
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=npcscript_8061E8A
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=npcscript_8061E7A
	ns_free_and_end

npcscript_8061E7A:
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0xFFBE hword3=0x0048 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061E8A:
	ns_jump_if_flag_set event16_1=EVENT_A67 destination3=byte_8061EB6
	ns_jump_if_flag_set event16_1=EVENT_A68 destination3=byte_8061EB6
	ns_jump_if_flag_set event16_1=EVENT_A69 destination3=byte_8061EB6
	ns_jump_if_flag_set event16_1=EVENT_A6A destination3=byte_8061EB6
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0xFFDC hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061EB6::
	ns_free_and_end

byte_8061EB7::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x10
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_8061EF0
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=byte_8061EE0
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x40 destination3=npcscript_8061ED0
	ns_free_and_end

npcscript_8061ED0:
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFFE6 hword3=0x0060 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8061EE0::
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0x0014 hword3=0x0064 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8061EF0:
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0x0006 hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x08 destination4=byte_809F71C
	ns_free_and_end

npcscript_list_8061F04::
	.word byte_8061F2C
	.word byte_8061F4B
	.word byte_8061F6A
	.word byte_8061F89
	.word byte_8061FB5
	.word byte_8061FD4
	.word byte_8061FF8
	.word byte_8062022
	.word byte_806204E
	.word 0x000000FF
byte_8061F2C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFEC hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFEA hword3=0x0050 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8061F4B::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0xFFDC hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFEA hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8061F6A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0E
	ns_set_coords hword1=0xFFCC hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFD2 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061F89::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0xFFFC hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_layer_priority_override_to_3
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x03
	ns_pause byte1=0xB4
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8061FB5::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0D
	ns_set_coords hword1=0xFFCC hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFCC hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8061FD4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x15
	ns_set_coords hword1=0xFFDC hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x28
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8061FF8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x16
	ns_set_coords hword1=0xFFEC hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x14
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8062022::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x10
	ns_set_coords hword1=0xFFFC hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_layer_priority_override_to_3
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x07
	ns_pause byte1=0x64
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806204E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x41
	ns_set_coords hword1=0xFFE4 hword3=0xFFFA hword5=0x0010
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_coords hword1=0xFFE4 hword3=0xFFF8 hword5=0x0010
	ns_set_layer_priority_override_to_3
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x06
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0A
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x08
	ns_set_animation byte1=0x01
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_run_secondary_script ptr1=npcscript_8062096
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x09
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_free_and_end

npcscript_8062096:
	ns_pause_secondary_script byte1=0x28
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
	ns_end
	ns_end

npcscript_list_80620BC::
	.word byte_80620CC
	.word byte_806210E
	.word byte_8061DE3
	.word 0x000000FF
byte_80620CC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFB4 hword3=0x0074 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x06
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_jump_with_link destination1=byte_809F6CC

byte_806210E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0xFF68 hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_run_secondary_script ptr1=byte_8062130
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x06
	ns_set_animation byte1=0x0F
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_free_and_end

byte_8062130::
	ns_pause_secondary_script byte1=0x50
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

npcscript_list_8062154::
	.word byte_8062164
	.word byte_80621BD
	.word byte_8061DE3
	.word 0x000000FF
byte_8062164::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x003C hword3=0x003C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_jump_with_link destination1=byte_809F6CC

byte_80621BD::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0x0038 hword3=0x0028 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_run_secondary_script ptr1=npcscript_80621EC
	ns_play_sound hword1=0x017B
	ns_set_animation byte1=0x19
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x02
	ns_pause byte1=0x04
	ns_play_sound hword1=0x014B
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80621EC:
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

off_8062210::
	.word byte_8062230
	.word byte_806224B
	.word byte_80622CB
	.word dword_8062318
	.word byte_8062371
	.word byte_806238F
	.word byte_80623C6
	.word 0x000000FF
byte_8062230::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x10
	ns_jump_if_progress_in_range byte1=0x60 byte2=0xFF destination3=npcscript_806223B
	ns_free_and_end

npcscript_806223B:
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x00B4 hword3=0x0088 hword5=0x0020
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806224B::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=npcscript_80622B8
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_80622A6
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8062294
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=byte_8062270
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=npcscript_8062282
	ns_free_and_end

byte_8062270::
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0xFFFA hword3=0xFFFA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8062282:
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFFE4 hword3=0x014A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8062294:
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0xFFD4 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80622A6:
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFD2 hword3=0x0012 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80622B8:
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFFE6 hword3=0x001E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_80622CB::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=npcscript_8062306
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_80622F4
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=npcscript_80622E2
	ns_free_and_end

npcscript_80622E2:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFEC hword3=0x0098 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80622F4:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0xFFD2 hword3=0x00AA hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8062306:
	ns_set_sprite byte1=0x02
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0xFFD4 hword3=0x0030 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

dword_8062318::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=byte_806235E
	ns_jump_if_progress_in_range byte1=0x46 byte2=0x46 destination3=npcscript_8062328
	ns_free_and_end

npcscript_8062328:
	ns_jump_if_flag_set event16_1=EVENT_A32 destination3=npcscript_8062370
	ns_jump_if_flag_set event16_1=EVENT_A2C destination3=npcscript_8062349
	ns_set_sprite byte1=0x0F
	ns_disable_npc_interaction
	ns_do_not_face_player_when_interacted
	ns_disable_collision
	ns_set_coords hword1=0xFFD8 hword3=0xFFEE hword5=0x000A
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8062349:
	ns_set_sprite byte1=0x2E
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0xFFD8 hword3=0xFFEE hword5=0x000A
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_806235E::
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0xFFD2 hword3=0x00AE hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8062370:
	ns_free_and_end

byte_8062371::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=npcscript_806237A
	ns_free_and_end

npcscript_806237A:
	ns_set_sprite byte1=0x43
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x12
	ns_set_coords hword1=0xFFD4 hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

byte_806238F::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=npcscript_8062398
	ns_free_and_end

npcscript_8062398:
	ns_jump_alt unuseddestination1=npcscript_80623A2 destination5=npcscript_80623B4
	ns_free_and_end

npcscript_80623A2:
	ns_set_sprite byte1=0x27
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0xFFB0 hword3=0x00AA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80623B4:
	ns_set_sprite byte1=0x24
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0xFFB0 hword3=0x00AA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80623C6::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x41 byte2=0x41 destination3=npcscript_80623CF
	ns_free_and_end

npcscript_80623CF:
	ns_jump_alt unuseddestination1=byte_80623D9 destination5=byte_80623EB
	ns_free_and_end

byte_80623D9::
	ns_set_sprite byte1=0x26
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0x0012 hword3=0x0018 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_80623EB::
	ns_set_sprite byte1=0x25
	ns_set_text_script_index byte1=0x17
	ns_set_coords hword1=0x0012 hword3=0x0018 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

npcscript_list_8062400::
	.word byte_806240C
	.word byte_8062458
	.word 0x000000FF
byte_806240C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFD4 hword3=0x003C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x06
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

byte_8062458::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_clear_unk_flags_60_flag_0x200
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0xFFD8 hword3=0xFFEE hword5=0x000A
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x0A
	ns_set_sprite byte1=0x2E
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_806247C::
	.word byte_806249C
	.word byte_806251A
	.word byte_8062567
	.word byte_8062594
	.word byte_80625B2
	.word byte_806262A
	.word byte_806266E
	.word 0x000000FF
byte_806249C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFD4 hword3=0x001C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x0D
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x0A
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x0F
	ns_wait_cutscene_var byte1=0x08 byte2=0x14
	ns_set_animation byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x15
	ns_wait_cutscene_var byte1=0x08 byte2=0x1A
	ns_set_animation byte1=0x29
	ns_wait_anim_frame byte1=0xC0
	ns_wait_cutscene_var byte1=0x08 byte2=0x20
	ns_set_coords hword1=0xFFD4 hword3=0x0024 hword5=0x0000
	ns_wait_anim_frame byte1=0xC0
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_set_animation byte1=0x07
	ns_wait_anim_frame byte1=0xC0
	ns_wait_cutscene_var byte1=0x08 byte2=0x37
	ns_set_animation byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x38
	ns_wait_cutscene_var byte1=0x08 byte2=0x39
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x3A
	ns_wait_cutscene_var byte1=0x08 byte2=0x3B
	ns_jump_with_link destination1=byte_809F6CC

byte_806251A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_clear_unk_flags_60_flag_0x200
	ns_set_sprite byte1=0x2E
	ns_set_coords hword1=0xFFD8 hword3=0xFFEE hword5=0x000A
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x19
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0xFFD8 hword3=0xFFDE hword5=0x000A
	ns_set_animation byte1=0x1B
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_coords hword1=0xFFF8 hword3=0xFFDE hword5=0x000A
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x12
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x13
	ns_pause byte1=0x08
	ns_free_and_end

byte_8062567::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x65 byte2=0x1C
	ns_set_coords hword1=0xFFE2 hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x00
	ns_write_hidden_oam_pieces word1=0x0C000000
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x00
	ns_write_hidden_oam_pieces word1=0x04000000
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x01
	ns_write_hidden_oam_pieces word1=0x00000000
	ns_jump_with_link destination1=byte_809F6CC

byte_8062594::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x65 byte2=0x1C
	ns_set_coords hword1=0xFFE2 hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x04
	ns_jump_with_link destination1=byte_809F6CC

byte_80625B2::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_clear_unk_flags_60_flag_0x200
	ns_set_sprite byte1=0x53
	ns_set_coords hword1=0xFFE8 hword3=0xFF9A hword5=0xFFFA
	ns_set_animation byte1=0x33
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_play_sound hword1=0x0135
	ns_set_animation byte1=0x35
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_coords hword1=0xFFD8 hword3=0xFFEE hword5=0x000A
	ns_play_sound hword1=0x0094
	ns_set_animation byte1=0x39
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x83
	ns_wait_cutscene_var byte1=0x08 byte2=0x1A
	ns_set_animation byte1=0x32
	ns_play_sound hword1=0x00C7
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x1B
	ns_wait_cutscene_var byte1=0x08 byte2=0x1C
	ns_set_animation byte1=0x2A
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x1D
	ns_wait_cutscene_var byte1=0x08 byte2=0x21
	ns_set_animation byte1=0x07
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x22
	ns_wait_cutscene_var byte1=0x08 byte2=0x23
	ns_run_secondary_script ptr1=npcscript_809F8B4
	ns_pause byte1=0x1E
	ns_run_secondary_script ptr1=npcscript_809F8BF
	ns_pause byte1=0x14
	ns_run_secondary_script ptr1=byte_809F8CA
	ns_pause byte1=0x3C
	ns_run_secondary_script ptr1=npcscript_809F8D5
	ns_write_cutscene_var byte1=0x08 byte2=0x24
	ns_free_and_end

byte_806262A::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_clear_unk_flags_60_flag_0x200
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0xFFD4 hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x1A
	ns_wait_cutscene_var byte1=0x08 byte2=0x20
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x31
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x07
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x32
	ns_wait_cutscene_var byte1=0x08 byte2=0x33
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x34
	ns_wait_cutscene_var byte1=0x08 byte2=0x35
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x36
	ns_wait_cutscene_var byte1=0x08 byte2=0x39
	ns_free_and_end

byte_806266E::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_set_coords hword1=0xFFD8 hword3=0xFFEE hword5=0x000A
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x23
	ns_run_secondary_script ptr1=byte_809F889
	ns_pause byte1=0x1E
	ns_run_secondary_script ptr1=npcscript_809F897
	ns_pause byte1=0x14
	ns_run_secondary_script ptr1=byte_809F8A5
	ns_pause byte1=0x3C
	ns_play_sound hword1=0x008E
	ns_run_secondary_script ptr1=byte_809F8B3
	ns_set_active_and_visible
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_set_coords hword1=0xFFAE hword3=0xFFF2 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x31
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_80626B4::
	.word byte_80626C8
	.word byte_80626DE
	.word byte_80626F4
	.word byte_8062710
	.word 0x000000FF
byte_80626C8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x16
	ns_set_coords hword1=0xFFD4 hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80626DE::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x15
	ns_set_coords hword1=0xFFD4 hword3=0xFFCA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80626F4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x65 byte2=0x1C
	ns_set_coords hword1=0xFFE2 hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x01
	ns_write_hidden_oam_pieces word1=0x00000000
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8062710::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x65 byte2=0x1C
	ns_set_coords hword1=0xFFE2 hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

/*For debugging purposes, connect comment at any range!*/
