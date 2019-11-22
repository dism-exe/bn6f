	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876FE2C::
	.word 0x37300

	text_archive_start

	def_text_script CompText876FE2C_unk0
	ts_check_item07 0x1, 0x1, 0x1, 0x1, 0xFF
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xCF, 0x1
	.string "*beeep* "
	ts_wait 0x10, 0x0
	ts_sound_play00 0xCF, 0x1
	.string "*beeep*"
	ts_wait 0x10, 0x0
	.string "\n"
	ts_sound_play00 0xCF, 0x1
	.string "*beeep* "
	ts_wait 0x10, 0x0
	ts_sound_play00 0xCF, 0x1
	.string "*beeep*"
	ts_wait 0x10, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	.string "PLEASE SHOW YOUR\n"
	.string "STUDENT ID."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk1
	ts_msg_open
	.string "Lan used:\n"
	.string "\""
	ts_print_item 0x1, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The lock on the\n"
	.string "gate opened!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x51, 0x1
	.string "*beeep* "
	ts_wait 0x14, 0x0
	.string "\n"
	ts_flag_clear 0xF, 0x0
	ts_sound_play00 0x76, 0x1
	.string "*click*"
	ts_wait 0x14, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_flag_set 0x26, 0x17
	ts_flag_set 0x97, 0x4
	ts_end

	def_text_script CompText876FE2C_unk2
	ts_check_chapter 0x3, 0x4, 0x5, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,it's too early\n"
	.string "to go home!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk3
	ts_check_item07 0x3, 0x1, 0x4, 0x4, 0xFF
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xCF, 0x1
	.string "*beeep* "
	ts_wait 0x10, 0x0
	ts_sound_play00 0xCF, 0x1
	.string "*beeep*"
	ts_wait 0x10, 0x0
	.string "\n"
	ts_sound_play00 0xCF, 0x1
	.string "*beeep* "
	ts_wait 0x10, 0x0
	ts_sound_play00 0xCF, 0x1
	.string "*beeep*"
	ts_wait 0x10, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	.string "PLEASE SHOW YOUR\n"
	.string "TEACHERID."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk4
	ts_msg_open
	.string "Lan used:\n"
	.string "\""
	ts_print_item 0x3, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The lock on the\n"
	.string "gate opened!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x51, 0x1
	.string "*beeep* "
	ts_wait 0x14, 0x0
	ts_flag_clear 0x10, 0x0
	ts_sound_play00 0x76, 0x1
	.string "*click*"
	ts_wait 0x14, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_flag_set 0x26, 0x17
	ts_flag_set 0x98, 0x4
	ts_end

	def_text_script CompText876FE2C_unk5
	ts_msg_open
	.string "The Foyer door\n"
	.string "is locked tight."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk6

	def_text_script CompText876FE2C_unk7

	def_text_script CompText876FE2C_unk8

	def_text_script CompText876FE2C_unk9

	def_text_script CompText876FE2C_unk10
	ts_check_flag 0x3C, 0x5, 0xB, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,where are you\n"
	.string "going?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to ask a\n"
	.string "teacher about the\n"
	.string "penguin food!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,find the\n"
	.string "Biology teacher's\n"
	.string "aide."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk12
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,where are you\n"
	.string "going! We can't go\n"
	.string "home yet!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk13

	def_text_script CompText876FE2C_unk14

	def_text_script CompText876FE2C_unk15
	ts_msg_open
	.string "THE MAYOR IS HARD\n"
	.string "AT WORK NOW."
	ts_key_wait 0x0
	ts_clear_msg
	.string "SO YOU CAN'T GO\n"
	.string "INTO THIS ROOM."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk16
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Lan!! GO!\n"
	.string "Quick! While I've\n"
	.string "got their attention!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876FE2C_unk17

	def_text_script CompText876FE2C_unk18

	def_text_script CompText876FE2C_unk19

	