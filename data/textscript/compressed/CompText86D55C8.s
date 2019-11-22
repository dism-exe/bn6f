	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86D55C8::
	.word 0x23C00

	text_archive_start

	def_text_script CompText86D55C8_unk0
	ts_position_text [
		left: 0x33,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x65,
	]
	ts_position_box [
		left: 0x0,
		top: 0x7,
		type: 0x0,
	]
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x58,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Quit programming\n"
	.string "and return to menu?\n"
	ts_position_option_from_center [
		width: 0x8,
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x1, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D55C8_unk1
	ts_position_text [
		left: 0x33,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x65,
	]
	ts_position_box [
		left: 0x0,
		top: 0x7,
		type: 0x0,
	]
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x58,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "OK!\n"
	.string "RUN complete!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x1720,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0x2,
	]

	def_text_script CompText86D55C8_unk2
	ts_position_text [
		left: 0x33,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x65,
	]
	ts_position_box [
		left: 0x0,
		top: 0x7,
		type: 0x0,
	]
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x58,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Good job,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Quit the Navi\n"
	.string "Customizer?\n"
	ts_position_option_from_center [
		width: 0x8,
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D55C8_unk3
	ts_position_text [
		left: 0x33,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x65,
	]
	ts_position_box [
		left: 0x0,
		top: 0x7,
		type: 0x0,
	]
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x58,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Good job,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Quit the Navi\n"
	.string "Customizer?\n"
	ts_position_option_from_center [
		width: 0x8,
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D55C8_unk4
	ts_position_text [
		left: 0x33,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x65,
	]
	ts_position_box [
		left: 0x0,
		top: 0x7,
		type: 0x0,
	]
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x58,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Remove all\n"
	.string "programs?\n"
	ts_position_option_from_center [
		width: 0x8,
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x1, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D55C8_unk5
	ts_position_text [
		left: 0x33,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x65,
	]
	ts_position_box [
		left: 0x0,
		top: 0x7,
		type: 0x0,
	]
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x58,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You can't remove\n"
	.string "this program in the\n"
	.string "Cyberworld."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D55C8_unk6

	def_text_script CompText86D55C8_unk7

	def_text_script CompText86D55C8_unk8

	def_text_script CompText86D55C8_unk9

	def_text_script CompText86D55C8_unk10
	.string "RUN...$"

	def_text_script CompText86D55C8_unk11
	.string "OK$"

	