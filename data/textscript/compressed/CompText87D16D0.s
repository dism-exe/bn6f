	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D16D0::
	.word 0x12000

	text_archive_start

	def_text_script CompText87D16D0_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "If we climb this,we\n"
	.string "can get into to the\n"
	.string "Principal's Office."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D16D0_unk1
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Let's stay calm and\n"
	.string "find a more normal\n"
	.string "route,Lan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D16D0_unk2
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Over here!\n"
	.string "They're over here!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D16D0_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "No...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D16D0_unk4
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Leave them to me...\n"
	.string "You go ahead."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D16D0_unk5_id

	def_text_script CompText87D16D0_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Chaud!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D16D0_unk6_id

	def_text_script CompText87D16D0_unk6
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Hurry!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D16D0_unk7_id

	def_text_script CompText87D16D0_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK!!"
	ts_key_wait any=0x0
	ts_end

	