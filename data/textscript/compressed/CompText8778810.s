	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8778810::
	.word 0x24500

	text_archive_start

	def_text_script CompText8778810_unk0
	ts_mugshot_show 0x16
	ts_msg_open
	.string "The show today was\n"
	.string "the best we've ever\n"
	.string "had!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's too bad we\n"
	.string "had so few people\n"
	.string "watching,though..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778810_unk1
	ts_check_chapter 0x42, 0x42, 0x5, 0xFF
	ts_mugshot_show 0x8
	ts_msg_open
	.string "That was a wonderful\n"
	.string "show."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was so moved by it\n"
	.string "that I can't move\n"
	.string "now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That trainer girl\n"
	.string "and the elephant\n"
	.string "seal..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can't you feel the\n"
	.string "way they respond to\n"
	.string "each other?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778810_unk2
	ts_msg_open
	.string "*aur,aur,aur,aur!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "It seems happy and\n"
	.string "satisfied..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778810_unk3

	def_text_script CompText8778810_unk4

	def_text_script CompText8778810_unk5
	ts_mugshot_show 0x8
	ts_msg_open
	.string "I'm going to check\n"
	.string "out when the next\n"
	.string "show is!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778810_unk6

	def_text_script CompText8778810_unk7

	def_text_script CompText8778810_unk8

	def_text_script CompText8778810_unk9

	def_text_script CompText8778810_unk10
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Without any viewers,\n"
	.string "now's not the time\n"
	.string "to put on a show..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if the\n"
	.string "weather will get\n"
	.string "better?"
	ts_key_wait 0x0
	ts_end

	