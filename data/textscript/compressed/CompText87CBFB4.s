	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CBFB4::
	.word 0x7700

	text_archive_start

	def_text_script CompText87CBFB4_unk0
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Looks like we took\n"
	.string "care of all the\n"
	.string "rocks in this area!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Time to get over to\n"
	.string "CentralArea1!"
	ts_key_wait any=0x0
	ts_end

	