	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879A228::
	.word 0x5800

	text_archive_start

	def_text_script CompText879A228_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "It's a dead-end!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879A228_unk1

	def_text_script CompText879A228_unk2
	ts_msg_open
	.string "The cloud seems to\n"
	.string "be undergoing\n"
	.string "maintenance."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879A228_unk3

	def_text_script CompText879A228_unk4

	