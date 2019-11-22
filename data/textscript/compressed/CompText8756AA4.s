	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8756AA4::
	.word 0x28700

	text_archive_start

	def_text_script CompText8756AA4_unk0
	ts_msg_open
	.string "Mom left a strict\n"
	.string "reminder on the\n"
	.string "memo pad."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Change the roll if\n"
	.string " the toilet paper\n"
	.string " runs out!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8756AA4_unk1
	ts_check_flag [
		flag: 0x542,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x5,
	]
	ts_msg_open
	.string "This new house's\n"
	.string "toilet is a high\n"
	.string "efficiency model."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It gets rid of nasty\n"
	.string "mold,fills the air\n"
	.string "with Minus Ions..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And even lets you\n"
	.string "jack in!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8756AA4_unk2
	ts_msg_open
	.string "... Well,at least\n"
	.string "changing the toilet\n"
	.string "paper is easy..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8756AA4_unk3
	ts_msg_open
	.string "The window is just\n"
	.string "a little too high,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but if you stand on\n"
	.string "your tiptoes,you\n"
	.string "can see the garden."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8756AA4_unk4
	ts_msg_open
	.string "The sink is still\n"
	.string "brand-spanking new."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It almost seems like\n"
	.string "a sin to use it and\n"
	.string "dirty it up..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8756AA4_unk5
	ts_msg_open
	.string "This new house's\n"
	.string "toilet is a high\n"
	.string "efficiency model."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It gets rid of nasty\n"
	.string "mold,and fills the\n"
	.string "air with Minus Ions."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	