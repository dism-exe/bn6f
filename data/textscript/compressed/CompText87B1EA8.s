	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B1EA8::
	.word 0xB700

	text_archive_start

	def_text_script CompText87B1EA8_unk0
	ts_mugshot_show [
		mugshot: 0x54,
	]
	ts_msg_open
	.string "... The show's\n"
	.string "not over!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll remember this!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1EA8_unk1
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "What a load of\n"
	.string "hot air!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright,time to\n"
	.string "burn outta here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1EA8_unk2
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "I've gotta hurry\n"
	.string "back to MegaMan,\n"
	.string "drip!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	