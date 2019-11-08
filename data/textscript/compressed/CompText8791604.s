	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8791604::
	.word 0x29500

	text_archive_start

	def_text_script CompText8791604_unk0
	ts_mugshot_show 0x42
	ts_msg_open
	.string "This is the...\n"
	.string "Underground..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It feels really\n"
	.string "oppressive..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791604_unk1
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You're just a\n"
	.string "regular Navi,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You shouldn't be\n"
	.string "in a place like\n"
	.string "this!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791604_unk2
	ts_mugshot_show 0x42
	ts_msg_open
	.string "It's too scary...\n"
	.string "I can't keep going!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791604_unk3

	def_text_script CompText8791604_unk4

	def_text_script CompText8791604_unk5
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The area where the\n"
	.string "Cybeasts are sealed\n"
	.string "is coming up..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791604_unk6
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The viruses are\n"
	.string "really strong around\n"
	.string "here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up and get\n"
	.string "back to Central\n"
	.string "Area!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791604_unk7
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I've gotten this\n"
	.string "far..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I'm scared...\n"
	.string "I have no idea what\n"
	.string "will happen next..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791604_unk8

	def_text_script CompText8791604_unk9

	def_text_script CompText8791604_unk10
	ts_mugshot_show 0x42
	ts_msg_open
	.string "A virus...\n"
	.string "It...got me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791604_unk11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Arrrggghhhhhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791604_unk12
	ts_mugshot_show 0x42
	ts_msg_open
	.string "・・・・・・・・・・・・"
	ts_key_wait 0x0
	ts_end

	