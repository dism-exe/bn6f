	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C41E4::
	.word 0x34600

	text_archive_start

	def_text_script CompText87C41E4_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Heh,heh,I can't\n"
	.string "believe people\n"
	.string "remember me."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm really touched!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87C41E4_unk1
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Well of course they\n"
	.string "do."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,MegaMan shows\n"
	.string "up on TV everyday!\n"
	.string "And when people see"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that commercial,they\n"
	.string "are supposed to\n"
	.string "think of you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And by supposed to,I\n"
	.string "mean dragged,kicking\n"
	.string "and screaming..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87C41E4_unk2
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Hey,speaking of\n"
	.string "MegaMan,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "let's go on the Net\n"
	.string "like we used to!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87C41E4_unk3
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Yeah! Sounds good!\n"
	.string "Roll wants to see\n"
	.string "MegaMan too!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87C41E4_unk4
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Alright then,let's\n"
	.string "meet in front of the\n"
	.string "ducks in ACDC Area."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87C41E4_unk5
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "You still remember\n"
	.string "how to get to ACDC\n"
	.string "Area,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can jack in to\n"
	.string "the Squirrel Statue\n"
	.string "in the park."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87C41E4_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I remember!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87C41E4_unk7
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "A road linking ACDC\n"
	.string "Area directly to\n"
	.string "Cyber City's Net was"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "finished recently.\n"
	.string "Why don't you check\n"
	.string "it out sometime!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87C41E4_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,I will!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,let's meet by the\n"
	.string "ducks in ACDC Area!"
	ts_key_wait any=0x0
	ts_end

	