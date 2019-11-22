	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A0C24::
	.word 0x3A600

	text_archive_start

	def_text_script CompText87A0C24_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "NOT TOO HOT...\n"
	.string "NOT TOO COLD..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THAT IS THE BEST\n"
	.string "KIND OF SHOWER."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "DON'T FORGET IT!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A0C24_unk1

	def_text_script CompText87A0C24_unk2

	def_text_script CompText87A0C24_unk3

	def_text_script CompText87A0C24_unk4

	def_text_script CompText87A0C24_unk5

	def_text_script CompText87A0C24_unk6

	def_text_script CompText87A0C24_unk7

	def_text_script CompText87A0C24_unk8

	def_text_script CompText87A0C24_unk9

	def_text_script CompText87A0C24_unk10
	ts_check_flag [
		flag: 0x226,
		jumpIfTrue: 0xE,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x226,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Hahahaha...\n"
	.string "Hey you...\n"
	.string "You like animals?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you had this\n"
	.string "item I have,you"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "could call very\n"
	.string "rare animals..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They call it\n"
	.string "\""
	ts_print_item [
		item: 0x2C,
		buffer: 0x0,
	]
	.string "\"..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wanna buy it for\n"
	.string "3000 Zennys?"
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
	ts_select 0x6, 0x80, 0xB, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x43,
	]
	.string "Hmmm... I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A0C24_unk11
	ts_check_item07 [
		item: 0x2C,
		amount: 0x9,
		jumpIfEqual: 0xD,
		jumpIfGreater: 0xD,
		jumpIfLess: 0xFF,
	]
	ts_check_take_zenny [
		amount: 0xBB8,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xC,
		jumpIfSome: 0xC,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	ts_flag_set [
		flag: 0x224,
	]
	.string "Hehehe... Thanks..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x2C,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x2C,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x43,
	]
	.string "If you use that in\n"
	.string "the dark corners\n"
	.string "of the Cyberworld,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "you can call for\n"
	.string "something..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You don't know the\n"
	.string "dark corners,huh?\n"
	.string "Here's a hint..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Bones.\n"
	.string "Figure the rest out\n"
	.string "for yourself."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Up to 9 of those\n"
	.string "can be used..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you want more,\n"
	.string "just come back..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A0C24_unk12
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Hahaha!\n"
	.string "Not enough cash\n"
	.string "this time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A0C24_unk13
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Ya got a lot now\n"
	.string "don't ya...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's good,since\n"
	.string "I'm not selling!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A0C24_unk14
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Hey you...\n"
	.string "Wanna buy \""
	ts_print_item [
		item: 0x2C,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "for 3000 Zennys?"
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
	ts_select 0x6, 0x80, 0xB, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x43,
	]
	.string "Hmmm... I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	