	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D1DD0::
	.word 0x2A300

	text_archive_start

	def_text_script CompText87D1DD0_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x1B, 0x1
	.string "*shuffle,"
	ts_wait 0x10, 0x0
	ts_sound_play00 0x1B, 0x1
	.string "shuffle*"
	ts_wait 0x20, 0x0
	.string "\n"
	ts_sound_play00 0xB9, 0x1
	.string "*thump,"
	ts_wait 0x20, 0x0
	ts_sound_play00 0xB9, 0x1
	.string "thump*"
	ts_wait 0x10, 0x0
	.string "\n"
	ts_sound_play00 0xB9, 0x1
	.string "*thud,"
	ts_wait 0x10, 0x0
	ts_sound_play00 0xB9, 0x1
	.string "thud!!*"
	ts_wait 0x10, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87D1DD0_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's with this\n"
	.string "passage? I wonder\n"
	.string "where it goes?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh,I think I see\n"
	.string "the end!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1DD0_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Phew..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder where I am\n"
	.string "now...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87D1DD0_unk3
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Urgh,you again!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1DD0_unk4
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Ito,hurry it up!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87D1DD0_unk5
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Why am I the only\n"
	.string "one working...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "JudgeMan,I'm leaving\n"
	.string "you to take care of\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87D1DD0_unk6
	ts_mugshot_show 0x55
	ts_msg_open
	.string "With pleasure..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1DD0_unk7
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Shall we get going?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1DD0_unk8
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "JudgeMan,stand your\n"
	.string "ground."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1DD0_unk9
	ts_mugshot_show 0x55
	ts_msg_open
	.string "Trust in me!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1DD0_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Looks like we've\n"
	.string "gotta jack into that\n"
	.string "Earth machine and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "defeat JudgeMan,or\n"
	.string "else we can't go any\n"
	.string "further!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's do it,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87D1DD0_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "OK!!"
	ts_key_wait 0x0
	ts_end

	