	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87DA494::
	.word 0x17900

	text_archive_start

	def_text_script CompText87DA494_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_mugshot_palette [
		palette: 0x6,
	]
	ts_msg_open
	.string "IT REALLY IS MIND\n"
	.string "OVER MATTER..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF YOU THINK THE\n"
	.string "FIRE'S COLD,AND\n"
	.string "REALLY THINK THAT,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0xA,
	]
	.string "."
	ts_wait [
		frames: 0xA,
	]
	.string "."
	ts_wait [
		frames: 0xA,
	]
	.string " NO,ACTUALLY,\n"
	.string "IT REALLY IS\n"
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	.string "HOOOOOOT!!!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87DA494_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Hold on!\n"
	.string "I'll save you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87DA494_unk2
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "*SIGH* THAT SAYING\n"
	.string "IS JUST A SAYING\n"
	.string "AFTER ALL..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "HOT IS HOT,NO MATTER\n"
	.string "WHAT YOU THINK!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I WON'T BE THAT\n"
	.string "NAIVE AGAIN!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "AND YOU,TOO! DON'T\n"
	.string "BE FOOLED,JUST BE\n"
	.string "CAREFUL!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	