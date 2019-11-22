	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876D618::
	.word 0x29C00

	text_archive_start

	def_text_script CompText876D618_unk0

	def_text_script CompText876D618_unk1

	def_text_script CompText876D618_unk2

	def_text_script CompText876D618_unk3

	def_text_script CompText876D618_unk4

	def_text_script CompText876D618_unk5

	def_text_script CompText876D618_unk6

	def_text_script CompText876D618_unk7

	def_text_script CompText876D618_unk8
	ts_check_flag [
		flag: 0x1128,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1127,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1127,
	]
	ts_mugshot_show [
		mugshot: 0x17,
	]
	ts_msg_open
	.string "Hey,do you have the\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x37,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xA,
		buffer: 0x0,
	]
	.string "\" chip?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you've got it,\n"
	.string "want to trade for my"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0x5A,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x2,
		buffer: 0x0,
	]
	.string "\"...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want to show it\n"
	.string "off in class...\n"
	.string "Please...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
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
	.string " Sure  "
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
	.string " No Way"
	ts_select 0x6, 0x80, 0xA, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x17,
	]
	.string "Huh!? Cheapskate!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876D618_unk9
	ts_mugshot_show [
		mugshot: 0x17,
	]
	ts_msg_open
	.string "Hey,want to trade my\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x5A,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x2,
		buffer: 0x0,
	]
	.string "\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "for your\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x37,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xA,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
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
	.string " Sure  "
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
	.string " No Way"
	ts_select 0x6, 0x80, 0xA, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x17,
	]
	.string "Huh!? Cheapskate!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876D618_unk10
	ts_check_pack_chip_code [
		chip: 0x37,
		code: 0xA,
		amount: 0x1,
		jumpIfEqual: 0xFF,
		jumpIfGreater: 0xFF,
		jumpIfLess: 0xB,
	]
	ts_mugshot_show [
		mugshot: 0x17,
	]
	ts_msg_open
	.string "Awesome! Thanks!\n"
	.string "I'm so happy!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0x5A,
		code: 0x2,
		amount: 0x1,
	]
	ts_item_take_chip [
		chip: 0x37,
		code: 0xA,
		amount: 0x1,
	]
	ts_player_animate_scene [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x5A,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x2,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x17,
	]
	.string "Now I have something\n"
	.string "to show everyone in\n"
	.string "class!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1128,
	]
	ts_end

	def_text_script CompText876D618_unk11
	ts_mugshot_show [
		mugshot: 0x17,
	]
	ts_msg_open
	.string "Really!?\n"
	.string "You don't have it!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876D618_unk12
	ts_mugshot_show [
		mugshot: 0x17,
	]
	ts_msg_open
	.string "Thanks for the Chip!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Now I have something\n"
	.string "to show everyone in\n"
	.string "class!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876D618_unk13

	def_text_script CompText876D618_unk14

	def_text_script CompText876D618_unk15

	def_text_script CompText876D618_unk16

	def_text_script CompText876D618_unk17

	def_text_script CompText876D618_unk18

	def_text_script CompText876D618_unk19

	