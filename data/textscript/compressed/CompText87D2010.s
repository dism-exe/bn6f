	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D2010::
	.word 0x14A00

	text_archive_start

	def_text_script CompText87D2010_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Get away from there,\n"
	.string "JudgeMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87D2010_unk1
	ts_mugshot_show mugshot=0x55
	ts_msg_open
	.string "I'm afraid I cannot.\n"
	.string "These words may be\n"
	.string "terribly overused,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "however,if thou\n"
	.string "wishes to proceed,\n"
	.string "thou must defeat me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87D2010_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87D2010_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I know! We don't\n"
	.string "have a choice!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go,MegaMan!\n"
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87D2010_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87D2010_unk5
	ts_mugshot_show mugshot=0x55
	ts_msg_open
	.string "Thou shall not pass!"
	ts_key_wait any=0x0
	ts_end

	