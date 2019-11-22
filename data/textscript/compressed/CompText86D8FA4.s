	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86D8FA4::
	.word 0x17600

	text_archive_start

	def_text_script CompText86D8FA4_unk0
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x1,
	]
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "You got the top\n"
	.string "record,Lan! It's\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string ":"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x2,
	]
	.string ":"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x3,
	]
	.string "!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D8FA4_unk1
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "You got the top\n"
	.string "record,Lan! It's\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string ":"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x2,
	]
	.string ":"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x3,
	]
	.string "!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D8FA4_unk2
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x3,
	]
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "The top record is\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string ":"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x2,
	]
	.string ":"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x3,
	]
	.string ".\n"
	ts_position_option_horizontal [
		width: 0xC,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Return  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " Delete"
	ts_select 0x6, 0x60, 0xFF, 0xFF, 0xFF
	ts_msg_close
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D8FA4_unk3
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "The top record is\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string ":"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x2,
	]
	.string ":"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x1,
		padLeft: 0x1,
		buffer: 0x3,
	]
	.string ".\n"
	ts_position_option_horizontal [
		width: 0xC,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Return  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " Delete"
	ts_select 0x6, 0x60, 0xFF, 0xFF, 0xFF
	ts_msg_close
	ts_wait_hold [
		unused: 0x0,
	]

	