	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8791A28::
	.word 0xAC00

	text_archive_start

	def_text_script CompText8791A28_unk0
	ts_check_game_version 0xFF, 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Huh?\n"
	.string "What is this chip..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x30, 0x1, 0x10, 0x1
	ts_flag_set 0x23, 0x2
	ts_player_animate_object 0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_chip2 0x3, 0x0
	.string " "
	ts_print_code 0x1, 0x0
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791A28_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Huh?\n"
	.string "What is this chip..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x35, 0x1, 0x9, 0x1
	ts_flag_set 0x23, 0x2
	ts_player_animate_object 0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_chip2 0x3, 0x50
	.string " "
	ts_print_code 0x0, 0x90
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_end

	