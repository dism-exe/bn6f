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
	ts_sound_play00 track=0x174
	.string "*mwoof,"
	ts_wait frames=0x10
	.string "\n"
	ts_sound_play00 track=0x174
	.string "    mwoof,"
	ts_wait frames=0x10
	.string "\n"
	ts_sound_play00 track=0x174
	.string "       mwoof!!*"
	ts_wait frames=0x10
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87A4AE0_unk1
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A4AE0_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_sound_play_bgm track=0xC
	.string "That RoboDog is\n"
	.string "attacking that girl!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87A4AE0_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "But that's..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Normally,RoboDogs\n"
	.string "are programmed to\n"
	.string "never attack humans."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87A4AE0_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I know!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So that means that\n"
	.string "RoboDog..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87A4AE0_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "...is probably\n"
	.string "infected\n"
	.string "with a virus!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,press the\n"
	.string "R Button to send me\n"
	.string "into that RoboDog!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A4AE0_unk6
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "MegaMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87A4AE0_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,use the\n"
	.string "R Button to jack in!"
	ts_key_wait any=0x0
	ts_end

	