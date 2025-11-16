
CentralTownObjectSpawns:: // [MapObjectSpawnData; 15]]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x840000,
		y: -0x180000,
		z: 0x000000,
		object_id: 0x000073,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x4a0000,
		y: 0xc60000,
		z: 0x900000,
		object_id: 0x000065,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0xca0000,
		y: 0x460000,
		z: 0x100000,
		object_id: 0x00006a,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x4a0000,
		y: 0xc60000,
		z: 0x900000,
		object_id: 0x00006f,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x4a0000,
		y: 0xc60000,
		z: 0x900000,
		object_id: 0x000070,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x8a0000,
		y: -0xbe0000,
		z: 0x000000,
		object_id: 0x000015,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x8a0000,
		y: -0x3a0000,
		z: 0x000000,
		object_id: 0x000016,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x560000,
		y: 0xa80000,
		z: 0x000000,
		object_id: 0x00007e,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x8c0000,
		y: -0x120000,
		z: 0x000000,
		object_id: 0x00007d,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x8c0000,
		y: -0x580000,
		z: 0x000000,
		object_id: 0x00007d,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x0e0000,
		y: -0x120000,
		z: 0x000000,
		object_id: 0x00007d,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x0e0000,
		y: -0x340000,
		z: 0x000000,
		object_id: 0x00007d,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x0e0000,
		y: -0x580000,
		z: 0x000000,
		object_id: 0x00007d,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x140000,
		y: -0xbc0000,
		z: 0x000000,
		object_id: 0x00007d,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x340000,
		y: -0xbc0000,
		z: 0x000000,
		object_id: 0x00007d,
	]
	.word 0xFF

LansHouseObjectSpawns:: // [MapObjectSpawnData; 4]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x380000,
		y: -0x4a0000,
		z: 0x000000,
		object_id: 0x000003,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x340000,
		y: -0x2e0000,
		z: 0x000000,
		object_id: 0x000004,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x1e0000,
		y: -0x2a0000,
		z: 0x000000,
		object_id: 0x000005,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0xa0000,
		y: -0x260000,
		z: 0x000000,
		object_id: 0x000006,
	]
	.word 0xFF

LansRoomObjectSpawns:: // [MapObjectSpawnData; 0]
	.word 0xFF

BathroomObjectSpawns:: // [MapObjectSpawnData; 0]
	.word 0xFF

AsterLandObjectSpawns:: // [MapObjectSpawnData; 4]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x3e0000,
		y: 0x160000,
		z: -0xc0000,
		object_id: 0x0000c3,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: -0x3e0000,
		y: 0x160000,
		z: -0xc0000,
		object_id: 0x0000c4,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x5e0000,
		y: 0x1a0000,
		z: 0x000000,
		object_id: 0x0000ba,
	]
	map_object_spawn_data_struct [
		index: 0x0,
		x: 0x720000,
		y: 0x1a0000,
		z: 0x000000,
		object_id: 0x0000bb,
	]
	.word 0xFF

off_804E92C:: // (*const MapScript)[CENTRAL_TOWN_NUM_MAPS]
  .word MapScriptOnInitCentralTown_804EA28 // MapScript
	.word MapScriptOnInitLanHouse_804F1D4 // MapScript
	.word MapScriptOnInitLanRoom_804F4F0 // MapScript
	.word MapScriptOnInitBathroom_804F934 // MapScript
	.word MapScriptOnInitAsterLand_804F998 // MapScript
off_804E940:: // (*const MapScript)[CENTRAL_TOWN_NUM_MAPS]
  .word MapScriptOnUpdateCentralTown_804EEF7 // MapScript
	.word MapScriptOnUpdateLanHouse_804F3F0 // MapScript
	.word MapScriptOnUpdateLanRoom_804F744 // MapScript
	.word MapScriptOnUpdateBathroom_804F96E // MapScript
	.word MapScriptOnUpdateAsterLand_804F9C5 // MapScript
NPCScriptsCentralTown_804E954:: // [*const [*const NPCScript]; CENTRAL_TOWN_NUM_MAPS]
  .word NPCScriptsForCentralTown_804F9D8 // [*const NPCScript; 16]
	.word NPCScriptsForLanHouse_8051624 // (*const NPCScript)[5]
	.word NPCScriptsForLanRoom_8051B5C // [*const NPCScript; 1]
	.word NPCScriptsForBathroom_8051F48 // [*const NPCScript; 2]
	.word NPCScriptsForAsterland_8051FB0 // [*const NPCScript; 9]
off_804E968:: 
  .word byte_804E97C
	.word byte_804E98C
	.word byte_804E99C
	.word byte_804E9AC
	.word byte_804E9BC
byte_804E97C:: 
  .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0xFF, 0x6, 0x7, 0x8, 0x9, 0xA, 0xC, 0xD, 0xFF
	.byte 0xFF, 0xFF
byte_804E98C:: 
  .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xD, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF
byte_804E99C:: 
  .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF
byte_804E9AC:: 
  .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_804E9BC:: 
  .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0xFF, 0x8, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
off_804E9CC:: 
  .word byte_804E9E0
	.word byte_804E9E8
	.word byte_804E9F0
	.word byte_804E9F8
	.word byte_804EA00
byte_804E9E0::
	.byte 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_804E9E8::
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_804E9F0::
	.byte 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_804E9F8::
	.byte 0x7, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_804EA00::
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_804EA08::
	.byte 0x3, 0x4, 0x4, 0x4, 0x4
byte_804EA0D::
	.byte 0xC, 0x4, 0x4, 0xC, 0xC
byte_804EA12::
	.byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0x4, 0x4, 0x4, 0x4
byte_804EA1C::
	.byte 0xB, 0xB, 0xB, 0xB, 0xB
byte_804EA21::
  .byte 0x63, 0x4, 0x4, 0x4, 0x4, 0x0, 0x0
MapScriptOnInitCentralTown_804EA28::
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A9B destination4=byte_804EA41
	ms_init_eStruct200a6a0 ptr1=sub_804C700+1 ptr5=sub_804C71C+1 word9=0x00000000

byte_804EA41::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_3A destination4=mapscript_804EA52
	ms_start_cutscene ptr1=unk_809BBE9 word5=0x00000000

mapscript_804EA52:
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=mapscript_804EA88
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x1F destination3=byte_804EB2D
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_804EBDB
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_804EC3B
	ms_jump_if_progress_in_range byte1=0x40 byte2=0x4F destination3=mapscript_804EC8D
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=byte_804ECD6
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_804EDE1
	ms_jump destination1=byte_804EEF6

mapscript_804EA88:
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_write_word ptr1=unk_2011EB4 word5=0x08050402
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x00 destination3=byte_804EAAC
	ms_jump_if_progress_in_range byte1=0x01 byte2=0x01 destination3=mapscript_804EAC6
	ms_jump destination1=byte_804EEF6

byte_804EAAC::
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16D0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16D1
	ms_write_word ptr1=unk_2011EA8 word5=0x08030102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump destination1=byte_804EEF6

mapscript_804EAC6:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16D0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16D1
	ms_write_word ptr1=unk_2011EA4 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1CA0 destination4=mapscript_804EAF8
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1D20 destination4=mapscript_804EAF8
	ms_write_word ptr1=unk_2011EA4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F1

mapscript_804EAF8:
	ms_write_word ptr1=unk_2011EA8 word5=0x08030102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_417 destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_418 destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_418
	ms_set_enter_map_screen_fade byte1=0x04 byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=CutsceneScriptEndTutCheckOnIris word5=0x00000000
	ms_jump destination1=byte_804EEF6

byte_804EB2D::
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=dword_804EB44
	ms_jump_if_progress_in_range byte1=0x16 byte2=0x16 destination3=mapscript_804EB99
	ms_jump destination1=byte_804EEF6

dword_804EB44::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_50E destination4=byte_804EB59
	ms_write_word ptr1=unk_2011EB4 word5=0x08050A02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5

byte_804EB59::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_557 destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_558 destination4=byte_804EEF6
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=mapscript_804EB84
	ms_set_event_flag byte1=0xFF event16_2=EVENT_558
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000000
	ms_jump destination1=byte_804EEF6

mapscript_804EB84:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_557
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000001
	ms_jump destination1=byte_804EEF6

mapscript_804EB99:
	ms_write_word ptr1=unk_2011EA8 word5=0x08030C02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_write_word ptr1=unk_2011EB4 word5=0x08050B02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_537 destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_538 destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_538
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_80861D0 word5=0x00000000
	ms_jump destination1=byte_804EEF6

mapscript_804EBDB:
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=mapscript_804EBEE
	ms_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=mapscript_804EC13
	ms_jump destination1=byte_804EEF6

mapscript_804EBEE:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_609 destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_60A destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_60A
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_8087714 word5=0x00000000
	ms_jump destination1=byte_804EEF6

mapscript_804EC13:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_611 destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_612 destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_612
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8087F98 word5=0x00000000
	ms_jump destination1=byte_804EEF6

mapscript_804EC3B:
	ms_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=mapscript_804EC4E
	ms_jump_if_progress_in_range byte1=0x33 byte2=0x33 destination3=mapscript_804EC68
	ms_jump destination1=byte_804EEF6

mapscript_804EC4E:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_86C destination4=byte_804EEF6
	ms_write_word ptr1=unk_2011EB4 word5=0x08051402
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_jump destination1=byte_804EEF6

mapscript_804EC68:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_821 destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_822 destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_822
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_808B6F0 word5=0x00000000
	ms_jump destination1=byte_804EEF6

mapscript_804EC8D:
	ms_jump_if_progress_in_range byte1=0x43 byte2=0x43 destination3=byte_804EC99
	ms_jump destination1=byte_804EEF6

byte_804EC99::
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A16 destination4=mapscript_804ECAE
	ms_write_word ptr1=unk_2011EB4 word5=0x08051E02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5

mapscript_804ECAE:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_A0F destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_A10 destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_A10
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808DB30 word5=0x00000000
	ms_jump destination1=byte_804EEF6

byte_804ECD6::
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=mapscript_804ECE9
	ms_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=byte_804EDB9
	ms_jump destination1=byte_804EEF6

mapscript_804ECE9:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C0A destination4=mapscript_804ED2D
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_CEA destination4=mapscript_804ED2D
	ms_write_word ptr1=unk_2011EB4 word5=0x08052302
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_write_word ptr1=unk_2011EA8 word5=0x08032402
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_write_word ptr1=unk_2011EA4 word5=0x08052502
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_write_word ptr1=unk_2011EB0 word5=0x08032602
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F4

mapscript_804ED2D:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C05 destination4=mapscript_804ED55
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C06 destination4=mapscript_804ED55
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C06
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80905BC word5=0x00000000
	ms_jump destination1=byte_804EEF6

mapscript_804ED55:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_CC8 destination4=byte_804EEF6
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C09 destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C0A destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C0A
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_write_word ptr1=unk_2011EB4 word5=0x08052302
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_write_word ptr1=unk_2011EA8 word5=0x08032402
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_write_word ptr1=unk_2011EA4 word5=0x08052502
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_write_word ptr1=unk_2011EB0 word5=0x08032602
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_start_cutscene ptr1=byte_80908CC word5=0x00000000
	ms_jump destination1=byte_804EEF6

byte_804EDB9::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C1B destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C1C destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C31
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_8098C78 word5=0x00000002
	ms_jump destination1=byte_804EEF6

mapscript_804EDE1:
	ms_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=byte_804EDFB
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x63 destination3=mapscript_804EE23
	ms_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=mapscript_804EE3D
	ms_jump destination1=byte_804EEF6

byte_804EDFB::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E1D destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E1E destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E1E
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8094894 word5=0x00000000
	ms_jump destination1=byte_804EEF6

mapscript_804EE23:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E36 destination4=mapscript_804EE3D
	ms_write_word ptr1=unk_2011EAC word5=0x08032802
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F3
	ms_jump destination1=mapscript_804EE3D

mapscript_804EE3D:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E6B destination4=mapscript_804EE62
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E6C destination4=mapscript_804EE62
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E6C
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000058
	ms_jump destination1=byte_804EEF6

mapscript_804EE62:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E6D destination4=mapscript_804EE87
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E6E destination4=mapscript_804EE87
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E6E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000059
	ms_jump destination1=byte_804EEF6

mapscript_804EE87:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E6F destination4=mapscript_804EEAC
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E70 destination4=mapscript_804EEAC
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E70
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x0000005A
	ms_jump destination1=byte_804EEF6

mapscript_804EEAC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E71 destination4=byte_804EED1
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E72 destination4=byte_804EED1
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E72
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x0000005B
	ms_jump destination1=byte_804EEF6

byte_804EED1::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E73 destination4=byte_804EEF6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E74 destination4=byte_804EEF6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E74
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x0000005C
	ms_jump destination1=byte_804EEF6

byte_804EEF6::
	ms_end

MapScriptOnUpdateCentralTown_804EEF7::
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=MapScript_804EF26
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x1F destination3=mapscript_804EFA6
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=byte_804F015
	ms_jump_if_progress_in_range byte1=0x30 byte2=0x3F destination3=mapscript_804F04B
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_804F079
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x6F destination3=mapscript_804F0CE
	ms_jump destination1=dword_804F1D0

MapScript_804EF26::
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x00 destination3=mapscript_804EF39
	ms_jump_if_progress_in_range byte1=0x01 byte2=0x01 destination3=byte_804EF62
	ms_jump destination1=dword_804F1D0
mapscript_804EF39:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=dword_804F1D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_407 destination4=dword_804F1D0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_408 destination4=dword_804F1D0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_408
	ms_start_cutscene ptr1=CutsceneScriptIrisAttackedByRoboDog word5=0x00000000
	ms_jump destination1=dword_804F1D0

byte_804EF62::
	ms_jump_if_flag_range_clear byte1=0x05 event16_2=EVENT_464 destination4=mapscript_804EF84
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1CA0 destination4=mapscript_804EF84
	ms_add_mail_range hword1=0x1CED byte3=0x01
	ms_start_cutscene ptr1=byte_8098BB8 word5=0x00000217
	ms_jump destination1=dword_804F1D0
mapscript_804EF84:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1CA0 destination4=dword_804F1D0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1D20 destination4=dword_804F1D0
	ms_write_word ptr1=unk_2011EA4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_jump destination1=dword_804F1D0

mapscript_804EFA6:
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x10 destination3=mapscript_804EFB9
	ms_jump_if_progress_in_range byte1=0x12 byte2=0x12 destination3=byte_804EFD7
	ms_jump destination1=dword_804F1D0
mapscript_804EFB9:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_558 destination4=dword_804F1D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_557 destination4=dword_804F1D0
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0046
	ms_jump destination1=dword_804F1D0

byte_804EFD7::
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x11 signedbyte2=0x00 destination3=dword_804F1D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_543 destination4=dword_804F1D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_50D destination4=dword_804F1D0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_50E destination4=dword_804F1D0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_50E
	ms_write_word ptr1=unk_2011EB4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_start_cutscene ptr1=byte_8084A28 word5=0x00000000
	ms_jump destination1=dword_804F1D0

byte_804F015::
	ms_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=byte_804F021
	ms_jump destination1=dword_804F1D0

byte_804F021::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_631 destination4=dword_804F1D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_60D destination4=dword_804F1D0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_60E destination4=dword_804F1D0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_60E
	ms_start_cutscene ptr1=cutscenescript_8087918 word5=0x00000000
	ms_jump destination1=dword_804F1D0

mapscript_804F04B:
	ms_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=mapscript_804F057
	ms_jump destination1=dword_804F1D0
mapscript_804F057:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_80F destination4=dword_804F1D0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_810 destination4=dword_804F1D0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_810
	ms_start_cutscene ptr1=byte_808AC74 word5=0x00000000
	ms_jump destination1=dword_804F1D0

mapscript_804F079:
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=byte_804F085
	ms_jump destination1=dword_804F1D0

byte_804F085::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C0A destination4=dword_804F1D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_CEA destination4=dword_804F1D0
	ms_write_word ptr1=unk_2011EB4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F5
	ms_write_word ptr1=unk_2011EA8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F2
	ms_write_word ptr1=unk_2011EA4 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F1
	ms_write_word ptr1=unk_2011EB0 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_jump destination1=dword_804F1D0

mapscript_804F0CE:
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=mapscript_804F0E8
	ms_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=byte_804F111
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_804F13A
	ms_jump destination1=dword_804F1D0
mapscript_804F0E8:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x12 signedbyte2=0x0C destination3=dword_804F1D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E09 destination4=dword_804F1D0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E0A destination4=dword_804F1D0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E0A
	ms_start_cutscene ptr1=byte_8093A64 word5=0x00000000
	ms_jump destination1=dword_804F1D0

byte_804F111::
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x12 signedbyte2=0x0C destination3=dword_804F1D0
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E13 destination4=dword_804F1D0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E14 destination4=dword_804F1D0
	ms_set_event_flag byte1=0xFF event16_2=EVENT_E14
	ms_start_cutscene ptr1=cutscenescript_8093EAC word5=0x00000000
	ms_jump destination1=dword_804F1D0

mapscript_804F13A:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E6B destination4=mapscript_804F158
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E6C destination4=mapscript_804F158
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0094
	ms_jump destination1=dword_804F1D0
mapscript_804F158:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E6D destination4=byte_804F176
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E6E destination4=byte_804F176
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0095
	ms_jump destination1=dword_804F1D0

byte_804F176::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E6F destination4=mapscript_804F194
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E70 destination4=mapscript_804F194
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0096
	ms_jump destination1=dword_804F1D0
mapscript_804F194:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E71 destination4=byte_804F1B2
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E72 destination4=byte_804F1B2
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0097
	ms_jump destination1=dword_804F1D0

byte_804F1B2::
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_E73 destination4=dword_804F1D0
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_E74 destination4=dword_804F1D0
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0098
	ms_jump destination1=dword_804F1D0

dword_804F1D0::
	ms_end
	ms_end
	ms_end
	ms_end

MapScriptOnInitLanHouse_804F1D4:: // MapScript
  .word 0x121FF05
	.word byte_804F1E6
	.byte 0x2C, 0xB8, 0xE4, 0x4, 0x8, 0x1, 0x1C, 0xF2, 0x4, 0x8
byte_804F1E6::
	.word 0x0122FF05, 0x0804F1F8, 0x04E4D02C, 0xF21C0108
	.byte 0x04
	.byte 0x08

mapscript_804F1F8:
	.word 0x0123FF05, byte_804F20A, 0x04E4E82C, 0xF21C0108
	.byte 0x04
	.byte 0x08
byte_804F20A::
	.byte 0x5, 0xFF, 0x24, 0x1, 0x1C, 0xF2
	.word 0x82C0804
	.word 0x10804E5
	.word byte_804F21C
byte_804F21C::
	.word 0x440F0002, 0x020804F2, 0xF28B2F20, 0x40020804, 0x04F2B94F, 0x5F500208, byte_804F341, 0x9D6F6002
	.word 0x010804F3, byte_804F3EF

mapscript_804F244:
	.word 0x57000002, 0x020804F2, 0xF2710101, 0xEF010804
	.byte 0xF3
	.byte 0x04
	.byte 0x08

mapscript_804F257:
	.word 0x04620204, byte_804F3EF, 0x011EA429, 0x01000202, 0xF1FF1F08, 0xF3EF0116
	.byte 0x04
	.byte 0x08

mapscript_804F271:
	.word 0x041AFF05, byte_804F3EF, 0x011EA429, 0x01010202, 0xF1FF1F08, 0xF3EF0116
	.byte 0x04
	.byte 0x08
mapscript_804F28B:
	.word 0x97222202, 0x010804F2, byte_804F3EF

mapscript_804F297:
	.word 0x060CFF05, byte_804F3EF, 0x0632FF03, byte_804F3EF, 0x011EA429, 0x01020202, 0xF1FF1F08, 0xF3EF0116
	.byte 0x04
	.byte 0x08
mapscript_804F2B9:
	.word 0xCC404002, 0x020804F2, 0xF2F44343, 0xEF010804
	.byte 0xF3
	.byte 0x04
	.byte 0x08
dword_804F2CC::
	.word 0x0A03FF05, byte_804F3EF, 0x0A04FF03, byte_804F3EF, 0x0A04FF1F, 0x2BFF0C1E, 0x7C266304, 0x000808D2
	.word 0x01000000, byte_804F3EF

mapscript_804F2F4:
	.word 0x0A11FF05, byte_804F319, 0x0A12FF03, byte_804F319, 0x0A12FF1F, 0x26FF0C1E, byte_808DC88, 0x00000000
	.word 0x04F3EF01
	.byte 0x08
byte_804F319::
	.byte 0x5, 0xFF, 0x15, 0xA, 0xEF, 0xF3, 0x4, 0x8, 0x3, 0xFF, 0x16
	.byte 0xA, 0xEF, 0xF3, 0x4, 0x8, 0x1F, 0xFF, 0x16, 0xA, 0x1E, 0xC
	.byte 0xFF, 0x2B, 0x4, 0x63, 0x26
	.word byte_808DEF8
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0xEF, 0xF3, 0x4, 0x8
byte_804F341::
	.byte 0x2, 0x51, 0x51
	.word byte_804F34D
	.byte 0x1, 0xEF, 0xF3, 0x4, 0x8
byte_804F34D::
	.word 0x0C0DFF05, 0x0804F375, 0x0C0EFF03, 0x0804F375, 0x0C0EFF1F, 0x2BFF1C1E, 0xA8266304, 0x0008090A
	.word 0x01000000, byte_804F3EF, 0x0C1DFF05, byte_804F3EF, 0x0C1EFF03, byte_804F3EF, 0x0C1EFF1F, 0x2BFF0C1E
	.word 0x74266304, 0x00080913, 0x01000000, byte_804F3EF

mapscript_804F39D:
	.word 0xB0606002, 0x020804F3, 0xF3D56262, 0xEF010804
	.byte 0xF3
	.byte 0x04
	.byte 0x08
dword_804F3B0::
	.word 0xE0BFF05
	.word byte_804F3EF
	.word 0xE0CFF03
	.word byte_804F3EF
	.byte 0x1F, 0xFF, 0xC, 0xE, 0x1E, 0xC, 0xFF, 0x26
	.word byte_8093B60
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0xEF, 0xF3, 0x4, 0x8, 0x3, 0xFF, 0x62, 0xE
	.byte 0xEF, 0xF3, 0x4, 0x8, 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x2, 0x4, 0x1, 0x8
	.byte 0x1F, 0xFF, 0xF1, 0x16, 0x1, 0xEF, 0xF3, 0x4, 0x8
byte_804F3EF::
	.byte 0x0
MapScriptOnUpdateLanHouse_804F3F0:: // MapScript
  .byte 0x2, 0x0, 0xF, 0x18, 0xF4, 0x4, 0x8, 0x2, 0x20, 0x2F, 0x3E, 0xF4
	.byte 0x4, 0x8, 0x2, 0x40, 0x4F, 0x6C, 0xF4, 0x4, 0x8, 0x2, 0x50, 0x5F
	.word byte_804F49A
	.byte 0x2, 0x60, 0x6F, 0xC8, 0xF4, 0x4, 0x8, 0x1
	.word byte_804F4EE
	.byte 0x2, 0x0, 0x0, 0x24, 0xF4, 0x4, 0x8, 0x1
	.word byte_804F4EE
	.word 0x4620206
	.word byte_804F4EE
	.byte 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF1
	.byte 0x16, 0x1, 0xEE, 0xF4, 0x4, 0x8, 0x2, 0x22, 0x22, 0x4A, 0xF4, 0x4
	.byte 0x8, 0x1, 0xEE, 0xF4, 0x4, 0x8, 0x5, 0xFF, 0xC, 0x6, 0xEE, 0xF4
	.byte 0x4, 0x8, 0x5, 0xFF, 0x32, 0x6, 0xEE, 0xF4, 0x4, 0x8, 0x29, 0xA4
	.byte 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF1, 0x16, 0x1
	.word byte_804F4EE
	.byte 0x2, 0x40, 0x40, 0x78, 0xF4, 0x4, 0x8, 0x1
	.word byte_804F4EE
	.word 0xA04FF05
	.word byte_804F4EE
	.word 0x1CA7FF03
	.word byte_804F4EE
	.byte 0x42, 0xF3, 0x1C, 0x1, 0x26, 0xB8, 0x8B, 0x9, 0x8, 0x14
	.byte 0x2, 0x7, 0x1, 0x1, 0xEE, 0xF4, 0x4, 0x8
byte_804F49A::
	.byte 0x2, 0x51, 0x51, 0xA6, 0xF4, 0x4, 0x8, 0x1, 0xEE, 0xF4, 0x4
	.byte 0x8, 0x5, 0xFF, 0xE, 0xC, 0xEE, 0xF4, 0x4, 0x8, 0x3, 0xFF
	.byte 0xF4, 0x1C, 0xEE, 0xF4, 0x4, 0x8, 0x42, 0xF5, 0x1C, 0x1, 0x26
	.byte 0xB8, 0x8B, 0x9, 0x8, 0x14, 0x2, 0x54, 0x0, 0x1
	.word byte_804F4EE
	.byte 0x2, 0x62, 0x62, 0xD4, 0xF4, 0x4, 0x8, 0x1
	.word byte_804F4EE
	.word 0xE62FF05
	.word byte_804F4EE
	.byte 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF1
	.byte 0x16, 0x1, 0xEE, 0xF4, 0x4, 0x8
byte_804F4EE::
	.byte 0x0, 0x0
MapScriptOnInitLanRoom_804F4F0:: // MapScript
  .byte 0x2, 0x0, 0xF, 0x11, 0xF5, 0x4, 0x8, 0x2, 0x10, 0x1F, 0x9D, 0xF5
	.byte 0x4, 0x8, 0x2, 0x20, 0x2F, 0x7, 0xF6, 0x4, 0x8, 0x2, 0x60, 0x6F
	.word byte_804F70F
	.byte 0x1, 0x43, 0xF7, 0x4, 0x8, 0x2, 0x0, 0x0
	.word byte_804F52B
	.byte 0x2, 0x1, 0x1, 0x53, 0xF5, 0x4, 0x8, 0x2, 0x5, 0x5, 0x7B, 0xF5, 0x4
	.byte 0x8, 0x1, 0x43, 0xF7, 0x4, 0x8
byte_804F52B::
	.byte 0x5, 0xFF, 0x5, 0x4, 0x43, 0xF7, 0x4, 0x8, 0x3, 0xFF, 0x6, 0x4, 0x43
	.byte 0xF7, 0x4, 0x8, 0x1F, 0xFF, 0x6, 0x4, 0x1E, 0x1C, 0xFF, 0x2B, 0x4, 0x63
	.byte 0x26, 0x4, 0x17, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x43, 0xF7, 0x4
	.byte 0x8, 0x5, 0xFF, 0x1B, 0x4, 0x43, 0xF7, 0x4, 0x8, 0x3, 0xFF, 0x1C, 0x4
	.byte 0x43, 0xF7, 0x4, 0x8, 0x1F, 0xFF, 0x1C, 0x4, 0x1E, 0x1C, 0xFF, 0x2B, 0x4
	.byte 0x63, 0x26, 0xBC, 0x1D, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x43, 0xF7
	.byte 0x4, 0x8, 0x5, 0xFF, 0x40, 0x4, 0x43, 0xF7, 0x4, 0x8, 0x3, 0xFF, 0xDC
	.byte 0x1C, 0x43, 0xF7, 0x4, 0x8, 0x42, 0xA4, 0x1C, 0x1, 0x26
	.word byte_8098BB8 // CutsceneScript
	.byte 0x14, 0x2, 0x3C, 0x0, 0x1, 0x43, 0xF7, 0x4, 0x8, 0x2, 0x12, 0x12
	.word dword_804F5B0
	.byte 0x2, 0x13, 0x13, 0xD8, 0xF5, 0x4, 0x8, 0x1
	.word byte_804F743
dword_804F5B0::
	.word 0x511FF05
	.word byte_804F743
	.word 0x512FF03
	.word byte_804F743
	.byte 0x1F, 0xFF, 0x12, 0x5, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63
	.byte 0x26, 0xD8, 0x4C, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1
	.word byte_804F743
	.byte 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x2, 0x0, 0x7, 0x8, 0x1F, 0xFF, 0xF1
	.byte 0x16, 0x5, 0xFF, 0xA2, 0x1C, 0x43, 0xF7, 0x4, 0x8, 0x3, 0xFF, 0x22
	.byte 0x1D, 0x43, 0xF7, 0x4, 0x8, 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x0, 0x0
	.byte 0x0, 0x0, 0x20, 0xFF, 0xF1, 0x16, 0x1, 0x43, 0xF7, 0x4, 0x8, 0x2
	.byte 0x22, 0x22, 0x21, 0xF6, 0x4, 0x8, 0x2, 0x23, 0x23, 0x49, 0xF6, 0x4
	.byte 0x8, 0x2, 0x24, 0x24
	.word byte_804F679
	.byte 0x1, 0x43, 0xF7, 0x4, 0x8, 0x5, 0xFF, 0xB, 0x6, 0x43, 0xF7, 0x4
	.byte 0x8, 0x3, 0xFF, 0xC, 0x6, 0x43, 0xF7, 0x4, 0x8, 0x1F, 0xFF, 0xC
	.byte 0x6, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63, 0x26
	.word byte_8087874
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0x43, 0xF7, 0x4, 0x8, 0x5, 0xFF, 0x33, 0x6
	.byte 0x43, 0xF7, 0x4, 0x8, 0x5, 0xFF, 0x17, 0x6, 0x43, 0xF7, 0x4, 0x8, 0x3
	.byte 0xFF, 0x18, 0x6, 0x43, 0xF7, 0x4, 0x8, 0x1F, 0xFF, 0x18, 0x6, 0x1E, 0xC
	.byte 0xFF, 0x2B, 0x4, 0x63, 0x26
	.word byte_8088268
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0x43, 0xF7, 0x4, 0x8
byte_804F679::
	.byte 0x5, 0xFF, 0x1C, 0x6, 0x9B, 0xF6, 0x4, 0x8, 0x3, 0xFF, 0xAC
	.byte 0x1C, 0x9B, 0xF6, 0x4, 0x8, 0x42, 0xAB, 0x1C, 0x1, 0x26, 0xB8
	.byte 0x8B, 0x9, 0x8, 0x14, 0x2, 0xC, 0x0, 0x1, 0x43, 0xF7, 0x4
	.byte 0x8, 0x5, 0xFF, 0x23, 0x6, 0xE7, 0xF6, 0x4, 0x8, 0x3, 0xFF
	.byte 0x24, 0x6, 0xC3, 0xF6, 0x4, 0x8, 0x1F, 0xFF, 0x24, 0x6, 0x1E
	.byte 0x1C, 0xFF, 0x2B, 0x4, 0x63, 0x26, 0x8, 0x89, 0x8, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x1, 0x43, 0xF7, 0x4, 0x8, 0x3, 0xFF, 0x2F
	.byte 0x6, 0xE7, 0xF6, 0x4, 0x8, 0x1F, 0xFF, 0x2F, 0x6, 0xA, 0x1
	.byte 0xE7, 0xF6, 0x4, 0x8, 0x20, 0xFF, 0x2F, 0x6, 0x26, 0xDC, 0x90
	.byte 0x9, 0x8, 0x3E, 0x0, 0x19, 0x1, 0x1, 0x43, 0xF7, 0x4, 0x8
	.byte 0x5, 0xFF, 0x25, 0x6, 0x43, 0xF7, 0x4, 0x8, 0x3, 0xFF, 0x26
	.byte 0x6, 0x43, 0xF7, 0x4, 0x8, 0x1F, 0xFF, 0x26, 0x6, 0x1E, 0xC
	.byte 0xFF, 0x2B, 0x4, 0x4, 0x26, 0x28, 0x8A, 0x8, 0x8, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x43, 0xF7, 0x4, 0x8
byte_804F70F::
	.byte 0x2, 0x61, 0x61, 0x1B, 0xF7, 0x4, 0x8, 0x1, 0x43, 0xF7, 0x4
	.byte 0x8, 0x5, 0xFF, 0x11, 0xE, 0x43, 0xF7, 0x4, 0x8, 0x3, 0xFF
	.byte 0x12, 0xE, 0x43, 0xF7, 0x4, 0x8, 0x1F, 0xFF, 0x12, 0xE, 0x1E
	.byte 0x1C, 0xFF, 0x2B, 0x4, 0x63, 0x26, 0x68, 0x3D, 0x9, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x1, 0x43, 0xF7, 0x4, 0x8
byte_804F743::
	.byte 0x0
MapScriptOnUpdateLanRoom_804F744:: // MapScript
  .byte 0x2, 0x0, 0xF, 0x73, 0xF7, 0x4, 0x8, 0x2, 0x10, 0x1F, 0xC6, 0xF7
	.byte 0x4, 0x8, 0x2, 0x20, 0x2F, 0x66, 0xF8, 0x4, 0x8, 0x2, 0x30, 0x3F
	.word byte_804F8BB
	.byte 0x2, 0x50, 0x5F, 0xE3, 0xF8, 0x4, 0x8, 0x2, 0x60, 0x6F, 0xB
	.byte 0xF9, 0x4, 0x8, 0x1, 0x33, 0xF9, 0x4, 0x8, 0x2, 0x1, 0x1
	.byte 0x86, 0xF7, 0x4, 0x8, 0x2, 0x5, 0x5, 0xAA, 0xF7, 0x4, 0x8
	.byte 0x1, 0x33, 0xF9, 0x4, 0x8, 0xF, 0xF0
	.word byte_804F933
	.word 0x41CFF03
	.word byte_804F933
	.word 0x41AFF05
	.word byte_804F933
	.byte 0x26, 0xDC, 0x8D, 0x9, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x33, 0xF9
	.byte 0x4, 0x8, 0xF, 0xF0
	.word byte_804F933
	.word 0x442FF05
	.word byte_804F933
	.byte 0x26, 0xDC, 0x8D, 0x9, 0x8, 0x1, 0x0, 0x0, 0x0, 0x1, 0x33, 0xF9
	.byte 0x4, 0x8, 0x2, 0x12, 0x12, 0xE0, 0xF7, 0x4, 0x8, 0x2, 0x13, 0x13
	.word dword_804F804
	.byte 0x2, 0x16, 0x16, 0x4A, 0xF8, 0x4, 0x8, 0x1
	.word byte_804F933
	.byte 0xF, 0xF0, 0x33, 0xF9, 0x4, 0x8, 0x3, 0xFF, 0x12, 0x5, 0x33
	.byte 0xF9, 0x4, 0x8, 0x5, 0xFF, 0x10, 0x5, 0x33, 0xF9, 0x4, 0x8
	.byte 0x26, 0xDC, 0x8D, 0x9, 0x8, 0x2, 0x0, 0x0, 0x0, 0x1
	.word byte_804F933
dword_804F804::
	.word 0x1CA2FF03
	.word byte_804F827
	.byte 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x2, 0x0, 0x7, 0x8, 0x1F, 0xFF, 0xF1
	.byte 0x16, 0x26, 0xB8, 0x8B, 0x9, 0x8, 0x14, 0x2, 0x2, 0x0, 0x1, 0x33
	.byte 0xF9, 0x4, 0x8
byte_804F827::
	.byte 0x5, 0xFF, 0xF3, 0x0, 0x33, 0xF9, 0x4, 0x8, 0x3, 0xFF, 0xF4
	.byte 0x0, 0x33, 0xF9, 0x4, 0x8, 0x1C
	.word byte_804F933
	.byte 0x26, 0x80, 0xAD, 0x9, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x33, 0xF9
	.byte 0x4, 0x8, 0xF, 0xF0
	.word byte_804F933
	.word 0x538FF05
	.word byte_804F933
	.byte 0x26, 0xDC, 0x8D, 0x9, 0x8, 0x3, 0x0, 0x0, 0x0, 0x1, 0x33, 0xF9
	.byte 0x4, 0x8, 0x2, 0x22, 0x22, 0x79, 0xF8, 0x4, 0x8, 0x2, 0x25, 0x25
	.word byte_804F89D
	.byte 0x1, 0x33, 0xF9, 0x4, 0x8, 0xF, 0xF0, 0x33, 0xF9, 0x4, 0x8, 0x3
	.byte 0xFF, 0xC, 0x6, 0x33, 0xF9, 0x4, 0x8, 0x5, 0xFF, 0xA, 0x6, 0x33
	.byte 0xF9, 0x4, 0x8, 0x26
	.word byte_8098DDC
	.byte 0x4, 0x0, 0x0, 0x0, 0x1, 0x33, 0xF9, 0x4, 0x8
byte_804F89D::
	.byte 0x5, 0xFF, 0x26, 0x6, 0x33, 0xF9, 0x4, 0x8, 0x3, 0xFF, 0xEC
	.byte 0x1C, 0x33, 0xF9, 0x4, 0x8, 0x26, 0xB8, 0x8B, 0x9, 0x8, 0x14
	.byte 0x2, 0x4C, 0x0, 0x1, 0x33, 0xF9, 0x4, 0x8
byte_804F8BB::
	.byte 0x2, 0x31, 0x31, 0xC7, 0xF8, 0x4, 0x8, 0x1, 0x33, 0xF9, 0x4
	.byte 0x8, 0xF, 0xF0, 0x33, 0xF9, 0x4, 0x8, 0x5, 0xFF, 0x10, 0x8
	.byte 0x33, 0xF9, 0x4, 0x8, 0x26, 0xDC, 0x8D, 0x9, 0x8, 0x5, 0x0
	.byte 0x0, 0x0, 0x1, 0x33, 0xF9, 0x4, 0x8, 0x2, 0x50, 0x50, 0xEF
	.byte 0xF8, 0x4, 0x8, 0x1, 0x33, 0xF9, 0x4, 0x8, 0xF, 0xF0, 0x33
	.byte 0xF9, 0x4, 0x8, 0x5, 0xFF, 0xA, 0xC, 0x33, 0xF9, 0x4, 0x8
	.byte 0x26, 0xDC, 0x8D, 0x9, 0x8, 0x6, 0x0, 0x0, 0x0, 0x1, 0x33
	.byte 0xF9, 0x4, 0x8, 0x2, 0x61, 0x61, 0x17, 0xF9, 0x4, 0x8, 0x1
	.byte 0x33, 0xF9, 0x4, 0x8, 0xF, 0xF0, 0x33, 0xF9, 0x4, 0x8, 0x5
	.byte 0xFF, 0x10, 0xE, 0x33, 0xF9, 0x4, 0x8, 0x26, 0xDC, 0x8D, 0x9
	.byte 0x8, 0x7, 0x0, 0x0, 0x0, 0x1, 0x33, 0xF9, 0x4, 0x8
byte_804F933::
	.byte 0x0
MapScriptOnInitBathroom_804F934:: // MapScript
  .byte 0x2, 0x0, 0xF, 0x47, 0xF9, 0x4, 0x8, 0x2, 0x10, 0x1F, 0x50, 0xF9
	.byte 0x4, 0x8, 0x1, 0x6D, 0xF9, 0x4, 0x8, 0x1F, 0xFF, 0xD0, 0x16, 0x1
	.word byte_804F96D
	.byte 0x2, 0x10, 0x11, 0x5C, 0xF9, 0x4, 0x8, 0x1
	.word byte_804F96D
	.word 0x55BFF03
	.word byte_804F96D
	.byte 0x1F, 0xFF, 0xD0, 0x16, 0x1, 0x6D, 0xF9, 0x4, 0x8
byte_804F96D::
	.byte 0x0
MapScriptOnUpdateBathroom_804F96E:: // MapScript
  .byte 0x2, 0x10, 0x1F, 0x7A, 0xF9, 0x4, 0x8, 0x1, 0x97, 0xF9, 0x4
	.byte 0x8, 0x2, 0x10, 0x11, 0x86, 0xF9, 0x4, 0x8, 0x1, 0x97, 0xF9
	.byte 0x4, 0x8, 0x5, 0xFF, 0x5B, 0x5, 0x97, 0xF9, 0x4, 0x8, 0x20
	.byte 0xFF, 0xD0, 0x16, 0x1, 0x97, 0xF9, 0x4, 0x8, 0x0
MapScriptOnInitAsterLand_804F998:: // MapScript
  .word 0xE00FF05
	.word byte_804F9C4
	.word 0xE6AFF03
	.word byte_804F9C4
	.byte 0x1F, 0xFF, 0x6A, 0xE, 0x44, 0x75, 0x1B, 0x1, 0x44, 0x76
	.byte 0x1B, 0x1, 0x44, 0x77, 0x1B, 0x1, 0x44, 0x78, 0x1B, 0x1
	.byte 0x44, 0x81, 0x1B, 0x1, 0x44, 0x82, 0x1B, 0x1
byte_804F9C4::
	.byte 0x0
MapScriptOnUpdateAsterLand_804F9C5:: // MapScript
  .byte 0x5, 0xFF, 0x3C, 0x17, 0xD6, 0xF9, 0x4, 0x8, 0x26, 0x68
	.byte 0xC0, 0x9, 0x8, 0x14, 0x2, 0x18, 0x0, 0x0, 0x0
NPCScriptsForCentralTown_804F9D8::
	.word dword_804FA1C
	.word byte_804FAF9
	.word byte_804FB83
	.word byte_804FD3A
	.word byte_804FF4A
	.word dword_8050120
	.word byte_80502B6
	.word byte_8050326
	.word byte_805037B
	.word byte_8050397
	.word byte_80503AA
	.word byte_80503DB
	.word byte_805040D
	.word byte_805043E
	.word dword_8050538
	.word byte_805060B
	.word 0x000000FF
dword_804FA1C::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=byte_804FAD8
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_804FAB8
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_804FAA6
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_804FA94
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=byte_804FA94
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=npcscript_804FA61
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x00 destination3=npcscript_804FA4F
	ns_free_and_end

npcscript_804FA4F:
	ns_set_sprite byte1=0x11
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0x0078 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FA61:
	ns_jump_if_flag_set event16_1=EVENT_60C destination3=byte_804FA70
	ns_jump_if_flag_set event16_1=EVENT_60A destination3=npcscript_804FA82
	ns_free_and_end

byte_804FA70::
	ns_set_sprite byte1=0x11
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x006E hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FA82:
	ns_set_sprite byte1=0x2B
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x006C hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804FA94::
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x17
	ns_set_coords hword1=0xFFF8 hword3=0x0006 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F7E4

npcscript_804FAA6:
	ns_set_sprite byte1=0x16
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0x006E hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FAB8:
	ns_jump_if_flag_set event16_1=EVENT_E0A destination3=npcscript_804FAF8
	ns_jump_if_flag_clear event16_1=EVENT_E08 destination3=npcscript_804FAF8
	ns_set_sprite byte1=0x14
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0x0060 hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804FAD8::
	ns_jump_if_flag_set event16_1=EVENT_E16 destination3=npcscript_804FAF8
	ns_jump_if_flag_clear event16_1=EVENT_E14 destination3=npcscript_804FAF8
	ns_set_sprite byte1=0x11
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0x004A hword3=0xFFE4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FAF8:
	ns_free_and_end

byte_804FAF9::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x20 byte2=0xFF destination3=npcscript_804FB53
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x01 destination3=byte_804FB09
	ns_free_and_end

byte_804FB09::
	ns_jump_if_flag_set event16_1=EVENT_414 destination3=byte_804FB3F
	ns_set_sprite_with_category byte1=0x11 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0x0060 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x00

npcscript_804FB1E:
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x1E
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x3C
	ns_jump destination1=npcscript_804FB1E

byte_804FB3F::
	ns_set_sprite_with_category byte1=0x11 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x05
	ns_set_coords hword1=0x0060 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x02
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FB53:
	ns_set_sprite byte1=0x16
	ns_jump_if_flag_set event16_1=EVENT_1C3A destination3=byte_804FB82
	ns_jump_if_flag_set event16_1=EVENT_1BFA destination3=npcscript_804FB64
	ns_free_and_end

npcscript_804FB64:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=byte_804FB82
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_804FB82
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x7D
	ns_set_coords hword1=0x0092 hword3=0x0134 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804FB82::
	ns_free_and_end

byte_804FB83::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_804FD0F
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_804FCDE
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_804FCCC
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=byte_804FCB7
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_804FC93
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x42 destination3=npcscript_804FCA5
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_804FC7E
	ns_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=byte_804FC6C
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=npcscript_804FC5A
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_804FC48
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=npcscript_804FC1D
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=byte_804FBF9
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_804FC0B
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x01 destination3=npcscript_804FBE7
	ns_free_and_end

npcscript_804FBE7:
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFB6 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_804FBF9::
	ns_set_sprite byte1=0x0C
	ns_set_text_script_index byte1=0x3C
	ns_set_coords hword1=0x0038 hword3=0xFF50 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FC0B:
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x006E hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FC1D:
	ns_jump_if_flag_set event16_1=EVENT_60C destination3=byte_804FC36
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0x006C hword3=0xFFB2 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_804FC36::
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0xFF7E hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FC48:
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x008C hword3=0x0040 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FC5A:
	ns_set_sprite byte1=0x10
	ns_set_text_script_index byte1=0x20
	ns_set_coords hword1=0x006C hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804FC6C::
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x23
	ns_set_coords hword1=0x0060 hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FC7E:
	ns_set_sprite byte1=0x0C
	ns_set_text_script_index byte1=0x3D
	ns_set_coords hword1=0xFFF8 hword3=0xFF96 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x09 destination4=byte_809F6EC

npcscript_804FC93:
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x2C
	ns_set_coords hword1=0x0040 hword3=0xFFAC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FCA5:
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF64 hword3=0xFFFC hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804FCB7::
	ns_set_sprite byte1=0x0D
	ns_set_text_script_index byte1=0x49
	ns_set_coords hword1=0x0020 hword3=0xFF94 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x0E destination4=byte_809F6EC

npcscript_804FCCC:
	ns_set_sprite byte1=0x09
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0xFF62 hword3=0xFFFC hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FCDE:
	ns_jump_if_flag_set event16_1=EVENT_E16 destination3=npcscript_804FD39
	ns_jump_if_flag_set event16_1=EVENT_E14 destination3=byte_804FCFD
	ns_set_sprite byte1=0x02
	ns_disable_npc_interaction
	ns_set_coords hword1=0x005E hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_804FCFD::
	ns_set_sprite byte1=0x02
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0x0060 hword3=0xFFE2 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FD0F:
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x1A
	ns_set_coords hword1=0x0054 hword3=0xFFC4 hword5=0x0000
	ns_set_animation byte1=0x03

npcscript_804FD1C:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E6C destination3=npcscript_804FD1C
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x1A
	ns_set_coords hword1=0x0054 hword3=0xFFC4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FD39:
	ns_free_and_end

byte_804FD3A::
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_1C36 destination3=npcscript_804FD49
	ns_jump_if_flag_set event16_1=EVENT_115C destination3=npcscript_804FDC1

npcscript_804FD49:
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x61 destination3=byte_804FF1F
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_804FEF1
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_804FEDF
	ns_jump_if_progress_in_range byte1=0x43 byte2=0x46 destination3=npcscript_804FECD
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x42 destination3=byte_804FEB8
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_804FEA6
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=npcscript_804FE94
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=npcscript_804FE82
	ns_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=byte_804FF34
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=npcscript_804FE6F
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_804FE5C
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=byte_804FE42
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=byte_804FE06
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_804FDF4
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_804FE2D
	ns_jump_if_progress_in_range byte1=0x02 byte2=0x02 destination3=npcscript_804FE18
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x01 destination3=byte_804FDE2
	ns_free_and_end

npcscript_804FDC1:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=byte_804FF49
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_804FF49
	ns_set_sprite byte1=0x0F
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x6E
	ns_set_coords hword1=0xFF52 hword3=0x008A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_804FDE2::
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF66 hword3=0x00BC hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FDF4:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x3D
	ns_set_coords hword1=0xFF7C hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804FE06::
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x43
	ns_set_coords hword1=0x008C hword3=0x00B4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FE18:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0x008A hword3=0x00A8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x06 destination4=byte_809F6EC

npcscript_804FE2D:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0xFFF6 hword3=0xFFA2 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x06 destination4=byte_809F6EC

byte_804FE42::
	ns_jump_if_flag_clear event16_1=EVENT_60C destination3=byte_804FF49
	ns_set_active_and_visible
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x0D
	ns_set_coords hword1=0xFFF6 hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FE5C:
	ns_set_sprite byte1=0x15
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x18
	ns_set_coords hword1=0x005A hword3=0xFFCA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FE6F:
	ns_set_sprite byte1=0x15
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0xFFEA hword3=0xFF58 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FE82:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x006E hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FE94:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x39
	ns_set_coords hword1=0xFF98 hword3=0xFF5C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FEA6:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x3C
	ns_set_coords hword1=0xFFFA hword3=0x007E hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_804FEB8::
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0070 hword3=0x000C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x08 destination4=byte_809F71C

npcscript_804FECD:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0xFFB8 hword3=0x0002 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F7E4

npcscript_804FEDF:
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x46
	ns_set_coords hword1=0xFFA0 hword3=0x0060 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FEF1:
	ns_jump_if_flag_set event16_1=EVENT_E0A destination3=byte_804FF0D
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0x0086 hword3=0x009C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x08 destination4=byte_809F6EC

byte_804FF0D::
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0x0084 hword3=0x0096 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_804FF1F::
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x0B
	ns_set_coords hword1=0x0068 hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x10 destination4=byte_809F71C

byte_804FF34::
	ns_set_sprite byte1=0x0F
	ns_set_text_script_index byte1=0x26
	ns_set_coords hword1=0x0086 hword3=0x009C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x08 destination4=byte_809F6EC

byte_804FF49::
	ns_free_and_end

byte_804FF4A::
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_1C36 destination3=npcscript_804FF59
	ns_jump_if_flag_set event16_1=EVENT_115C destination3=npcscript_804FFBC

npcscript_804FF59:
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x61 destination3=byte_805010A
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_80500DC
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_80500CA
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_80500B8
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=byte_80500A3
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=npcscript_8050091
	ns_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=byte_805005A
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_805007E
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=byte_805003A
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=npcscript_8050001
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_804FFEF
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_8050028
	ns_jump_if_progress_in_range byte1=0x02 byte2=0x02 destination3=byte_8050016
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x01 destination3=npcscript_804FFDD
	ns_free_and_end

npcscript_804FFBC:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_805011F
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_805011F
	ns_set_sprite byte1=0x16
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x6E
	ns_set_coords hword1=0xFF52 hword3=0x00A0 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FFDD:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0x008C hword3=0x00AA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_804FFEF:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x3E
	ns_set_coords hword1=0xFFDE hword3=0x009C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050001:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x41
	ns_set_coords hword1=0xFFB4 hword3=0x0072 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x06 destination4=byte_809F71C

byte_8050016::
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFF6E hword3=0xFFFC hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050028:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0x0090 hword3=0x003C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_805003A::
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_805006C
	ns_jump_if_flag_set event16_1=EVENT_60C destination3=byte_805005A
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0x0056 hword3=0xFFC0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_805005A::
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x0B
	ns_set_coords hword1=0xFF86 hword3=0xFFFC hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805006C:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFFB2 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805007E:
	ns_set_sprite byte1=0x0E
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0x0066 hword3=0xFFCA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050091:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x34
	ns_set_coords hword1=0xFF54 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80500A3::
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x37
	ns_set_coords hword1=0xFFF6 hword3=0xFF9E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x09 destination4=byte_809F6EC

npcscript_80500B8:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x3E
	ns_set_coords hword1=0xFF46 hword3=0x006E hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80500CA:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x4C
	ns_set_coords hword1=0x0092 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80500DC:
	ns_jump_if_flag_set event16_1=EVENT_E0A destination3=npcscript_80500F8
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFFF4 hword3=0xFFAA hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x06 destination4=byte_809F6EC

npcscript_80500F8:
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x07
	ns_set_coords hword1=0x0084 hword3=0x005A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_805010A::
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x0C
	ns_set_coords hword1=0xFF9A hword3=0x005E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x08 destination4=byte_809F71C

npcscript_805011F:
	ns_free_and_end

dword_8050120::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_805028B
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_805025A
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x61 destination3=npcscript_8050248
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x42 destination3=npcscript_8050236
	ns_jump_if_progress_in_range byte1=0x31 byte2=0x31 destination3=byte_8050224
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=npcscript_8050212
	ns_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=npcscript_8050200
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_8050200
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=dword_80501D4
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=npcscript_80501B0
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x11 destination3=npcscript_8050196
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=byte_80501C2
	ns_jump_if_progress_in_range byte1=0x02 byte2=0x02 destination3=byte_80501C2
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x01 destination3=npcscript_8050184
	ns_free_and_end

npcscript_8050184:
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0xFFEE hword3=0xFF58 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050196:
	ns_jump_if_flag_set event16_1=EVENT_53C destination3=npcscript_805019E
	ns_free_and_end

npcscript_805019E:
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x008E hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80501B0:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x42
	ns_set_coords hword1=0x006A hword3=0xFFCC hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80501C2::
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0x0014 hword3=0xFF5A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

dword_80501D4::
	ns_jump_if_flag_set event16_1=EVENT_60C destination3=npcscript_80501EE
	ns_set_active_and_visible
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0xFF68 hword3=0xFFFE hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80501EE:
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x0C
	ns_set_coords hword1=0xFF68 hword3=0xFFFE hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050200:
	ns_set_sprite byte1=0x19

byte_8050202::
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0xFFEE hword3=0xFF56 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050212:
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x33
	ns_set_coords hword1=0x008A hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8050224::
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x38
	ns_set_coords hword1=0x002E hword3=0x0066 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050236:
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0xFFF6 hword3=0xFF8E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050248:
	ns_set_sprite byte1=0x19
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFEE hword3=0xFF56 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805025A:
	ns_jump_if_flag_set event16_1=EVENT_E16 destination3=npcscript_80502B5
	ns_jump_if_flag_set event16_1=EVENT_E14 destination3=byte_8050279
	ns_set_sprite byte1=0x01
	ns_disable_npc_interaction
	ns_set_coords hword1=0x005A hword3=0xFFD6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8050279::
	ns_set_sprite byte1=0x01
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0x005A hword3=0xFFD6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_805028B::
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x1B
	ns_set_coords hword1=0xFFB4 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x05

npcscript_8050298:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E6E destination3=npcscript_8050298
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x1B
	ns_set_coords hword1=0xFFB4 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80502B5:
	ns_free_and_end

byte_80502B6::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x0B
	ns_jump_if_progress_in_range byte1=0x20 byte2=0xFF destination3=byte_80502DF
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_8050315
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x01 destination3=npcscript_80502CF
	ns_free_and_end

npcscript_80502CF:
	ns_set_text_script_index byte1=0x08
	ns_set_coords hword1=0xFFF6 hword3=0xFF90 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80502DF::
	ns_jump_if_flag_set event16_1=EVENT_1C21 destination3=npcscript_8050325
	ns_set_active_and_invisible
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_110A destination3=byte_80502DF
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_8050325
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_8050325
	ns_set_sprite byte1=0x14
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x68

byte_8050302::
	ns_set_coords hword1=0xFFEA hword3=0x00CE hword5=0x0000
	ns_set_animation byte1=0x05

byte_805030B::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_110C destination3=byte_805030B
	ns_free_and_end

npcscript_8050315:
	ns_set_text_script_index byte1=0x18
	ns_set_coords hword1=0xFF68 hword3=0xFFFA hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050325:
	ns_free_and_end

byte_8050326::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x20 byte2=0xFF destination3=npcscript_805034B
	ns_jump_if_progress_in_range byte1=0x16 byte2=0x16 destination3=npcscript_8050336
	ns_free_and_end

npcscript_8050336:
	ns_set_sprite byte1=0x14
	ns_set_text_script_index byte1=0x37
	ns_set_coords hword1=0x005E hword3=0xFFBC hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x06 destination4=byte_809F71C

npcscript_805034B:
	ns_set_sprite byte1=0x1A
	ns_jump_if_flag_set event16_1=EVENT_1C21 destination3=byte_805037A
	ns_jump_if_flag_set event16_1=EVENT_1BE1 destination3=npcscript_805035C
	ns_free_and_end

npcscript_805035C:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=byte_805037A
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_805037A
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x64
	ns_set_coords hword1=0x0098 hword3=0xFF5A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_805037A::
	ns_free_and_end

byte_805037B::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x0D
	ns_jump_if_progress_in_range byte1=0x40 byte2=0xFF destination3=npcscript_8050386
	ns_free_and_end

npcscript_8050386:
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x69
	ns_set_coords hword1=0x0032 hword3=0x013A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_8050397::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x10
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x32
	ns_set_coords hword1=0xFF54 hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_80503AA::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x0B
	ns_jump_if_flag_set event16_1=EVENT_1C36 destination3=byte_80503DA
	ns_jump_if_flag_set event16_1=EVENT_1BF6 destination3=npcscript_80503BC
	ns_free_and_end

npcscript_80503BC:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=byte_80503DA
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_80503DA
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x78
	ns_set_coords hword1=0xFF64 hword3=0x0096 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_80503DA::
	ns_free_and_end

byte_80503DB::
	ns_set_active_and_visible
	ns_jump_if_flag_set event16_1=EVENT_1C39 destination3=npcscript_805040C
	ns_jump_if_flag_set event16_1=EVENT_11CD destination3=npcscript_80503EB
	ns_free_and_end

npcscript_80503EB:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_805040C
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_805040C
	ns_set_sprite byte1=0x0A
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x82
	ns_set_coords hword1=0xFF7E hword3=0xFFFB hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805040C:
	ns_free_and_end

byte_805040D::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x1C
	ns_jump_if_flag_set event16_1=EVENT_1C3B destination3=npcscript_805043D
	ns_jump_if_flag_set event16_1=EVENT_1BFB destination3=npcscript_805041F
	ns_free_and_end

npcscript_805041F:
	ns_jump_if_flag_clear event16_1=EVENT_PET_NAVI_ACTIVE destination3=npcscript_805043D
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=npcscript_805043D
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x8C
	ns_set_coords hword1=0x0096 hword3=0x00E6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805043D:
	ns_free_and_end

byte_805043E::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_805050D
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_80504DC
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=byte_80504BC
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=end_npcscript_805045C
	ns_free_and_end

end_npcscript_805045C:
	ns_jump_alt unuseddestination1=npcscript_8050466 destination5=npcscript_8050491
	ns_free_and_end

npcscript_8050466:
	ns_jump_if_flag_set event16_1=EVENT_C0A destination3=npcscript_805047F
	ns_set_sprite byte1=0x27
	ns_set_text_script_index byte1=0x29
	ns_set_coords hword1=0x0012 hword3=0xFFFE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805047F:
	ns_set_sprite byte1=0x27
	ns_set_text_script_index byte1=0x39
	ns_set_coords hword1=0x0012 hword3=0xFFFE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050491:
	ns_jump_if_flag_set event16_1=EVENT_C0A destination3=byte_80504AA
	ns_set_sprite byte1=0x24
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0x0012 hword3=0xFFFE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80504AA::
	ns_set_sprite byte1=0x24
	ns_set_text_script_index byte1=0x37
	ns_set_coords hword1=0x0012 hword3=0xFFFE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80504BC::
	ns_jump_if_flag_set event16_1=EVENT_E0A destination3=npcscript_8050537
	ns_jump_if_flag_clear event16_1=EVENT_E08 destination3=npcscript_8050537
	ns_set_sprite byte1=0x33
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0x0050 hword3=0xFFD8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80504DC:
	ns_jump_if_flag_set event16_1=EVENT_E16 destination3=npcscript_8050537
	ns_jump_if_flag_set event16_1=EVENT_E14 destination3=npcscript_80504FB
	ns_set_sprite byte1=0x14
	ns_disable_npc_interaction
	ns_set_coords hword1=0x0046 hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80504FB:
	ns_set_sprite byte1=0x14
	ns_set_text_script_index byte1=0x13
	ns_set_coords hword1=0x004A hword3=0xFFBC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805050D:
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x1C
	ns_set_coords hword1=0xFF50 hword3=0x00E6 hword5=0x0000
	ns_set_animation byte1=0x07

npcscript_805051A:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E70 destination3=npcscript_805051A
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x1C
	ns_set_coords hword1=0xFF50 hword3=0x00E6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050537:
	ns_free_and_end

dword_8050538::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_80505E0
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_80505AF
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_805054F
	ns_free_and_end

npcscript_805054F:
	ns_jump_alt unuseddestination1=byte_8050584 destination5=byte_8050559
	ns_free_and_end

byte_8050559::
	ns_jump_if_flag_set event16_1=EVENT_C0A destination3=byte_8050572
	ns_set_sprite byte1=0x25
	ns_set_text_script_index byte1=0x2A
	ns_set_coords hword1=0x0046 hword3=0xFFF8 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050572::
	ns_set_sprite byte1=0x25
	ns_set_text_script_index byte1=0x3B
	ns_set_coords hword1=0x0046 hword3=0xFFF8 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050584::
	ns_jump_if_flag_set event16_1=EVENT_C0A destination3=npcscript_805059D
	ns_set_sprite byte1=0x26
	ns_set_text_script_index byte1=0x2B
	ns_set_coords hword1=0x0046 hword3=0xFFF8 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805059D:
	ns_set_sprite byte1=0x26
	ns_set_text_script_index byte1=0x3D
	ns_set_coords hword1=0x0046 hword3=0xFFF8 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80505AF:
	ns_jump_if_flag_set event16_1=EVENT_E16 destination3=npcscript_805060A
	ns_jump_if_flag_set event16_1=EVENT_E14 destination3=npcscript_80505CE
	ns_set_sprite byte1=0x33
	ns_disable_npc_interaction
	ns_set_coords hword1=0x004A hword3=0xFFD2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80505CE:
	ns_set_sprite byte1=0x33
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x0042 hword3=0xFFCE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80505E0::
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x1D
	ns_set_coords hword1=0xFFD4 hword3=0xFF58 hword5=0x0000
	ns_set_animation byte1=0x03

npcscript_80505ED:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E72 destination3=npcscript_80505ED
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x1D
	ns_set_coords hword1=0xFFD4 hword3=0xFF58 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805060A:
	ns_free_and_end

byte_805060B::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_805064C
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_805061B
	ns_free_and_end

npcscript_805061B:
	ns_jump_if_flag_set event16_1=EVENT_E16 destination3=npcscript_8050676
	ns_jump_if_flag_set event16_1=EVENT_E14 destination3=npcscript_805063A
	ns_set_sprite byte1=0x03
	ns_disable_npc_interaction
	ns_set_coords hword1=0x005A hword3=0xFFB6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805063A:
	ns_set_sprite byte1=0x03
	ns_set_text_script_index byte1=0x12
	ns_set_coords hword1=0x0050 hword3=0xFFCE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805064C:
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0x008E hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x05

npcscript_8050659:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_E74 destination3=npcscript_8050659
	ns_set_sprite_with_category byte1=0x17 byte2=0x1C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0x008E hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x02
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050676:
	ns_free_and_end
	ns_end

npcscript_8050678:
	.word byte_8050688
	.word byte_80506CE
	.word byte_80506F2
	.word 0x000000FF
byte_8050688::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0028 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x01
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x19
	ns_pause byte1=0x01
	ns_wait_anim_frame byte1=0x01
	ns_play_sound hword1=0x00B7
	ns_wait_anim_frame byte1=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x0D
	ns_pause byte1=0x03
	ns_play_music hword1=0x0063
	ns_play_sound hword1=0x0077
	ns_wait_anim_frame byte1=0xC0
	ns_jump_with_link destination1=byte_809F6CC

byte_80506CE::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0x0078 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x01 byte2=0x04 byte3=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80506F2::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x11 byte2=0x1C
	ns_set_coords hword1=0x0060 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x00
	ns_pause byte1=0x3C

byte_8050703::
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x1E
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x3C
	ns_jump destination1=byte_8050703

unk_8050724:
	.word byte_8050734
	.word byte_8050776
	.word byte_805079A
	.word 0x000000FF
byte_8050734::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0050 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x05
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_jump_with_link destination1=byte_809F6CC

byte_8050776::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0x0080 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x14
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_free_and_end

byte_805079A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x11 byte2=0x1C
	ns_set_coords hword1=0x0060 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x1E
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x1E
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x1E
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x1E
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

end_npcscript_80507F4:
	.word byte_8050804
	.word npcscript_8050843
	.word npcscript_8050893
	.word 0x000000FF
byte_8050804::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x008E hword3=0x0042 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x06
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x05
	ns_run_secondary_script ptr1=unk_8050918
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x02

byte_805083F::
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_free_and_end

npcscript_8050843:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x003E hword3=0xFFF2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0A
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x06
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x05
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_run_secondary_script ptr1=unk_8050918
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_free_and_end

npcscript_8050893:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x2D byte2=0x1C
	ns_write_hidden_oam_pieces word1=0x08000000
	ns_set_npc_palette_index byte1=0x00
	ns_set_coords hword1=0x003E hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x1E
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x05
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_pause byte1=0x3C
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x0A
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x05
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x05
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_run_secondary_script ptr1=unk_8050918
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_free_and_end

unk_8050918:
	ns_pause_secondary_script byte1=0x0A
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

unk_805093C:
	.word byte_8050948
	.word byte_805095E
	.word 0x000000FF
byte_8050948::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0050 hword3=0xFFE8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_805095E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x0050 hword3=0xFFD0 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x03
	ns_pause byte1=0x14
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

unk_8050994:
	.word byte_80509B8
	.word byte_8050A11
	.word npcscript_8050A27
	.word byte_8050A6A
	.word byte_8050A8C
	.word byte_8050AAE
	.word byte_8050AC4
	.word byte_8050ADB
	.word 0x000000FF
byte_80509B8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x005C hword3=0xFF50 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_coords hword1=0x0058 hword3=0xFFDC hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_pause byte1=0x02
	ns_set_animation byte1=0x00
	ns_write_cutscene_var byte1=0x08 byte2=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_animation byte1=0x03
	ns_pause byte1=0xB4
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x0D
	ns_free_and_end

byte_8050A11::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2B
	ns_set_coords hword1=0x006C hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050A27:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x0068 hword3=0xFFE4 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x83
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x05
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x18
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_free_and_end

byte_8050A6A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0E
	ns_set_coords hword1=0x0056 hword3=0xFFC0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_coords hword1=0x0056 hword3=0xFFBC hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_jump_with_link destination1=byte_809F6CC

byte_8050A8C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x19
	ns_set_coords hword1=0x005A hword3=0xFFD2 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_coords hword1=0x0052 hword3=0xFFCC hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_jump_with_link destination1=byte_809F6CC

byte_8050AAE::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x09
	ns_set_coords hword1=0x006C hword3=0xFFB2 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050AC4::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0x005A hword3=0xFF50 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_jump_with_link destination1=byte_809F6CC

byte_8050ADB::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0x006E hword3=0xFFD8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_pause byte1=0x02
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_pause byte1=0x02
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_pause byte1=0x10
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x06
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x18
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_free_and_end
	ns_end

end_npcscript_8050B12:
	ns_end
	ns_end

npcscript_8050B14:
	.word byte_8050B28
	.word byte_8050B4A
	.word dword_80501D4
	.word byte_804FE42
	.word 0x000000FF
byte_8050B28::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x004E hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8050B4A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0x006E hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

unk_8050B60:
	.word byte_8050B70
	.word byte_8050B9A
	.word byte_804FE42
	.word 0x000000FF
byte_8050B70::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x004E hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x1B
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8050B9A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0x006E hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

end_npcscript_8050BB0:
	.word byte_8050BC4
	.word byte_8050C14
	.word byte_8050C4A
	.word byte_8050C65
	.word 0x000000FF
byte_8050BC4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x007C hword3=0x0074 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_coords hword1=0x005C hword3=0x0072 hword5=0x0000
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x13
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x10
	ns_jump_with_link destination1=byte_809F6CC

byte_8050C14::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x05
	ns_set_coords hword1=0x005C hword3=0xFF52 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0D
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0A
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x08
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x10
	ns_jump_with_link destination1=byte_809F6CC

byte_8050C4A::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x0E
	ns_set_text_script_index byte1=0x38
	ns_set_coords hword1=0xFFF6 hword3=0xFF9E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x09 destination4=byte_809F6EC
	ns_jump_with_link destination1=byte_809F6CC

byte_8050C65::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x1A
	ns_set_text_script_index byte1=0x38
	ns_set_coords hword1=0x002E hword3=0x0066 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

unk_8050C7C:
	.word byte_8050CAC
	.word byte_8050CC2
	.word byte_8050CD8
	.word npcscript_8050CEF
	.word byte_8050D06
	.word byte_8050D1D
	.word byte_8050D45
	.word byte_8050D5C
	.word npcscript_8050D73
	.word byte_8050DA9
	.word byte_8050DDA
	.word 0x000000FF
byte_8050CAC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0C
	ns_set_coords hword1=0x0072 hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050CC2::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0A
	ns_set_coords hword1=0x0072 hword3=0xFFC0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050CD8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x005A hword3=0xFFE0 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050CEF:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x0056 hword3=0xFFCA hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050D06::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x005A hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050D1D::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x18
	ns_set_coords hword1=0x0030 hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x01

byte_8050D2B::
	ns_set_animation byte1=0x03
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x07
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x03
	ns_pause byte1=0x0A
	ns_set_animation byte1=0x07
	ns_pause byte1=0x78
	ns_jump destination1=byte_8050D2B
	ns_jump_with_link destination1=byte_809F6CC

byte_8050D45::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x0030 hword3=0xFF9C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050D5C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x0030 hword3=0xFFD4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050D73:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x0040 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x04

byte_8050D87::
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x07
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x07
	ns_jump destination1=byte_8050D87
	ns_jump_with_link destination1=byte_809F6CC

byte_8050DA9::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x57 byte2=0x1C
	ns_set_coords hword1=0x0028 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x00

npcscript_8050DB8:
	ns_set_animation byte1=0x00
	ns_move_in_direction byte1=0x01 byte2=0x20 byte3=0x07
	ns_set_animation byte1=0x01
	ns_move_in_direction byte1=0x03 byte2=0x20 byte3=0x02
	ns_set_animation byte1=0x02
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x07
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x07 byte2=0x20 byte3=0x02
	ns_jump destination1=npcscript_8050DB8
	ns_jump_with_link destination1=byte_809F6CC

byte_8050DDA::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0x0072 hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

unk_8050DF0:
	.word byte_8050E00
	.word byte_8050E40
	.word byte_8050E6E
	.word 0x000000FF
byte_8050E00::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0050 hword3=0xFF50 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x0D
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_free_and_end

byte_8050E40::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x0068 hword3=0xFF50 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x02
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x13
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_free_and_end

byte_8050E6E::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0x005C hword3=0xFF40 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_run_secondary_script ptr1=byte_8050E94
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_jump_with_link destination1=byte_809F6CC

byte_8050E94::
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
	ns_end
	ns_end

unk_8050EBC:
	.word byte_8050EE8
	.word npcscript_8050F1B
	.word byte_8050F31
	.word npcscript_8050F47
	.word byte_8050F5D
	.word byte_8050FB0
	.word npcscript_8050FEB
	.word byte_805102E
	.word byte_8051044
	.word byte_805105A
	.word 0x000000FF
byte_8050EE8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0040 hword3=0xFFD6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x78
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_pause byte1=0x78
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050F1B:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x24
	ns_set_coords hword1=0x0040 hword3=0xFFB6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050F31::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x25
	ns_set_coords hword1=0x0040 hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8050F47:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0D
	ns_set_coords hword1=0x0040 hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8050F5D::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x16
	ns_set_coords hword1=0x0064 hword3=0xFFCC hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x0D
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_jump_with_link destination1=byte_809F6CC

byte_8050FB0::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x32
	ns_set_coords hword1=0x005C hword3=0xFF3C hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0C
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x06
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x06
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x0C
	ns_free_and_end

npcscript_8050FEB:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2C
	ns_set_coords hword1=0x005C hword3=0xFF24 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0F

byte_8051002::
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_pause byte1=0x5A
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x03
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x0F
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_free_and_end

byte_805102E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0x0046 hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8051044::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x1A
	ns_set_coords hword1=0x0034 hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_805105A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0E
	ns_set_coords hword1=0xFFFA hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

unk_8051070:
	.word byte_805109C
	.word byte_80510D6
	.word byte_80510EC
	.word byte_8051102
	.word byte_8051118
	.word npcscript_805113B
	.word npcscript_8051167
	.word byte_805117D
	.word npcscript_8051193
	.word byte_80511A9
	.word 0x000000FF
byte_805109C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0064 hword3=0xFFCC hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x80
	ns_set_animation byte1=0x18
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x81
	ns_wait_cutscene_var byte1=0x08 byte2=0x82
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80510D6::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x24
	ns_set_coords hword1=0x003C hword3=0xFFBE hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80510EC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x25
	ns_set_coords hword1=0x003C hword3=0xFFCE hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8051102::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0D
	ns_set_coords hword1=0x003C hword3=0xFFDE hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8051118::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x16
	ns_set_coords hword1=0x006C hword3=0xFFDC hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805113B:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x32
	ns_set_coords hword1=0x0074 hword3=0xFFC4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8051167:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x2C
	ns_set_coords hword1=0x0074 hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_805117D::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0B
	ns_set_coords hword1=0x0046 hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8051193:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x1A
	ns_set_coords hword1=0x0034 hword3=0x000A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80511A9::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x0E
	ns_set_coords hword1=0xFFFA hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

end_npcscript_80511C0:
	.word byte_80511E8
	.word byte_8051231
	.word byte_8051281
	.word byte_80512DD
	.word byte_80512F8
	.word npcscript_8051313
	.word byte_8051334
	.word byte_8051355
	.word byte_8051376
	.word 0x000000FF
byte_80511E8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x0050 hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x03
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x0A
	ns_set_animation byte1=0x03
	ns_set_layer_priority_override_to_3
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0x8C
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_layer_priority_override_to_2
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x01
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8051231::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x0060 hword3=0xFFC8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x04
	ns_set_animation byte1=0x03
	ns_pause byte1=0x2E
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x03
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x02
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0x8C
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_layer_priority_override_to_2
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x06
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x03
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x0E
	ns_free_and_end

byte_8051281::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0x0050 hword3=0xFFD8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x02
	ns_set_animation byte1=0x03
	ns_pause byte1=0x30
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x05
	ns_set_animation byte1=0x03
	ns_pause byte1=0x10
	ns_set_layer_priority_override_to_3
	ns_pause byte1=0x04
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0xF0
	ns_pause byte1=0x8C
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_set_layer_priority_override_to_2
	ns_set_animation byte1=0x07
	ns_pause byte1=0x5A
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x10
	ns_write_cutscene_var byte1=0x08 byte2=0x07
	ns_free_and_end

byte_80512DD::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_layer_priority_override_to_3
	ns_set_sprite byte1=0x0E
	ns_set_coords hword1=0x0084 hword3=0x005A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_pause byte1=0xF0
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_80512F8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_layer_priority_override_to_3
	ns_set_sprite byte1=0x0F
	ns_set_coords hword1=0x0084 hword3=0x0096 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_pause byte1=0xF0
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8051313:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_layer_priority_override_to_3
	ns_set_sprite byte1=0x45
	ns_set_coords hword1=0x006A hword3=0x011A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x04 byte3=0x1E
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x04 byte3=0x18
	ns_set_animation byte1=0x05
	ns_free_and_end

byte_8051334::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_layer_priority_override_to_3
	ns_set_sprite byte1=0x41
	ns_set_coords hword1=0x004E hword3=0x011A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x04 byte3=0x1E
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x04 byte3=0x18
	ns_set_animation byte1=0x05
	ns_free_and_end

byte_8051355::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_layer_priority_override_to_3
	ns_set_sprite byte1=0x3E
	ns_set_coords hword1=0x006A hword3=0x0134 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x04 byte3=0x1E
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x04 byte3=0x18
	ns_set_animation byte1=0x05
	ns_free_and_end

byte_8051376::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_layer_priority_override_to_3
	ns_set_sprite byte1=0x46
	ns_set_coords hword1=0x004E hword3=0x0134 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x04 byte3=0x1E
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x04 byte3=0x18
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end
	ns_end
	ns_end

npcscriptlist_805139C:
	.word npcscript_080513BC
	.word byte_80513F9
	.word byte_805143C
	.word byte_8051477
	.word byte_8051498
	.word byte_80514C6
	.word byte_80514E7
	.word 0x000000FF
npcscript_080513BC:
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0x001A hword3=0x006E hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x0D
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x08
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_pause byte1=0x30
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x02
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80513F9::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x11
	ns_set_coords hword1=0x001A hword3=0x0086 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x04
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x10
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x06
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x08
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_jump_with_link destination1=byte_809F6CC

byte_805143C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x02
	ns_set_coords hword1=0x005E hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x06
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x06
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8051477::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x01
	ns_set_coords hword1=0x005A hword3=0xFFD6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x03
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x03
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8051498::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x03
	ns_set_coords hword1=0x005A hword3=0xFFB6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x0D
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80514C6::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x14
	ns_set_coords hword1=0x0046 hword3=0xFFC6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x04
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x04
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80514E7::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x33
	ns_set_coords hword1=0x004A hword3=0xFFD2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x02
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_pause byte1=0x20
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_pause byte1=0x02
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

unk_8051518:
	.word byte_8051534
	.word byte_805155A
	.word byte_8051582
	.word byte_80515A8
	.word byte_80515D2
	.word byte_80515FC
	.word 0x000000FF
byte_8051534::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x43
	ns_set_coords hword1=0x005A hword3=0xFFD8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x03
	ns_pause byte1=0x14
	ns_set_animation byte1=0x05
	ns_pause byte1=0x28
	ns_set_animation byte1=0x03
	ns_pause byte1=0x14
	ns_set_animation byte1=0x05
	ns_pause byte1=0x28
	ns_jump_with_link destination1=byte_809F6CC

byte_805155A::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x43
	ns_set_coords hword1=0x004A hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x02
	ns_set_animation byte1=0x01
	ns_pause byte1=0x14
	ns_set_animation byte1=0x07
	ns_pause byte1=0x28
	ns_set_animation byte1=0x01
	ns_pause byte1=0x14
	ns_set_animation byte1=0x07
	ns_pause byte1=0x28
	ns_jump_with_link destination1=byte_809F6CC

byte_8051582::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x43
	ns_set_coords hword1=0xFF6C hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x02
	ns_set_animation byte1=0x05
	ns_pause byte1=0x14
	ns_set_animation byte1=0x03
	ns_pause byte1=0x28
	ns_set_animation byte1=0x05
	ns_pause byte1=0x14
	ns_set_animation byte1=0x03
	ns_pause byte1=0x28
	ns_jump_with_link destination1=byte_809F6CC

byte_80515A8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x43
	ns_set_coords hword1=0xFF54 hword3=0x00B4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01

npcscript_80515B9:
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0C
	ns_set_animation byte1=0x03
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x0C
	ns_set_animation byte1=0x07
	ns_pause byte1=0x1E
	ns_jump destination1=npcscript_80515B9

byte_80515D2::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x43
	ns_set_coords hword1=0xFFD0 hword3=0x00FC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03

byte_80515E3::
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x07
	ns_pause byte1=0x1E
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x04
	ns_set_animation byte1=0x03
	ns_pause byte1=0x1E
	ns_jump destination1=byte_80515E3

byte_80515FC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x43
	ns_set_coords hword1=0x007E hword3=0x0074 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x03
	ns_pause byte1=0x14
	ns_set_animation byte1=0x05
	ns_pause byte1=0x28
	ns_set_animation byte1=0x03
	ns_pause byte1=0x14
	ns_set_animation byte1=0x05
	ns_pause byte1=0x28
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

NPCScriptsForLanHouse_8051624::
	.word byte_805163C
	.word npc_script_805176f
	.word byte_805183C
	.word byte_8051935
	.word byte_805191A
	.word 0x000000FF
byte_805163C::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x06
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_805175F
	ns_jump_if_progress_in_range byte1=0x62 byte2=0x62 destination3=npcscript_80516DC
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x41 destination3=byte_805174C
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x32 destination3=npcscript_80516CC
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x25 destination3=npcscript_805173C
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_805172C
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=byte_805169D
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_805170C
	ns_jump_if_progress_in_range byte1=0x02 byte2=0x02 destination3=npcscript_80516FC
	ns_jump_if_progress_in_range byte1=0x01 byte2=0x01 destination3=npcscript_80516EC
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x00 destination3=byte_805168D
	ns_free_and_end

byte_805168D::
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0044 hword3=0xFF98 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_805169D::
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=byte_805171C
	ns_jump_if_flag_set event16_1=EVENT_60C destination3=npcscript_80516BC
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x003E hword3=0xFFAC hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

npcscript_80516BC:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFF6 hword3=0x0026 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80516CC:
	ns_set_text_script_index byte1=0x23
	ns_set_coords hword1=0x005A hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80516DC:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x004A hword3=0xFFAA hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80516EC:
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0x0046 hword3=0xFF98 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80516FC:
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0xFFF4 hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805170C:
	ns_set_text_script_index byte1=0x19
	ns_set_coords hword1=0x0046 hword3=0xFFC4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_805171C::
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0x0014 hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805172C:
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0x0044 hword3=0xFF98 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805173C:
	ns_set_text_script_index byte1=0x19
	ns_set_coords hword1=0x0058 hword3=0xFFE4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_805174C::
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x004A hword3=0x001A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x06 destination4=byte_809F71C

npcscript_805175F:
	ns_set_text_script_index byte1=0x05
	ns_set_coords hword1=0x001A hword3=0xFFEC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npc_script_805176f::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x05
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x31 destination3=npcscript_8051824
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=byte_80517B4
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=npcscript_80517D4
	ns_jump_if_progress_in_range byte1=0x16 byte2=0x16 destination3=npcscript_8051814
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x15 destination3=npcscript_8051804
	ns_jump_if_progress_in_range byte1=0x02 byte2=0x02 destination3=byte_80517C4
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x01 destination3=npcscript_80517A4
	ns_free_and_end

npcscript_80517A4:
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFFE6 hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80517B4::
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x0056 hword3=0xFFE4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80517C4::
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFFE2 hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80517D4:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_80517F3
	ns_jump_if_flag_set event16_1=EVENT_60C destination3=npcscript_80517E3
	ns_free_and_end

npcscript_80517E3:
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0xFFE2 hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80517F3:
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0x0058 hword3=0xFFE4 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8051804:
	ns_set_text_script_index byte1=0x2E
	ns_set_coords hword1=0x0014 hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8051814:
	ns_set_text_script_index byte1=0x33
	ns_set_coords hword1=0x0014 hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8051824:
	ns_jump_if_flag_clear event16_1=EVENT_810 destination3=npcscript_805183B
	ns_set_text_script_index byte1=0x2A
	ns_set_coords hword1=0x004C hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805183B:
	ns_free_and_end

byte_805183C::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x06
	ns_jump_if_progress_in_range byte1=0x52 byte2=0x53 destination3=npcscript_8051909
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=npcscript_80518F9
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=byte_80518E6
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x31 destination3=npcscript_80518BF
	ns_jump_if_progress_in_range byte1=0x16 byte2=0x16 destination3=npcscript_80518AF
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x15 destination3=npcscript_805189F
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=byte_8051871
	ns_free_and_end

byte_8051871::
	ns_jump_if_flag_set event16_1=EVENT_510 destination3=byte_805188F
	ns_jump_if_flag_set event16_1=EVENT_542 destination3=npcscript_8051919
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0xFFDC hword3=0xFFA6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_805188F::
	ns_set_text_script_index byte1=0x29
	ns_set_coords hword1=0x0048 hword3=0xFFC2 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_805189F:
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0x0046 hword3=0xFFA0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80518AF:
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x0046 hword3=0xFFA0 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80518BF:
	ns_jump_if_flag_set event16_1=EVENT_810 destination3=npcscript_80518D6
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0x0074 hword3=0x0014 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80518D6:
	ns_set_text_script_index byte1=0x29
	ns_set_coords hword1=0x0016 hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_80518E6::
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0x004E hword3=0xFFEC hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x08 destination4=byte_809F6EC

npcscript_80518F9:
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0x0070 hword3=0x001C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8051909:
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x004E hword3=0xFFA0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8051919:
	ns_free_and_end

byte_805191A::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x01
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=byte_8051925
	ns_free_and_end

byte_8051925::
	ns_set_text_script_index byte1=0x0B
	ns_set_coords hword1=0x000A hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8051935::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x43
	ns_jump_if_progress_in_range byte1=0x64 byte2=0x64 destination3=npcscript_8051940
	ns_free_and_end

npcscript_8051940:
	ns_set_sprite byte1=0x43
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0x0014 hword3=0x0026 hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

end_npcscript_8051958:
	.word byte_8051960
	.word 0x000000FF
byte_8051960::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFDE hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

end_npcscript_8051984:
	.word byte_8051990, 0x080519D7, 0x000000FF
byte_8051990::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFA6 hword3=0x002A hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x05
	ns_set_animation byte1=0x01
	ns_pause byte1=0x3C
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x11
	ns_move_in_direction byte1=0x01 byte2=0x10 byte3=0x08
	ns_set_animation byte1=0x17
	ns_move_in_direction byte1=0x07 byte2=0x10 byte3=0x0F
	ns_set_animation byte1=0x15
	ns_move_in_direction byte1=0x05 byte2=0x10 byte3=0x04
	ns_set_animation byte1=0x05
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x06
	ns_set_coords hword1=0xFFD6 hword3=0xFFB2 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end
	ns_end

end_npcscript_80519F0:
	.word byte_80519FC, byte_8051A1E, 0x000000FF
byte_80519FC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x00
	ns_set_coords hword1=0xFFE6 hword3=0xFF9A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x1B
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8051A1E::
	.word 0x17271F08, 0xFFD61406, 0x0000FFB2, byte_83F0716, 0x15091601, 0x32070801, 0x08051A44, 0x07150F16
	.word 0x083C0A08, 0x6C330302, 0x01331031, 0x01330E31, 0x01330C31, 0x01330A31, 0x01330831, 0x01330631
	.word 0x01330431, 0x01330231
	.byte 0x09
	.byte 0x34

end_npcscript_8051A68:
	.word byte_8051A70, 0x000000FF

byte_8051A70:: 
  .byte 0x8, 0x1F, 0x27, 0x17, 0x0, 0x14, 0xDE, 0xFF, 0xB8, 0xFF
	.byte 0x0, 0x0
	.word byte_83F0716
	.byte 0x1, 0x16, 0x1A, 0x2A, 0xC0, 0x16, 0x1B, 0x3C
	.word byte_83F0208
	.word 0x3C051603
	.word byte_83F0408
	.byte 0x5, 0x14, 0x16, 0x0, 0xDA, 0xFF, 0x0, 0x0, 0x16, 0x1B, 0x36
	.byte 0xCC, 0xF6, 0x9, 0x8, 0x0
	.word byte_8051AAC
	.word 0xFF
byte_8051AAC:: 
  .byte 0x8, 0x1F, 0x27, 0x17, 0x0, 0x14, 0xCE, 0xFF, 0x2A, 0x0
	.byte 0x0, 0x0
	.word byte_83F0116
	.byte 0x1, 0x16, 0x1A, 0x2A, 0xC0, 0x16, 0x1B, 0x3C
	.word byte_83F0208
	.byte 0x3, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x0, 0x0
	.word byte_8051AD8
	.word 0xFF
byte_8051AD8:: 
  .byte 0x8, 0x1F, 0x27, 0x17, 0x0, 0x14, 0xA6, 0xFF, 0x2A, 0x0
	.byte 0x0, 0x0
	.word byte_83F0116
	.byte 0x1, 0x16, 0x9, 0x15, 0x1, 0x8, 0x5, 0x16, 0x1, 0x10, 0x3C, 0x16
	.byte 0x7, 0x3C, 0x8, 0x2, 0x3F, 0x8, 0x3, 0x16, 0x11, 0x15, 0x1, 0x10
	.byte 0x9, 0x16, 0x17, 0x15, 0x7, 0x10, 0xF, 0x16, 0x1, 0x3C, 0x8, 0x4
	.byte 0x3F, 0x8, 0x5, 0x16, 0x1A, 0x2A, 0xC0, 0x16, 0x1B, 0x3C, 0x8, 0x6
	.byte 0x3F, 0x8, 0x7, 0x32
	.word byte_8051B36
	.byte 0x16, 0x15, 0x15, 0x5, 0x10, 0x1, 0x16, 0x17, 0x15, 0x7
	.byte 0x10, 0x7
	.word 0x83C0116
	.byte 0x8, 0x36, 0xCC, 0xF6, 0x9, 0x8
byte_8051B36:: 
  .byte 0x33, 0x3C, 0x31, 0x10, 0x33, 0x1, 0x31, 0xE, 0x33, 0x1
	.byte 0x31, 0xC, 0x33, 0x1, 0x31, 0xA, 0x33, 0x1, 0x31, 0x8
	.byte 0x33, 0x1, 0x31, 0x6, 0x33, 0x1, 0x31, 0x4, 0x33, 0x1
	.byte 0x31, 0x2, 0x33, 0x1, 0x9, 0x34, 0x0, 0x0
NPCScriptsForLanRoom_8051B5C:: // [*const NPCScript; 1]
  .word dword_8051B64
	.word 0xFF
dword_8051B64::
	.word 0x25253B08
	.word byte_8051B6D
	.byte 0x3
byte_8051B6D::
	.byte 0x17, 0x14, 0x18, 0x1, 0x14, 0xE4, 0xFF, 0x8, 0x0, 0x0, 0x0
	.byte 0x16, 0x7, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x0
	.word byte_8051B88
	.word 0xFF
byte_8051B88::
	.byte 0x8, 0x1F, 0x27, 0x17, 0x0, 0x14, 0xF8, 0xFF, 0x8, 0x0, 0x0
	.byte 0x0
	.word byte_83F1B16
	.byte 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x0, 0x0
	.word byte_8051BA8
	.word 0xFF
byte_8051BA8::
	.byte 0x8, 0x1F, 0x27, 0x25, 0x14, 0x1C, 0x14, 0x1A, 0x0, 0x32
	.byte 0x0, 0x0, 0x0, 0x16, 0x0, 0xF, 0x1, 0x3F, 0x8, 0x1
	.byte 0x16, 0x1, 0x2A, 0xC0, 0x16, 0x3, 0x2A, 0xC0, 0x3C, 0x8
	.byte 0x2, 0x3F, 0x8, 0x3, 0x17, 0x0, 0x14, 0xF8, 0xFF, 0x8
	.byte 0x0, 0x0, 0x0, 0x16, 0x1B, 0xF, 0x0, 0x36
	.word byte_809F6CC
	.word byte_8051BE4
	.word 0xFF
byte_8051BE4::
	.byte 0x8, 0x1F, 0x27, 0x25, 0x14, 0x1C, 0x14, 0x1A, 0x0, 0x32
	.byte 0x0, 0x0, 0x0, 0x16, 0x0, 0xF, 0x1, 0x3F, 0x8, 0x1
	.byte 0x16, 0x1, 0x2A, 0xC0, 0x16, 0x3, 0x2A, 0xC0, 0x3C, 0x8
	.byte 0x2, 0x3F, 0x8, 0x3, 0x17, 0x0, 0x14, 0xF8, 0xFF, 0x8
	.byte 0x0, 0x0, 0x0, 0x16, 0x1B, 0xF, 0x0, 0x36
	.word byte_809F6CC
	.word byte_8051C20
	.word 0xFF
byte_8051C20::
	.byte 0x8, 0x1F, 0x27, 0x17, 0x0, 0x14, 0xF8, 0xFF, 0x8, 0x0, 0x0
	.byte 0x0
	.word byte_83F1B16
	.byte 0x1, 0x16, 0xD, 0x15, 0x5, 0x8, 0x3, 0x16
	.word byte_807150F
	.word 0x3C071601
	.word byte_83F0208
	.byte 0x3, 0x16, 0x19, 0x2A, 0xC0, 0x10, 0xA, 0x16, 0x4, 0x10
	.byte 0x3C, 0x16, 0x13, 0x15, 0x3, 0x10, 0x8, 0x16, 0x15, 0x15
	.byte 0x5, 0x10, 0x4, 0x16, 0x3, 0x3C, 0x8, 0x4, 0x36, 0xCC
	.byte 0xF6, 0x9, 0x8, 0x0, 0x0, 0x0
	.word byte_8051C70
	.word 0xFF
byte_8051C70::
	.byte 0x8, 0x1F, 0x27, 0x17, 0x0, 0x14, 0xF8, 0xFF, 0x8, 0x0, 0x0
	.byte 0x0
	.word byte_83F1B16
	.byte 0x1, 0x16, 0x15, 0x15, 0x5, 0x10, 0x7, 0x16, 0x13, 0x15
	.byte 0x3, 0x10, 0xB, 0x16, 0x1, 0x3C
	.word byte_83F0208
	.byte 0x3, 0x16, 0xF, 0x15, 0x7, 0x8, 0x4, 0x16, 0x1A, 0x2A, 0xC0
	.byte 0x16, 0x1B, 0x3C, 0x8, 0x4, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x0
	.byte 0x0, 0x0
	.word byte_8051CB8
	.word byte_8051D02
	.word 0xFF
byte_8051CB8::
	.byte 0x8, 0x1F, 0x27, 0x17, 0x0, 0x14, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0
	.word byte_83F0116
	.word 0x3C051601
	.word byte_83F0208
	.byte 0x5, 0x25, 0x14, 0x1C, 0x14, 0x1A, 0x0, 0x32, 0x0, 0x0, 0x0
	.byte 0x16, 0x0, 0xF, 0x1, 0x3F, 0x8, 0x6, 0x16, 0x1, 0x2A, 0xC0
	.byte 0x16, 0x3
	.word byte_83CC02A
	.word byte_8083F07
	.byte 0x17, 0x0, 0x14, 0xF8, 0xFF, 0x8, 0x0, 0x0, 0x0, 0x16, 0x1B
	.byte 0xF, 0x0, 0x36, 0xCC, 0xF6, 0x9, 0x8
byte_8051D02::
	.byte 0x8, 0x1F, 0x27, 0x17, 0x5, 0x14, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x16
	.byte 0x1, 0x3F, 0x8, 0x3, 0x16, 0x11, 0x15, 0x1, 0x10, 0x2, 0x16, 0x1, 0x3C
	.word byte_83F0408
	.word 0x305
	.word byte_8051D30
	.word byte_8051D52
	.word 0xFF
byte_8051D30::
	.byte 0x8, 0x1F, 0x27, 0x17, 0x0, 0x14, 0xF8, 0xFF, 0x8, 0x0, 0x0
	.byte 0x0
	.word byte_83F1B16
	.word 0x3C041601
	.word byte_83F0208
	.byte 0x3, 0x10, 0x3C, 0x16, 0x5, 0x36, 0xCC, 0xF6, 0x9, 0x8
byte_8051D52::
	.byte 0x9, 0x1F, 0x27, 0x17, 0x14, 0x14, 0xC0, 0xFF, 0x68
	.byte 0x0, 0x0, 0x0, 0x16, 0x7, 0x3F, 0x8, 0x3, 0x8
	.byte 0x32, 0x7F, 0x1D, 0x5, 0x8, 0x16, 0x17, 0x15, 0x7
	.byte 0x10, 0xC, 0x16, 0x11, 0x15, 0x1, 0x10, 0x4, 0x16
	.byte 0x1, 0x3C, 0x8, 0x4, 0x36, 0xCC, 0xF6, 0x9, 0x8
	.byte 0x8, 0x31, 0x2, 0x33, 0x1, 0x31, 0x4, 0x33, 0x1
	.byte 0x31, 0x6, 0x33, 0x1, 0x31, 0x8, 0x33, 0x1, 0x31
	.byte 0xA, 0x33, 0x1, 0x31, 0xC, 0x33, 0x1, 0x31, 0xE
	.byte 0x33, 0x1, 0x31, 0x10, 0x33, 0x1, 0x31, 0x0, 0x34
	.byte 0x0
	.word byte_8051DB8
	.word byte_8051DEB
	.word byte_8051E5E
	.word byte_8051EC0
	.word 0xFF
byte_8051DB8::
	.byte 0x8, 0x1F, 0x27, 0x25, 0x14, 0x1C, 0x14, 0x1A, 0x0, 0x32
	.byte 0x0, 0x0, 0x0, 0x16, 0x0, 0xF, 0x1, 0x3F, 0x8, 0x7
	.byte 0x28, 0xCF, 0x0, 0x16, 0x3, 0x2A, 0xC0, 0x3C
	.word byte_83F0808
	.byte 0xB, 0x17, 0x0, 0x14, 0xF8, 0xFF, 0x8, 0x0, 0x0, 0x0, 0x16, 0x1B
	.byte 0xF, 0x0, 0x36, 0xCC, 0xF6, 0x9, 0x8
byte_8051DEB::
	.byte 0x9, 0x1F, 0x27, 0x1B, 0x17, 0x2, 0x14, 0xC0, 0xFF, 0x66
	.byte 0x0, 0x0, 0x0
	.word byte_83F0716
	.byte 0x1, 0x32, 0x23, 0x1F, 0x5, 0x8, 0x16, 0x17, 0x15, 0x7, 0x10
	.byte 0xA, 0x16, 0x11, 0x15, 0x1, 0x10, 0xA, 0x16, 0x3, 0x3F, 0x8
	.byte 0x3, 0x16, 0x5, 0x3C, 0x8, 0x4, 0x3F, 0x8, 0x5, 0x16, 0x3
	.byte 0x3C, 0x8, 0x6, 0x3F, 0x8, 0x9, 0x10, 0x6, 0x32, 0x3A, 0x1E
	.byte 0x5, 0x8, 0x16, 0x15, 0x15, 0x5, 0x10, 0xA, 0x16, 0x13, 0x15
	.byte 0x3
	.word byte_83C0A10
	.byte 0xA, 0x3, 0x33, 0x98, 0x31, 0x10, 0x33, 0x1, 0x31, 0xE
	.byte 0x33, 0x1, 0x31, 0xC, 0x33, 0x1, 0x31, 0xA, 0x33, 0x1
	.byte 0x31, 0x8, 0x33, 0x1, 0x31, 0x6, 0x33, 0x1, 0x31, 0x4
	.byte 0x33, 0x1, 0x31, 0x2, 0x33, 0x1, 0x9, 0x34
byte_8051E5E::
	.byte 0x9, 0x1F, 0x27, 0x1B, 0x17, 0x1, 0x14, 0xC0, 0xFF, 0x66
	.byte 0x0, 0x0, 0x0, 0x16, 0x7, 0x3F, 0x8, 0x1, 0x10, 0x12
	.byte 0x32, 0x23, 0x1F, 0x5, 0x8, 0x16, 0x17, 0x15, 0x7, 0x10
	.byte 0xA, 0x16, 0x11, 0x15, 0x1, 0x10, 0x8, 0x16, 0x3, 0x3F
	.byte 0x8, 0x9, 0x10, 0x2, 0x32, 0x9C, 0x1E, 0x5, 0x8, 0x16
	.byte 0x15, 0x15, 0x5, 0x10, 0x8, 0x16, 0x13, 0x15, 0x3, 0x10
	.byte 0xA, 0x3, 0x33, 0x88, 0x31, 0x10, 0x33, 0x1, 0x31, 0xE
	.byte 0x33, 0x1, 0x31, 0xC, 0x33, 0x1, 0x31, 0xA
	.word 0x8310133
	.byte 0x33, 0x1, 0x31, 0x6, 0x33, 0x1, 0x31, 0x4, 0x33, 0x1, 0x31
	.byte 0x2, 0x33, 0x1, 0x9, 0x34
byte_8051EC0::
	.byte 0x9, 0x1F, 0x27, 0x1B, 0x17, 0x3, 0x14, 0xC0, 0xFF, 0x66
	.byte 0x0, 0x0, 0x0, 0x16, 0x7, 0x3F, 0x8, 0x1, 0x10, 0x21
	.byte 0x32, 0x23, 0x1F, 0x5, 0x8, 0x16, 0x17, 0x15, 0x7, 0x10
	.byte 0xA, 0x16, 0x11, 0x15, 0x1, 0x10, 0x6, 0x16, 0x3, 0x3C
	.word byte_83F0208
	.byte 0x9, 0x32, 0xFF, 0x1E, 0x5, 0x8, 0x16, 0x15, 0x15, 0x5, 0x10
	.byte 0x6, 0x16, 0x13, 0x15, 0x3, 0x10, 0xA, 0x3, 0x33, 0x78, 0x31
	.byte 0x10, 0x33, 0x1, 0x31, 0xE, 0x33, 0x1, 0x31, 0xC, 0x33, 0x1
	.byte 0x31, 0xA, 0x33, 0x1, 0x31, 0x8, 0x33, 0x1, 0x31, 0x6, 0x33
	.byte 0x1, 0x31, 0x4, 0x33, 0x1, 0x31, 0x2, 0x33
	.byte 0x1, 0x9, 0x34, 0x8
	.byte 0x31, 0x2, 0x33, 0x1, 0x31, 0x4, 0x33, 0x1, 0x31, 0x6, 0x33
	.byte 0x1, 0x31, 0x8, 0x33, 0x1, 0x31, 0xA, 0x33, 0x1, 0x31, 0xC
	.byte 0x33, 0x1, 0x31, 0xE, 0x33, 0x1, 0x31, 0x10, 0x33, 0x1, 0x31
	.byte 0x0, 0x34, 0x0
NPCScriptsForBathroom_8051F48:: // [*const NPCScript; 2]
  .word byte_8051F54
	.word npc_script_8051F77
	.word 0xFF
byte_8051F54:: 
  .byte 0x8, 0x17, 0x6, 0x3B, 0x11, 0x11, 0x5F, 0x1F, 0x5, 0x8 
  .byte 0x3, 0x4, 0x42, 0x5, 0x67, 0x1F, 0x5, 0x8, 0x3, 0x18
  .byte 0x0, 0x14, 0x6, 0x0, 0xFC, 0xFF, 0x0, 0x0, 0x16, 0x3
  .byte 0x36, 0xCC, 0xF6, 0x9, 0x8
npc_script_8051F77::
  .byte 0x8, 0x25, 0x2D, 0x1C, 0x1C, 0x0, 0x0, 0x0, 0x10
	.byte 0xF, 0x1, 0x4, 0xA9, 0x11, 0x8A, 0x1F, 0x5, 0x8, 0x3, 0x5
	.byte 0x1D, 0x17, 0xAD, 0x1F, 0x5, 0x8, 0x4, 0x63, 0x1
	.word byte_8051FAD
	.byte 0x4C, 0x0, 0x14, 0xF4, 0xFF, 0xE, 0x0, 0x0, 0x0, 0x16, 0x5
byte_8051FA3::
	.byte 0x10, 0x1, 0x5, 0xAB, 0x11
	.word byte_8051FA3
	.byte 0x3
byte_8051FAD::
	.byte 0x3, 0x0, 0x0
NPCScriptsForAsterland_8051FB0:: // [*const NPCScript; 9]
  .word byte_8051FD8
	.word byte_805202E
	.word byte_8052065
	.word byte_805209D
	.word npc_script_80520DF
	.word npc_script_8052177
	.word byte_80521BC
	.word byte_80521E0
	.word npc_script_8052227
	.word 0xFF
byte_8051FD8::
	.byte 0x8, 0x17, 0x33, 0x3B, 0x64, 0x64, 0xFF, 0x1F, 0x5, 0x8
	.byte 0x3B, 0x62, 0x63, 0x2D, 0x20, 0x5, 0x8, 0x3B, 0x61, 0x61
	.word byte_8052015
	.byte 0x3B, 0x60, 0x60, 0x25, 0x20, 0x5, 0x8, 0x3B, 0x10, 0xFF
	.byte 0xFF, 0x1F, 0x5, 0x8, 0x3
byte_8051FFF::
	.byte 0x4C, 0x0, 0xA, 0xC, 0xC, 0x0, 0xA, 0x0, 0x14, 0x1C, 0x0, 0xBA
	.byte 0xFF, 0x0, 0x0, 0x16, 0x3, 0x36, 0xCC, 0xF6, 0x9, 0x8
byte_8052015::
	.byte 0x18, 0x0, 0x14, 0x1C, 0x0, 0xE4, 0xFF, 0x0, 0x0, 0x16, 0x3
	.byte 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x4, 0xA, 0xE
	.word byte_8051FFF
	.byte 0x3, 0x3
byte_805202E::
	.byte 0x8, 0x25, 0x2D, 0x1C, 0x1C, 0x0, 0x0, 0x0, 0x10, 0xF, 0x1, 0x4
	.byte 0xA9, 0x11
	.word byte_8052041
	.byte 0x3
byte_8052041::
	.byte 0x5, 0x1D, 0x17
	.word byte_8052064
	.byte 0x4, 0x63, 0x1, 0x64, 0x20, 0x5, 0x8, 0x4C, 0xA, 0x14, 0x2C
	.byte 0x0, 0xF4, 0xFF, 0x0, 0x0, 0x16, 0x1, 0x10, 0x1, 0x5, 0xAD
	.byte 0x11, 0x5A, 0x20, 0x5, 0x8, 0x3
byte_8052064::
	.byte 0x3
byte_8052065::
	.byte 0x8, 0x17, 0x1C, 0x3B, 0x50, 0xFF, 0x70, 0x20, 0x5, 0x8
	.byte 0x3, 0x4, 0x3B, 0x1C, 0x7E, 0x20, 0x5, 0x8, 0x4, 0xFB
	.byte 0x1B, 0x9C, 0x20, 0x5, 0x8, 0x4, 0x41, 0x1C, 0x8C, 0x20
	.byte 0x5, 0x8, 0x4, 0x1, 0x1C
	.word byte_805209C
	.byte 0x4C, 0x14, 0x14, 0x6C, 0x0, 0x44, 0x0, 0x0, 0x0, 0x16, 0x5
	.byte 0x36
	.word byte_809F6CC
byte_805209C::
	.byte 0x3
byte_805209D:: 
  .byte 0x8, 0x17, 0xB, 0x3B, 0x30, 0x31, 0xBF, 0x20, 0x5, 0x8
  .byte 0x3B, 0x20, 0x25, 0xAF, 0x20, 0x5, 0x8, 0x3, 0x18, 0x0
  .byte 0x14, 0x5E, 0x0, 0x42, 0x0, 0x0, 0x0, 0x16, 0x7, 0x36
  .byte 0xCC, 0xF6, 0x9, 0x8, 0x18, 0x1E, 0x14, 0x36, 0x0, 0xF8
  .byte 0xFF, 0x0, 0x0, 0x16, 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8
  .byte 0x18, 0x5, 0x14, 0x44, 0x0, 0x1C, 0x0, 0x0, 0x0, 0x16
  .byte 0x7, 0x36, 0xCC, 0xF6, 0x9, 0x8
npc_script_80520DF::
  .byte 0x8, 0x17, 0xA, 0x3B, 0x40, 0x46, 0x23, 0x21, 0x5, 0x8, 0x3B
	.byte 0x32, 0x33
	.word byte_8052112
	.byte 0x3, 0x18, 0x1, 0x14, 0x2C, 0x0, 0xF4, 0xFF, 0x0, 0x0, 0x16
	.byte 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x13, 0x18, 0x1F, 0x14, 0xE6
	.byte 0xFF, 0xDC, 0xFF, 0x0, 0x0, 0x16, 0x7, 0x36, 0xCC, 0xF6, 0x9
	.byte 0x8
byte_8052112::
	.byte 0x13, 0x18, 0x23, 0x14, 0x32, 0x0, 0xF6, 0xFF, 0x0, 0x0
	.byte 0x16, 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x13, 0x18, 0x1
	.byte 0x14, 0x5A, 0x0, 0x34, 0x0, 0x0, 0x0, 0x16, 0x7, 0x36
	.word byte_809F6CC
byte_8052134:: 
  .byte 0x13, 0x18, 0x5, 0x14, 0x3C, 0x0, 0x24, 0x0, 0x0, 0x0
  .byte 0x16, 0x5, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x13, 0x18, 0xB
  .byte 0x14, 0x2A, 0x0, 0x4A, 0x0, 0x0, 0x0, 0x16, 0x1, 0x36
  .byte 0xCC, 0xF6, 0x9, 0x8, 0x13, 0x18, 0x10, 0x14, 0xAC, 0xFF
  .byte 0x1E, 0x0, 0x0, 0x0, 0x16, 0x7, 0x36, 0xCC, 0xF6, 0x9
  .byte 0x8, 0x18, 0xB, 0x14, 0xBC, 0xFF, 0x42, 0x0, 0x0, 0x0
  .byte 0x16, 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8
npc_script_8052177::
  .byte 0x8, 0x17, 0xD, 0x3, 0x18, 0x2, 0x14, 0xF8, 0xFF, 0xE4
	.byte 0xFF, 0x0, 0x0, 0x16, 0x7, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x18
	.byte 0xC, 0x14, 0x16, 0x0, 0x22, 0x0, 0x0, 0x0, 0x16, 0x5, 0x36
	.byte 0xCC, 0xF6, 0x9, 0x8, 0x13, 0x18, 0xF, 0x14, 0xBA, 0xFF, 0xF4
	.byte 0xFF, 0x0, 0x0, 0x16, 0x3, 0x36
	.word byte_809F6CC
	.byte 0x18, 0xA, 0x14, 0x32, 0x0, 0xE, 0x0, 0x0, 0x0, 0x16, 0x1, 0x36
	.word byte_809F6CC
byte_80521BC::
	.byte 0x8, 0x17, 0xE, 0x3, 0x18, 0x24, 0x14, 0x34, 0x0, 0x32, 0x0
	.byte 0x0, 0x0, 0x16, 0x7, 0x36
	.word byte_809F6CC
	.byte 0x18, 0x6, 0x14, 0x32, 0x0, 0xE2, 0xFF, 0x0, 0x0, 0x16, 0x1
	.byte 0x36
	.word byte_809F6CC
byte_80521E0::
	.byte 0x8, 0x17, 0x9, 0x3, 0x18, 0x0, 0x14, 0x14, 0x0, 0x28, 0x0, 0x0
	.byte 0x0, 0x16, 0x1, 0x36
	.word byte_809F6CC
byte_80521F4:: 
  .byte 0x13, 0x18, 0x5, 0x14, 0x14, 0x0, 0x28, 0x0, 0x0, 0x0
  .byte 0x16, 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x13, 0x18, 0xA
  .byte 0x14, 0x42, 0x0, 0x4A, 0x0, 0x0, 0x0, 0x16, 0x5, 0x36
  .byte 0xCC, 0xF6, 0x9, 0x8, 0x13, 0x18, 0x11, 0x14, 0xCE, 0xFF
  .byte 0x1E, 0x0, 0x0, 0x0, 0x16, 0x7, 0x36, 0xCC, 0xF6, 0x9
  .byte 0x8
npc_script_8052227::
  .byte 0x8, 0x17, 0x3C, 0x3B, 0x20, 0xFF, 0x32, 0x22, 0x5, 0x8, 0x3, 0x4C, 0x1E, 0x14, 0xA4
	.byte 0xFF, 0xD8, 0xFF, 0x0, 0x0, 0x16, 0x3, 0x36, 0xCC, 0xF6, 0x9
	.byte 0x8, 0x0, 0x0

/*For debugging purposes, connect comment at any range!*/
