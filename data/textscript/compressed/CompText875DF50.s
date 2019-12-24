	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DF50::
	.word 0x2300

	text_archive_start

	def_text_script CompText875DF50_unk0
	ts_msg_open
	.string "It's a BBS..."
	ts_key_wait any=0x0
	ts_start_b_b_s bbs=0x1
	ts_end

	def_text_script CompText875DF50_unk1

	def_text_script CompText875DF50_unk2

	def_text_script CompText875DF50_unk3

	def_text_script CompText875DF50_unk4

	