	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A8928::
	.word 0x1C400

	text_archive_start

	def_text_script CompText87A8928_unk0
	ts_mugshot_show [
		mugshot: 0x51,
	]
	ts_msg_open
	.string "Kwohohoho...\n"
	.string "You made it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I applaud you for\n"
	.string "reaching me\n"
	.string "unburnt..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I doubt that\n"
	.string "even you can stay\n"
	.string "cool-headed forever."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Kwohohoho..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87A8928_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "BlastMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I won't let you\n"
	.string "get away with this!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87A8928_unk2
	ts_mugshot_show [
		mugshot: 0x51,
	]
	ts_msg_open
	.string "You can't stand up\n"
	.string "to me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll delete every\n"
	.string "last fragment of\n"
	.string "your data."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Kwohohoho..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87A8928_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Here he comes,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87A8928_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Gotcha!!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87A8928_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Execute!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87A8928_unk6
	ts_mugshot_show [
		mugshot: 0x51,
	]
	ts_msg_open
	.string "Burn to ashes!!\n"
	.string "Kwohohoho..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	