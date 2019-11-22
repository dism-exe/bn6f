	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C0484::
	.word 0x7300

	text_archive_start

	def_text_script CompText87C0484_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "We can't let them\n"
	.string "get their hands on\n"
	.string "the Force Program!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's up to you,\n"
	.string "MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87C0484_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Roger!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	