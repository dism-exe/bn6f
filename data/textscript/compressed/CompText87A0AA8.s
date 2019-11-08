	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A0AA8::
	.word 0x5B00

	text_archive_start

	def_text_script CompText87A0AA8_unk0
	ts_check_flag 0x72, 0xA, 0x1, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Wah! A virus!!"
	ts_key_wait 0x0
	ts_flag_set 0x71, 0xA
	ts_end

	def_text_script CompText87A0AA8_unk1
	ts_msg_open
	.string "The control panel\n"
	.string "is functioning\n"
	.string "normally."
	ts_key_wait 0x0
	ts_end

	