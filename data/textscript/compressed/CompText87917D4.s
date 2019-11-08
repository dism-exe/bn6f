	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87917D4::
	.word 0x11600

	text_archive_start

	def_text_script CompText87917D4_unk0
	ts_msg_open
	.string "The data remains\n"
	.string "of a Navi..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It keeps saying the\n"
	.string "same thing over and\n"
	.string "over again..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x43
	.string "L...B...B...\n"
	.string "R...B...A...A...\n"
	.string "...LRR..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87917D4_unk1
	ts_msg_open
	.string "The data remains\n"
	.string "of a Navi..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It keeps saying the\n"
	.string "same thing over and\n"
	.string "over again..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x43
	.string "A...R...L...\n"
	.string "A...L...A...L...\n"
	.string "...LAB..."
	ts_key_wait 0x0
	ts_end

	