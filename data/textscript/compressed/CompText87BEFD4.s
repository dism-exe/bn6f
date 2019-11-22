	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BEFD4::
	.word 0xBD00

	text_archive_start

	def_text_script CompText87BEFD4_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Piece of cake!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BEFD4_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Alright! The\n"
	.string "system's back\n"
	.string "to normal!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "How is it on your\n"
	.string "side,Lan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87BEFD4_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "The elevator's\n"
	.string "moving again!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK,off to Sky Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	