	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D27B0::
	.word 0x6000

	text_archive_start

	def_text_script CompText87D27B0_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,the path's back!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87D27B0_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We've gotta hurry!\n"
	.string "Jack me out!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87D27B0_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Roger!"
	ts_key_wait any=0x0
	ts_end

	