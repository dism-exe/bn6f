	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D21D4::
	.word 0x5500

	text_archive_start

	def_text_script CompText87D21D4_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright,now we can\n"
	.string "get through!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D21D4_unk1_id

	def_text_script CompText87D21D4_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!!"
	ts_key_wait any=0x0
	ts_end

	