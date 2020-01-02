	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8791878::
	.word 0x21300

	text_archive_start

	def_text_script CompText8791878_unk0
	ts_check_flag [
		flag: 0x7F7,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8791878_unk5_id,
	]
	ts_check_flag [
		flag: 0x68D,
		jumpIfTrue: CompText8791878_unk2_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "T-Take these..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_sound_play00 track=0x182
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside "
	ts_print_current_navi_ow
	.string "."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_call_reload_soul_weapons
	ts_flag_set flag=0x68D
	ts_end

	def_text_script CompText8791878_unk1

	def_text_script CompText8791878_unk2
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Reload the\n"
	.string "SoulWeapons?"
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
	ts_select 0x6, 0x80, 0x3, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Do...do your best..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791878_unk3
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Reloading the Soul\n"
	.string "Weapons require a\n"
	.string "bit of time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "During that time,\n"
	.string "the EvilSpirits you\n"
	.string "have already taken"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "care of in this\n"
	.string "area may come back\n"
	.string "to haunt you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That OK with you?"
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
	ts_select 0x6, 0x80, 0xFF, 0x4, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Do...do your best..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x746
	ts_end

	def_text_script CompText8791878_unk4
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "T-Take care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791878_unk5
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "There is no\n"
	.string "response..."
	ts_key_wait any=0x0
	ts_end

	