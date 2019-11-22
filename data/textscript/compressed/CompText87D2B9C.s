	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D2B9C::
	.word 0xB300

	text_archive_start

	def_text_script CompText87D2B9C_unk0
	ts_mugshot_show [
		mugshot: 0x54,
	]
	ts_msg_open
	.string "Aaaaaaah...!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yuika...\n"
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2B9C_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "CircusMan...\n"
	.string "He was tough..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87D2B9C_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan,the switch!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87D2B9C_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Got it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2B9C_unk4
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Here we go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	