	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875D780::
	.word 0x7F00

	text_archive_start

	def_text_script CompText875D780_unk0
	ts_msg_open
	.string "Raging flames block\n"
	.string "the way."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "We have to stop the\n"
	.string "fire inside the\n"
	.string "computer to get rid"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "of these flames!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875D780_unk1

	def_text_script CompText875D780_unk2

	def_text_script CompText875D780_unk3

	def_text_script CompText875D780_unk4

	