	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87DA5D8::
	.word 0x11F00

	text_archive_start

	def_text_script CompText87DA5D8_unk0
	ts_mugshot_show mugshot=0x3C
	ts_mugshot_palette palette=0x6
	ts_msg_open
	.string "EEEK! EEEK!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "GOSH,TELL ME I\n"
	.string "WASN'T LEFT BEHIND!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I SWEAR I'LL BE A\n"
	.string "GOOD LITTLE PROGRAM\n"
	.string "FROM NOW ON!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87DA5D8_unk1_id

	def_text_script CompText87DA5D8_unk1
	ts_mugshot_show mugshot=0x37
	.string "Have a little more\n"
	.string "faith! I'll save\n"
	.string "you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87DA5D8_unk2
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "... AH,\n"
	.string "YOU SAVED ME..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I REALLY SWEAR I'LL\n"
	.string "BE A GOOD PROGRAM\n"
	.string "FROM NOW ON,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "JUST LIKE YOU!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,BYE-BYE!"
	ts_key_wait any=0x0
	ts_end

	