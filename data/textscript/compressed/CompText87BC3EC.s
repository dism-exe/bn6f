	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BC3EC::
	.word 0xD500

	text_archive_start

	def_text_script CompText87BC3EC_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Alright! I got the\n"
	.string "4 cyberscrolls!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87BC3EC_unk1
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "Good work. I can\n"
	.string "feel you becoming\n"
	.string "one with the wind."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87BC3EC_unk2
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You still have much\n"
	.string "to learn..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Next is Green Area2."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87BC3EC_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "OK!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	