	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87ACA44::
	.word 0x1A000

	text_archive_start

	def_text_script CompText87ACA44_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Why is there a\n"
	.string "CopyBot here?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And isn't this the\n"
	.string "one from school...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87ACA44_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan! This is it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87ACA44_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What do you\n"
	.string "mean,MegaMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87ACA44_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "If you transfer me\n"
	.string "into this CopyBot,\n"
	.string "then it doesn't"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "matter if I get\n"
	.string "stung,and I can\n"
	.string "swim freely!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We can get the\n"
	.string "seal's ball this\n"
	.string "way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87ACA44_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "You're right!\n"
	.string "This is the answer!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87ACA44_unk5
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... That mysterious\n"
	.string "girl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Did she come to\n"
	.string "help us out...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	