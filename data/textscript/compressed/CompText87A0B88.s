	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A0B88::
	.word 0x8B00

	text_archive_start

	def_text_script CompText87A0B88_unk0
	ts_check_flag [
		flag: 0xA74,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "If we could bring\n"
	.string "this back to\n"
	.string "normal......"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wah! A virus!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xA73,
	]
	ts_end

	def_text_script CompText87A0B88_unk1
	ts_msg_open
	.string "The control panel\n"
	.string "is functioning\n"
	.string "normally."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A0B88_unk2

	def_text_script CompText87A0B88_unk3

	def_text_script CompText87A0B88_unk4

	