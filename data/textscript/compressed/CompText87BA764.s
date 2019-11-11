	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BA764::
	.word 0xC000

	text_archive_start

	def_text_script CompText87BA764_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Is this..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "the JudgeTree's\n"
	.string "roots!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BA764_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "That's gotta be it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've gotta find a\n"
	.string "port to jack me in,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and then I'll stop\n"
	.string "the JudgeTree!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87BA764_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Got it!!"
	ts_key_wait 0x0
	ts_end

	