	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CFBD8::
	.word 0x6DB00

	text_archive_start

	def_text_script CompText87CFBD8_unk0
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Go!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk1_id

	def_text_script CompText87CFBD8_unk1
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Look!\n"
	.string "Right there!\n"
	.string "What are you doing!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk2_id

	def_text_script CompText87CFBD8_unk2
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Guts Punch!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk3_id

	def_text_script CompText87CFBD8_unk3
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Back at you!\n"
	.string "Rflectr!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No! I missed!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk4_id

	def_text_script CompText87CFBD8_unk4
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "OK,that's enough!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The winner is...\n"
	.string "Well,it's a draw!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk5_id

	def_text_script CompText87CFBD8_unk5
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "A draw...?\n"
	.string "Heh,not bad!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The only person in\n"
	.string "ACDC Town that could\n"
	.string "beat GutsMan was Lan"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so it's been a while\n"
	.string "since I've fought a\n"
	.string "guy with guts!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk6_id

	def_text_script CompText87CFBD8_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Yeah,me too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The name's Mick!\n"
	.string "Nice to meet you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk7_id

	def_text_script CompText87CFBD8_unk7
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "I'm Dex!\n"
	.string "Nice to meet you,\n"
	.string "Mick!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk8_id

	def_text_script CompText87CFBD8_unk8
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Well,now that the\n"
	.string "NetBattlers have\n"
	.string "finished,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm Yai Ayanokoji.\n"
	.string "Nice to meet you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk9_id

	def_text_script CompText87CFBD8_unk9
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "I'm Mayl."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's a pleasure to\n"
	.string "finally meet the\n"
	.string "both of you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk10_id

	def_text_script CompText87CFBD8_unk10
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Ah! Ayanokoji...\n"
	.string "You mean the really\n"
	.string "rich Ayanokoji's?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk11_id

	def_text_script CompText87CFBD8_unk11
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "You've heard of my\n"
	.string "family? You know a\n"
	.string "lot of things,then."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What's your name?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk12_id

	def_text_script CompText87CFBD8_unk12
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "I'm...I'm Tab!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wow,Lan sure has\n"
	.string "some neat friends..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Strong NetBattlers,\n"
	.string "cute girls..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and even famous rich\n"
	.string "people!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What a variety!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk13_id

	def_text_script CompText87CFBD8_unk13
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Strong NetBattler...\n"
	.string "I like you already!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk14_id

	def_text_script CompText87CFBD8_unk14
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Cute girls...?\n"
	.string "We're just good\n"
	.string "friends..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk15_id

	def_text_script CompText87CFBD8_unk15
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hey,what's with Lan?\n"
	.string "He's still not here?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Without him,we can't\n"
	.string "get in,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk16_id

	def_text_script CompText87CFBD8_unk16
	ts_mugshot_hide
	ts_msg_open
	.string "Sorry,everyone!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CFBD8_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sorry I'm late!\n"
	.string "I bumped into Iris\n"
	.string "on the way here."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,did you guys\n"
	.string "introduce yourselves\n"
	.string "already?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk18_id

	def_text_script CompText87CFBD8_unk18
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Yeah. Um,Mick and\n"
	.string "Tab,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...and...um..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk19_id

	def_text_script CompText87CFBD8_unk19
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "My name's Iris..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk20_id

	def_text_script CompText87CFBD8_unk20
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "I'm Mayl,nice to\n"
	.string "meet you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CFBD8_unk21
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "I'm Dex! Nice to\n"
	.string "meet you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm the strongest\n"
	.string "NetBattler in ACDC\n"
	.string "Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk22_id

	def_text_script CompText87CFBD8_unk22
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "You're really\n"
	.string "pretty...and your\n"
	.string "hair clips are cute!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm Yai Ayanokoji,\n"
	.string "but you can call me\n"
	.string "Yai."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk23_id

	def_text_script CompText87CFBD8_unk23
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "N-Nice to meet\n"
	.string "you all..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk24_id

	def_text_script CompText87CFBD8_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright,so now\n"
	.string "everyone knows each\n"
	.string "other!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CFBD8_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "the Expo!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CFBD8_unk26_id

	def_text_script CompText87CFBD8_unk26
	ts_mugshot_hide
	ts_msg_open
	.string "OK!!"
	ts_key_wait any=0x0
	ts_end

	