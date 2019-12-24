	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D2730::
	.word 0x8600

	text_archive_start

	def_text_script CompText87D2730_unk0
	ts_mugshot_show mugshot=0x56
	ts_msg_open
	.string "PIKIRIRI... PIKI\n"
	.string "RARA...... PIRA...\n"
	.string "RIRI... RA..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D2730_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan,the switch!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87D2730_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Got it!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D2730_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Here we go!"
	ts_key_wait any=0x0
	ts_end

	