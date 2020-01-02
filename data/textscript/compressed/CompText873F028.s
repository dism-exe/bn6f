	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText873F028::
	.word 0x1D00

	text_archive_start

	def_text_script CompText873F028_unk0
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F028_unk1

	def_text_script CompText873F028_unk2

	def_text_script CompText873F028_unk3

	def_text_script CompText873F028_unk4

	