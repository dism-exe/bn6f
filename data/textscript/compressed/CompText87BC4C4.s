	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BC4C4::
	.word 0xBD00

	text_archive_start

	def_text_script CompText87BC4C4_unk0
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "... Green Area2\n"
	.string "already! Good."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "4 cyberscrolls wait\n"
	.string "for you here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Focus your mind,\n"
	.string "young one,and go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87BC4C4_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "4,huh..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright,let's go,\n"
	.string "TenguMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87BC4C4_unk2
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "Onward!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	