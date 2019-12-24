	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86CEE84::
	.word 0x63E00

	text_archive_start

	def_text_script CompText86CEE84_unk0
	ts_msg_open_menu
	.string "You found\n"
	.string "damaged Chip Data!"
	ts_wait_hold unused=0x0

	def_text_script CompText86CEE84_unk1
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "Not enough capacity."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk2
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You don't have\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " chips yet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Want to quit?\n"
	ts_sound_disable_choice_sfx
	ts_position_option_horizontal width=0x8
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
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script CompText86CEE84_unk3
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "The total capacity\n"
	.string "for this chip is \n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string "."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk4
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can only use\n"
	.string "1 of the same\n"
	.string "MegaChip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk5
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can only use\n"
	.string "1 of the same\n"
	.string "GigaChip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk6
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can use only\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " of the same\n"
	.string "MegaChip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk7
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can use only\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " of the same\n"
	.string "GigaChip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk8
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can use only\n"
	.string "1 of the same\n"
	.string "DarkChip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk9
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can use only\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " of the same\n"
	.string "DarkChips."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk10
	ts_check_item07 [
		item: 0xB,
		amount: 0x1,
		jumpIfEqual: 0x1B,
		jumpIfGreater: 0x1B,
		jumpIfLess: 0x16,
	]

	def_text_script CompText86CEE84_unk11
	ts_msg_open_menu_quick
	ts_msg_close_menu
	ts_end

	def_text_script CompText86CEE84_unk12
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "Choose the second\n"
	.string "chip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk13
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "I cancelled the\n"
	.string "current TagChip."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText86CEE84_unk14
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "That chip has\n"
	.string "already been chosen\n"
	.string "as a TagChip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk15
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "That chip has\n"
	.string "already been chosen\n"
	.string "as a Regular Chip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk16
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_jump target=19

	def_text_script CompText86CEE84_unk17
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x37
	ts_jump target=21

	def_text_script CompText86CEE84_unk18
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	ts_jump target=19

	def_text_script CompText86CEE84_unk19
	ts_mugshot_show mugshot=0x37
	.string "Choose the first\n"
	.string "chip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk20
	ts_msg_open_menu
	ts_jump target=21

	def_text_script CompText86CEE84_unk21
	ts_mugshot_show mugshot=0x37
	.string "Choose a chip to\n"
	.string "use as a Regular\n"
	.string "Chip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk22
	ts_msg_open_menu
	ts_text_speed delay=0x0
	ts_mugshot_show mugshot=0x37
	.string "What will you do,Lan?\n"
	ts_position_option_vertical width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Choose Regular Chip\n"
	ts_sound_disable_choice_sfx
	ts_select 0x5, 0x40, 0xFF, 0xFF
	ts_wait frames=0x1
	ts_wait_hold unused=0x0

	def_text_script CompText86CEE84_unk23
	ts_msg_open_menu
	ts_text_speed delay=0x0
	ts_mugshot_show mugshot=0x37
	.string "What will you do,Lan?\n"
	ts_position_option_horizontal width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Battle "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Change Rank\n"
	ts_position_option_horizontal width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Reg,TagChip Setting"
	ts_select 0x7, 0x20, 0xFF, 0xFF, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompText86CEE84_unk24
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "Waiting for orders!"
	ts_wait_hold unused=0x0

	def_text_script CompText86CEE84_unk25
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "Finished setting up\n"
	.string "the Regular Chip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk26
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "Finished setting up\n"
	.string "the TagChip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk27
	ts_msg_open_menu
	ts_text_speed delay=0x0
	ts_mugshot_show mugshot=0x37
	.string "What will you do,Lan?\n"
	ts_position_option_vertical width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Choose Regular Chip\n"
	ts_position_option_vertical width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Choose TagChip"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait frames=0x1
	ts_wait_hold unused=0x0

	def_text_script CompText86CEE84_unk28
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can only install\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " of the same\n"
	.string "0~19MB Chip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk29
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can only install\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " of the same\n"
	.string "20~29MB Chip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk30
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can only install\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " of the same\n"
	.string "30~39MB Chip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk31
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can only install\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " of the same\n"
	.string "40~49MB Chip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk32
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "You can only install\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " of the same\n"
	.string "50MB+ Chip."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText86CEE84_unk33
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	.string "Regular Chip\n"
	.string "settings released."
	ts_key_wait any=0x0
	ts_end

	