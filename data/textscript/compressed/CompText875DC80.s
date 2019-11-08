	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DC80::
	.word 0xC200

	text_archive_start

	def_text_script CompText875DC80_unk0
	ts_msg_open
	.string "\"THIS DOOR IS\n"
	.string " CLOSED DUE TO THE\n"
	.string " CURRENT EMERGENCY\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875DC80_unk1
	ts_check_flag 0x67, 0xE, 0x2, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Check the\n"
	.string "control panel!!"
	ts_key_wait 0x0
	ts_flag_set 0x67, 0xE
	ts_end

	def_text_script CompText875DC80_unk2
	ts_msg_open
	.string "This is the control\n"
	.string "panel for this\n"
	.string "pavilion..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is operating\n"
	.string "normally."
	ts_key_wait 0x0
	ts_end

	