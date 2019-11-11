	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A4AE0::
	.word 0x1E400

	text_archive_start

	def_text_script CompText87A4AE0_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x74, 0x1
	.string "*mwoof,"
	ts_wait 0x10, 0x0
	.string "\n"
	ts_sound_play00 0x74, 0x1
	.string "    mwoof,"
	ts_wait 0x10, 0x0
	.string "\n"
	ts_sound_play00 0x74, 0x1
	.string "       mwoof!!*"
	ts_wait 0x10, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87A4AE0_unk1
	ts_mugshot_show 0x11
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A4AE0_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	ts_sound_play_bgm 0xC, 0x0
	.string "That RoboDog is\n"
	.string "attacking that girl!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87A4AE0_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "But that's..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Normally,RoboDogs\n"
	.string "are programmed to\n"
	.string "never attack humans."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87A4AE0_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I know!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So that means that\n"
	.string "RoboDog..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87A4AE0_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "...is probably\n"
	.string "infected\n"
	.string "with a virus!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,press the\n"
	.string "R Button to send me\n"
	.string "into that RoboDog!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A4AE0_unk6
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "MegaMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87A4AE0_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,use the\n"
	.string "R Button to jack in!"
	ts_key_wait 0x0
	ts_end

	