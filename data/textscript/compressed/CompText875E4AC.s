	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875E4AC::
	.word 0x7500

	text_archive_start

	def_text_script CompText875E4AC_unk0
	ts_check_chapter [
		lower: 0x44,
		upper: 0x44,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 5,
	]

	def_text_script CompText875E4AC_unk1

	def_text_script CompText875E4AC_unk2

	def_text_script CompText875E4AC_unk3

	def_text_script CompText875E4AC_unk4

	def_text_script CompText875E4AC_unk5
	ts_msg_open
	.string "The control panel\n"
	.string "is operating\n"
	.string "normally."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875E4AC_unk6
	ts_check_flag [
		flag: 0xA20,
		jumpIfTrue: 0x5,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA1F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x5,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... A v-virus!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xA71,
	]
	ts_end

	def_text_script CompText875E4AC_unk7

	def_text_script CompText875E4AC_unk8

	def_text_script CompText875E4AC_unk9

	