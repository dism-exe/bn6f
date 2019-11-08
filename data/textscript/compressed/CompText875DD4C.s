	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DD4C::
	.word 0xA700

	text_archive_start

	def_text_script CompText875DD4C_unk0
	ts_msg_open
	.string "If you don't hit the\n"
	.string "release button,this\n"
	.string "door will not open."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875DD4C_unk1
	ts_jump 0

	def_text_script CompText875DD4C_unk2
	ts_jump 0

	def_text_script CompText875DD4C_unk3
	ts_jump 0

	def_text_script CompText875DD4C_unk4
	ts_msg_open
	.string "This is the control\n"
	.string "panel for this\n"
	.string "pavilion..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is operating\n"
	.string "normally."
	ts_key_wait 0x0
	ts_end

	