	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DB18::
	.word 0xB800

	text_archive_start

	def_text_script CompText875DB18_unk0
	ts_msg_open
	.string "If you don't hit the\n"
	.string "release button,this\n"
	.string "door will not open."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875DB18_unk1
	ts_jump target=CompText875DB18_unk0_id

	def_text_script CompText875DB18_unk2
	ts_jump target=CompText875DB18_unk0_id

	def_text_script CompText875DB18_unk3
	ts_msg_open
	.string "It's the control\n"
	.string "panel for the\n"
	.string "JudgeTree..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is where all of\n"
	.string "Cyber City's laws\n"
	.string "are kept..."
	ts_key_wait any=0x0
	ts_end

	