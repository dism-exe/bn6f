	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D2ABC::
	.word 0xFD00

	text_archive_start

	def_text_script CompText87D2ABC_unk0
	ts_mugshot_show [
		mugshot: 0x54,
	]
	ts_msg_open
	.string "Hey,ho,it's MegaMan!\n"
	.string "I won't let you get\n"
	.string "in Yuika's way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Get ready to be\n"
	.string "deleted!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87D2ABC_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87D2ABC_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "We can't let them\n"
	.string "get away with this!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87D2ABC_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87D2ABC_unk4
	ts_mugshot_show [
		mugshot: 0x54,
	]
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	