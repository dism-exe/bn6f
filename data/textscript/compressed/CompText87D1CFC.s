	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D1CFC::
	.word 0x3900

	text_archive_start

	def_text_script CompText87D1CFC_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's up to you,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87D1CFC_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Roger!"
	ts_key_wait 0x0
	ts_end

	