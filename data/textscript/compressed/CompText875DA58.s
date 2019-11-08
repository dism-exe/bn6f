	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DA58::
	.word 0x5100

	text_archive_start

	def_text_script CompText875DA58_unk0
	ts_msg_open
	.string "If you don't hit the\n"
	.string "release button,this\n"
	.string "door will not open."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875DA58_unk1
	ts_jump 0

	def_text_script CompText875DA58_unk2
	ts_jump 0

	