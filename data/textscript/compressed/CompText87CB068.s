	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CB068::
	.word 0x16500

	text_archive_start

	def_text_script CompText87CB068_unk0
	ts_mugshot_show 0x44
	ts_msg_open
	.string "You did good today.\n"
	.string "Do good next time,\n"
	.string "too,you hear?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87CB068_unk1
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Gahahaha! Haven't\n"
	.string "let you down yet!\n"
	.string "Call me anytime!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CB068_unk2
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "So,Lan,you get why\n"
	.string "I'm so happy about\n"
	.string "getting trash,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This kind of work's\n"
	.string "pretty laid back!\n"
	.string "Well,it's test time!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's OK,right,\n"
	.string "Press?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87CB068_unk3
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Oh,yeah!\n"
	.string "Lan,jack out and\n"
	.string "meet up with me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87CB068_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK!"
	ts_key_wait 0x0
	ts_end

	