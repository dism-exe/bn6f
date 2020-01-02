	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AA07C::
	.word 0x44300

	text_archive_start

	def_text_script CompText87AA07C_unk0
	ts_msg_open
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk1_id

	def_text_script CompText87AA07C_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright,I brought\n"
	.string "you some tasty fish!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Ta da!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA07C_unk2
	ts_msg_open
	.string "*Squawk?*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA07C_unk3
	ts_msg_open
	.string "*Squawk!!*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... *chomp,chomp*\n"
	.string "*chomp,chomp,chomp*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk4_id

	def_text_script CompText87AA07C_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hey! He really\n"
	.string "likes it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk5_id

	def_text_script CompText87AA07C_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I still wonder\n"
	.string "where this penguin\n"
	.string "came from?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You wouldn't happen\n"
	.string "to know,would you,\n"
	.string "Mick?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk6_id

	def_text_script CompText87AA07C_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I don't know...\n"
	.string "Heck,I mistook it\n"
	.string "for a pigeon..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk7_id

	def_text_script CompText87AA07C_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Totally clueless..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk8_id

	def_text_script CompText87AA07C_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA07C_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Maybe it's time\n"
	.string "to search for our\n"
	.string "answers on the Net."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Want to check out\n"
	.string "some of the BBS's?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's all sorts of\n"
	.string "stuff there,so maybe\n"
	.string "we can find a clue."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk10_id

	def_text_script CompText87AA07C_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Yeah! We might\n"
	.string "be able to find\n"
	.string "something there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA07C_unk11
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "If you wanna go to\n"
	.string "a BBS,there's one in\n"
	.string "SeasideArea1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can get to\n"
	.string "SeasideArea from\n"
	.string "CentralArea3."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can go with you,\n"
	.string "but this penguin's\n"
	.string "gonna trip us up..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk12_id

	def_text_script CompText87AA07C_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Nah,it'll be ok!\n"
	.string "Besides,you two make\n"
	.string "a good pair!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA07C_unk13
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "A-A good pair!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't be a moron!\n"
	.string "What kind of guy do\n"
	.string "you think I am!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm gonna get you\n"
	.string "back real good in a\n"
	.string "NetBattle one day..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA07C_unk14_id

	def_text_script CompText87AA07C_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... OK,OK."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,leave the BBS\n"
	.string "searching to me!"
	ts_key_wait any=0x0
	ts_end

	