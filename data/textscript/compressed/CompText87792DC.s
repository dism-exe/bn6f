	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87792DC::
	.word 0xEE100

	text_archive_start

	def_text_script CompText87792DC_unk0
	ts_check_flag 0x20, 0x11, 0x4, 0xFF
	ts_check_flag 0x1F, 0x11, 0x1, 0xFF
	ts_flag_set 0x1F, 0x11
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Did someone call\n"
	.string "the Quiz Master!\n"
	.string "Quiz Maasssstttahh!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Give it a shot!\n"
	.string "Give it a try!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yeah,yeah,yeah!\n"
	.string "(Cha-cha)Quiz Power!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm the Quiz Master!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ever since I was a\n"
	.string "kid,I've been in\n"
	.string "the trivia elite!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you really take\n"
	.string "on my high level"
	ts_key_wait 0x0
	ts_clear_msg
	.string "quiz supremacy in\n"
	.string "10 questions?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " I can!\n"
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " No thanks!\n"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Don't lose your\n"
	.string "edge in my aura of\n"
	.string "greatness..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That would be a\n"
	.string "shame..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87792DC_unk1
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Did someone call\n"
	.string "the Quiz Master!\n"
	.string "Quiz Maasssstttahh!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Give it a shot!\n"
	.string "Give it a try!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yeah,yeah,yeah!\n"
	.string "(Cha-cha)Quiz Power!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm the Quiz Master!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ever since I was a\n"
	.string "kid,I've been in\n"
	.string "the trivia elite!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you really take\n"
	.string "on my high level\n"
	.string "quiz supremacy!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x5
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Go for it!\n"
	ts_position_option_horizontal 0x5
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " No way!\n"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Don't lose your\n"
	.string "edge in my aura of\n"
	.string "greatness..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That would be a\n"
	.string "shame..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87792DC_unk2
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Alright! Time for\n"
	.string "question 1!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What is the Attack\n"
	.string "power of \"TimeBom1\"?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 100\n"
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 150\n"
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 200"
	ts_select 0x7, 0xC0, 0x3, 0xFF, 0x3, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "Correct!!\n"
	.string "Time for question 2!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Does a needle have\n"
	.string "an \"Eye\",\"Ear\",or\n"
	.string "\"Mouth\"?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Ear\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Mouth\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Eye"
	ts_select 0x7, 0xC0, 0x3, 0x3, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "Correct!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Time to try on\n"
	.string "question 3 for\n"
	.string "size!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What does PET stand\n"
	.string "for?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xD
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " PErsonal Terminal\n"
	ts_position_option_horizontal 0xD
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " PErsonal Tower\n"
	ts_position_option_horizontal 0xD
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " PErsonal T.V."
	ts_select 0x7, 0xC0, 0xFF, 0x3, 0x3, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "Correct!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've made it all\n"
	.string "the way to question\n"
	.string "4!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "In the Green Town\n"
	.string "Courtroom Foyer,\n"
	.string "what is written?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x5
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Truth\n"
	ts_position_option_horizontal 0x5
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Justice\n"
	ts_position_option_horizontal 0x5
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Law"
	ts_select 0x7, 0xC0, 0xFF, 0x3, 0x3, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "CORRECT!!\n"
	.string "No turning back!\n"
	.string "Time for question 5!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "6,4,or 8-Which one\n"
	.string "takes the most\n"
	.string "strokes to write?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 6\n"
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 4\n"
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 8"
	ts_select 0x7, 0xC0, 0x3, 0xFF, 0x3, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "CORRECT!!\n"
	.string "Time to rush onto\n"
	.string "question 6!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Which one of these\n"
	.string "is not in the\n"
	.string "Seaside Aquarium?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " King Crab\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Angelfish\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Fur Seal"
	ts_select 0x7, 0xC0, 0x3, 0x3, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "CORRECT!!\n"
	.string "The trivia keeps\n"
	.string "coming-question 7!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you get hit with\n"
	.string "an attack from a\n"
	.string "\"Mettaur\" and a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Champy\",how much\n"
	.string "damage would you\n"
	.string "take?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 20\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 30\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 40"
	ts_select 0x7, 0xC0, 0x3, 0xFF, 0x3, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "Correct!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Congrats on getting\n"
	.string "this far,but it's\n"
	.string "not over yet..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Umm... What question\n"
	.string "number is this?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 7\n"
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 8\n"
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 9"
	ts_select 0x7, 0xC0, 0x3, 0xFF, 0x3, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "CORRECT!!\n"
	.string "Excited for\n"
	.string "question 9?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Which of the\n"
	.string "following areas has\n"
	.string "a NetMerchant?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " SeasideArea1\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " SeasideArea2\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " SeasideArea3"
	ts_select 0x7, 0xC0, 0x3, 0x3, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "Correct!!\n"
	.string "Time for the last\n"
	.string "question! Number 10!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The year 3001 will\n"
	.string "be which century?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 29th Century\n"
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 31st Century\n"
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 30th Century"
	ts_select 0x7, 0xC0, 0x3, 0xFF, 0x3, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "This...this is\n"
	.string "unbelievable!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Impossible even!!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Uhhh... Uhhh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,what's done is\n"
	.string "done... Maybe I\n"
	.string "should admit defeat?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_player_animate_object 0x18
	ts_item_give_navi_cust_program 0x64, 0x1, 0x2
	.string "Lan got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x19, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "I still can't\n"
	.string "believe it...\n"
	.string "I lost at trivia!?"
	ts_key_wait 0x0
	ts_flag_set 0x20, 0x11
	ts_end

	def_text_script CompText87792DC_unk3
	ts_sound_disable_text_sfx
	ts_sound_play00 0xD2, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	ts_msg_open
	ts_text_speed 0x2
	.string "Too bad...\n"
	.string "Wrong answer!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't give up..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You were up against\n"
	.string "an elite trivia\n"
	.string "master!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Give it another\n"
	.string "shot!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87792DC_unk4
	ts_mugshot_show 0x15
	ts_msg_open
	.string "I still can't\n"
	.string "believe it...\n"
	.string "I lost at trivia!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87792DC_unk5

	def_text_script CompText87792DC_unk6

	def_text_script CompText87792DC_unk7

	def_text_script CompText87792DC_unk8

	def_text_script CompText87792DC_unk9

	def_text_script CompText87792DC_unk10
	ts_check_flag 0xBA, 0x11, 0xC, 0xFF
	ts_check_flag 0xB9, 0x11, 0xB, 0xFF
	ts_flag_set 0xB9, 0x11
	ts_mugshot_show 0xD
	ts_msg_open
	.string "...You!? You're that\n"
	.string "kid from earlier!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You must be a cop!?\n"
	.string "How'd you find me!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't have that\n"
	.string "ScrtData anyways!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I used the Pipe\n"
	.string "Comp and then my"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Navi and his\n"
	.string "friends took it!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're too late...\n"
	.string "Hehehehehe!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87792DC_unk11
	ts_mugshot_show 0xD
	ts_msg_open
	.string "I don't have that\n"
	.string "ScrtData!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I used the Pipe\n"
	.string "Comp and then my"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Navi and his\n"
	.string "friends took it!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're too late...\n"
	.string "Hehehehehe!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87792DC_unk12
	ts_check_flag 0xB1, 0x11, 0xD, 0xFF
	ts_flag_set 0xB1, 0x11
	ts_mugshot_show 0xF
	ts_msg_open
	.string "You got the ScrtData\n"
	.string "back!\n"
	.string "Great Job!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They caught the\n"
	.string "guy behind it as\n"
	.string "well!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That should settle\n"
	.string "things once and for\n"
	.string "all!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_item_give_chip 0xDD, 0x0, 0x1A, 0x1
	ts_item_give_chip 0x10, 0x1, 0x1A, 0x1
	ts_item_give_chip 0xE0, 0x0, 0x1A, 0x1
	ts_item_take 0x31, 0x1
	ts_mugshot_hide
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0xDD, 0x0
	.string " "
	ts_print_code 0x1A, 0x0
	.string "\",\n"
	.string "\""
	ts_print_chip2 0x10, 0x0
	.string " "
	ts_print_code 0x1A, 0x0
	.string "\","
	ts_key_wait 0x0
	ts_clear_msg
	.string "and \""
	ts_print_chip1 0xE0, 0x0
	.string " "
	ts_print_code 0x1A, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "You were a great\n"
	.string "partner!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText87792DC_unk13
	ts_mugshot_show 0xF
	ts_msg_open
	.string "You were a great\n"
	.string "partner!"
	ts_key_wait 0x0
	ts_end

	