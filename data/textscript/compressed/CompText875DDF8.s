	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DDF8::
	.word 0x7D00

	text_archive_start

	def_text_script CompText875DDF8_unk0
	ts_msg_open
	.string "A hot cloud is\n"
	.string "blocking the way!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875DDF8_unk1
	ts_msg_open
	.string "This is the control\n"
	.string "panel for this\n"
	.string "pavilion..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It is operating\n"
	.string "normally."
	ts_key_wait any=0x0
	ts_end

	