	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A0B20::
	.word 0x6B00

	text_archive_start

	def_text_script CompText87A0B20_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "I'M THE HEATER\n"
	.string "PROGRAM!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I DON'T JUST HEAT\n"
	.string "THE ROOM,I HEAT THE\n"
	.string "SOUL AS WELL!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "HOT HOT HOT!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	