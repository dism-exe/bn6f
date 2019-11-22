	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877DF6C::
	.word 0xE600

	text_archive_start

	def_text_script CompText877DF6C_unk0
	ts_check_chapter [
		lower: 0x33,
		upper: 0x33,
		jumpIfInRange: 0x1,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "If you don't tell\n"
	.string "the JudgeTree to"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "stop punishing,it\n"
	.string "won't do it."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's the system!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877DF6C_unk1
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "Huh!? The Judge\n"
	.string "Tree's run amuck!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's nuts! The\n"
	.string "JudgeTree is a\n"
	.string "perfect system!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why is this\n"
	.string "happening..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	