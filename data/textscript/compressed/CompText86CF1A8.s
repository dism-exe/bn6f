	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86CF1A8::
	.word 0x59800

	text_archive_start

	def_text_script CompText86CF1A8_unk0
	ts_msg_open_menu
	.string "You found\n"
	.string "damaged Chip Data!"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86CF1A8_unk1
	ts_msg_open_menu
	.string "Not enough capacity."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk2
	ts_msg_open_menu
	.string "You don't have\n"
	ts_print_buffer03 0x1, 0x1
	.string " chips yet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Quit?\n"
	ts_sound_disable_choice_sfx
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script CompText86CF1A8_unk3
	ts_msg_open_menu
	.string "The total capacity\n"
	.string "for this chip is \n"
	ts_print_buffer03 0x1, 0x1
	.string "."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk4
	ts_msg_open_menu
	.string "You can only use\n"
	.string "1 of the same\n"
	.string "MegaChip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk5
	ts_msg_open_menu
	.string "You can only use\n"
	.string "1 of the same\n"
	.string "GigaChip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk6
	ts_msg_open_menu
	.string "You can use only\n"
	ts_print_buffer03 0x1, 0x1
	.string " MegaChips."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk7
	ts_msg_open_menu
	.string "You can use only\n"
	ts_print_buffer03 0x1, 0x1
	.string " GigaChips."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk8
	ts_msg_open_menu
	.string "You can use only\n"
	.string "1 of the same\n"
	.string "DarkChip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk9
	ts_msg_open_menu
	.string "You can use only\n"
	ts_print_buffer03 0x1, 0x1
	.string " DarkChips."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk10
	ts_check_item07 0xB, 0x1, 0x1B, 0x1B, 0x16

	def_text_script CompText86CF1A8_unk11
	ts_msg_open_menu_quick
	ts_msg_close_menu
	ts_end

	def_text_script CompText86CF1A8_unk12
	ts_msg_open_menu
	.string "Choose a second\n"
	.string "chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk13
	ts_msg_open_menu
	.string "Current TagChip\n"
	.string "cancelled."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText86CF1A8_unk14
	ts_msg_open_menu
	.string "Chip has already\n"
	.string "been chosen\n"
	.string "as a TagChip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk15
	ts_msg_open_menu
	.string "Chip has already\n"
	.string "been chosen\n"
	.string "as a RegularChip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk16
	ts_msg_open_menu_quick
	ts_jump 19

	def_text_script CompText86CF1A8_unk17
	ts_msg_open_menu_quick
	ts_jump 21

	def_text_script CompText86CF1A8_unk18
	ts_msg_open_menu
	ts_jump 19

	def_text_script CompText86CF1A8_unk19
	.string "Choose the first\n"
	.string "chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk20
	ts_msg_open_menu
	ts_jump 21

	def_text_script CompText86CF1A8_unk21
	.string "Choose a chip to\n"
	.string "use as a Regular\n"
	.string "Chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk22
	ts_msg_open_menu
	ts_text_speed 0x0
	.string "What will you do?\n"
	ts_position_option_vertical 0x9
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string "Choose Regular Chip\n"
	ts_sound_disable_choice_sfx
	ts_select 0x5, 0x40, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86CF1A8_unk23
	ts_msg_open_menu
	ts_text_speed 0x0
	.string "What will you do?\n"
	ts_position_option_horizontal 0xC
	ts_option 0x0, 0x11, 0x22
	ts_space 0x1
	.string "Battle  "
	ts_option 0x0, 0x0, 0x22
	ts_space 0x1
	.string " Change Rank\n"
	ts_position_option_horizontal 0xC
	ts_option 0x0, 0x22, 0x0
	ts_space 0x1
	.string "Reg,TagChip Setting"
	ts_select 0x7, 0x20, 0xFF, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86CF1A8_unk24
	ts_msg_open_menu
	.string "Waiting for orders."
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86CF1A8_unk25
	ts_msg_open_menu
	.string "Finished setting up\n"
	.string "Regular Chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk26
	ts_msg_open_menu
	.string "Finished setting up\n"
	.string "the TagChip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk27
	ts_msg_open_menu
	ts_text_speed 0x0
	.string "What will you do?\n"
	ts_position_option_vertical 0x9
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string "Choose Regular Chip\n"
	ts_position_option_vertical 0x9
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string "Choose TagChip"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86CF1A8_unk28
	ts_msg_open_menu
	.string "You can only install\n"
	ts_print_buffer03 0x1, 0x1
	.string " of the same\n"
	.string "0~19MB Chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk29
	ts_msg_open_menu
	.string "You can only install\n"
	ts_print_buffer03 0x1, 0x1
	.string " of the same\n"
	.string "20~29MB Chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk30
	ts_msg_open_menu
	.string "You can only install\n"
	ts_print_buffer03 0x1, 0x1
	.string " of the same\n"
	.string "30~39MB Chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk31
	ts_msg_open_menu
	.string "You can only install\n"
	ts_print_buffer03 0x1, 0x1
	.string " of the same\n"
	.string "40~49MB Chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk32
	ts_msg_open_menu
	.string "You can only install\n"
	ts_print_buffer03 0x1, 0x1
	.string " of the same\n"
	.string "50MB+ Chip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText86CF1A8_unk33
	ts_msg_open_menu
	.string "Regular Chip\n"
	.string "settings released."
	ts_key_wait 0x0
	ts_end

	