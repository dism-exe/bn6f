	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A1090::
	.word 0x7F00

	text_archive_start

	def_text_script CompText87A1090_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS VENDING MACHINE\n"
	.string "HAS A NEW PRODUCT!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT'S CALLED \"AWESOME\n"
	.string "WATER EX\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ITS MILD FLAVOR IS\n"
	.string "ABSOLUTELY GREAT!!"
	ts_key_wait 0x0
	ts_end

	