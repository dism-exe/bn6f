	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D4DE0::
	.word 0x2E000

	text_archive_start

	def_text_script CompText87D4DE0_unk0
	ts_check_game_version 0xFF, 0x1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Cybeast... Gregar!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D4DE0_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Cybeast... Falzar!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D4DE0_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "If we don't beat him\n"
	.string "now,there won't be\n"
	.string "a tomorrow!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87D4DE0_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Yeah!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D4DE0_unk4
	ts_mugshot_show 0x53
	ts_msg_open
	.string "You made it,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I never thought we\n"
	.string "would fight side by\n"
	.string "side again."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Our opponents are\n"
	.string "the Cybeasts. Be\n"
	.string "extra careful!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87D4DE0_unk5
	ts_mugshot_show 0x11
	ts_msg_open
	.string "Colonel,MegaMan,\n"
	.string "get ready!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D4DE0_unk6
	ts_check_game_version 0xFF, 0x7
	ts_msg_open
	ts_store_timer 0x1, 0x80
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x91, 0x1
	.string "*roooooooooar!!*"
	ts_wait 0x5A, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var 0x1, 0x81
	ts_store_timer 0x1, 0x82
	ts_end

	def_text_script CompText87D4DE0_unk7
	ts_msg_open
	ts_store_timer 0x1, 0x80
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x93, 0x1
	.string "*screeeeeeech!!*"
	ts_wait 0x46, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var 0x1, 0x81
	ts_store_timer 0x1, 0x82
	ts_end

	def_text_script CompText87D4DE0_unk8
	ts_mugshot_show 0x1D
	ts_msg_open
	.string "You stupid fools!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Cybeasts are\n"
	.string "more powerful than\n"
	.string "you can imagine!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87D4DE0_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It doesn't matter!\n"
	.string "We will stop you,\n"
	.string "Dr.Wily!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go,MegaMan!\n"
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87D4DE0_unk10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87D4DE0_unk11
	ts_check_game_version 0xFF, 0xC
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer 0x1, 0x83
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x91, 0x1
	.string "*roooooooooar!!*"
	ts_wait 0x5A, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var 0x1, 0x84
	ts_store_timer 0x1, 0x85
	ts_end

	def_text_script CompText87D4DE0_unk12
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer 0x1, 0x83
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x93, 0x1
	.string "*screeeeeeech!!*"
	ts_wait 0x46, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var 0x1, 0x84
	ts_store_timer 0x1, 0x85
	ts_end

	