	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BBEE4::
	.word 0x8C00

	text_archive_start

	def_text_script CompText87BBEE4_unk0
	ts_mugshot_show 0x12
	ts_msg_open
	.string "This is what you get\n"
	.string "for hiding the\n"
	.string "Security Bot!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And you get to do\n"
	.string "this for the whole\n"
	.string "day!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BBEE4_unk1
	ts_mugshot_show 0x14
	ts_msg_open
	.string "... Yes,Mr.Mach..."
	ts_key_wait 0x0
	ts_end

	