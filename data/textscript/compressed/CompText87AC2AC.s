	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AC2AC::
	.word 0x4E100

	text_archive_start

	def_text_script CompText87AC2AC_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Ah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC2AC_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mick!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What are you doing!?\n"
	.string "Get outta there!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk2_id

	def_text_script CompText87AC2AC_unk2
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "You idiot!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I don't\n"
	.string "do this..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "who's gonna protect\n"
	.string "these penguins,huh!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wooooah!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk3_id

	def_text_script CompText87AC2AC_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mick...you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Darn it!\n"
	.string "I have to do\n"
	.string "something!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk4_id

	def_text_script CompText87AC2AC_unk4
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Heeey!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC2AC_unk5
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Whaaa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC2AC_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Director!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk7_id

	def_text_script CompText87AC2AC_unk7
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Oh,oh,it's you --\n"
	.string "the boy who brought\n"
	.string "Plata back,right...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk8_id

	def_text_script CompText87AC2AC_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What happened!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk9_id

	def_text_script CompText87AC2AC_unk9
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Just what it looks\n"
	.string "like! The locks un-\n"
	.string "locked themselves!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Something must have\n"
	.string "happened in the\n"
	.string "control room..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's backstage.\n"
	.string "The main computer\n"
	.string "in that room"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "controls everything\n"
	.string "in this aquarium!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Of course that\n"
	.string "includes all the\n"
	.string "cage and tank locks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it's dangerous\n"
	.string "here! Please,save\n"
	.string "yourself!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk10_id

	def_text_script CompText87AC2AC_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "How can I help?\n"
	.string "There's gotta be\n"
	.string "a way to fix this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk11_id

	def_text_script CompText87AC2AC_unk11
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "There is one way..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "First,you must\n"
	.string "normalize the main\n"
	.string "computer."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then,using the main\n"
	.string "computer,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "broadcast the\n"
	.string "\"Feeding Time\"\n"
	.string "chime at top volume."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The fish and animals\n"
	.string "here are trained to\n"
	.string "return to their"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "tanks and cages when\n"
	.string "they hear that."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you do that,then\n"
	.string "maybe,just maybe..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC2AC_unk12_id

	def_text_script CompText87AC2AC_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I understand!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "First,I've gotta\n"
	.string "find some way to fix\n"
	.string "the main computer."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC2AC_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hang on Mick!\n"
	.string "You too,penguins!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm gonna find a way\n"
	.string "to fix this soon!"
	ts_key_wait any=0x0
	ts_end

	