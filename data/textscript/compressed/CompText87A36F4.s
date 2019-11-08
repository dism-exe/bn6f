	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A36F4::
	.word 0x8F00

	text_archive_start

	def_text_script CompText87A36F4_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO THE EXPO\n"
	.string "MASCOT'S COMP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THIS MASCOT WAS\n"
	.string "DESIGNED ALONGSIDE\n"
	.string "THE COPYBOT."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT WAS DESIGNED BY\n"
	.string "A VERY FAMOUS\n"
	.string "DESIGNER!"
	ts_key_wait 0x0
	ts_end

	