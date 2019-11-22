	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A044C::
	.word 0x7200

	text_archive_start

	def_text_script CompText87A044C_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "I'M THE SECURITY\n"
	.string "CAMERA PROGRAM."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF YOU SLEEP DURING\n"
	.string "CLASS THE CAMERA\n"
	.string "WILL CATCH YOU!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "HAHAHA..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	