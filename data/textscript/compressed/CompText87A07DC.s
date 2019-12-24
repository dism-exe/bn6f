	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A07DC::
	.word 0x3CF00

	text_archive_start

	def_text_script CompText87A07DC_unk0
	ts_check_flag [
		flag: 0x111A,
		jumpIfTrue: 0x4,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1119,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x1119
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "Hey ya...\n"
	.string "Do you have a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x5F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you have one,\n"
	.string "care to trade for\n"
	.string "a \""
	ts_print_chip1 [
		chip: 0x7F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xB,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How bout it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
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
	.string " No"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x46
	.string "Really? No way!\n"
	.string "I can't believe it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A07DC_unk1
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "WHHHAATTT!?\n"
	.string "Is that really..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How's about you\n"
	.string "trade me a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x5F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1,
		buffer: 0x0,
	]
	.string "\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "for my\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x7F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xB,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
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
	.string " No"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x46
	.string "WHHHAATTT!? NO WAY!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A07DC_unk2
	ts_check_pack_chip_code [
		chip: 0x5F,
		code: 0x1,
		amount: 0x1,
		jumpIfEqual: 0xFF,
		jumpIfGreater: 0xFF,
		jumpIfLess: 0x3,
	]
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "Really!? Really!?\n"
	.string "I really want this\n"
	.string "chip!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now it's my turn..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_take_chip [
		chip: 0x5F,
		code: 0x1,
		amount: 0x1,
	]
	ts_item_give_chip [
		chip: 0x7F,
		code: 0xB,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x7F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xB,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show mugshot=0x46
	.string "Isn't \""
	ts_print_chip1 [
		chip: 0x5F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "cool?"
	ts_key_wait any=0x0
	ts_flag_set flag=0x111A
	ts_end

	def_text_script CompText87A07DC_unk3
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "...?\n"
	.string "I can't find a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x5F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You wouldn't happen\n"
	.string "to have one in your\n"
	.string "folder,would ya?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you have one,\n"
	.string "would you like to\n"
	.string "trade...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't have one?\n"
	.string "Too bad..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come back if you get\n"
	.string "a \""
	ts_print_chip1 [
		chip: 0x5F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A07DC_unk4
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "Isn't \""
	ts_print_chip1 [
		chip: 0x5F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "cool?\n"
	.string "It's sooooo cute!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A07DC_unk5

	def_text_script CompText87A07DC_unk6

	def_text_script CompText87A07DC_unk7

	def_text_script CompText87A07DC_unk8

	def_text_script CompText87A07DC_unk9

	def_text_script CompText87A07DC_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "...I AM THE"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AIR CONDITIONER\n"
	.string "PROGRAM..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...MY JOB IS TO\n"
	.string "LOWER THE\n"
	.string "TEMPERATURE!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "EVERYONE SAYS I HAVE\n"
	.string "A COLD PERSONALITY,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BUT I DON'T AGREE\n"
	.string "AT ALL..."
	ts_key_wait any=0x0
	ts_end

	