	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AAB40::
	.word 0x4E600

	text_archive_start

	def_text_script CompText87AAB40_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "This looks like the\n"
	.string "SeasideArea BBS,\n"
	.string "Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk1_id

	def_text_script CompText87AAB40_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright! I'm leaving\n"
	.string "you to find the info\n"
	.string "about our penguin!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk2_id

	def_text_script CompText87AAB40_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Gotcha,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AAB40_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string " Ah!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk4_id

	def_text_script CompText87AAB40_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's up? Did you\n"
	.string "find something?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk5_id

	def_text_script CompText87AAB40_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Hmm,hmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This battle\n"
	.string "technique looks\n"
	.string "really useful!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk6_id

	def_text_script CompText87AAB40_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What!? Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hey,wait!\n"
	.string "We're not looking\n"
	.string "for techniques!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk7_id

	def_text_script CompText87AAB40_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Sorry,sorry! I got\n"
	.string "sidetracked! I'll\n"
	.string "get back on track!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string " Huh?\n"
	.string "What's this...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk8_id

	def_text_script CompText87AAB40_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Did you find\n"
	.string "something?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk9_id

	def_text_script CompText87AAB40_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Yeah! I'll read this\n"
	.string "post to you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Hello webmaster."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " I am the Director\n"
	.string " of the Seaside\n"
	.string " Town Aquarium."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " One of our penguins\n"
	.string " escaped the other\n"
	.string " day,so we're asking"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " if you spot it,to\n"
	.string " please contact the\n"
	.string " Aquarium."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Thank you for your\n"
	.string " assistance.\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... is what it says!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AAB40_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "This has to be about\n"
	.string "that penguin!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk11_id

	def_text_script CompText87AAB40_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,sounds like it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Looks like we solved\n"
	.string "the mystery! These\n"
	.string "BBS's are great!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... So,I wonder\n"
	.string "what the Aquarium"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and Seaside Town in\n"
	.string "general are like?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk12_id

	def_text_script CompText87AAB40_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I don't know either,\n"
	.string "but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I think that\n"
	.string "this Net area,\n"
	.string "SeasideArea,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "is at the heart of\n"
	.string "Seaside Town's Net!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk13_id

	def_text_script CompText87AAB40_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah! Well,let's go\n"
	.string "tell Mick about the\n"
	.string "penguin!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AAB40_unk14_id

	def_text_script CompText87AAB40_unk14
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!"
	ts_key_wait any=0x0
	ts_end

	