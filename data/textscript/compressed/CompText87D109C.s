	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D109C::
	.word 0x3800

	text_archive_start

	def_text_script CompText87D109C_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Whoooooooaaaaaaa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D109C_unk1
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Oooooooooohh!!"
	ts_key_wait any=0x0
	ts_end

	