	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875D974::
	.word 0x3F00

	text_archive_start

	def_text_script CompText875D974_unk0
	ts_msg_open
	.string "\"THIS DOOR IS\n"
	.string " CLOSED DUE TO THE\n"
	.string " CURRENT EMERGENCY\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	