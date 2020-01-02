	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A4EA8::
	.word 0x4200

	text_archive_start

	def_text_script CompText87A4EA8_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Don't give up,\n"
	.string "MegaMan! Try again!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A4EA8_unk1_id

	def_text_script CompText87A4EA8_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK!!"
	ts_key_wait any=0x0
	ts_end

	