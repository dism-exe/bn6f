	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8755834::
	.word 0x15E00

	text_archive_start

	def_text_script CompText8755834_unk0
	ts_check_sub_area 0x2, 0x2, 0x1, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've got the chills\n"
	.string "from this area...\n"
	.string "Be careful..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8755834_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've got a bad\n"
	.string "feeling something's\n"
	.string "gonna happen..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Be very careful..."
	ts_key_wait 0x0
	ts_end

	