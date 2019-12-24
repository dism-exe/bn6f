	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A4DD0::
	.word 0x3600

	text_archive_start

	def_text_script CompText87A4DD0_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87A4DD0_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,there's more!!"
	ts_key_wait any=0x0
	ts_end

	