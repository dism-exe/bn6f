	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A4FFC::
	.word 0x21200

	text_archive_start

	def_text_script CompText87A4FFC_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Are you OK?\n"
	.string "Are you hurt?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't worry,we took\n"
	.string "care of the RoboDog!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A4FFC_unk1
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x75, 0x1
	.string "*woof,"
	ts_wait 0x10, 0x0
	ts_sound_play00 0x75, 0x1
	.string "woof!!*"
	ts_wait 0x10, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A4FFC_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Um...\n"
	.string "I'm Lan Hikari."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm new here--\n"
	.string "I just moved in."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What's your name?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87A4FFC_unk3
	ts_mugshot_show 0x11
	ts_msg_open
	.string "...nks...\n"
	.string "...or..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87A4FFC_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Huh?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87A4FFC_unk5
	ts_mugshot_show 0x11
	ts_msg_open
	.string "T-Thanks... for...\n"
	.string "helping... me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A4FFC_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's with her...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87A4FFC_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "She's embarrassed,\n"
	.string "I think..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A4FFC_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Oh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,she's not hurt,\n"
	.string "so I guess she\n"
	.string "should be OK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's get back to\n"
	.string "looking around town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A4FFC_unk9
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x75, 0x1
	.string "*woof,"
	ts_wait 0x10, 0x0
	ts_sound_play00 0x75, 0x1
	.string "woof!!*"
	ts_wait 0x10, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	