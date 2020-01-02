	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CBB50::
	.word 0x1F100

	text_archive_start

	def_text_script CompText87CBB50_unk0
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiir!!\n"
	.string "My drill's soundin'\n"
	.string "good today,foo'!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yo,I'm GroundMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If yo' talkin' about\n"
	.string "Net construction,I'm\n"
	.string "yo' man!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So yo' think we can\n"
	.string "get a move on here?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's work to do\n"
	.string "and my drill's\n"
	.string "achin' to get goin'!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CBB50_unk1_id

	def_text_script CompText87CBB50_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright,GroundMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CBB50_unk2_id

	def_text_script CompText87CBB50_unk2
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "We're finally gonna\n"
	.string "get started!\n"
	.string "Alright!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "First,I want you to\n"
	.string "take GroundMan to\n"
	.string "CentralArea2."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CBB50_unk3_id

	def_text_script CompText87CBB50_unk3
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We got some work?\n"
	.string "Can't wait!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CBB50_unk4_id

	def_text_script CompText87CBB50_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "He seems so...\n"
	.string "reliable,even if he\n"
	.string "talks kinda funny..."
	ts_key_wait any=0x0
	ts_end

	