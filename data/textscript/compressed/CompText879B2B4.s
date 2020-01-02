	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879B2B4::
	.word 0x150B00

	text_archive_start

	def_text_script CompText879B2B4_unk0
	ts_check_flag [
		flag: 0x1116,
		jumpIfTrue: CompText879B2B4_unk4_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x1115,
		jumpIfTrue: CompText879B2B4_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x1115
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Sorry to spring this\n"
	.string "on you but do you\n"
	.string "got a \""
	ts_print_chip1 [
		chip: 0xA6,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you do,want to\n"
	.string "trade for my\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA7,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How about it?\n"
	.string "Want to trade?"
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
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "I see...hmph..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk1
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I wanted to ask\n"
	.string "again about trading"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "your \""
	ts_print_chip1 [
		chip: 0xA6,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "for \""
	ts_print_chip1 [
		chip: 0xA7,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\"?\n"
	.string "Care to trade?"
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
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "I see...hmph..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk2
	ts_check_pack_chip_code [
		chip: 0xA6,
		code: 0x1A,
		amount: 0x1,
		jumpIfEqual: TS_CONTINUE,
		jumpIfGreater: TS_CONTINUE,
		jumpIfLess: CompText879B2B4_unk3_id,
	]
	ts_item_take_chip [
		chip: 0xA6,
		code: 0x1A,
		amount: 0x1,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "This is it!!\n"
	.string "It's the chip I've\n"
	.string "always wanted!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,here's my\n"
	.string "chip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0xA7,
		code: 0x0,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA7,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Thanks to you,my\n"
	.string "collection is\n"
	.string "complete!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thanks so much!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_flag_set flag=0x1116
	ts_end

	def_text_script CompText879B2B4_unk3
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Hmmmm...?\n"
	.string "I can't find a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA6,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You wouldn't have\n"
	.string "one in a folder,\n"
	.string "would you?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you have it in\n"
	.string "a folder,we can't\n"
	.string "trade!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you find a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA6,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "let me know!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk4
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "That chip you traded\n"
	.string "me is great!!\n"
	.string "Thank you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk5

	def_text_script CompText879B2B4_unk6

	def_text_script CompText879B2B4_unk7

	def_text_script CompText879B2B4_unk8

	def_text_script CompText879B2B4_unk9

	def_text_script CompText879B2B4_unk10
	ts_check_flag [
		flag: 0x11A1,
		jumpIfTrue: CompText879B2B4_unk13_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11A3,
		jumpIfTrue: CompText879B2B4_unk12_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11A0,
		jumpIfTrue: CompText879B2B4_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x11A0
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Ahhh! I've been\n"
	.string "waiting for you.\n"
	.string "You took my request!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmmm... I suppose\n"
	.string "you can handle this."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We are currently\n"
	.string "filming a special\n"
	.string "effects movie..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's called\n"
	.string "\"CyberWarrior Cybo\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm the director of\n"
	.string "this picture!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But we do have one\n"
	.string "slight problem..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Our lead actor was\n"
	.string "injured during\n"
	.string "filming..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We would like you\n"
	.string "to be his stand-in!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You are about the\n"
	.string "same height..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We promise to pay\n"
	.string "you handsomely!\n"
	.string "How about it?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Alright! Let's\n"
	.string "get you ready for\n"
	.string "filming! We're late!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The character you're\n"
	.string "playing is saving a\n"
	.string "girl under attack!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is a fight\n"
	.string "scene and we'd like\n"
	.string "you to perform"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a real battle!\n"
	.string "It would be amazing!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK! Roll cameras!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Scene 25:\n"
	.string "\"Cybo's Disaster\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Action!!!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk11
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Hey! The camera is\n"
	.string "still rolling!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're playing the\n"
	.string "lead role-rescuing\n"
	.string "a young girl!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk12
	ts_flag_set flag=0x11A1
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "...Cut! Perfect!\n"
	.string "We've got a great\n"
	.string "movie!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You aren't thinking\n"
	.string "of becoming a pro\n"
	.string "actor are you?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK! Here's your\n"
	.string "fee for the movie!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_item_give [
		item: 0x70,
		amount: 0x1,
	]
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x70,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x40
	.string "When the movie opens\n"
	.string "you'll have to come\n"
	.string "see it!"
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

	def_text_script CompText879B2B4_unk13
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Thanks to you,\n"
	.string "we finished the\n"
	.string "movie!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When the movie opens\n"
	.string "you'll have to come\n"
	.string "see it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk14
	ts_check_flag [
		flag: 0x11A1,
		jumpIfTrue: CompText879B2B4_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11A3,
		jumpIfTrue: CompText879B2B4_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11A0,
		jumpIfTrue: CompText879B2B4_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "...The stand-in\n"
	.string "still isn't here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We need to start\n"
	.string "filming soon..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk15
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "...Muhahaha!\n"
	.string "Silly little girl!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "He...Help..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Make all the noise\n"
	.string "you want,no one is\n"
	.string "coming to help you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x1
	ts_mugshot_show mugshot=0x37
	.string "(...Hmm...)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x2
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0xD
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Halt! Villain!\n"
	ts_position_option_horizontal width=0xD
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Halt! Schmillain!\n"
	ts_position_option_horizontal width=0xD
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Halt? Crook...?"
	ts_select 0x7, 0xC0, 0xFF, 0x12, 0x12, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x37
	.string "Halt! Villain!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Villain! Who?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "This is the end of\n"
	.string "the road for your\n"
	.string "evil plan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm here to help\n"
	.string "the weak!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "People call me..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0xD
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "CyberWarrior Cybe\n"
	ts_position_option_horizontal width=0xD
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "CyberWarrior Syke\n"
	ts_position_option_horizontal width=0xD
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "CyberWarrior Cybo"
	ts_select 0x7, 0xC0, 0x12, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x37
	.string "People call me\n"
	.string "CyberWarrior Cybo!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Cybo! You came to\n"
	.string "rescue me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "So you're the Cybo\n"
	.string "I keep hearing\n"
	.string "about!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't want\n"
	.string "to be deleted,scram.\n"
	.string "Consider it a favor!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I could give up if\n"
	.string "I wanted to..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But if I do that..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "My soul will jump!\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "My soul will die!\n"
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "My soul'll be born!"
	ts_select 0x7, 0xC0, 0x12, 0xFF, 0x12, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x37
	.string "If I do that,\n"
	.string "my soul will die!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "How courageous!\n"
	.string "Time to destroy this\n"
	.string "silly little Cybo!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I'll never lose...\n"
	.string "Not while there is\n"
	.string "someone to save!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x11A2
	ts_end

	def_text_script CompText879B2B4_unk16
	ts_flag_set flag=0x1217
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "....Uggghhhh"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I was wrong...\n"
	.string "Forgive me..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Learn from this,\n"
	.string "and don't partake\n"
	.string "in any more evil!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "By the way...\n"
	.string "Are you OK,\n"
	.string "my lady?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Yes... Thank you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "How about a walk?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "How about a drink?\n"
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Well,I'm off..."
	ts_select 0x7, 0xC0, 0x12, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x37
	.string "Well,I'm off..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "...Wait!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why are you always\n"
	.string "there to save me\n"
	.string "when I'm in trouble?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "My lady,don't ask\n"
	.string "these questions..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Instead of me,worry\n"
	.string "about your mother."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "How do you\n"
	.string "know about my\n"
	.string "mother's illness!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wait a second..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...You're my\n"
	.string "brother?\n"
	.string "You're alive!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Yes...\n"
	ts_position_option_horizontal width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "It's just a dream...\n"
	ts_position_option_horizontal width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "You've got it wrong!"
	ts_select 0x7, 0xC0, 0x12, 0xFF, 0x12, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x37
	.string "It's just a dream..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just remind\n"
	.string "you of your\n"
	.string "brother..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Farewell and take\n"
	.string "care of yourself."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Be happy..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x40
	.string "."
	ts_wait frames=0x3C
	.string "."
	ts_wait frames=0x3C
	.string "."
	ts_wait frames=0x3C
	.string "CUT!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x11A3
	ts_clear_msg
	.string "Perfect!!\n"
	.string "Absolutely perfect!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's a wrap for\n"
	.string "today!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...We're going to\n"
	.string "pay you for your\n"
	.string "stand-in role,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so come see me\n"
	.string "later."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk17
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Cut! Cut!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's all wrong!\n"
	.string "Not good at all!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Think about it\n"
	.string "and then try\n"
	.string "again!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Scene 25:\n"
	.string "\"Cybo's Disaster\"\n"
	.string "ACTION!!!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x1217
	ts_end

	def_text_script CompText879B2B4_unk18
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	ts_text_speed delay=0x2
	.string "Cut! Cut!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's all wrong!\n"
	.string "Not good at all!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Think about it\n"
	.string "and then try\n"
	.string "again!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Scene 25:\n"
	.string "\"Cybo's Disaster\"\n"
	.string "ACTION!!!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x1217
	ts_end

	def_text_script CompText879B2B4_unk19
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "...Great scene!\n"
	.string "You're not like a\n"
	.string "beginner at all!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk20
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Let's do another\n"
	.string "movie together\n"
	.string "sometime!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk21
	ts_check_flag [
		flag: 0x11A1,
		jumpIfTrue: CompText879B2B4_unk24_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11A3,
		jumpIfTrue: CompText879B2B4_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x11A0,
		jumpIfTrue: CompText879B2B4_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "I wonder if the\n"
	.string "filming went OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk22
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Yahhh! HELP!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk23
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "That was truly\n"
	.string "real!\n"
	.string "I felt it inside!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk24
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Being in a movie\n"
	.string "with you was a\n"
	.string "lot of fun!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk25

	def_text_script CompText879B2B4_unk26

	def_text_script CompText879B2B4_unk27

	def_text_script CompText879B2B4_unk28

	def_text_script CompText879B2B4_unk29

	def_text_script CompText879B2B4_unk30
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELCOME TO THE\n"
	.string "AQUARIUM HP!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE ANIMAL LOVING\n"
	.string "DIRECTOR OF THIS"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AQUARIUM IS IN\n"
	.string "CHARGE HERE!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ALTHOUGH,HE HAS\n"
	.string "GOTTEN A LITTLE\n"
	.string "FAT LATELY!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk31

	def_text_script CompText879B2B4_unk32

	def_text_script CompText879B2B4_unk33

	def_text_script CompText879B2B4_unk34

	def_text_script CompText879B2B4_unk35

	def_text_script CompText879B2B4_unk36

	def_text_script CompText879B2B4_unk37

	def_text_script CompText879B2B4_unk38

	def_text_script CompText879B2B4_unk39

	def_text_script CompText879B2B4_unk40
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "UMM... IF IT'S OK,\n"
	.string "WOULD YOU MIND\n"
	.string "TRADING HP LINKS?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PUTTING UP A LINK\n"
	.string "WILL LET YOU EASILY\n"
	.string "GO BACK AND FORTH"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BETWEEN YOUR HP AND\n"
	.string "THE AQUARIUM HP!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WOULD YOU LIKE TO\n"
	.string "POST A LINK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x8
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
	ts_select 0x6, 0x80, 0x29, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "I SEE..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF YOU CHANGE\n"
	.string "YOUR MIND,COME\n"
	.string "BACK ANYTIME..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879B2B4_unk41
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "YOU'LL TRADE LINKS\n"
	.string "WITH US!! YAY!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHENEVER YOU'D LIKE\n"
	.string "TO COME BACK HERE,\n"
	.string "JUST USE THE BANNER!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x68,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x68,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "NOW IT'S TIME FOR\n"
	.string "ME TO POST YOUR\n"
	.string "LINK."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TADA!!!!"
	ts_key_wait any=0x0
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x74
	ts_sound_enable_text_sfx
	ts_flag_set flag=0x17D
	ts_clear_msg
	.string "MY WORK HERE IS\n"
	.string "NOW DONE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HAVE A GREAT ONE..."
	ts_key_wait any=0x0
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x76
	ts_flag_set flag=0x1E4
	ts_end

	def_text_script CompText879B2B4_unk42

	