	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879F6A0::
	.word 0x9500

	text_archive_start

	def_text_script CompText879F6A0_unk0
	ts_check_flag [
		flag: 0xA6C,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I've spotted an\n"
	.string "abnormality in\n"
	.string "the control panel!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Wah! A virus!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xA6B
	ts_end

	def_text_script CompText879F6A0_unk1
	ts_msg_open
	.string "The control panel\n"
	.string "is functioning\n"
	.string "normally."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879F6A0_unk2

	def_text_script CompText879F6A0_unk3

	def_text_script CompText879F6A0_unk4

	