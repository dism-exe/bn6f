
byte_8071D14:
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00D40000,
		y: 0x008A0000,
		z: -0x000C0000,
		object_id: 0x00000009,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00640000,
		y: 0x00BC0000,
		z: 0x00000000,
		object_id: 0x0000000A,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x01A20000,
		y: -0x00800000,
		z: 0x00000000,
		object_id: 0x00000002,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00F20000,
		y: 0x000E0000,
		z: 0x00000000,
		object_id: 0x0000003E,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x018C0000,
		y: -0x00740000,
		z: 0x00000000,
		object_id: 0x00000016,
	]
	.word 0xFF

byte_8071D7C:
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00160000,
		y: -0x010A0000,
		z: -0x00400000,
		object_id: 0x000000D5,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x00160000,
		y: -0x01260000,
		z: -0x00400000,
		object_id: 0x000000D5,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x00260000,
		y: -0x017C0000,
		z: 0x00000000,
		object_id: 0x00000003,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: -0x00340000,
		y: -0x019A0000,
		z: 0x00000000,
		object_id: 0x00000017,
	]
	map_object_spawn_data_struct [
		index: 0x25,
		x: -0x00180000,
		y: -0x01080000,
		z: -0x00400000,
		object_id: 0x00000000,
	]
	map_object_spawn_data_struct [
		index: 0x25,
		x: -0x00180000,
		y: -0x01280000,
		z: -0x00400000,
		object_id: 0x00000001,
	]
	.word 0xFF

byte_8071DF8:
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00580000,
		y: -0x00EA0000,
		z: 0x00000000,
		object_id: 0x000000C5,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00140000,
		y: -0x01600000,
		z: 0x00100000,
		object_id: 0x00000082,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00300000,
		y: -0x015E0000,
		z: 0x00100000,
		object_id: 0x00000083,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x01600000,
		y: 0x007E0000,
		z: 0x00000000,
		object_id: 0x00000017,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x01600000,
		y: 0x009E0000,
		z: 0x00000000,
		object_id: 0x00000017,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x017C0000,
		y: 0x00640000,
		z: -0x00400000,
		object_id: 0x00000018,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: 0x00FC0000,
		y: -0x007C0000,
		z: 0x00000000,
		object_id: 0x00000019,
	]
	map_object_spawn_data_struct [
		index: 0x00,
		x: -0x01280000,
		y: -0x00B80000,
		z: 0x00900000,
		object_id: 0x0000001A,
	]
	map_object_spawn_data_struct [
		index: 0x03,
		x: 0x00F40000,
		y: 0x00680000,
		z: 0x00000000,
		object_id: 0x00000018,
	]
	.word 0xFF

off_8071EB0: // [*const MapScript; CENTRAL_AREA_NUM_MAPS]
	.word byte_8071F18
	.word byte_80723D0
	.word byte_80726C0
off_8071EBC: // [*const MapScript; CENTRAL_AREA_NUM_MAPS]
	.word byte_8072221
	.word byte_807254C
	.word byte_80728DC
NPCScriptsCentralArea_8071EC8: // [*const [*const NPCScript]; CENTRAL_AREA_NUM_MAPS]
  .word off_8072BC8
	.word off_807360C
	.word off_8073F1C
off_8071ED4:
	.word byte_8071EE0
	.word byte_8071EF0
	.word byte_8071F00
byte_8071EE0:
	.byte 0x0, 0xFF, 0x2, 0x4, 0x5, 0x6, 0xC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
byte_8071EF0:
	.byte 0x0, 0xFF, 0x2, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_8071F00:
	.byte 0x0, 0x1, 0x2, 0x3, 0xFF, 0x5, 0x8, 0x9, 0xC, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_8071F10:
	.byte 0x13, 0x13, 0x13
byte_8071F13:
	.byte 0x21, 0x21, 0x21, 0x0, 0x0
byte_8071F18:
	ms_set_event_flag_range byte1=0x18 event16_2=EVENT_1650
	ms_set_event_flag_range byte1=0x30 event16_2=EVENT_1670
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F6
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x1F destination3=mapscript_8071F45
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_8071F6B
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_8071FD3
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x8F destination3=byte_8072015
	ms_jump destination1=byte_8072072

mapscript_8071F45:
	ms_jump_if_progress_in_range byte1=0x11 byte2=0x11 destination3=byte_8071F51
	ms_jump destination1=byte_8072072

byte_8071F51:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_540 destination4=byte_8072072
	ms_write_word ptr1=unk_2011EB0 word5=0x08050002
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_jump destination1=byte_8072072

mapscript_8071F6B:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_2B destination4=mapscript_8071F88
	ms_run_secondary_continuous_map_script ptr2=mapscript_80723C6
	ms_jump_if_map_group_equals_last_map_group destination2=mapscript_8071F88
	ms_call_native_function ptr1=sub_8072BA4+1 word5=0x00000000

mapscript_8071F88:
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=mapscript_8071F9B
	ms_jump_if_progress_in_range byte1=0x22 byte2=0x24 destination3=mapscript_8071FA0
	ms_jump destination1=byte_8072072

mapscript_8071F9B:
	ms_jump destination1=byte_8072072

mapscript_8071FA0:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_8072072
	ms_call_native_function ptr1=sub_8142510+1 word5=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_618 destination4=byte_8072072
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_686 destination4=byte_8072072
	ms_write_word ptr1=unk_2011EB8 word5=0x08053B01
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F6
	ms_jump destination1=byte_8072072

mapscript_8071FD3:
	ms_jump_if_progress_in_range byte1=0x56 byte2=0x56 destination3=mapscript_8071FDF
	ms_jump destination1=byte_8072072

mapscript_8071FDF:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_D31 destination4=mapscript_8071FF0
	ms_call_native_function ptr1=sub_8143978+1 word5=0x00000000

mapscript_8071FF0:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C68 destination4=byte_8072072
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C69 destination4=byte_8072072
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C69
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_8092B24 word5=0x00000000
	ms_jump destination1=byte_8072072

byte_8072015:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=dword_8072028
	ms_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=dword_8072028
	ms_jump destination1=byte_8072072

dword_8072028:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_EA9 destination4=byte_807204D
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_EAA destination4=byte_807204D
	ms_set_event_flag byte1=0xFF event16_2=EVENT_EAA
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000073
	ms_jump destination1=byte_8072072

byte_807204D:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_EAB destination4=byte_8072072
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_EAC destination4=byte_8072072
	ms_set_event_flag byte1=0xFF event16_2=EVENT_EAC
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000074
	ms_jump destination1=byte_8072072

byte_8072072:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11BD destination4=mapscript_8072097
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C2 destination4=mapscript_8072097
	ms_set_event_flag byte1=0xFF event16_2=EVENT_11C2
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000035
	ms_jump destination1=dword_80720BC

mapscript_8072097:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11BE destination4=dword_80720BC
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C3 destination4=dword_80720BC
	ms_set_event_flag byte1=0xFF event16_2=EVENT_11C3
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000036
	ms_jump destination1=dword_80720BC

dword_80720BC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1E1 destination4=byte_8072220
	ms_jump_if_battle_result_not_equal byte1=0x01 destination2=mapscript_8072207
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_209 destination4=mapscript_80720EA
	ms_set_event_flag byte1=0xFF event16_2=EVENT_209
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF0032
	ms_jump destination1=byte_8072220

mapscript_80720EA:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_20A destination4=mapscript_807210A
	ms_set_event_flag byte1=0xFF event16_2=EVENT_20A
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF0033
	ms_jump destination1=byte_8072220

mapscript_807210A:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_20B destination4=mapscript_807212A
	ms_set_event_flag byte1=0xFF event16_2=EVENT_20B
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF0034
	ms_jump destination1=byte_8072220

mapscript_807212A:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_20C destination4=mapscript_807214A
	ms_set_event_flag byte1=0xFF event16_2=EVENT_20C
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF0035
	ms_jump destination1=byte_8072220

mapscript_807214A:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_20D destination4=mapscript_807216A
	ms_set_event_flag byte1=0xFF event16_2=EVENT_20D
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF0036
	ms_jump destination1=byte_8072220

mapscript_807216A:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_20E destination4=mapscript_807218A
	ms_set_event_flag byte1=0xFF event16_2=EVENT_20E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF0037
	ms_jump destination1=byte_8072220

mapscript_807218A:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_20F destination4=mapscript_80721AA
	ms_set_event_flag byte1=0xFF event16_2=EVENT_20F
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF0038
	ms_jump destination1=byte_8072220

mapscript_80721AA:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_210 destination4=mapscript_80721CA
	ms_set_event_flag byte1=0xFF event16_2=EVENT_210
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF0039
	ms_jump destination1=byte_8072220

mapscript_80721CA:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_211 destination4=mapscript_80721EA
	ms_set_event_flag byte1=0xFF event16_2=EVENT_211
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=byte_80990B8 word5=0x00FF003A
	ms_jump destination1=byte_8072220

mapscript_80721EA:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_1E1
	ms_clear_event_flag_range byte1=0x0A event16_2=EVENT_208
	ms_set_event_flag byte1=0xFF event16_2=EVENT_1E2
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000056
	ms_jump destination1=byte_8072220

mapscript_8072207:
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_1E1
	ms_clear_event_flag_range byte1=0x0A event16_2=EVENT_208
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000057
	ms_jump destination1=byte_8072220

byte_8072220:
	ms_end

byte_8072221:
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x1F destination3=byte_8072242
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_8072279
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_8072302
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x8F destination3=mapscript_8072324
	ms_jump destination1=byte_8072373

byte_8072242:
	ms_jump_if_progress_in_range byte1=0x11 byte2=0x11 destination3=mapscript_807224E
	ms_jump destination1=byte_8072373

mapscript_807224E:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1CA1 destination4=mapscript_807225F
	ms_start_cutscene ptr1=byte_8098BB8 word5=0x00010214

mapscript_807225F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_540 destination4=byte_8072373
	ms_write_word ptr1=unk_2011EB0 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F4
	ms_jump destination1=byte_8072373

mapscript_8072279:
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=byte_8072293
	ms_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=mapscript_80722B1
	ms_jump_if_progress_in_range byte1=0x23 byte2=0x24 destination3=mapscript_80722D3
	ms_jump destination1=byte_8072373

byte_8072293:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_63F destination4=byte_8072373
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_63B destination4=byte_8072373
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0049
	ms_jump destination1=byte_8072373

mapscript_80722B1:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_613 destination4=mapscript_80722D3
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_614 destination4=mapscript_80722D3
	ms_set_event_flag byte1=0xFF event16_2=EVENT_614
	ms_start_cutscene ptr1=cutscenescript_8088084 word5=0x00000000
	ms_jump destination1=byte_8072373

mapscript_80722D3:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_8072373
	ms_call_native_function ptr1=sub_8142618+1 word5=0x00000000
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_686 destination4=byte_8072373
	ms_write_word ptr1=unk_2011EB8 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F6
	ms_jump destination1=byte_8072373

mapscript_8072302:
	ms_jump_if_progress_in_range byte1=0x56 byte2=0x56 destination3=mapscript_807230E
	ms_jump destination1=byte_8072373

mapscript_807230E:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_D31 destination4=byte_8072373
	ms_call_native_function ptr1=sub_8143A54+1 word5=0x00000000
	ms_jump destination1=byte_8072373

mapscript_8072324:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_8072337
	ms_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=mapscript_8072337
	ms_jump destination1=byte_8072373

mapscript_8072337:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_EA9 destination4=mapscript_8072355
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_EAA destination4=mapscript_8072355
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00AF
	ms_jump destination1=byte_8072373

mapscript_8072355:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_EAB destination4=byte_8072373
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_EAC destination4=byte_8072373
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00B0
	ms_jump destination1=byte_8072373

byte_8072373:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C2 destination4=mapscript_8072391
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11BD destination4=mapscript_8072391
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00EE
	ms_jump destination1=mapscript_80723AF

mapscript_8072391:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C3 destination4=mapscript_80723AF
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11BE destination4=mapscript_80723AF
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00EF
	ms_jump destination1=mapscript_80723AF

mapscript_80723AF:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1E1 destination4=mapscript_80723C5
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF0031
	ms_jump destination1=mapscript_80723C5

mapscript_80723C5:
	ms_end

mapscript_80723C6:
	ms_call_native_function ptr1=sub_8072B70+1 word5=0x00000000
	ms_end

byte_80723D0:
	ms_set_event_flag_range byte1=0x18 event16_2=EVENT_1650
	ms_set_event_flag_range byte1=0x30 event16_2=EVENT_1670
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_80723F2
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_807243D
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x8F destination3=mapscript_807247F
	ms_jump destination1=mapscript_80724B7

mapscript_80723F2:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_2B destination4=mapscript_807240F
	ms_run_secondary_continuous_map_script ptr2=byte_80726B6
	ms_jump_if_map_group_equals_last_map_group destination2=mapscript_807240F
	ms_call_native_function ptr1=sub_8072BA4+1 word5=0x00000001

mapscript_807240F:
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=mapscript_8072422
	ms_jump_if_progress_in_range byte1=0x22 byte2=0x24 destination3=mapscript_8072427
	ms_jump destination1=mapscript_80724B7

mapscript_8072422:
	ms_jump destination1=mapscript_80724B7

mapscript_8072427:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=mapscript_80724B7
	ms_call_native_function ptr1=sub_8142510+1 word5=0x00000000
	ms_jump destination1=mapscript_80724B7

mapscript_807243D:
	ms_jump_if_progress_in_range byte1=0x56 byte2=0x56 destination3=byte_8072449
	ms_jump destination1=mapscript_80724B7

byte_8072449:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_D31 destination4=mapscript_807245A
	ms_call_native_function ptr1=sub_8143978+1 word5=0x00000000

mapscript_807245A:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C64 destination4=mapscript_80724B7
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C65 destination4=mapscript_80724B7
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C65
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=cutscenescript_8092940 word5=0x00000000
	ms_jump destination1=mapscript_80724B7

mapscript_807247F:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_8072492
	ms_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=mapscript_8072492
	ms_jump destination1=mapscript_80724B7

mapscript_8072492:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_EAD destination4=mapscript_80724B7
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_EAE destination4=mapscript_80724B7
	ms_set_event_flag byte1=0xFF event16_2=EVENT_EAE
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000075
	ms_jump destination1=mapscript_80724B7

mapscript_80724B7:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_117C destination4=mapscript_80724DC
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_117D destination4=mapscript_80724DC
	ms_set_event_flag byte1=0xFF event16_2=EVENT_117D
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000012
	ms_jump destination1=byte_807254B

mapscript_80724DC:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11BA destination4=byte_8072501
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1216 destination4=byte_8072501
	ms_set_event_flag byte1=0xFF event16_2=EVENT_1216
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000017
	ms_jump destination1=byte_807254B

byte_8072501:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1132 destination4=mapscript_8072526
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1133 destination4=mapscript_8072526
	ms_set_event_flag byte1=0xFF event16_2=EVENT_1133
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000024
	ms_jump destination1=byte_807254B

mapscript_8072526:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11BF destination4=byte_807254B
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C4 destination4=byte_807254B
	ms_set_event_flag byte1=0xFF event16_2=EVENT_11C4
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000037
	ms_jump destination1=byte_807254B

byte_807254B:
	ms_end

byte_807254C:
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=mapscript_807256D
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_80725A3
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=mapscript_80725EA
	ms_jump_if_progress_in_range byte1=0x60 byte2=0x8F destination3=byte_807260C
	ms_jump destination1=byte_807263D

mapscript_807256D:
	ms_jump_if_progress_in_range byte1=0x01 byte2=0x01 destination3=byte_8072579
	ms_jump destination1=byte_807263D

byte_8072579:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_419 destination4=byte_807263D
	ms_jump_if_flag_range_clear byte1=0x03 event16_2=EVENT_46E destination4=byte_807263D
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_41A destination4=byte_807263D
	ms_set_event_flag byte1=0xFF event16_2=EVENT_41A
	ms_start_cutscene ptr1=cutscenescript_8081D50 word5=0x00000000
	ms_jump destination1=byte_807263D

mapscript_80725A3:
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=mapscript_80725B6
	ms_jump_if_progress_in_range byte1=0x22 byte2=0x24 destination3=mapscript_80725D4
	ms_jump destination1=byte_807263D

mapscript_80725B6:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_640 destination4=byte_807263D
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_63C destination4=byte_807263D
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF004A
	ms_jump destination1=byte_807263D

mapscript_80725D4:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_807263D
	ms_call_native_function ptr1=sub_8142618+1 word5=0x00000000
	ms_jump destination1=byte_807263D

mapscript_80725EA:
	ms_jump_if_progress_in_range byte1=0x56 byte2=0x56 destination3=mapscript_80725F6
	ms_jump destination1=byte_807263D

mapscript_80725F6:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_D31 destination4=byte_807263D
	ms_call_native_function ptr1=sub_8143A54+1 word5=0x00000000
	ms_jump destination1=byte_807263D

byte_807260C:
	ms_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=mapscript_807261F
	ms_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=mapscript_807261F
	ms_jump destination1=byte_807263D

mapscript_807261F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_EAD destination4=byte_807263D
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_EAE destination4=byte_807263D
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00B1
	ms_jump destination1=byte_807263D

byte_807263D:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_117D destination4=mapscript_807265B
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_117C destination4=mapscript_807265B
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00CA
	ms_jump destination1=mapscript_80726B5

mapscript_807265B:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1216 destination4=mapscript_8072679
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11BA destination4=mapscript_8072679
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00CE
	ms_jump destination1=mapscript_80726B5

mapscript_8072679:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_1133 destination4=mapscript_8072697
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_1132 destination4=mapscript_8072697
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00DD
	ms_jump destination1=mapscript_80726B5

mapscript_8072697:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C4 destination4=mapscript_80726B5
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11BF destination4=mapscript_80726B5
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00F0
	ms_jump destination1=mapscript_80726B5

mapscript_80726B5:
	ms_end

byte_80726B6:
	ms_call_native_function ptr1=sub_8072B70+1 word5=0x00000001
	ms_end

byte_80726C0:
	ms_set_event_flag_range byte1=0x18 event16_2=EVENT_1650
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F7
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F8
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_126 destination4=dword_80726D8
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F6

dword_80726D8:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_CDB destination4=byte_80726FA
	ms_write_word ptr1=unk_2011EBC word5=0x08010A02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F7
	ms_write_word ptr1=unk_2011EC0 word5=0x08070A02
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F8

byte_80726FA:
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_807270D
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=byte_8072867
	ms_jump destination1=byte_8072891

mapscript_807270D:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_2B destination4=mapscript_807272F
	ms_run_secondary_continuous_map_script ptr2=mapscript_8072B3E
	ms_load_gfx_anim ptr1=byte_8071B00
	ms_jump_if_map_group_equals_last_map_group destination2=mapscript_807272F
	ms_call_native_function ptr1=sub_8072BA4+1 word5=0x00000002

mapscript_807272F:
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x20 destination3=mapscript_807275E
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=mapscript_8072786
	ms_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=byte_807278B
	ms_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=mapscript_80727EC
	ms_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=mapscript_8072829
	ms_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=mapscript_807283F
	ms_jump destination1=byte_8072891

mapscript_807275E:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_601 destination4=byte_8072891
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_602 destination4=byte_8072891
	ms_set_event_flag byte1=0xFF event16_2=EVENT_602
	ms_set_enter_map_screen_fade byte1=0x1C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_80872A4 word5=0x00000000
	ms_jump destination1=byte_8072891

mapscript_8072786:
	ms_jump destination1=byte_8072891

byte_807278B:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=mapscript_807279C
	ms_call_native_function ptr1=sub_8142510+1 word5=0x00000000

mapscript_807279C:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_60F destination4=dword_80727C4
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_610 destination4=dword_80727C4
	ms_set_event_flag byte1=0xFF event16_2=EVENT_610
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8087A08 word5=0x00000000
	ms_jump destination1=byte_8072891

dword_80727C4:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_62D destination4=byte_8072891
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_62E destination4=byte_8072891
	ms_set_event_flag byte1=0xFF event16_2=EVENT_62E
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_808907C word5=0x00000000
	ms_jump destination1=byte_8072891

mapscript_80727EC:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_616 destination4=byte_8072802
	ms_call_native_function ptr1=sub_8035450+1 word5=0x00000000
	ms_jump destination1=mapscript_8072813

byte_8072802:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_61A destination4=mapscript_8072813
	ms_call_native_function ptr1=sub_8035450+1 word5=0x00000001

mapscript_8072813:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_8072891
	ms_call_native_function ptr1=sub_8142510+1 word5=0x00000000
	ms_jump destination1=byte_8072891

mapscript_8072829:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_8072891
	ms_call_native_function ptr1=sub_8142510+1 word5=0x00000000
	ms_jump destination1=byte_8072891

mapscript_807283F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_629 destination4=byte_8072891
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_62A destination4=byte_8072891
	ms_set_event_flag byte1=0xFF event16_2=EVENT_62A
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_write_eStruct2001c04_byte byte1=0x04 byte2=0x63
	ms_start_cutscene ptr1=cutscenescript_8088B40 word5=0x00000000
	ms_jump destination1=byte_8072891

byte_8072867:
	ms_jump_if_progress_in_range byte1=0x56 byte2=0x56 destination3=mapscript_807287A
	ms_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=mapscript_807288C
	ms_jump destination1=byte_8072891

mapscript_807287A:
	ms_write_word ptr1=unk_2011EB8 word5=0x08050102
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F6
	ms_jump destination1=byte_8072891

mapscript_807288C:
	ms_jump destination1=byte_8072891

byte_8072891:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11C0 destination4=mapscript_80728B6
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C5 destination4=mapscript_80728B6
	ms_set_event_flag byte1=0xFF event16_2=EVENT_11C5
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000038
	ms_jump destination1=mapscript_80728DB

mapscript_80728B6:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11C1 destination4=mapscript_80728DB
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C6 destination4=mapscript_80728DB
	ms_set_event_flag byte1=0xFF event16_2=EVENT_11C6
	ms_set_enter_map_screen_fade byte1=0x0C byte2=0xFF
	ms_start_cutscene ptr1=byte_8099CEC word5=0x00000039
	ms_jump destination1=mapscript_80728DB

mapscript_80728DB:
	ms_end

byte_80728DC:
	ms_jump_if_progress_in_range byte1=0x00 byte2=0x0F destination3=mapscript_80728FD
	ms_jump_if_progress_in_range byte1=0x10 byte2=0x1F destination3=mapscript_8072933
	ms_jump_if_progress_in_range byte1=0x20 byte2=0x2F destination3=mapscript_8072969
	ms_jump_if_progress_in_range byte1=0x50 byte2=0x5F destination3=byte_8072A8A
	ms_jump destination1=byte_8072B01

mapscript_80728FD:
	ms_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=byte_8072909
	ms_jump destination1=byte_8072B01

byte_8072909:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_482 destination4=byte_8072B01
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_441 destination4=byte_8072B01
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_442 destination4=byte_8072B01
	ms_set_event_flag byte1=0xFF event16_2=EVENT_442
	ms_start_cutscene ptr1=cutscenescript_8083454 word5=0x00000000
	ms_jump destination1=byte_8072B01

mapscript_8072933:
	ms_jump_if_progress_in_range byte1=0x11 byte2=0x11 destination3=mapscript_807293F
	ms_jump destination1=byte_8072B01

mapscript_807293F:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_545 destination4=byte_8072B01
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_509 destination4=byte_8072B01
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_50A destination4=byte_8072B01
	ms_set_event_flag byte1=0xFF event16_2=EVENT_50A
	ms_start_cutscene ptr1=cutscenescript_80847A8 word5=0x00000000
	ms_jump destination1=byte_8072B01

mapscript_8072969:
	ms_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=byte_8072991
	ms_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=mapscript_80729CD
	ms_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=mapscript_80729E3
	ms_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=mapscript_8072A4B
	ms_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=byte_8072A61
	ms_jump destination1=byte_8072B01

byte_8072991:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_641 destination4=mapscript_80729AF
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_63D destination4=mapscript_80729AF
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF004B
	ms_jump destination1=byte_8072B01

mapscript_80729AF:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_642 destination4=byte_8072B01
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_63E destination4=byte_8072B01
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF004C
	ms_jump destination1=byte_8072B01

mapscript_80729CD:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_8072B01
	ms_call_native_function ptr1=sub_8142618+1 word5=0x00000000
	ms_jump destination1=byte_8072B01

mapscript_80729E3:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x12 signedbyte2=0x00 destination3=mapscript_8072A0C
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_615 destination4=mapscript_8072A0C
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_616 destination4=mapscript_8072A0C
	ms_set_event_flag byte1=0xFF event16_2=EVENT_616
	ms_start_cutscene ptr1=cutscenescript_8088114 word5=0x00000000
	ms_jump destination1=byte_8072B01

mapscript_8072A0C:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x11 signedbyte2=0x00 destination3=mapscript_8072A35
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_619 destination4=mapscript_8072A35
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_61A destination4=mapscript_8072A35
	ms_set_event_flag byte1=0xFF event16_2=EVENT_61A
	ms_start_cutscene ptr1=cutscenescript_8088324 word5=0x00000000
	ms_jump destination1=byte_8072B01

mapscript_8072A35:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_8072B01
	ms_call_native_function ptr1=sub_8142618+1 word5=0x00000000
	ms_jump destination1=byte_8072B01

mapscript_8072A4B:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_741 destination4=byte_8072B01
	ms_call_native_function ptr1=sub_8142618+1 word5=0x00000000
	ms_jump destination1=byte_8072B01

byte_8072A61:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x10 signedbyte2=0x00 destination3=byte_8072B01
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_627 destination4=byte_8072B01
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_628 destination4=byte_8072B01
	ms_set_event_flag byte1=0xFF event16_2=EVENT_628
	ms_start_cutscene ptr1=cutscenescript_8088AD4 word5=0x00000000
	ms_jump destination1=byte_8072B01

byte_8072A8A:
	ms_jump_if_progress_in_range byte1=0x51 byte2=0x51 destination3=mapscript_8072AA4
	ms_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=byte_8072AD3
	ms_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=mapscript_8072AFC
	ms_jump destination1=byte_8072B01

mapscript_8072AA4:
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_CDB destination4=byte_8072B01
	ms_write_word ptr1=unk_2011EBC word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F7
	ms_write_word ptr1=unk_2011EC0 word5=0x00000000
	ms_clear_event_flag byte1=0xFF event16_2=EVENT_16F8
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F7
	ms_set_event_flag byte1=0xFF event16_2=EVENT_16F8
	ms_jump destination1=byte_8072B01

byte_8072AD3:
	ms_coordinate_trigger_not_equal_cmd_8035b44 byte1=0x12 signedbyte2=0x00 destination3=byte_8072B01
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_C25 destination4=byte_8072B01
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_C26 destination4=byte_8072B01
	ms_set_event_flag byte1=0xFF event16_2=EVENT_C26
	ms_start_cutscene ptr1=byte_8091D08 word5=0x00000000
	ms_jump destination1=byte_8072B01

mapscript_8072AFC:
	ms_jump destination1=byte_8072B01

byte_8072B01:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C5 destination4=mapscript_8072B1F
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11C0 destination4=mapscript_8072B1F
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00F1
	ms_jump destination1=mapscript_8072B3D

mapscript_8072B1F:
	ms_jump_if_flag_set byte1=0xFF event16_2=EVENT_11C6 destination4=mapscript_8072B3D
	ms_jump_if_flag_clear byte1=0xFF event16_2=EVENT_11C1 destination4=mapscript_8072B3D
	ms_start_cutscene ptr1=byte_80990B8 word5=0x01FF00F2
	ms_jump destination1=mapscript_8072B3D

mapscript_8072B3D:
	ms_end

mapscript_8072B3E:
	ms_call_native_function ptr1=sub_8072B54+1 word5=0x00000000
	ms_call_native_function ptr1=sub_8072B70+1 word5=0x00000002
	ms_end
	ms_end
	ms_end
	ms_end

thumb_local_start
sub_8072B54:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_S2001c04_Ptr]
	ldr r0, [r5,#0x38]
	add r0, #1
	cmp r0, #0xa
	blt loc_8072B6C
	mov r0, #0
	mov r1, #4
	bl sub_80302C0
	mov r0, #0
loc_8072B6C:
	str r0, [r5,#0x38]
	pop {r4-r7,pc}
	thumb_func_end sub_8072B54

	thumb_local_start
sub_8072B70:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_S2001c04_Ptr]
	mov r4, r0
	bl sub_8034C36
	beq locret_8072BA0
	ldr r0, [r5,#0x3c]
	sub r0, #1
	blt loc_8072B88
	str r0, [r5,#0x3c]
	b locret_8072BA0
loc_8072B88:
	lsl r4, r4, #1
	bl GetRNG // () -> u32?
	ldr r1, dword_8072BB4 // =0x1ff 
	and r0, r1
	ldr r1, off_8072BB8 // =0x258 
	add r0, r0, r1
	str r0, [r5,#0x3c]
	ldr r0, off_8072BBC // =byte_8072BC0 
	ldrh r0, [r0,r4]
	bl PlaySoundEffect
locret_8072BA0:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8072B70

	thumb_local_start
sub_8072BA4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_S2001c04_Ptr]
	mov r0, #0x10
	str r0, [r5,#0x3c]
	mov r0, #0
	str r0, [r5,#0x38]
	// <endpool>
	pop {r4-r7,pc}
	thumb_func_end sub_8072BA4

dword_8072BB4:
	.word 0x1FF
off_8072BB8:
	.word 0x258
off_8072BBC:
	.word byte_8072BC0
byte_8072BC0:
	.byte 0xD6, 0x1, 0xD5, 0x1, 0x93, 0x1, 0x0, 0x0
off_8072BC8:
	.word byte_8072C3C
	.word byte_8072DB9
	.word byte_8072EB9
	.word byte_8073015
	.word byte_807315E
	.word dword_80731FC
	.word byte_8073299
	.word byte_80732DE
	.word byte_8073327
	.word byte_80733AA
	.word byte_807342D
	.word byte_807347A
	.word byte_807349E
	.word byte_80734B9
	.word byte_80734CB
	.word byte_80734DD
	.word byte_80734EF
	.word 0x000000FF
off_8072C10::
	.word byte_8073502
	.word byte_8073517
	.word byte_807352C
	.word byte_8073541
	.word byte_8073556
	.word byte_807356B
	.word byte_8073580
	.word byte_8073595
	.word byte_80735AA
	.word byte_80735BF
	.word 0x000000FF
byte_8072C3C::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3E
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=npcscript_8072D7D
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_8072D7D
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=byte_8072D24
	ns_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=npcscript_8072D98
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8072D6D
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_8072D37
	ns_jump_if_progress_in_range byte1=0x43 byte2=0x46 destination3=byte_8072D5A
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x42 destination3=npcscript_8072D47
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_8072D11
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x31 destination3=npcscript_8072CFF
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x23 destination3=byte_8072CDD
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=byte_8072D24
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=npcscript_8072CCC
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_8072CBC
	ns_jump_if_progress_in_range byte1=0x01 byte2=0x05 destination3=byte_8072CA9
	ns_free_and_end

byte_8072CA9::
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFF0 hword3=0x0050 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x06 destination4=byte_809F6EC

npcscript_8072CBC:
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0x0118 hword3=0xFFB6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072CCC:
	ns_set_text_script_index byte1=0x1A
	ns_do_not_face_player_when_interacted
	ns_set_coords hword1=0x00DC hword3=0xFFB6 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8072CDD::
	ns_jump_if_flag_set event16_1=EVENT_618 destination3=byte_8072DB8
	ns_jump_if_flag_clear event16_1=EVENT_612 destination3=byte_8072D24
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0xFF30 hword3=0x006E hword5=0x0000
	ns_set_animation byte1=0x29
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072CFF:
	ns_set_sprite byte1=0x57
	ns_set_text_script_index byte1=0x5B
	ns_set_coords hword1=0x012A hword3=0xFFA6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072D11:
	ns_set_sprite byte1=0x3E
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x66
	ns_set_coords hword1=0x0154 hword3=0xFF70 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8072D24::
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0xFF92 hword3=0x00AE hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x10 destination4=byte_809F71C

npcscript_8072D37:
	ns_set_text_script_index byte1=0x2A
	ns_set_coords hword1=0x011E hword3=0xFF7E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072D47:
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x00B0 hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x10 destination4=byte_809F6EC

byte_8072D5A::
	ns_set_text_script_index byte1=0x0B
	ns_set_coords hword1=0xFF10 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x20 destination4=byte_809F6EC

npcscript_8072D6D:
	ns_set_text_script_index byte1=0x2F
	ns_set_coords hword1=0x013A hword3=0xFF6C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072D7D:
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=byte_8072DA8
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x00B2 hword3=0xFFCE hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072D98:
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x1E
	ns_set_coords hword1=0x011E hword3=0xFF7E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8072DA8::
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x24
	ns_set_coords hword1=0x011E hword3=0xFF9A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8072DB8::
	ns_free_and_end

byte_8072DB9::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=npcscript_8072E9A
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_8072E9A
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=npcscript_8072E47
	ns_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=byte_8072E84
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=npcscript_8072E72
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x23 destination3=npcscript_8072E25
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=npcscript_8072E60
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=byte_8072E12
	ns_jump_if_progress_in_range byte1=0x01 byte2=0x01 destination3=npcscript_8072DFC
	ns_free_and_end

npcscript_8072DFC:
	ns_set_collision_radius byte1=0x08
	ns_shift_center signedbyte1=-0x08 signedbyte2=0x00 signedbyte3=0x00
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x0168 hword3=0x0014 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8072E12::
	ns_set_sprite byte1=0x3F
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x1B
	ns_set_coords hword1=0x0118 hword3=0xFFB6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072E25:
	ns_jump_if_flag_set event16_1=EVENT_618 destination3=byte_8072EB8
	ns_jump_if_flag_clear event16_1=EVENT_612 destination3=byte_8072EB8
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x35
	ns_set_coords hword1=0xFFB2 hword3=0x006E hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072E47:
	ns_jump_if_flag_set event16_1=EVENT_858 destination3=byte_8072EB8
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index byte1=0x5E
	ns_set_coords hword1=0x0120 hword3=0xFF8C hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072E60:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x004E hword3=0xFFD0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072E72:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0x00B0 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F7E4

byte_8072E84::
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x23
	ns_set_coords hword1=0x00B0 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072E9A:
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=byte_8072EB8
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0xFFE2 hword3=0x003C hword5=0x0000
	ns_set_animation byte1=0x03

npcscript_8072EAE:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_EAA destination3=npcscript_8072EAE
	ns_free_and_end

byte_8072EB8::
	ns_free_and_end

byte_8072EB9::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8072FF8
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_8072FF8
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x61 destination3=npcscript_8072FE6
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8072FD4
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_8072FB0
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x42 destination3=byte_8072FC2
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_8072F89
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=npcscript_8072F70
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x23 destination3=npcscript_8072F4C
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=byte_8072F9B
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=npcscript_8072F3A
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_8072F28
	ns_jump_if_progress_in_range byte1=0x01 byte2=0x05 destination3=npcscript_8072F16
	ns_free_and_end

npcscript_8072F16:
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0x0118 hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072F28:
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0x00D2 hword3=0x0014 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072F3A:
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x19
	ns_set_coords hword1=0xFF0E hword3=0x0072 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072F4C:
	ns_jump_if_flag_set event16_1=EVENT_618 destination3=npcscript_8073014
	ns_jump_if_flag_clear event16_1=EVENT_612 destination3=byte_8072F9B
	ns_set_sprite byte1=0x3E
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x33
	ns_set_coords hword1=0xFFEE hword3=0x0050 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072F70:
	ns_jump_if_flag_set event16_1=EVENT_858 destination3=npcscript_8073014
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x5C
	ns_set_coords hword1=0x0160 hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072F89:
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x65
	ns_set_coords hword1=0x0126 hword3=0xFFC2 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8072F9B::
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0x00D0 hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x08 destination4=byte_809F6EC

npcscript_8072FB0:
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x29
	ns_set_coords hword1=0x0162 hword3=0xFFC4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8072FC2::
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0x0118 hword3=0xFFB8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072FD4:
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x2E
	ns_set_coords hword1=0x0122 hword3=0xFFA6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8072FE6:
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x00D0 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8072FF8::
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=npcscript_8073014
	ns_set_sprite byte1=0x45
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0xFFC2 hword3=0x007E hword5=0x0000
	ns_set_animation byte1=0x19
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073014:
	ns_free_and_end

byte_8073015::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=npcscript_8073119
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_8073119
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_8073106
	ns_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=byte_8073137
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_80730F6
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_80730BD
	ns_jump_if_progress_in_range byte1=0x43 byte2=0x46 destination3=npcscript_80730E3
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x42 destination3=byte_80730D0
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x31 destination3=npcscript_8073090
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x22 destination3=byte_80730A3
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_8073080
	ns_jump_if_progress_in_range byte1=0x01 byte2=0x05 destination3=byte_807306D
	ns_free_and_end

byte_807306D::
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0xFF2C hword3=0xFFB2 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x06 destination4=byte_809F6EC

npcscript_8073080:
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0xFF30 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073090:
	ns_set_text_script_index byte1=0x5A
	ns_set_coords hword1=0xFF90 hword3=0x0092 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x06 destination4=byte_809F71C

byte_80730A3::
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_807315D
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFF32 hword3=0x004E hword5=0x0000
	ns_set_animation byte1=0x07
	ns_init_movement byte1=0x07 byte2=0x06 byte3=0x06 destination4=npcscript_809F704

npcscript_80730BD:
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0xFFF2 hword3=0x00B2 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x14 destination4=byte_809F71C

byte_80730D0::
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFF0 hword3=0x008E hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x18 destination4=byte_809F71C

npcscript_80730E3:
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0xFFD0 hword3=0x0030 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x10 destination4=byte_809F6EC

npcscript_80730F6:
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0xFF72 hword3=0x0088 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073106:
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFF30 hword3=0xFF90 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x20 destination4=byte_809F6EC

npcscript_8073119:
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=byte_807314A
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0x00CE hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x05

npcscript_807312D:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_EAC destination3=npcscript_807312D
	ns_free_and_end

byte_8073137::
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x1F
	ns_set_coords hword1=0xFF30 hword3=0xFF90 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x20 destination4=byte_809F6EC

byte_807314A::
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x23
	ns_set_coords hword1=0xFF30 hword3=0xFF90 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x20 destination4=byte_809F6EC

npcscript_807315D:
	ns_free_and_end

byte_807315E::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x41
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=byte_80731E8
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=npcscript_80731D1
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x23 destination3=npcscript_80731AF
	ns_jump_if_progress_in_range byte1=0x11 byte2=0x11 destination3=npcscript_807317E
	ns_free_and_end

npcscript_807317E:
	ns_jump_if_flag_set event16_1=EVENT_542 destination3=byte_80731FB
	ns_jump_if_flag_set event16_1=EVENT_541 destination3=byte_807319F
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x0174 hword3=0xFF79 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x15 byte3=0x04 destination4=npcscript_809F770

byte_807319F::
	ns_set_text_script_index byte1=0x34
	ns_set_coords hword1=0x0154 hword3=0xFF6A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80731AF:
	ns_jump_if_flag_set event16_1=EVENT_618 destination3=byte_80731FB
	ns_jump_if_flag_clear event16_1=EVENT_612 destination3=byte_80731FB
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x34
	ns_set_coords hword1=0x014C hword3=0xFFB4 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80731D1:
	ns_jump_if_flag_set event16_1=EVENT_858 destination3=byte_80731FB
	ns_set_text_script_index byte1=0x5D
	ns_set_coords hword1=0x0146 hword3=0xFFA8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80731E8::
	ns_set_text_script_index byte1=0x64
	ns_set_coords hword1=0xFF10 hword3=0xFFB0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x15 destination4=byte_809F6EC

byte_80731FB::
	ns_free_and_end

dword_80731FC::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x22 byte2=0xFF destination3=byte_807322E
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=npcscript_807320C
	ns_free_and_end

npcscript_807320C:
	ns_jump_if_flag_set event16_1=EVENT_657 destination3=npcscript_8073214
	ns_free_and_end

npcscript_8073214:
	ns_jump_if_flag_set event16_1=EVENT_659 destination3=byte_8073298
	ns_set_sprite_with_category byte1=0x4C byte2=0x1C
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x0138 hword3=0xFFC4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_807322E::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3E
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_8073298
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_8073288
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8073290

npcscript_8073246:
	ns_jump_if_flag_set event16_1=EVENT_1C23 destination3=byte_8073298
	ns_jump_if_flag_set event16_1=EVENT_1BE3 destination3=byte_8073255
	ns_free_and_end

byte_8073255::
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_8073298
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_8073298
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_8073298
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8073298
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8073298
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x64
	ns_set_coords hword1=0x0088 hword3=0xFFC2 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073288:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_8073246
	ns_free_and_end

npcscript_8073290:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_8073246
	ns_free_and_end

byte_8073298::
	ns_free_and_end

byte_8073299::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x41
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x25 destination3=npcscript_80732DD
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=npcscript_80732C0
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x0168 hword3=0x0028 hword5=0x0000
	ns_set_collision_radius byte1=0x08
	ns_shift_center signedbyte1=-0x08 signedbyte2=0x00 signedbyte3=0x00
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80732C0:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_80732DD
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0A
	ns_set_coords hword1=0x0168 hword3=0x0028 hword5=0x0000
	ns_set_collision_radius byte1=0x08
	ns_shift_center signedbyte1=-0x08 signedbyte2=0x00 signedbyte3=0x00
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80732DD:
	ns_free_and_end

byte_80732DE::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=byte_807330C
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_80732F0
	ns_free_and_end

npcscript_80732F0:
	ns_jump_if_flag_set event16_1=EVENT_618 destination3=npcscript_80732F8
	ns_free_and_end

npcscript_80732F8:
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x37
	ns_set_coords hword1=0xFEB4 hword3=0xFFAC hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_jump_with_link destination1=byte_809F6CC

byte_807330C::
	ns_jump_if_flag_set event16_1=EVENT_858 destination3=npcscript_8073326
	ns_set_sprite byte1=0x45
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x52
	ns_set_coords hword1=0x015C hword3=0xFF7E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073326:
	ns_free_and_end

byte_8073327::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x44
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_80733A9
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=byte_8073399
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_80733A1

byte_807333F::
	ns_jump_if_flag_set event16_1=EVENT_11CC destination3=byte_80733A9
	ns_jump_if_flag_set event16_1=EVENT_11BC destination3=npcscript_807334E
	ns_free_and_end

npcscript_807334E:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_80733A9
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_80733A9
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_80733A9
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_80733A9
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_80733A9
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x6E
	ns_set_coords hword1=0x00D2 hword3=0xFF2E hword5=0x0000
	ns_set_animation byte1=0x03

npcscript_807337C:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11C7 destination3=npcscript_807337C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x70
	ns_give_attached_shadow
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_coords hword1=0x00D2 hword3=0xFF2E hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

byte_8073399::
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=byte_807333F
	ns_free_and_end

npcscript_80733A1:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=byte_807333F
	ns_free_and_end

byte_80733A9::
	ns_free_and_end

byte_80733AA::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x44
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_807342C
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_807341C
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8073424

npcscript_80733C2:
	ns_jump_if_flag_set event16_1=EVENT_11CC destination3=byte_807342C
	ns_jump_if_flag_set event16_1=EVENT_11BC destination3=byte_80733D1
	ns_free_and_end

byte_80733D1::
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_807342C
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_807342C
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_807342C
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_807342C
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_807342C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x73
	ns_set_coords hword1=0x0054 hword3=0x010C hword5=0x0000
	ns_set_animation byte1=0x05

byte_80733FF::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11C8 destination3=byte_80733FF
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x75
	ns_give_attached_shadow
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_coords hword1=0x0054 hword3=0x010C hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807341C:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_80733C2
	ns_free_and_end

npcscript_8073424:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_80733C2
	ns_free_and_end

byte_807342C::
	ns_free_and_end

byte_807342D::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x42
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x25 destination3=npcscript_8073479
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=npcscript_807345C
	ns_jump_if_progress_in_range byte1=0x02 byte2=0xFF destination3=npcscript_8073446
	ns_free_and_end

npcscript_8073446:
	ns_set_collision_radius byte1=0x08
	ns_shift_center signedbyte1=-0x08 signedbyte2=0x00 signedbyte3=0x00
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x78
	ns_set_coords hword1=0x0168 hword3=0x0014 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807345C:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_8073479
	ns_set_collision_radius byte1=0x08
	ns_shift_center signedbyte1=-0x08 signedbyte2=0x00 signedbyte3=0x00
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x78
	ns_set_coords hword1=0x0168 hword3=0x0014 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073479:
	ns_free_and_end

byte_807347A::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x30 destination3=npcscript_8073483
	ns_free_and_end

npcscript_8073483:
	ns_jump_if_flag_set event16_1=EVENT_858 destination3=npcscript_807349D
	ns_set_sprite byte1=0x46
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x50
	ns_set_coords hword1=0x014A hword3=0xFF7E hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807349D:
	ns_free_and_end

byte_807349E::
	ns_set_active_and_visible
	ns_jump_if_flag_clear event16_1=EVENT_1D7 destination3=npcscript_80734B8
	ns_set_sprite byte1=0x3D
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x32
	ns_set_coords hword1=0xFF90 hword3=0xFEF0 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80734B8:
	ns_free_and_end

byte_80734B9::
	ns_jump_if_flag_set event16_1=EVENT_7F0 destination3=byte_8073501
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1400
	ns_wait_mystery_data_taken hword1=0x1400
	ns_free_and_end

byte_80734CB::
	ns_jump_if_flag_set event16_1=EVENT_7F0 destination3=byte_8073501
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1401
	ns_wait_mystery_data_taken hword1=0x1401
	ns_free_and_end

byte_80734DD::
	ns_jump_if_flag_set event16_1=EVENT_7F0 destination3=byte_8073501
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1402
	ns_wait_mystery_data_taken hword1=0x1402
	ns_free_and_end

byte_80734EF::
	ns_jump_if_flag_set event16_1=EVENT_7F0 destination3=byte_8073501
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1403
	ns_wait_mystery_data_taken hword1=0x1403
	ns_free_and_end

byte_8073501::
	ns_free_and_end

byte_8073502::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0D98
	ns_set_animation byte1=0x03

npcscript_807350A:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_D98 destination3=npcscript_807350A
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073517::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0D99
	ns_set_animation byte1=0x03

byte_807351F::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_D99 destination3=byte_807351F
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_807352C::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0D9A
	ns_set_animation byte1=0x03

npcscript_8073534:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_D9A destination3=npcscript_8073534
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073541::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0D9B
	ns_set_animation byte1=0x03

npcscript_8073549:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_D9B destination3=npcscript_8073549
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073556::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0D9C
	ns_set_animation byte1=0x03

npcscript_807355E:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_D9C destination3=npcscript_807355E
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_807356B::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0D9D
	ns_set_animation byte1=0x03

byte_8073573::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_D9D destination3=byte_8073573
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073580::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0D9E
	ns_set_animation byte1=0x03

npcscript_8073588:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_D9E destination3=npcscript_8073588
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073595::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0D9F
	ns_set_animation byte1=0x03

npcscript_807359D:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_D9F destination3=npcscript_807359D
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_80735AA::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA0
	ns_set_animation byte1=0x03

npcscript_80735B2:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA0 destination3=npcscript_80735B2
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_80735BF::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA1
	ns_set_animation byte1=0x03

byte_80735C7::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA1 destination3=byte_80735C7
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

npcscript_list_80735D4::
	.word byte_80735DC
	.word 0x000000FF
byte_80735DC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x4D
	ns_set_coords hword1=0x0144 hword3=0xFF9C hword5=0x0000
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_give_detatched_shadow
	ns_init_native_callback ptr1=sub_8073EE4+1
	ns_init_native_callback ptr1=sub_8073EFC+1
	ns_pause byte1=0x5A
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_play_sound hword1=0x01C8
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

off_807360C::
	.word dword_807367C
	.word byte_8073817
	.word byte_807393F
	.word byte_80739D5
	.word byte_8073A86
	.word byte_8073ACB
	.word dword_8073B10
	.word byte_8073BA3
	.word byte_8073BC6
	.word byte_8073C31
	.word byte_8073C9C
	.word byte_8073D16
	.word byte_8073D90
	.word byte_8073DA2
	.word byte_8073DB4
	.word byte_8073DC6
	.word 0x000000FF
off_8073650::
	.word byte_8073DD9
	.word byte_8073DEE
	.word byte_8073E03
	.word byte_8073E18
	.word byte_8073E2D
	.word byte_8073E42
	.word npcscript_8073E57
	.word byte_8073E6C
	.word byte_8073E81
	.word byte_8073E96
	.word 0x000000FF
dword_807367C::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_80737D2
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_80737D2
	ns_jump_if_progress_in_range byte1=0x61 byte2=0x62 destination3=npcscript_80737BD
	ns_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=npcscript_80737EF
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=byte_80737A8
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_8073781
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x46 destination3=npcscript_8073793
	ns_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=npcscript_8073764
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_807374F
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_8073764
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x22 destination3=npcscript_8073733
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=npcscript_807370B
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=byte_80736F9
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_807371E
	ns_jump_if_progress_in_range byte1=0x01 byte2=0x04 destination3=npcscript_80736E7
	ns_free_and_end

npcscript_80736E7:
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFC6 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80736F9::
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x17
	ns_set_coords hword1=0x00F6 hword3=0xFFEC hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807370B:
	ns_set_sprite byte1=0x3E
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x19
	ns_set_coords hword1=0xFEB6 hword3=0x00F2 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807371E:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0x0048 hword3=0x00D8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x06 destination4=byte_809F71C

npcscript_8073733:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_8073816
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x0088 hword3=0x0076 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x10 destination4=byte_809F6EC

byte_807374F::
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x19
	ns_set_coords hword1=0x00EA hword3=0xFF36 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x10 destination4=byte_809F71C

npcscript_8073764:
	ns_jump_if_flag_set event16_1=EVENT_618 destination3=npcscript_8073816
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0x00EA hword3=0xFF36 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073781:
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x29
	ns_set_coords hword1=0xFF88 hword3=0xFEBA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073793:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0x008A hword3=0xFEF6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x10 destination4=byte_809F71C

byte_80737A8::
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x2E
	ns_set_coords hword1=0x00C8 hword3=0x009A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x08 destination4=byte_809F71C

npcscript_80737BD:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x06
	ns_set_coords hword1=0x0088 hword3=0xFED6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x10 destination4=byte_809F71C

byte_80737D2::
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=npcscript_8073801
	ns_set_sprite byte1=0x41
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x0F
	ns_set_coords hword1=0xFFE8 hword3=0xFEB8 hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80737EF:
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x16
	ns_set_coords hword1=0xFF88 hword3=0xFEBA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073801:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x06
	ns_set_coords hword1=0x0064 hword3=0xFEDA hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x10 destination4=byte_809F71C

npcscript_8073816:
	ns_free_and_end

byte_8073817::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=npcscript_80738FB
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_80738FB
	ns_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=npcscript_8073919
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=byte_80738E9
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_80738D5
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_80738B1
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x31 destination3=npcscript_807388D
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=byte_80738C3
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_807387B
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_807389F
	ns_jump_if_progress_in_range byte1=0x01 byte2=0x04 destination3=npcscript_8073866
	ns_free_and_end

npcscript_8073866:
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x0068 hword3=0x00F8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x06 destination4=byte_809F71C

npcscript_807387B:
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0xFF88 hword3=0x00D8 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807388D:
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index byte1=0x3C
	ns_set_coords hword1=0x00C8 hword3=0x009A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807389F:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0x007A hword3=0xFF26 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=npcscript_809F7F4

npcscript_80738B1:
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index byte1=0x41
	ns_set_coords hword1=0xFFA6 hword3=0xFE96 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80738C3::
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0x0068 hword3=0xFED8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80738D5:
	ns_set_sprite byte1=0x3F
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x28
	ns_set_coords hword1=0x00AC hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6B8

byte_80738E9::
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0x0068 hword3=0xFF38 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80738FB:
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=npcscript_807392D
	ns_set_sprite byte1=0x43
	ns_set_text_script_index byte1=0x10
	ns_set_coords hword1=0xFFC8 hword3=0xFEB8 hword5=0x0000
	ns_set_animation byte1=0x03

byte_807390F::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_EAE destination3=byte_807390F
	ns_free_and_end

npcscript_8073919:
	ns_set_sprite byte1=0x3F
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x15
	ns_set_coords hword1=0x00AC hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6B8

npcscript_807392D:
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x05
	ns_set_coords hword1=0xFF46 hword3=0x00F8 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_807393F::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_80739BF
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x46 destination3=npcscript_80739BF
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x22 destination3=npcscript_80739A3
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=byte_8073991
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_807397D
	ns_jump_if_progress_in_range byte1=0x01 byte2=0x04 destination3=npcscript_807396B
	ns_free_and_end

npcscript_807396B:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0xFEAC hword3=0x00D4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807397D:
	ns_set_sprite byte1=0x3E
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0x0006 hword3=0xFE9A hword5=0x0000
	ns_set_animation byte1=0x29
	ns_jump_with_link destination1=byte_809F6CC

byte_8073991::
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x1B
	ns_set_coords hword1=0xFFE8 hword3=0xFE98 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80739A3:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_80739D4
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF4C hword3=0x00B4 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x08 destination4=byte_809F71C

npcscript_80739BF:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x008A hword3=0x00D6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x20 destination4=byte_809F71C

npcscript_80739D4:
	ns_free_and_end

byte_80739D5::
	ns_jump_if_progress_in_range byte1=0x20 byte2=0xFF destination3=byte_8073A03
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_80739E4
	ns_free_and_end

npcscript_80739E4:
	ns_jump_if_flag_set event16_1=EVENT_440 destination3=npcscript_80739EC
	ns_free_and_end

npcscript_80739EC:
	ns_set_active_and_invisible
	ns_set_sprite byte1=0x3C
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x0A
	ns_set_coords hword1=0x00E6 hword3=0xFFDA hword5=0x0000

npcscript_80739F9:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_499 destination3=npcscript_80739F9
	ns_free_and_end

byte_8073A03::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x44
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_8073A85
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=byte_8073A75
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8073A7D

byte_8073A1B::
	ns_jump_if_flag_set event16_1=EVENT_11CC destination3=byte_8073A85
	ns_jump_if_flag_set event16_1=EVENT_11BC destination3=npcscript_8073A2A
	ns_free_and_end

npcscript_8073A2A:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_8073A85
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_8073A85
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_8073A85
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8073A85
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8073A85
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x2D
	ns_set_coords hword1=0x0030 hword3=0x0074 hword5=0x0000
	ns_set_animation byte1=0x05

npcscript_8073A58:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11C9 destination3=npcscript_8073A58
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x2F
	ns_give_attached_shadow
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_coords hword1=0x0030 hword3=0x0074 hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

byte_8073A75::
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=byte_8073A1B
	ns_free_and_end

npcscript_8073A7D:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=byte_8073A1B
	ns_free_and_end

byte_8073A85::
	ns_free_and_end

byte_8073A86::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3E
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x25 destination3=byte_8073ACA
	ns_jump_if_progress_in_range byte1=0x22 byte2=0x22 destination3=npcscript_8073AAD
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0xFEF0 hword3=0x00F4 hword5=0x0000
	ns_set_collision_radius byte1=0x08
	ns_shift_center signedbyte1=-0x08 signedbyte2=0x00 signedbyte3=0x00
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073AAD:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=byte_8073ACA
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x00
	ns_set_coords hword1=0xFEF0 hword3=0x00F4 hword5=0x0000
	ns_set_collision_radius byte1=0x08
	ns_shift_center signedbyte1=-0x08 signedbyte2=0x00 signedbyte3=0x00
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8073ACA::
	ns_free_and_end

byte_8073ACB::
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x4C byte2=0x1C
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=npcscript_8073ADE
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_8073AFD
	ns_free_and_end

npcscript_8073ADE:
	ns_jump_if_flag_set event16_1=EVENT_659 destination3=npcscript_8073AE6
	ns_free_and_end

npcscript_8073AE6:
	ns_jump_if_flag_set event16_1=EVENT_65D destination3=npcscript_8073B0F
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0xFFE8 hword3=0xFEB6 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073AFD:
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x11
	ns_set_coords hword1=0xFFCA hword3=0xFEB6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073B0F:
	ns_free_and_end

dword_8073B10::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=byte_8073B8D
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x31 destination3=npcscript_8073B78
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_8073B5A
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=npcscript_8073B48
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=byte_8073B35
	ns_free_and_end

byte_8073B35::
	ns_set_sprite byte1=0x40
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0x0006 hword3=0xFEB6 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073B48:
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x1A
	ns_set_coords hword1=0x0110 hword3=0x0034 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073B5A:
	ns_jump_if_flag_set event16_1=EVENT_618 destination3=npcscript_8073B62
	ns_free_and_end

npcscript_8073B62:
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x08
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0xFEAC hword3=0x0114 hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073B78:
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x3D
	ns_set_coords hword1=0x008A hword3=0xFED6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x10 byte3=0x06 destination4=byte_809F71C

byte_8073B8D::
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x42
	ns_set_coords hword1=0x0068 hword3=0x00F6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x10 byte3=0x15 destination4=byte_809F71C
	ns_free_and_end

byte_8073BA3::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x43
	ns_jump_if_progress_in_range byte1=0x20 byte2=0x25 destination3=npcscript_8073BC5
	ns_jump_if_progress_in_range byte1=0x10 byte2=0xFF destination3=byte_8073BB5
	ns_free_and_end

byte_8073BB5::
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x32
	ns_set_coords hword1=0x0032 hword3=0x0098 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073BC5:
	ns_free_and_end

byte_8073BC6::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x44
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_8073C30
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_8073C20
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8073C28

npcscript_8073BDE:
	ns_jump_if_flag_set event16_1=EVENT_117D destination3=byte_8073C30
	ns_jump_if_flag_set event16_1=EVENT_117A destination3=byte_8073BED
	ns_free_and_end

byte_8073BED::
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_8073C30
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_8073C30
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_8073C30
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8073C30
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8073C30
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x3C
	ns_set_coords hword1=0xFECC hword3=0x00AE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073C20:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_8073BDE
	ns_free_and_end

npcscript_8073C28:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_8073BDE
	ns_free_and_end

byte_8073C30::
	ns_free_and_end

byte_8073C31::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3E
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_8073C9B
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_8073C8B
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8073C93

npcscript_8073C49:
	ns_jump_if_flag_set event16_1=EVENT_117F destination3=byte_8073C9B
	ns_jump_if_flag_set event16_1=EVENT_117D destination3=npcscript_8073C58
	ns_free_and_end

npcscript_8073C58:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_8073C9B
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_8073C9B
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_8073C9B
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8073C9B
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8073C9B
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x40
	ns_set_coords hword1=0xFF06 hword3=0x00A8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073C8B:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_8073C49
	ns_free_and_end

npcscript_8073C93:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_8073C49
	ns_free_and_end

byte_8073C9B::
	ns_free_and_end

byte_8073C9C::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x43
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_8073D15
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_8073D05
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=byte_8073D0D

byte_8073CB4::
	ns_jump_if_flag_set event16_1=EVENT_11B9 destination3=npcscript_8073CBC
	ns_free_and_end

npcscript_8073CBC:
	ns_jump_if_flag_set event16_1=EVENT_1C34 destination3=byte_8073D15
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_8073D15
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_8073D15
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_8073D15
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8073D15
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8073D15
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x46
	ns_set_coords hword1=0x0168 hword3=0xFFB8 hword5=0x0040
	ns_set_animation byte1=0x07

npcscript_8073CF1:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11BB destination3=npcscript_8073CF1
	ns_give_attached_shadow
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073D05:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=byte_8073CB4
	ns_free_and_end

byte_8073D0D::
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=byte_8073CB4
	ns_free_and_end

byte_8073D15::
	ns_free_and_end

byte_8073D16::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x43
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_8073D8F
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_8073D7F
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8073D87

npcscript_8073D2E:
	ns_jump_if_flag_set event16_1=EVENT_11B9 destination3=npcscript_8073D36
	ns_free_and_end

npcscript_8073D36:
	ns_jump_if_flag_set event16_1=EVENT_1C34 destination3=byte_8073D8F
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_8073D8F
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_8073D8F
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_8073D8F
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8073D8F
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8073D8F
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x46
	ns_set_coords hword1=0x0168 hword3=0xFF98 hword5=0x0040
	ns_set_animation byte1=0x03

byte_8073D6B::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11BB destination3=byte_8073D6B
	ns_give_attached_shadow
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073D7F:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_8073D2E
	ns_free_and_end

npcscript_8073D87:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_8073D2E
	ns_free_and_end

byte_8073D8F::
	ns_free_and_end

byte_8073D90::
	ns_jump_if_flag_set event16_1=EVENT_7F1 destination3=npcscript_8073DD8
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1408
	ns_wait_mystery_data_taken hword1=0x1408
	ns_free_and_end

byte_8073DA2::
	ns_jump_if_flag_set event16_1=EVENT_7F1 destination3=npcscript_8073DD8
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1409
	ns_wait_mystery_data_taken hword1=0x1409
	ns_free_and_end

byte_8073DB4::
	ns_jump_if_flag_set event16_1=EVENT_7F1 destination3=npcscript_8073DD8
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x140A
	ns_wait_mystery_data_taken hword1=0x140A
	ns_free_and_end

byte_8073DC6::
	ns_jump_if_flag_set event16_1=EVENT_7F1 destination3=npcscript_8073DD8
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x140B
	ns_wait_mystery_data_taken hword1=0x140B
	ns_free_and_end

npcscript_8073DD8:
	ns_free_and_end

byte_8073DD9::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA2
	ns_set_animation byte1=0x03

npcscript_8073DE1:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA2 destination3=npcscript_8073DE1
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073DEE::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA3
	ns_set_animation byte1=0x03

npcscript_8073DF6:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA3 destination3=npcscript_8073DF6
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073E03::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA4
	ns_set_animation byte1=0x03

byte_8073E0B::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA4 destination3=byte_8073E0B
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073E18::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA5
	ns_set_animation byte1=0x03

npcscript_8073E20:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA5 destination3=npcscript_8073E20
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073E2D::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA6
	ns_set_animation byte1=0x03

npcscript_8073E35:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA6 destination3=npcscript_8073E35
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073E42::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA7
	ns_set_animation byte1=0x03

npcscript_8073E4A:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA7 destination3=npcscript_8073E4A
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

npcscript_8073E57:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA8
	ns_set_animation byte1=0x03

byte_8073E5F::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA8 destination3=byte_8073E5F
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073E6C::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DA9
	ns_set_animation byte1=0x03

npcscript_8073E74:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DA9 destination3=npcscript_8073E74
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073E81::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DAA
	ns_set_animation byte1=0x03

npcscript_8073E89:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DAA destination3=npcscript_8073E89
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end

byte_8073E96::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x3C
	ns_init_groundman_minigame_prog hword1=0x0DAB
	ns_set_animation byte1=0x03

npcscript_8073E9E:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_DAB destination3=npcscript_8073E9E
	ns_jack_out
	ns_wait_anim_frame byte1=0xC0
	ns_free_and_end
	ns_end

npcscript_8073EAC:
	.word byte_8073EB4
	.word 0x000000FF
byte_8073EB4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x4D
	ns_set_coords hword1=0xFFC6 hword3=0xFEBA hword5=0x0000
	ns_set_animation byte1=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_give_detatched_shadow
	ns_init_native_callback ptr1=sub_8073EE4+1
	ns_init_native_callback ptr1=sub_8073EFC+1
	ns_pause byte1=0x5A
	ns_give_detatched_shadow
	ns_init_hop byte1=0x60 byte2=0xDC
	ns_give_attached_shadow
	ns_play_sound hword1=0x01C8
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

	thumb_local_start
sub_8073EE4:
	push {r4-r7, lr}
	mov r7, r10
	ldr r7, [r7, #0x10]
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [r7, #0x74]
	mov r0, #1
	lsl r0, r0, #0xd
	str r0, [r7, #0x78]
	bl sub_809F904
	pop {r4-r7, pc}
	thumb_func_end sub_8073EE4


	thumb_local_start
sub_8073EFC::
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
	cmp r1, #0
	ble loc_8073F16
	pop {r4-r7,pc}
loc_8073F16::
	bl sub_809F904
	pop {r4-r7,pc}
	.balign 4, 0
	thumb_func_end sub_8073EFC

off_8073F1C::
	.word dword_8073F5C
	.word byte_807408B
	.word dword_8074188
	.word dword_8074258
	.word byte_8074319
	.word byte_807441B
	.word byte_807449E
	.word byte_8074521
	.word byte_80745A2
	.word byte_80746E2
	.word byte_8074767
	.word byte_80747AB
	.word byte_80747BD
	.word byte_80747CF
	.word byte_80747E1
	.word 0x000000FF
dword_8073F5C::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8074034
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_8074034
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_807401F
	ns_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=npcscript_807406A
	ns_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=byte_807404D
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x46 destination3=npcscript_807400A
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_8073FF3
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=npcscript_8073FCF
	ns_jump_if_progress_in_range byte1=0x11 byte2=0x12 destination3=byte_8073FA4
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_8073FE1
	ns_free_and_end

byte_8073FA4::
	ns_jump_if_flag_set event16_1=EVENT_508 destination3=npcscript_8073FBD
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x0136 hword3=0x008A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073FBD:
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x34
	ns_set_coords hword1=0x00E2 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073FCF:
	ns_set_sprite byte1=0x45
	ns_set_text_script_index byte1=0x1A
	ns_set_coords hword1=0xFF14 hword3=0xFF68 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073FE1:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0x00A8 hword3=0xFF56 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8073FF3:
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0xFF4A hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807400A:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0x0098 hword3=0xFF68 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x10 destination4=byte_809F6EC

npcscript_807401F:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0x0098 hword3=0xFF68 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x10 destination4=byte_809F6EC

byte_8074034::
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=byte_807408A
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x00A0 hword3=0xFFEE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_807404D::
	ns_jump_if_flag_clear event16_1=EVENT_C24 destination3=byte_807408A
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x17
	ns_set_coords hword1=0xFF58 hword3=0x0064 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807406A:
	ns_jump_if_flag_set event16_1=EVENT_C8F destination3=byte_807408A
	ns_jump_if_flag_clear event16_1=EVENT_C8B destination3=byte_807408A
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x07
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0078 hword3=0xFF28 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_807408A::
	ns_free_and_end

byte_807408B::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=npcscript_807414B
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=npcscript_807414B
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_8074139
	ns_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=byte_8074164
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x46 destination3=npcscript_8074127
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_8074110
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x22 destination3=npcscript_80740F7
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=byte_80740E5
	ns_jump_if_flag_set event16_1=EVENT_50A destination3=npcscript_8074187
	ns_jump_if_flag_set event16_1=EVENT_508 destination3=npcscript_80740D3
	ns_free_and_end

npcscript_80740D3:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x3C
	ns_set_coords hword1=0x0136 hword3=0x008A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80740E5::
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x1B
	ns_set_coords hword1=0x001C hword3=0xFED6 hword5=0x0010
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80740F7:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_8074187
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0x0074 hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074110:
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0xFF46 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074127:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF5A hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F7E4

npcscript_8074139:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0xFFDA hword3=0x0086 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F7E4

npcscript_807414B:
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=npcscript_8074187
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0x00B4 hword3=0xFFEE hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8074164::
	ns_jump_if_flag_set event16_1=EVENT_C8F destination3=npcscript_8074187
	ns_jump_if_flag_clear event16_1=EVENT_C8B destination3=npcscript_8074187
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x08
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0078 hword3=0xFF6A hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x06 destination4=byte_809F71C

npcscript_8074187:
	ns_free_and_end

dword_8074188::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_807421B
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_807421B
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x60 destination3=npcscript_8074209
	ns_jump_if_progress_in_range byte1=0x57 byte2=0x57 destination3=npcscript_8074237
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=byte_80741F2
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=npcscript_80741BB
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_80741DD
	ns_free_and_end

npcscript_80741BB:
	ns_jump_if_flag_set event16_1=EVENT_65D destination3=npcscript_80741C3
	ns_free_and_end

npcscript_80741C3:
	ns_jump_if_flag_set event16_1=EVENT_661 destination3=npcscript_8074257
	ns_set_sprite_with_category byte1=0x4C byte2=0x1C
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0xFFFA hword3=0xFF46 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80741DD:
	ns_set_sprite byte1=0x3E
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0xFFF8 hword3=0x00A6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_init_movement byte1=0x05 byte2=0x06 byte3=0x06 destination4=byte_809F71C

byte_80741F2::
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0xFF46 hword3=0x0020 hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074209:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x04
	ns_set_coords hword1=0x0016 hword3=0xFF68 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_807421B::
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=npcscript_8074257
	ns_set_sprite byte1=0x43
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0x009C hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074237:
	ns_jump_if_flag_set event16_1=EVENT_C8F destination3=npcscript_8074257
	ns_jump_if_flag_clear event16_1=EVENT_C8B destination3=npcscript_8074257
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x09
	ns_set_sprite byte1=0x3C
	ns_set_coords hword1=0x0018 hword3=0xFF28 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074257:
	ns_free_and_end

dword_8074258::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_80742D2
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_80742D2
	ns_jump_if_progress_in_range byte1=0x56 byte2=0x57 destination3=npcscript_80742EE
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_80742BB
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x21 destination3=byte_8074284
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_80742A6
	ns_free_and_end

byte_8074284::
	ns_jump_if_flag_set event16_1=EVENT_661 destination3=npcscript_807428C
	ns_free_and_end

npcscript_807428C:
	ns_jump_if_flag_set event16_1=EVENT_665 destination3=npcscript_8074318
	ns_set_sprite_with_category byte1=0x4C byte2=0x1C
	ns_set_text_script_index byte1=0x17
	ns_set_coords hword1=0xFF48 hword3=0x00B8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80742A6:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF58 hword3=0x0028 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x06 destination4=byte_809F6EC

npcscript_80742BB:
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0xFF2A hword3=0x0014 hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

byte_80742D2::
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=npcscript_8074303
	ns_set_sprite byte1=0x43
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0x00B0 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80742EE:
	ns_set_sprite byte1=0x41
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x06
	ns_set_coords hword1=0x00B8 hword3=0xFFEA hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x06 destination4=byte_809F6EC

npcscript_8074303:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x02
	ns_set_coords hword1=0x00B8 hword3=0xFF48 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x18 destination4=byte_809F6EC

npcscript_8074318:
	ns_free_and_end

byte_8074319::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_80743FE
	ns_jump_if_progress_in_range byte1=0x63 byte2=0x64 destination3=byte_80743FE
	ns_jump_if_progress_in_range byte1=0x52 byte2=0x52 destination3=npcscript_80743B0
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=npcscript_807439E
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x31 destination3=npcscript_807438C
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=byte_807436D
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x22 destination3=npcscript_80743E2
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_807435A
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=npcscript_80743B0
	ns_free_and_end

npcscript_807435A:
	ns_set_sprite byte1=0x3E
	ns_do_not_face_player_when_interacted
	ns_set_text_script_index byte1=0x15
	ns_set_coords hword1=0x0038 hword3=0x007E hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_807436D::
	ns_jump_if_flag_set event16_1=EVENT_618 destination3=byte_8074375
	ns_free_and_end

byte_8074375::
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x32
	ns_set_coords hword1=0x001C hword3=0x00C4 hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_set_layer_priority_override_to_3
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807438C:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x3D
	ns_set_coords hword1=0xFF9A hword3=0x0002 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_807439E:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x42
	ns_set_coords hword1=0x0014 hword3=0xFF8A hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80743B0:
	ns_set_sprite byte1=0x42
	ns_jump_if_flag_set event16_1=EVENT_C24 destination3=npcscript_80743D0
	ns_jump_if_flag_clear event16_1=EVENT_C30 destination3=byte_807441A
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0xFF5A hword3=0x0028 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80743D0:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0xFF58 hword3=0x0048 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80743E2:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=byte_807441A
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x02
	ns_set_coords hword1=0xFF58 hword3=0x0048 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x10 destination4=byte_809F6EC

byte_80743FE::
	ns_jump_if_flag_clear event16_1=EVENT_E20 destination3=byte_807441A
	ns_set_sprite byte1=0x43
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0x00C4 hword3=0x000E hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

byte_807441A::
	ns_free_and_end

byte_807441B::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x44
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_807449D
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=byte_807448D
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8074495

byte_8074433::
	ns_jump_if_flag_set event16_1=EVENT_11CC destination3=byte_807449D
	ns_jump_if_flag_set event16_1=EVENT_11BC destination3=npcscript_8074442
	ns_free_and_end

npcscript_8074442:
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_807449D
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_807449D
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_807449D
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_807449D
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_807449D
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x0F
	ns_set_coords hword1=0x0098 hword3=0xFF2A hword5=0x0000
	ns_set_animation byte1=0x03

npcscript_8074470:
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11CA destination3=npcscript_8074470
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x11
	ns_give_attached_shadow
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_coords hword1=0x0098 hword3=0xFF2A hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

byte_807448D::
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=byte_8074433
	ns_free_and_end

npcscript_8074495:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=byte_8074433
	ns_free_and_end

byte_807449D::
	ns_free_and_end

byte_807449E::
	ns_set_active_and_visible
	ns_set_sprite byte1=0x44
	ns_jump_if_progress_in_range byte1=0x24 byte2=0x24 destination3=byte_8074520
	ns_jump_if_progress_in_range byte1=0x42 byte2=0x42 destination3=npcscript_8074510
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8074518

npcscript_80744B6:
	ns_jump_if_flag_set event16_1=EVENT_11CC destination3=byte_8074520
	ns_jump_if_flag_set event16_1=EVENT_11BC destination3=byte_80744C5
	ns_free_and_end

byte_80744C5::
	ns_jump_if_progress_in_range byte1=0x54 byte2=0x57 destination3=byte_8074520
	ns_jump_if_progress_in_range byte1=0x48 byte2=0x4B destination3=byte_8074520
	ns_jump_if_progress_in_range byte1=0x34 byte2=0x35 destination3=byte_8074520
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8074520
	ns_jump_if_flag_set event16_1=EVENT_163 destination3=byte_8074520
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x12
	ns_set_coords hword1=0xFF78 hword3=0xFFA6 hword5=0x0000
	ns_set_animation byte1=0x05

byte_80744F3::
	ns_pause byte1=0x01
	ns_jump_if_flag_clear event16_1=EVENT_11CB destination3=byte_80744F3
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x14
	ns_give_attached_shadow
	ns_do_not_face_player_when_interacted
	ns_set_collision_radius byte1=0x08
	ns_set_coords hword1=0xFF78 hword3=0xFFA6 hword5=0x0000
	ns_set_animation byte1=0x2D
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074510:
	ns_jump_if_flag_clear event16_1=EVENT_A0A destination3=npcscript_80744B6
	ns_free_and_end

npcscript_8074518:
	ns_jump_if_flag_clear event16_1=EVENT_C1A destination3=npcscript_80744B6
	ns_free_and_end

byte_8074520::
	ns_free_and_end

byte_8074521::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8074575
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=byte_8074563
	ns_jump_if_progress_in_range byte1=0x13 byte2=0x16 destination3=npcscript_8074551
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_807453F
	ns_free_and_end

npcscript_807453F:
	ns_set_sprite byte1=0x3F
	ns_set_text_script_index byte1=0x14
	ns_set_coords hword1=0x0028 hword3=0x007E hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074551:
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x19
	ns_set_coords hword1=0x005A hword3=0x0028 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074563::
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x1A
	ns_set_coords hword1=0x0018 hword3=0xFF88 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074575:
	ns_jump_if_flag_set event16_1=EVENT_C20 destination3=byte_807458E
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x2E
	ns_set_coords hword1=0x0078 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_807458E::
	ns_do_not_face_player_when_interacted
	ns_set_sprite byte1=0x40
	ns_set_text_script_index byte1=0x2E
	ns_set_coords hword1=0x0078 hword3=0x0000 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_80745A2::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=npcscript_80746A4
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x62 destination3=npcscript_80746BD
	ns_jump_if_progress_in_range byte1=0x56 byte2=0x57 destination3=byte_8074692
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8074667
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=npcscript_8074640
	ns_jump_if_progress_in_range byte1=0x40 byte2=0x46 destination3=npcscript_8074655
	ns_jump_if_progress_in_range byte1=0x32 byte2=0x33 destination3=byte_8074615
	ns_jump_if_progress_in_range byte1=0x30 byte2=0x31 destination3=npcscript_8074603
	ns_jump_if_progress_in_range byte1=0x21 byte2=0x22 destination3=npcscript_8074627
	ns_jump_if_progress_in_range byte1=0x10 byte2=0x12 destination3=npcscript_80745F1
	ns_jump_if_progress_in_range byte1=0x05 byte2=0x05 destination3=byte_80746CF
	ns_free_and_end

npcscript_80745F1:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x16
	ns_set_coords hword1=0xFFD8 hword3=0xFF28 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074603:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x3C
	ns_set_coords hword1=0xFFF8 hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_8074615::
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x41
	ns_set_coords hword1=0x001A hword3=0x0168 hword5=0xFFE0
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074627:
	ns_jump_if_flag_set event16_1=EVENT_612 destination3=npcscript_80746E1
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFF8 hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074640:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x19
	ns_set_coords hword1=0xFF38 hword3=0x0046 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_init_movement byte1=0x03 byte2=0x06 byte3=0x10 destination4=byte_809F6EC

npcscript_8074655:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFF8 hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074667:
	ns_jump_if_flag_set event16_1=EVENT_C20 destination3=npcscript_8074680
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0xFF9A hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074680:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x2D
	ns_set_coords hword1=0xFF9A hword3=0x00A4 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8074692::
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x05
	ns_set_coords hword1=0xFFF8 hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80746A4:
	ns_jump_if_flag_set event16_1=EVENT_E20 destination3=npcscript_80746E1
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index_and_ptr_to_decomp_buffer byte1=0x03
	ns_set_coords hword1=0xFFF8 hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80746BD:
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x00
	ns_set_coords hword1=0xFFF8 hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

byte_80746CF::
	ns_set_sprite byte1=0x3C
	ns_set_text_script_index byte1=0x03
	ns_set_coords hword1=0xFFF8 hword3=0x00C8 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80746E1:
	ns_free_and_end

byte_80746E2::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x60 byte2=0x61 destination3=npcscript_8074754
	ns_jump_if_progress_in_range byte1=0x51 byte2=0x53 destination3=npcscript_8074728
	ns_jump_if_progress_in_range byte1=0x50 byte2=0x50 destination3=byte_8074700
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x23 destination3=npcscript_8074712
	ns_free_and_end

byte_8074700::
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x1B
	ns_set_coords hword1=0x002E hword3=0xFF88 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074712:
	ns_set_sprite byte1=0x42
	ns_do_not_face_player_when_interacted
	ns_remove_shadow
	ns_set_collision_radius byte1=0x0A
	ns_set_text_script_index byte1=0x1E
	ns_set_coords hword1=0xFF26 hword3=0xFFF8 hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074728:
	ns_jump_if_flag_set event16_1=EVENT_C20 destination3=npcscript_8074741
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x2F
	ns_set_coords hword1=0x0078 hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074741:
	ns_do_not_face_player_when_interacted
	ns_set_sprite byte1=0x41
	ns_set_text_script_index byte1=0x2F
	ns_set_coords hword1=0x0078 hword3=0xFFE6 hword5=0x0000
	ns_set_animation byte1=0x05
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074754:
	ns_set_sprite byte1=0x42
	ns_set_text_script_index byte1=0x01
	ns_set_coords hword1=0xFF58 hword3=0x0004 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_jump_with_link destination1=byte_809F6CC
	ns_free_and_end

byte_8074767::
	ns_set_active_and_visible
	ns_jump_if_progress_in_range byte1=0x25 byte2=0x25 destination3=npcscript_8074797
	ns_jump_if_progress_in_range byte1=0x23 byte2=0x24 destination3=npcscript_80747AA
	ns_jump_if_progress_in_range byte1=0x80 byte2=0x80 destination3=byte_8074785
	ns_jump_if_progress_in_range byte1=0x00 byte2=0x7F destination3=byte_8074785
	ns_free_and_end

byte_8074785::
	ns_set_sprite byte1=0x3E
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0xFEBC hword3=0xFFA8 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074797:
	ns_set_active_and_visible
	ns_set_sprite byte1=0x54
	ns_do_not_face_player_when_interacted
	ns_disable_npc_interaction
	ns_set_coords hword1=0x001C hword3=0xFEC6 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_jump_with_link destination1=byte_809F6CC

npcscript_80747AA:
	ns_free_and_end

byte_80747AB::
	ns_jump_if_flag_set event16_1=EVENT_7F2 destination3=byte_80747F3
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1410
	ns_wait_mystery_data_taken hword1=0x1410
	ns_free_and_end

byte_80747BD::
	ns_jump_if_flag_set event16_1=EVENT_7F2 destination3=byte_80747F3
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1411
	ns_wait_mystery_data_taken hword1=0x1411
	ns_free_and_end

byte_80747CF::
	ns_jump_if_flag_set event16_1=EVENT_7F2 destination3=byte_80747F3
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1412
	ns_wait_mystery_data_taken hword1=0x1412
	ns_free_and_end

byte_80747E1::
	ns_jump_if_flag_set event16_1=EVENT_7F2 destination3=byte_80747F3
	ns_set_active_and_visible
	ns_set_sprite_with_category byte1=0x02 byte2=0x1C
	ns_init_mystery_data hword1=0x1413
	ns_wait_mystery_data_taken hword1=0x1413
	ns_free_and_end

byte_80747F3::
	ns_free_and_end

npcscript_80747F4:
	.word byte_80747FC
	.word 0x000000FF
byte_80747FC::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x001A hword3=0xFECA hword5=0x0010
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_807481C::
	.word byte_807482C
	.word word_8074876
	.word byte_807489D
	.word 0x000000FF
byte_807482C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x013A hword3=0x0072 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x08
	ns_set_animation byte1=0x2A
	ns_write_cutscene_var byte1=0x08 byte2=0x09
	ns_wait_cutscene_var byte1=0x08 byte2=0x0A
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x0B
	ns_wait_cutscene_var byte1=0x08 byte2=0x0E
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x0F
	ns_wait_cutscene_var byte1=0x08 byte2=0x10
	ns_jump_with_link destination1=byte_809F6CC

word_8074876::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x41
	ns_set_coords hword1=0x013A hword3=0x008A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_set_animation_force_update byte1=0x28
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x0D
	ns_free_and_end

byte_807489D::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0x013A hword3=0x008A hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_jump destination1=byte_809F880

npcscript_list_80748B4::
	.word byte_80748E8
	.word byte_8074905
	.word byte_807493C
	.word byte_8074948
	.word byte_8074954
	.word byte_8074960
	.word byte_8074991
	.word byte_80749B9
	.word byte_80749C5
	.word byte_80749D1
	.word byte_80749DD
	.word byte_8074A1E
	.word 0x000000FF
byte_80748E8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFE08 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x15
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_animation byte1=0x39
	ns_jump_with_link destination1=byte_809F6CC

byte_8074905::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x39 byte2=0x1C
	ns_set_coords hword1=0xFE38 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x78
	ns_play_music hword1=0x0021
	ns_set_active_and_visible
	ns_play_sound hword1=0x0143
	ns_run_secondary_script ptr1=byte_8074A04
	ns_pause byte1=0x14
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x02
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_807493C::
	ns_set_coords hword1=0xFE2C hword3=0x003C hword5=0x0004
	ns_jump destination1=byte_807496C

byte_8074948::
	ns_set_coords hword1=0xFE2C hword3=0x001C hword5=0x0008
	ns_jump destination1=byte_807496C

byte_8074954::
	ns_set_coords hword1=0xFE48 hword3=0x0014 hword5=0x0018
	ns_jump destination1=byte_807496C

byte_8074960::
	ns_set_coords hword1=0xFE48 hword3=0x003C hword5=0x0018
	ns_jump destination1=byte_807496C

byte_807496C::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x3C byte2=0x1C
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_pause byte1=0x78
	ns_set_active_and_visible
	ns_run_secondary_script ptr1=byte_8074A04
	ns_pause byte1=0x14
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_clear_unk_flags_60_flag_0x200
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074991::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x3A byte2=0x1C
	ns_set_coords hword1=0xFE38 hword3=0x0044 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_play_sound hword1=0x0143
	ns_run_secondary_script ptr1=byte_8074A04
	ns_pause byte1=0x14
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_80749B9::
	ns_set_coords hword1=0xFE2C hword3=0x0054 hword5=0x0004
	ns_jump destination1=npcscript_80749E9

byte_80749C5::
	ns_set_coords hword1=0xFE2C hword3=0x0034 hword5=0x0008
	ns_jump destination1=npcscript_80749E9

byte_80749D1::
	ns_set_coords hword1=0xFE48 hword3=0x002C hword5=0x0018
	ns_jump destination1=npcscript_80749E9

byte_80749DD::
	ns_set_coords hword1=0xFE48 hword3=0x0054 hword5=0x0018
	ns_jump destination1=npcscript_80749E9

npcscript_80749E9:
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x3C byte2=0x1C
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_active_and_visible
	ns_run_secondary_script ptr1=byte_8074A04
	ns_pause byte1=0x14
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_jump_with_link destination1=byte_809F6CC

byte_8074A04::
	ns_set_transform byte1=0x00 byte2=0xC0 byte3=0x40
	ns_pause_secondary_script byte1=0x02
	ns_set_transform byte1=0x00 byte2=0x80 byte3=0x40
	ns_pause_secondary_script byte1=0x02
	ns_set_transform byte1=0x00 byte2=0x30 byte3=0x40
	ns_pause_secondary_script byte1=0x02
	ns_set_transform byte1=0x00 byte2=0x40 byte3=0x40
	ns_pause_secondary_script byte1=0x02
	ns_remove_transform
	ns_end_secondary_script

byte_8074A1E::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x44 byte2=0x1C
	ns_set_coords hword1=0xFE08 hword3=0x002C hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_set_active_and_visible
	ns_play_sound hword1=0x00C6
	ns_set_animation_force_update byte1=0x00
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_8074A44::
	.word byte_8074A84
	.word byte_8074AF2
	.word byte_8074B15
	.word byte_8074B35
	.word byte_8074B55
	.word byte_8074B75
	.word byte_8074B95
	.word 0x000000FF
npcscript_list_8074A64::
	.word byte_8074BB5
	.word byte_8074C15
	.word byte_8074C34
	.word byte_8074C4C
	.word byte_8074C64
	.word byte_8074C7C
	.word byte_8074C94
	.word 0x000000FF
byte_8074A84::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x54
	ns_set_coords hword1=0x001C hword3=0xFEEE hword5=0x0010
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x2D
	ns_pause byte1=0x3C
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_set_animation byte1=0x2B
	ns_wait_anim_frame byte1=0xC0
	ns_pause byte1=0x0A
	ns_write_cutscene_var byte1=0x08 byte2=0x06
	ns_wait_cutscene_var byte1=0x08 byte2=0x07
	ns_give_detatched_shadow
	ns_clear_unk_flags_60_flag_0x200
	ns_set_animation byte1=0x03
	ns_pause byte1=0x3C
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x0F
	ns_set_animation byte1=0x05
	ns_move_in_direction byte1=0x05 byte2=0x08 byte3=0x0C
	ns_run_secondary_script ptr1=byte_8074AEB
	ns_set_animation byte1=0x03
	ns_move_in_direction byte1=0x03 byte2=0x08 byte3=0x14
	ns_set_animation byte1=0x01
	ns_pause byte1=0x3C
	ns_play_sound hword1=0x00FE
	ns_set_animation byte1=0x2F
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x08
	ns_wait_cutscene_var byte1=0x08 byte2=0x09
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x0A
	ns_wait_cutscene_var byte1=0x08 byte2=0x0B
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x0C
	ns_jump_with_link destination1=byte_809F6CC

byte_8074AEB::
	ns_pause_secondary_script byte1=0x60
	ns_remove_shadow
	ns_pause_secondary_script byte1=0xB2
	ns_give_detatched_shadow
	ns_end_secondary_script

byte_8074AF2::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x57
	ns_set_coords hword1=0x0018 hword3=0xFF22 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x78
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x29
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074B15::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3E
	ns_set_coords hword1=0x0032 hword3=0xFF26 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x11
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074B35::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x41
	ns_set_coords hword1=0x003A hword3=0xFF36 hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x20
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x2A
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074B55::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFFFC hword3=0xFF2C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x28
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x2B
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074B75::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x45
	ns_set_coords hword1=0x0024 hword3=0xFF3E hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x3C
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x19
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074B95::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3F
	ns_set_coords hword1=0x000E hword3=0xFF3C hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_pause byte1=0x0A
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074BB5::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_clear_unk_flags_60_flag_0x200
	ns_set_sprite byte1=0x54
	ns_set_coords hword1=0xFFBC hword3=0x0006 hword5=0x0010
	ns_set_animation byte1=0x01
	ns_pause byte1=0x01
	ns_give_detatched_shadow
	ns_wait_cutscene_var byte1=0x08 byte2=0x21
	ns_set_animation byte1=0x2E
	ns_pause byte1=0x30
	ns_play_sound hword1=0x0197
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x29
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x22
	ns_wait_cutscene_var byte1=0x08 byte2=0x23
	ns_move_in_direction byte1=0x01 byte2=0x04 byte3=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x24
	ns_wait_cutscene_var byte1=0x08 byte2=0x25
	ns_set_animation byte1=0x2A
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x26
	ns_wait_cutscene_var byte1=0x08 byte2=0x27
	ns_set_animation byte1=0x29
	ns_wait_anim_frame byte1=0xC0
	ns_wait_cutscene_var byte1=0x08 byte2=0x28
	ns_set_animation byte1=0x05
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x2E
	ns_set_animation byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x2F
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_set_animation_force_update byte1=0x22
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x31
	ns_free_and_end

byte_8074C15::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0xFFC4 hword3=0x0006 hword5=0x0010
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x30
	ns_set_coords hword1=0xFFC4 hword3=0x0006 hword5=0x0010
	ns_clear_unk_flags_60_flag_0x200
	ns_jump destination1=byte_809F880

byte_8074C34::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF4A hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x32
	ns_set_animation byte1=0x29
	ns_jump_with_link destination1=byte_809F6CC

byte_8074C4C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF46 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x32
	ns_set_animation byte1=0x2C
	ns_jump_with_link destination1=byte_809F6CC

byte_8074C64::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF46 hword3=0x0020 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x32
	ns_set_animation byte1=0x2A
	ns_jump_with_link destination1=byte_809F6CC

byte_8074C7C::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF2A hword3=0x0014 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x32
	ns_set_animation byte1=0x2A
	ns_jump_with_link destination1=byte_809F6CC

byte_8074C94::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0x0016 hword3=0xFF34 hword5=0x0000
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x2A
	ns_set_animation byte1=0x0B
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x01
	ns_set_animation byte1=0x03
	ns_write_cutscene_var byte1=0x08 byte2=0x2B
	ns_wait_cutscene_var byte1=0x08 byte2=0x2C
	ns_set_coords hword1=0xFF2A hword3=0xFF9C hword5=0x0000
	ns_set_animation byte1=0x13
	ns_move_in_direction byte1=0x03 byte2=0x10 byte3=0x0C
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x2D
	ns_wait_cutscene_var byte1=0x08 byte2=0x32
	ns_set_animation byte1=0x2B
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_8074CD0::
	.word byte_8074CF4
	.word byte_8074D24
	.word byte_8074D3B
	.word byte_8074D51
	.word byte_8074D67
	.word byte_8074D7D
	.word byte_8074D93
	.word byte_8074DA9
	.word 0x000000FF
byte_8074CF4::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_clear_unk_flags_60_flag_0x200
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0xFFBC hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_coords hword1=0xFFBA hword3=0x0006 hword5=0x0000
	ns_play_sound hword1=0x014B
	ns_set_animation byte1=0x3F
	ns_move_in_direction byte1=0x05 byte2=0x20 byte3=0x08
	ns_set_animation byte1=0x3A
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation_force_update byte1=0x3B
	ns_wait_anim_frame byte1=0xC0
	ns_set_active_and_invisible
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_free_and_end

byte_8074D24::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0xFF7A hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_jump destination1=byte_809F880

byte_8074D3B::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF4A hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8074D51::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF46 hword3=0xFFF0 hword5=0x0000
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8074D67::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF46 hword3=0x0020 hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8074D7D::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF2A hword3=0x0014 hword5=0x0000
	ns_set_animation byte1=0x2A
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8074D93::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0xFF2A hword3=0xFFFC hword5=0x0000
	ns_set_animation byte1=0x2B
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8074DA9::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x3A byte2=0x1C
	ns_set_coords hword1=0x0002 hword3=0x000A hword5=0x0002
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_active_and_visible
	ns_play_sound hword1=0x0077
	ns_set_animation_force_update byte1=0x01
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_free_and_end
	ns_end

npcscript_8074DC8:
	.word byte_8074DD0
	.word 0x000000FF
byte_8074DD0::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_clear_unk_flags_60_flag_0x200
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x00FA hword3=0x0064 hword5=0x0000
	ns_set_animation byte1=0x29
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_play_sound hword1=0x00FE
	ns_set_animation byte1=0x40
	ns_wait_anim_frame byte1=0xC0
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x3A
	ns_wait_anim_frame byte1=0xC0
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_jump_with_link destination1=byte_809F6CC
	ns_end

npcscript_list_8074DFC::
	.word byte_8074E08
	.word byte_8074E1E
	.word 0x000000FF
byte_8074E08::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x001C hword3=0xFEE6 hword5=0x0010
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

byte_8074E1E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x54
	ns_set_coords hword1=0x001C hword3=0xFEC6 hword5=0x0010
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_jump_with_link destination1=byte_809F6CC

npcscript_8074E34:
	.word byte_8074E40
	.word byte_8074E5E
	.word 0x000000FF
byte_8074E40::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x37
	ns_set_coords hword1=0x001C hword3=0xFEE6 hword5=0x0010
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_animation byte1=0x04
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_wait_cutscene_var byte1=0x08 byte2=0x06
	ns_jump_with_link destination1=byte_809F6CC

byte_8074E5E::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x54
	ns_set_coords hword1=0x001C hword3=0xFEC6 hword5=0x0010
	ns_set_animation byte1=0x2C
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end
	ns_end
	ns_end

npcscript_8074E78:
	.word byte_8074E84
	.word byte_8074EA2
	.word 0x000000FF
byte_8074E84::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x42
	ns_set_coords hword1=0x001A hword3=0xFECA hword5=0x0010
	ns_set_animation byte1=0x03
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x04
	ns_wait_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074EA2::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x3E
	ns_set_coords hword1=0x001A hword3=0xFF6A hword5=0x0000
	ns_set_animation byte1=0x07
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x0F
	ns_move_in_direction byte1=0x07 byte2=0x08 byte3=0x10
	ns_set_animation byte1=0x07
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_jump_with_link destination1=byte_809F6CC
	ns_end
	ns_end

npcscript_list_8074EC8::
	.word byte_8074ED8
	.word byte_8074EF7
	.word byte_8074F17
	.word 0x000000FF
byte_8074ED8::
	ns_set_active_and_visible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_to_cur_pet_navi
	ns_set_coords hword1=0xFF98 hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x01
	ns_set_animation byte1=0x09
	ns_move_in_direction byte1=0x01 byte2=0x08 byte3=0x06
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x02
	ns_wait_cutscene_var byte1=0x08 byte2=0x03
	ns_free_and_end

byte_8074EF7::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite byte1=0x53
	ns_set_coords hword1=0xFF98 hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x01
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_set_active_and_visible
	ns_set_animation byte1=0x1A
	ns_wait_anim_frame byte1=0xC0
	ns_set_animation byte1=0x01
	ns_write_cutscene_var byte1=0x08 byte2=0x05
	ns_jump_with_link destination1=byte_809F6CC

byte_8074F17::
	ns_set_active_and_invisible
	ns_disable_collision
	ns_disable_collision_alternate
	ns_set_sprite_with_category byte1=0x00 byte2=0x1C
	ns_set_coords hword1=0xFF98 hword3=0x0008 hword5=0x0000
	ns_set_animation byte1=0x00
	ns_wait_cutscene_var byte1=0x08 byte2=0x04
	ns_jump destination1=npcscript_809F86C
	ns_end
	ns_end
