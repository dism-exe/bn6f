	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DF78::
	.word 0x2600

	text_archive_start

	def_text_script CompText875DF78_unk0
	ts_end

	def_text_script CompText875DF78_unk1
	ts_msg_open
	ts_msg_open
	.string "It's a BBS..."
	ts_key_wait any=0x0
	ts_start_b_b_s bbs=0x2
	ts_end

	def_text_script CompText875DF78_unk2

	def_text_script CompText875DF78_unk3

	def_text_script CompText875DF78_unk4

	