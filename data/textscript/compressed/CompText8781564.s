	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781564::
	.word 0x32400

	text_archive_start

	def_text_script CompText8781564_unk0
	ts_check_chapter [
		lower: 0x45,
		upper: 0x46,
		jumpIfInRange: 0x2,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Ahh! Don't go over\n"
	.string "there yet!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781564_unk1
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x3,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,this isn't the\n"
	.string "right way,is it?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781564_unk2
	ts_msg_open
	.string "The elevator is\n"
	.string "stopped..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781564_unk3
	ts_msg_open
	.string "The elevator won't\n"
	.string "move..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781564_unk4

	def_text_script CompText8781564_unk5
	ts_check_flag [
		flag: 0x112E,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x112D,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	ts_flag_set flag=0x112D
	.string "I'm looking for a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA5,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x8,
		buffer: 0x0,
	]
	.string "\" chip\n"
	.string "to give as a gift."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you've got one,\n"
	.string "would you like to\n"
	.string "trade for a"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0xCA,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xE,
		buffer: 0x0,
	]
	.string "\"!"
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
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x7, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x16
	.string "That's too bad..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781564_unk6
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "I'm looking for a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA5,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x8,
		buffer: 0x0,
	]
	.string "\" chip\n"
	.string "to give as a gift."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you've got one,\n"
	.string "would you like to\n"
	.string "trade for a"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0xCA,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xE,
		buffer: 0x0,
	]
	.string "\"!"
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
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x7, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x16
	.string "That's too bad..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781564_unk7
	ts_check_pack_chip_code [
		chip: 0xA5,
		code: 0x8,
		amount: 0x1,
		jumpIfEqual: 0xFF,
		jumpIfGreater: 0xFF,
		jumpIfLess: 0x8,
	]
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Awesome! Thanks!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0xCA,
		code: 0xE,
		amount: 0x1,
	]
	ts_item_take_chip [
		chip: 0xA5,
		code: 0x8,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xCA,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xE,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show mugshot=0x16
	.string "My friend is going\n"
	.string "to be very happy!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x112E
	ts_end

	def_text_script CompText8781564_unk8
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Huh...?\n"
	.string "You don't have one?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781564_unk9
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Thanks so much!\n"
	.string "My friend is going\n"
	.string "to be so happy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781564_unk10

	def_text_script CompText8781564_unk11

	def_text_script CompText8781564_unk12

	def_text_script CompText8781564_unk13

	def_text_script CompText8781564_unk14

	def_text_script CompText8781564_unk15

	def_text_script CompText8781564_unk16

	def_text_script CompText8781564_unk17

	def_text_script CompText8781564_unk18

	def_text_script CompText8781564_unk19

	