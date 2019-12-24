	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B45A4::
	.word 0x1B700

	text_archive_start

	def_text_script CompText87B45A4_unk0
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Reporting in,sir!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CentralArea1,2,and 3\n"
	.string "are all clear!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87B45A4_unk1
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Didn't that Navi\n"
	.string "incident happen here\n"
	.string "a few days ago...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87B45A4_unk2
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Ah,yes,sir. We day\n"
	.string "patrol officers took\n"
	.string "care of it,though..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87B45A4_unk3
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hmm... That may be\n"
	.string "true,but it's too\n"
	.string "quiet around here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's times like\n"
	.string "these when..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "You're over-thinking\n"
	.string "the situation,sir..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B45A4_unk4
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Yeah..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "As long as this\n"
	.string "isn't the calm\n"
	.string "before the storm..."
	ts_key_wait any=0x0
	ts_end

	