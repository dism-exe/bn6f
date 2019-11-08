	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87969DC::
	.word 0x15600

	text_archive_start

	def_text_script CompText87969DC_unk0
	ts_mugshot_show 0x43
	ts_msg_open
	.string "You... You're not\n"
	.string "an Under dweller!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If that's true...\n"
	.string "It's your doom!!!!"
	ts_key_wait 0x0
	ts_flag_set 0x57, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87969DC_unk1
	ts_mugshot_show 0x43
	ts_msg_open
	.string "I wonder what would\n"
	.string "happen if people\n"
	.string "from the other side"
	ts_key_wait 0x0
	ts_clear_msg
	.string "just walked in\n"
	.string "here they like owned\n"
	.string "the place!?"
	ts_key_wait 0x0
	ts_flag_set 0x58, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87969DC_unk2
	ts_mugshot_show 0x43
	ts_msg_open
	.string "People from the\n"
	.string "other side hanging\n"
	.string "around... Ewww!"
	ts_key_wait 0x0
	ts_flag_set 0x59, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	