	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8754620::
	.word 0x4B00

	text_archive_start

	def_text_script CompText8754620_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Talk about one scary\n"
	.string "place... I'm getting\n"
	.string "the chills!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8754620_unk1

	def_text_script CompText8754620_unk2

	def_text_script CompText8754620_unk3

	def_text_script CompText8754620_unk4

	