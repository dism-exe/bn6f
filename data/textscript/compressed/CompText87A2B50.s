	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A2B50::
	.word 0x9400

	text_archive_start

	def_text_script CompText87A2B50_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I AM THE WATER\n"
	.string "PIPE PROGRAM."
	ts_key_wait 0x0
	ts_clear_msg
	.string "CYBER CITY'S CLEAN\n"
	.string "WATER PROCESSING IS\n"
	.string "VERY EFFECTIVE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "SO FEEL AT EASE\n"
	.string "WHEN DRINKING OUR\n"
	.string "TASTY WATER!"
	ts_key_wait 0x0
	ts_end

	