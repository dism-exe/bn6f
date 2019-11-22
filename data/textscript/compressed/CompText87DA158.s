	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87DA158::
	.word 0xD500

	text_archive_start

	def_text_script CompText87DA158_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_mugshot_palette [
		palette: 0x6,
	]
	ts_msg_open
	.string "UWAAAAAN!\n"
	.string "UWAAAAAN!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BURNIIIIING!!\n"
	.string "SOMEOOOOONE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87DA158_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Calm down!\n"
	.string "I'm going to put\n"
	.string "the fire out now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87DA158_unk2
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "... PHEW!\n"
	.string "THAT WAS BAAAAD!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THERE ARE\n"
	.string "MANY DANGERS AHEAD!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PLEASE BE CAREFUL!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	