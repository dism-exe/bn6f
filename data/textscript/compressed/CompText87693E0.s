	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87693E0::
	.word 0xE100

	text_archive_start

	def_text_script CompText87693E0_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What in the world!?\n"
	.string "In my own house...\n"
	.string "WOW!!!!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PENGUIN CAPTURE..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x11AB,
	]
	ts_check_flag [
		flag: 0x11AF,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_check_flag [
		flag: 0x11AE,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_check_flag [
		flag: 0x11AD,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_check_flag [
		flag: 0x11AC,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_check_flag [
		flag: 0x11AB,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "All the penguins\n"
	.string "gathered here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright,time to go\n"
	.string "back to the\n"
	.string "requestor's place!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87693E0_unk1
	ts_end

	def_text_script CompText87693E0_unk2

	def_text_script CompText87693E0_unk3

	def_text_script CompText87693E0_unk4

	def_text_script CompText87693E0_unk5

	def_text_script CompText87693E0_unk6

	def_text_script CompText87693E0_unk7

	def_text_script CompText87693E0_unk8

	def_text_script CompText87693E0_unk9

	