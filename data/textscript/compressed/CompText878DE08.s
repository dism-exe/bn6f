	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878DE08::
	.word 0xE6500

	text_archive_start

	def_text_script CompText878DE08_unk0
	ts_check_shop_stock [
		shop: 0x1,
		jumpIfStocked: TS_CONTINUE,
		jumpIfSoldOut: CompText878DE08_unk2_id,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I'm a NetMerchant...\n"
	.string "I've got cool items!\n"
	ts_position_option_horizontal width=0xB
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Look  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x1, 0xFF
	ts_start_shop shop=0x1

	def_text_script CompText878DE08_unk1
	ts_clear_msg
	.string "Come again\n"
	.string "sometime!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk2
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I'm sorry,\n"
	.string "but I'm out of\n"
	.string "stock..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk3

	def_text_script CompText878DE08_unk4

	def_text_script CompText878DE08_unk5

	def_text_script CompText878DE08_unk6

	def_text_script CompText878DE08_unk7

	def_text_script CompText878DE08_unk8

	def_text_script CompText878DE08_unk9

	def_text_script CompText878DE08_unk10
	ts_check_flag [
		flag: 0x117F,
		jumpIfTrue: CompText878DE08_unk13_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Hahaha! I'm not\n"
	.string "gonna repay that\n"
	.string "loan!! Hahahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...What are you\n"
	.string "doing here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've come to try\n"
	.string "and take my money\n"
	.string "again?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xB, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "I'm not saying\n"
	.string "sorry this time!\n"
	.string "I'll show you pain!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x117E
	ts_end

	def_text_script CompText878DE08_unk11
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Hahaha! That's\n"
	.string "right! Shut up!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk12
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "...DARN..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Sorry...\n"
	.string "You got me this\n"
	.string "time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Huh? Loan?\n"
	.string "Heh,OK,I'll\n"
	.string "pay it back..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let me just go get\n"
	.string "the money ready.\n"
	.string "Wait a second,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "No,no,I'm joking!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Actually,I still\n"
	.string "have the money!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_item_give [
		item: 0x27,
		amount: 0x1,
	]
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x27,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "Darn... I thought\n"
	.string "I'd get away without\n"
	.string "paying anything!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "...I'm just\n"
	.string "saying..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk13
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Darn... I thought\n"
	.string "I'd get away without\n"
	.string "paying anything!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "...I'm just\n"
	.string "saying..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk14

	def_text_script CompText878DE08_unk15
	ts_check_flag [
		flag: 0x118B,
		jumpIfTrue: CompText878DE08_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x118A,
		jumpIfTrue: CompText878DE08_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x118A
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "You came here after\n"
	.string "reading the Request\n"
	.string "BBS? Thank you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lately,a chip my\n"
	.string "operator really\n"
	.string "loves went missing."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0x1F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "is gone..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My operator is so\n"
	.string "mad,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "he said don't come\n"
	.string "back until I find\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x1F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I don't get\n"
	.string "that chip..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't want to be\n"
	.string "abandoned!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please help me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please get me the\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x1F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "BattleChip!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x11, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "I see...\n"
	.string "Now I'll be\n"
	.string "thrown out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk16
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Yay!\n"
	.string "You brought back a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x1F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I don't get\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x1F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\","
	ts_key_wait any=0x0
	ts_clear_msg
	.string "my operator is\n"
	.string "going to throw me\n"
	.string "away!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please! Let me have\n"
	.string "the chip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x11, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "I see...\n"
	.string "Now I'll be\n"
	.string "thrown out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk17
	ts_check_pack_chip_code [
		chip: 0x1F,
		code: 0x0,
		amount: 0x1,
		jumpIfEqual: TS_CONTINUE,
		jumpIfGreater: TS_CONTINUE,
		jumpIfLess: CompText878DE08_unk18_id,
	]
	ts_item_take_chip [
		chip: 0x1F,
		code: 0x0,
		amount: 0x1,
	]
	ts_flag_set flag=0x118B
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Thank you so much!\n"
	.string "Now I can go back\n"
	.string "to my PET!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Here's your reward!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x72,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x72,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "1 MB!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Thanks!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " Points!"
	ts_key_wait any=0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText878DE08_unk18
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Wh...What!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You don't have a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x1F,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You sure it isn't\n"
	.string "in your folder!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now I'm doomed\n"
	.string "to be a stray Navi!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk19
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Thank you...\n"
	.string "I'll never forget\n"
	.string "you...ever..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk20
	ts_check_flag [
		flag: 0x11EB,
		jumpIfTrue: CompText878DE08_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_msg_open
	.string "There's something\n"
	.string "that looks like a\n"
	.string "bucket..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Legendary Spring\"\n"
	.string "is written in sloppy\n"
	.string "letters on the side."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Legendary Spring...?\n"
	.string "It's just a regular\n"
	.string "bucket..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "WHHHAAAATT!!\n"
	.string "This isn't a bucket!\n"
	.string "It's a spring!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x11EB
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xE1
	.string "ZAPANG!!"
	ts_wait frames=0x19
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Waaahhh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "I am the spirit\n"
	.string "of the spring..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Calling this spring\n"
	.string "a bucket is a\n"
	.string "complete insult!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...What do I look\n"
	.string "like!? C'mon!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Quit bothering me\n"
	.string "and let me sleep!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Well,actually..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "...An axe right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can take care\n"
	.string "of that right\n"
	.string "away!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	ts_mugshot_show mugshot=0x3C
	.string "Yes! Let's just get\n"
	.string "this out of the\n"
	.string "way!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want to take\n"
	.string "a nap..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "First,put the axe\n"
	.string "you have now into\n"
	.string "the bucket..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Hey... You just\n"
	.string "called it a bucket\n"
	.string "yourself!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just hurry up and\n"
	.string "do what I said!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "O...OK..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xE1
	.string "KABLAMO!!!"
	ts_wait frames=0x19
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "DOH! Put it into the\n"
	.string "water this time!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...All the way..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright... now you\n"
	.string "will answer my\n"
	.string "questions..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Was the axe you\n"
	.string "submerged gold?\n"
	.string "Or was it silver?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Neither..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Besides,didn't you\n"
	.string "see it when I put\n"
	.string "it in the water?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "Silence!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't concern\n"
	.string "myself with petty\n"
	.string "details."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyways,I'll give\n"
	.string "you a special bonus\n"
	.string "for your honesty..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll customize your\n"
	.string "Cyber Axe!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "ABBRA-KADABRA!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now you should be\n"
	.string "able to cut down\n"
	.string "even strong trees!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...It's time for you\n"
	.string "to leave... Quickly."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've got a siesta\n"
	.string "to enjoy!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "OK! Thank you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk21
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "Now I'm going to\n"
	.string "continue my nap..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk22

	def_text_script CompText878DE08_unk23

	def_text_script CompText878DE08_unk24

	def_text_script CompText878DE08_unk25
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "That's got nothing\n"
	.string "to do with class!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk26
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Hey hot stuff!!\n"
	.string "How about we go\n"
	.string "out sometime!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x46
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Heh...\n"
	.string "Whatever..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk27

	def_text_script CompText878DE08_unk28

	def_text_script CompText878DE08_unk29

	def_text_script CompText878DE08_unk30
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "HELLO! WELCOME!\n"
	.string "WELCOME TO\n"
	.string "SEASIDEAREA3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk31
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I just drank some\n"
	.string "HealWatr and I feel\n"
	.string "great."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DE08_unk32

	def_text_script CompText878DE08_unk33

	def_text_script CompText878DE08_unk34

	def_text_script CompText878DE08_unk35

	def_text_script CompText878DE08_unk36

	def_text_script CompText878DE08_unk37

	def_text_script CompText878DE08_unk38

	def_text_script CompText878DE08_unk39

	