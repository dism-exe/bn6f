	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A8AAC::
	.word 0x1A500

	text_archive_start

	def_text_script CompText87A8AAC_unk0
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	.string "K-Kwooooo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "To l-lose to a\n"
	.string "brat like you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*huff,huff...*\n"
	.string "How could things\n"
	.string "have come to this..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "H-He's going to give\n"
	.string "me another one of\n"
	.string "his lectures!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Kwooo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8AAC_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Wah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8AAC_unk2_id

	def_text_script CompText87A8AAC_unk2
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	.string "You have won this\n"
	.string "battle,but this is\n"
	.string "only round 1."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*huff,huff...*\n"
	.string "N-Next time,you'll\n"
	.string "be burnt to a crisp!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8AAC_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "W-Wait!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8AAC_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan,are you OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Things are OK here.\n"
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8AAC_unk5_id

	def_text_script CompText87A8AAC_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!!"
	ts_key_wait any=0x0
	ts_end

	