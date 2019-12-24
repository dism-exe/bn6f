	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8791A28::
	.word 0xAC00

	text_archive_start

	def_text_script CompText8791A28_unk0
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText8791A28_unk1_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh?\n"
	.string "What is this chip..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0x130,
		code: 0x10,
		amount: 0x1,
	]
	ts_flag_set flag=0x223
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_chip2
	.string " "
	ts_print_code [
		code: 0x10,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791A28_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh?\n"
	.string "What is this chip..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0x135,
		code: 0x9,
		amount: 0x1,
	]
	ts_flag_set flag=0x223
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_chip2
	.string " "
	ts_print_code [
		code: 0x9,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791A28_unk2

	def_text_script CompText8791A28_unk3

	def_text_script CompText8791A28_unk4

	