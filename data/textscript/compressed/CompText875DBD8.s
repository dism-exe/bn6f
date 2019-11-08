	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DBD8::
	.word 0x2C00

	text_archive_start

	def_text_script CompText875DBD8_unk0
	ts_msg_open
	.string "A cybercloud is\n"
	.string "blocking the way."
	ts_key_wait 0x0
	ts_end

	