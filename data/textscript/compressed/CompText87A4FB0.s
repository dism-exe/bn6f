	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A4FB0::
	.word 0x4200

	text_archive_start

	def_text_script CompText87A4FB0_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Don't give up,\n"
	.string "MegaMan! Try again!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87A4FB0_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "OK!!"
	ts_key_wait 0x0
	ts_end

	