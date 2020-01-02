	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A2C04::
	.word 0xB6300

	text_archive_start

	def_text_script CompText87A2C04_unk0
	ts_check_flag [
		flag: 0x11FF,
		jumpIfTrue: CompText87A2C04_unk4_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11FE,
		jumpIfTrue: CompText87A2C04_unk2_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x11FE
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Ahh,you must be the\n"
	.string "one who took my\n"
	.string "request!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "As a member of the\n"
	.string "the Official\n"
	.string "NetBattlers,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm in charge of\n"
	.string "maintaining order\n"
	.string "in this area."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Behind me is image\n"
	.string "data from recent\n"
	.string "NetCriminal Navis."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We Officials are\n"
	.string "charged with storing\n"
	.string "the data of Navis"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "who cause these\n"
	.string "incidents as a means\n"
	.string "to prevent crime."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This image data\n"
	.string "faithfully recreates\n"
	.string "a Navi's movements."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you battle\n"
	.string "against this\n"
	.string "image data,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you can explore\n"
	.string "the Navi's\n"
	.string "weaknesses."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'd like you to\n"
	.string "take on the Navis\n"
	.string "in this image data."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Help us defend this\n"
	.string "area against further\n"
	.string "incidents!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk1
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Behind me is image\n"
	.string "data from recent\n"
	.string "NetCriminal Navis."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This image data\n"
	.string "faithfully recreates\n"
	.string "a Navi's movements."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you battle\n"
	.string "against this\n"
	.string "image data,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you can explore\n"
	.string "the Navi's\n"
	.string "weaknesses."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'd like you to\n"
	.string "take on the Navis\n"
	.string "in this image data."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Help us defend this\n"
	.string "area against further\n"
	.string "incidents!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk2
	ts_check_flag [
		flag: 0x1200,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87A2C04_unk1_id,
	]
	ts_check_flag [
		flag: 0x1201,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87A2C04_unk1_id,
	]
	ts_check_flag [
		flag: 0x1202,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87A2C04_unk1_id,
	]
	ts_check_flag [
		flag: 0x1203,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87A2C04_unk1_id,
	]
	ts_check_flag [
		flag: 0x1204,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87A2C04_unk1_id,
	]
	ts_jump target=CompText87A2C04_unk3_id

	def_text_script CompText87A2C04_unk3
	ts_flag_set flag=0x11FF
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "We were able to\n"
	.string "record great data\n"
	.string "from your fight!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Your cooperation will\n"
	.string "be a great help in\n"
	.string "preventing crimes!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And now for your\n"
	.string "reward!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_item_give_chip [
		chip: 0xA3,
		code: 0x1A,
		amount: 0x1,
	]
	ts_item_give_chip [
		chip: 0xBA,
		code: 0x1A,
		amount: 0x1,
	]
	ts_item_give_chip [
		chip: 0xBD,
		code: 0x1A,
		amount: 0x1,
	]
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA3,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\",\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xBA,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\","
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xBD,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "I have to take\n"
	.string "this data back and\n"
	.string "analyze it!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " Points!"
	ts_key_wait any=0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText87A2C04_unk4
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Your cooperation will\n"
	.string "be a great help in\n"
	.string "preventing crimes!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk5
	ts_end

	def_text_script CompText87A2C04_unk6
	ts_check_flag [
		flag: 0x1205,
		jumpIfTrue: CompText87A2C04_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11FE,
		jumpIfTrue: CompText87A2C04_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText87A2C04_unk26_id

	def_text_script CompText87A2C04_unk7
	ts_mugshot_hide
	ts_msg_open
	.string "BlastMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle against it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0xFF, 0x5, 0xFF
	ts_mugshot_show mugshot=0x0
	.string "Let's go MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1200
	ts_end

	def_text_script CompText87A2C04_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! We did it!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "So...strong..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan! Let's get\n"
	.string "ready and try\n"
	.string "again!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk10
	ts_check_flag [
		flag: 0x1206,
		jumpIfTrue: CompText87A2C04_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11FE,
		jumpIfTrue: CompText87A2C04_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_hide
	ts_msg_open
	ts_jump target=CompText87A2C04_unk27_id

	def_text_script CompText87A2C04_unk11
	ts_mugshot_hide
	ts_msg_open
	.string "DiveMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle against it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0xFF, 0x5, 0xFF
	ts_mugshot_show mugshot=0x0
	.string "Let's go MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1201
	ts_end

	def_text_script CompText87A2C04_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! We did it!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "So...strong..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan! Let's get\n"
	.string "ready and try\n"
	.string "again!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk14
	ts_check_flag [
		flag: 0x1207,
		jumpIfTrue: CompText87A2C04_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11FE,
		jumpIfTrue: CompText87A2C04_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText87A2C04_unk28_id

	def_text_script CompText87A2C04_unk15
	ts_mugshot_hide
	ts_msg_open
	.string "CrcusMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle against it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0xFF, 0x5, 0xFF
	ts_mugshot_show mugshot=0x0
	.string "Let's go MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1202
	ts_end

	def_text_script CompText87A2C04_unk16
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! We did it!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk17
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "So...strong..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan! Let's get\n"
	.string "ready and try\n"
	.string "again!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk18
	ts_check_flag [
		flag: 0x1208,
		jumpIfTrue: CompText87A2C04_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11FE,
		jumpIfTrue: CompText87A2C04_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText87A2C04_unk29_id

	def_text_script CompText87A2C04_unk19
	ts_mugshot_hide
	ts_msg_open
	.string "JudgeMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle against it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0xFF, 0x5, 0xFF
	ts_mugshot_show mugshot=0x0
	.string "Let's go MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1203
	ts_end

	def_text_script CompText87A2C04_unk20
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! We did it!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk21
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "So...strong..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan! Let's get\n"
	.string "ready and try\n"
	.string "again!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk22
	ts_check_flag [
		flag: 0x1209,
		jumpIfTrue: CompText87A2C04_unk30_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11FE,
		jumpIfTrue: CompText87A2C04_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText87A2C04_unk30_id

	def_text_script CompText87A2C04_unk23
	ts_mugshot_hide
	ts_msg_open
	.string "ElmntMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle against it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0xFF, 0x5, 0xFF
	ts_mugshot_show mugshot=0x0
	.string "Let's go MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1204
	ts_end

	def_text_script CompText87A2C04_unk24
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! We did it!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk25
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "So...strong..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan! Let's get\n"
	.string "ready and try\n"
	.string "again!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk26
	ts_mugshot_hide
	ts_msg_open
	.string "BlastMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk27
	ts_mugshot_hide
	ts_msg_open
	.string "DiveMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk28
	ts_mugshot_hide
	ts_msg_open
	.string "CrcusMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk29
	ts_mugshot_hide
	ts_msg_open
	.string "JudgeMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk30
	ts_mugshot_hide
	ts_msg_open
	.string "ElmntMan's\n"
	.string "image data."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A2C04_unk31

	def_text_script CompText87A2C04_unk32

	def_text_script CompText87A2C04_unk33

	def_text_script CompText87A2C04_unk34

	def_text_script CompText87A2C04_unk35

	def_text_script CompText87A2C04_unk36

	def_text_script CompText87A2C04_unk37

	def_text_script CompText87A2C04_unk38

	def_text_script CompText87A2C04_unk39

	def_text_script CompText87A2C04_unk40
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "TODAY'S WEATHER\n"
	.string "IN CYBER CITY IS\n"
	.string "CLEAR AND SUNNY,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MEANING GREAT\n"
	.string "WEATHER ALL DAY\n"
	.string "LONG!!"
	ts_key_wait any=0x0
	ts_end

	