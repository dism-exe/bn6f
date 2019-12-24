	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BEA78::
	.word 0x27500

	text_archive_start

	def_text_script CompText87BEA78_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh? Where's Tab?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Oh,he has to work\n"
	.string "so he went home\n"
	.string "already."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "... Huh? Was it\n"
	.string "supposed to rain\n"
	.string "today?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It was all sunny\n"
	.string "this morning..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87BEA78_unk1
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I'm pretty sure it\n"
	.string "was supposed to be\n"
	.string "sunny all day today."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BEA78_unk2
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "See?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87BEA78_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A-a-achoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BEA78_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Brrrrr!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is it just me,or\n"
	.string "did it get cold\n"
	.string "all of a sudden?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87BEA78_unk5
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Y-Yeah..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BEA78_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "S-S-Snow!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87BEA78_unk7
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Did something happen\n"
	.string "in Sky Town!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's like who knows\n"
	.string "what the weather's\n"
	.string "gonna do next!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'd better get\n"
	.string "going!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87BEA78_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I guess so."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87BEA78_unk9
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "See ya!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BEA78_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Wah! Now it's the\n"
	.string "wind!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gotta get home NOW!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BEA78_unk11
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_end

	