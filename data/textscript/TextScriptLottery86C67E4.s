TextScriptLottery86C67E4::
	text_archive_start

	def_text_script TextScriptLottery86C67E4_unk0

	def_text_script TextScriptLottery86C67E4_unk1

	def_text_script TextScriptLottery86C67E4_unk2

	def_text_script TextScriptLottery86C67E4_unk3

	def_text_script TextScriptLottery86C67E4_unk4

	def_text_script TextScriptLottery86C67E4_unk5

	def_text_script TextScriptLottery86C67E4_unk6

	def_text_script TextScriptLottery86C67E4_unk7

	def_text_script TextScriptLottery86C67E4_unk8

	def_text_script TextScriptLottery86C67E4_unk9

	def_text_script TextScriptLottery86C67E4_unk10

	def_text_script TextScriptLottery86C67E4_unk11

	def_text_script TextScriptLottery86C67E4_unk12

	def_text_script TextScriptLottery86C67E4_unk13

	def_text_script TextScriptLottery86C67E4_unk14
	ts_msg_open_quick
	.string "Checking your\n"
	.string "lotto number!\n"
	.string "*beep beep...*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Check complete!\n"
	.string "You have a winning\n"
	.string "number!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_sound_play00 [
		track: 0xD5,
	]
	.string "Whir-whir... Clunk!"
	ts_sound_enable_text_sfx
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script TextScriptLottery86C67E4_unk15
	ts_msg_open_quick
	ts_flag_clear [
		flag: 0xF5,
	]
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	ts_position_text [
		left: 0x5B,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x8D,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x1,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x2,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_flag_set [
		flag: 0xF5,
	]
	ts_end

	def_text_script TextScriptLottery86C67E4_unk16
	ts_msg_open_quick
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_end

	def_text_script TextScriptLottery86C67E4_unk17
	ts_msg_open_quick
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	.string "Lan got a\n"
	.string "SubChip:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_end

	def_text_script TextScriptLottery86C67E4_unk18
	ts_msg_open_quick
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	.string "Lan got a\n"
	.string "SubChip:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_msg_open_quick
	.string "It looks like you\n"
	.string "can't carry any more\n"
	.string "of that item."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll mark that last\n"
	.string "number as unused\n"
	.string "then."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptLottery86C67E4_unk19
	ts_msg_open_quick
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_end

	def_text_script TextScriptLottery86C67E4_unk20

	def_text_script TextScriptLottery86C67E4_unk21
	ts_msg_open_quick
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "In NaviCust you can\n"
	.string "now use L Button or\n"
	.string "R Button to spin red"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "program parts."
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_end

	def_text_script TextScriptLottery86C67E4_unk22
	ts_msg_open_quick
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "In NaviCust you can\n"
	.string "now use L Button or\n"
	.string "R Button to spin"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "yellow program\n"
	.string "parts."
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_end

	def_text_script TextScriptLottery86C67E4_unk23
	ts_msg_open_quick
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "In NaviCust you can\n"
	.string "now use L Button or\n"
	.string "R Button to spin"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "green program parts."
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_end

	def_text_script TextScriptLottery86C67E4_unk24

	def_text_script TextScriptLottery86C67E4_unk25
	ts_clear_msg
	.string " ボ@"

	def_text_script TextScriptLottery86C67E4_unk26

	def_text_script TextScriptLottery86C67E4_unk27

	def_text_script TextScriptLottery86C67E4_unk28

	def_text_script TextScriptLottery86C67E4_unk29

	.balign 4, 0
