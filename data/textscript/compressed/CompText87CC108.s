	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CC108::
	.word 0xDF00

	text_archive_start

	def_text_script CompText87CC108_unk0
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Whiiiiiiir!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Looks like we took\n"
	.string "care of all the\n"
	.string "rocks in this area!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87CC108_unk1
	ts_mugshot_show 0x24
	ts_msg_open
	.string "Looks like you know\n"
	.string "what you're doing!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright,time for\n"
	.string "the big test!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jack out and head\n"
	.string "on down my way!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87CC108_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... OK!"
	ts_key_wait 0x0
	ts_end

	