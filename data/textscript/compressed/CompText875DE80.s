	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DE80::
	.word 0x9600

	text_archive_start

	def_text_script CompText875DE80_unk0
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875DE80_unk1
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

	