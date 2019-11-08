	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A3B08::
	.word 0x8100

	text_archive_start

	def_text_script CompText87A3B08_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I WILL EXPLAIN A\n"
	.string "COPYBOT'S STRUCTURE\n"
	.string "AT THIS PANEL!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU'VE GOT A\n"
	.string "COPYBOT QUESTION,\n"
	.string "I'VE GOT AN ANSWER!"
	ts_key_wait 0x0
	ts_end

	