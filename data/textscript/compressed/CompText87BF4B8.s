	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BF4B8::
	.word 0xBC00

	text_archive_start

	def_text_script CompText87BF4B8_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "OK!\n"
	.string "It's stopped\n"
	.string "raining!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Jack out,MegaMan,and\n"
	.string "let's hurry on!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87BF4B8_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Roger!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BF4B8_unk2
	ts_check_flag [
		flag: 0xA1C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_check_flag [
		flag: 0xA1E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_check_flag [
		flag: 0xA20,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_check_flag [
		flag: 0xA22,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "We've cleared the\n"
	.string "path now,so let's\n"
	.string "go,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "OK!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	