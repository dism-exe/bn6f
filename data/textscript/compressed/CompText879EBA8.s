	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879EBA8::
	.word 0xA3000

	text_archive_start

	def_text_script CompText879EBA8_unk0
	ts_check_flag 0x65, 0x11, 0x3, 0xFF
	ts_check_flag 0x64, 0x11, 0x1, 0xFF
	ts_flag_set 0x64, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Hello!\n"
	.string "You're the one who\n"
	.string "came for my request?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's get down to\n"
	.string "the details..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm looking into PA\n"
	.string "(Program Advance) as\n"
	.string "part of my own"
	ts_key_wait 0x0
	ts_clear_msg
	.string "individual research.\n"
	.string "But finding a PA is\n"
	.string "super difficult..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was hoping that\n"
	.string "you could assist me\n"
	.string "in my research!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Right now,I'm\n"
	.string "researching PAs"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that poison an\n"
	.string "enemy area."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've seen other\n"
	.string "people using this,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and it can make an\n"
	.string "enemy's HP drop\n"
	.string "like a rock!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I'd like you to\n"
	.string "find out how to\n"
	.string "activate this PA."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you figure it\n"
	.string "out,please show me\n"
	.string "the PA Memo."
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_flag 0x76, 0x1F, 0x4, 0xFF
	.string "You know about PA\n"
	.string "Memos right?\n"
	.string "If you successfully"
	ts_key_wait 0x0
	ts_clear_msg
	.string "activate a PA in\n"
	.string "battle,it gets\n"
	.string "registered there."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then you can view\n"
	.string "the PA Memo in the\n"
	.string "Data Library."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for the help!\n"
	.string "I can't wait to see\n"
	.string "the PA Memo!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879EBA8_unk1
	ts_check_flag 0x76, 0x1F, 0x2, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Double checking the\n"
	.string "details? OK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm looking into PA\n"
	.string "(Program Advance) as\n"
	.string "part of my own"
	ts_key_wait 0x0
	ts_clear_msg
	.string "individual research.\n"
	.string "Right now,I'm\n"
	.string "researching PAs"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that poison an\n"
	.string "enemy area."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I'd like you to\n"
	.string "find out how to\n"
	.string "activate this PA."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you figure it\n"
	.string "out,please show me\n"
	.string "the PA Memo."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You know about PA\n"
	.string "Memos right?\n"
	.string "If you successfully"
	ts_key_wait 0x0
	ts_clear_msg
	.string "activate a PA in\n"
	.string "battle,it gets\n"
	.string "registered there."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for the help!\n"
	.string "I can't wait to see\n"
	.string "the PA Memo!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879EBA8_unk2
	ts_flag_set 0x65, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "...HUH!?\n"
	.string "You figured out the\n"
	.string "PA!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Show me the memo!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What!?\n"
	.string "\""
	ts_print_chip2 0x5, 0x60
	.string "\"!!\n"
	.string "Wow..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The slot in order\n"
	.string "is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 0x4, 0x60
	.string " "
	ts_print_code 0x0, 0xF0
	.string "\",\n"
	.string "\""
	ts_print_chip1 0x4, 0x60
	.string " "
	ts_print_code 0x0, 0xF0
	.string "\",\n"
	.string "then \""
	ts_print_chip1 0x9, 0x80
	.string " "
	ts_print_code 0x0, 0xF0
	.string "\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Thank you!!\n"
	.string "My research will go\n"
	.string "great now!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's something for\n"
	.string "your trouble..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x3D, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item 0x3, 0xD0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "\""
	ts_print_chip2 0x5, 0x60
	.string "\" huh?\n"
	.string "I'll have to try\n"
	.string "it out!"
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

	def_text_script CompText879EBA8_unk3
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "\""
	ts_print_chip2 0x5, 0x60
	.string "\" huh?\n"
	.string "I'll have to try\n"
	.string "it out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879EBA8_unk4
	ts_flag_set 0x65, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "...HUH!?\n"
	.string "You figured out the\n"
	.string "PA!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Show me the memo!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What!?\n"
	.string "\""
	ts_print_chip2 0x5, 0x60
	.string "\"!!\n"
	.string "Wow..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The slot in order\n"
	.string "is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 0x4, 0x60
	.string " "
	ts_print_code 0x0, 0xF0
	.string "\",\n"
	.string "\""
	ts_print_chip1 0x4, 0x60
	.string " "
	ts_print_code 0x0, 0xF0
	.string "\",\n"
	.string "then \""
	ts_print_chip1 0x9, 0x80
	.string " "
	ts_print_code 0x0, 0xF0
	.string "\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Thank you!!\n"
	.string "My research will go\n"
	.string "great now!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's something for\n"
	.string "your trouble..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x3D, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item 0x3, 0xD0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "\""
	ts_print_chip2 0x5, 0x60
	.string "\" huh?\n"
	.string "I'll have to try\n"
	.string "it out!"
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

	def_text_script CompText879EBA8_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS THE\n"
	.string "CLASS 1-1 COMP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A VIRUS BUSTING\n"
	.string "CLASS IS BEING HELD\n"
	.string "HERE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OF COURSE,FIRST\n"
	.string "GRADERS STILL HAVE\n"
	.string "ALOT TO LEARN."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...BUT DON'T TELL\n"
	.string "ANYONE I SAID THAT!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879EBA8_unk6

	def_text_script CompText879EBA8_unk7

	def_text_script CompText879EBA8_unk8

	def_text_script CompText879EBA8_unk9

	def_text_script CompText879EBA8_unk10
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Want to give the\n"
	.string "\""
	ts_print_folder_name 0x2, 0x20
	.string "\" I\n"
	.string "have a try?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you don't mind\n"
	.string "dumping the folder\n"
	.string "you already have,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll give you the\n"
	.string "\""
	ts_print_folder_name 0x2, 0x20
	.string "\" right\n"
	.string "now!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You up for it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure! "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No,Thanks"
	ts_select 0x6, 0x80, 0xB, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Hmm...\n"
	.string "That's too bad."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879EBA8_unk11
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Alright,\n"
	.string "Let me send you\n"
	.string "the data!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_give_folder 0x22
	ts_mugshot_hide
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	ts_sound_disable_text_sfx
	ts_sound_play00 0x73, 0x0
	.string "*Ding!!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x41
	.string "Transfer completed!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Your old Extra\n"
	.string "Folder is now called\n"
	.string "\""
	ts_print_folder_name 0x2, 0x20
	.string "\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's nothing super\n"
	.string "special,but give\n"
	.string "it a try!!"
	ts_key_wait 0x0
	ts_end

	