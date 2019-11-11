	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D7B68::
	.word 0x3800

	text_archive_start

	def_text_script CompText87D7B68_unk0
	ts_msg_open
	.string "Sky Town..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D7B68_unk1
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Aaaaaaaah!!\n"
	.string "Mr.Weather!!"
	ts_key_wait 0x0
	ts_end

	