	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A4980::
	.word 0x16800

	text_archive_start

	def_text_script CompText87A4980_unk0
	ts_msg_open
	.string "And so we left\n"
	.string "ACDC Town,and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "arrived in Central\n"
	.string "Town,the heart of\n"
	.string "Cyber City,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to begin our new\n"
	.string "lives."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm still a little\n"
	.string "sad,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "unpacking everything\n"
	.string "makes me feel like"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm getting ready\n"
	.string "for a new adventure!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A4980_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan,let's take\n"
	.string "a look around our\n"
	.string "new home,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and then check out\n"
	.string "Central Town!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87A4980_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Sounds like fun!\n"
	.string "Let's go!!"
	ts_key_wait 0x0
	ts_end

	