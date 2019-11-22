	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A1F18::
	.word 0x7EF00

	text_archive_start

	def_text_script CompText87A1F18_unk0
	ts_check_flag 0xCE, 0x11, 0x3, 0xFF
	ts_check_flag 0xD1, 0x11, 0x2, 0xFF
	ts_check_flag 0xCD, 0x11, 0x1, 0xFF
	ts_flag_set 0xCD, 0x11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Ahh! You're here!\n"
	.string "I'm the one who\n"
	.string "put up the request."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me introduce\n"
	.string "myself."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I work for the\n"
	.string "NetPolice..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I work in the\n"
	.string "\"Juvenile Crime\n"
	.string " Division\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This division works\n"
	.string "with junvenile\n"
	.string "problems..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Honestly,I have a\n"
	.string "case at this\n"
	.string "school..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "One of the students\n"
	.string "here is being\n"
	.string "bullied in class..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So the Juvenile\n"
	.string "Crime Division was"
	ts_key_wait 0x0
	ts_clear_msg
	.string "called in to sort\n"
	.string "things out..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like your help\n"
	.string "in resolving this\n"
	.string "problem."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The victim is a kid,\n"
	.string "so he might feel"
	ts_key_wait 0x0
	ts_clear_msg
	.string "more comfortable\n"
	.string "talking with someone\n"
	.string "his own age."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Around this time of\n"
	.string "day,the kid being"
	ts_key_wait 0x0
	ts_clear_msg
	.string "bullied is always\n"
	.string "playing with a\n"
	.string "RoboDog by himself."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you mind going\n"
	.string "to have a talk\n"
	.string "with him..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1F18_unk1
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Checking the details\n"
	.string "of the request?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Seems that one of\n"
	.string "the students here is\n"
	.string "being bullied..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We'd like you to\n"
	.string "help solve this\n"
	.string "problem."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Around this time of\n"
	.string "day,the kid being"
	ts_key_wait 0x0
	ts_clear_msg
	.string "bullied is always\n"
	.string "playing with a\n"
	.string "RoboDog by himself."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you mind going\n"
	.string "to have a talk\n"
	.string "with him..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1F18_unk2
	ts_mugshot_show 0x42
	ts_msg_open
	ts_flag_set 0xCE, 0x11
	.string "Ahh...you're back.\n"
	.string "Thanks for helping."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The truth is the\n"
	.string "Navi who just"
	ts_key_wait 0x0
	ts_clear_msg
	.string "attacked the dog is\n"
	.string "a member of my\n"
	.string "division..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It was all an\n"
	.string "act!\n"
	.string "Hahahaha..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well...\n"
	.string "Is that kid OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's all thanks\n"
	.string "to you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Take this gift..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_player_animate_object 0x18
	ts_item_give_navi_cust_program 0x74, 0x1, 0x2
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x1D, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Well... Off to my\n"
	.string "next assignment!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Next up is a problem\n"
	.string "at an elementary\n"
	.string "school...*tisk tisk*"
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

	def_text_script CompText87A1F18_unk3
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Well... Off to my\n"
	.string "next assignment!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Next up is a problem\n"
	.string "at an elementary\n"
	.string "school...*tisk tisk*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1F18_unk4

	def_text_script CompText87A1F18_unk5

	def_text_script CompText87A1F18_unk6

	def_text_script CompText87A1F18_unk7

	def_text_script CompText87A1F18_unk8

	def_text_script CompText87A1F18_unk9

	def_text_script CompText87A1F18_unk10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "There's a virus,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Alright!\n"
	.string "Let's go!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xE1, 0x11
	ts_end

	def_text_script CompText87A1F18_unk11
	ts_check_flag 0xE4, 0x11, 0xFF, 0xC
	ts_check_flag 0xE5, 0x11, 0xFF, 0xC
	ts_check_flag 0xE6, 0x11, 0xFF, 0xC
	ts_check_flag 0xE7, 0x11, 0xFF, 0xC
	ts_check_flag 0xE8, 0x11, 0xFF, 0xC
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We did it,Lan!\n"
	.string "We deleted all of\n"
	.string "the viruses!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yep!\n"
	.string "This computer\n"
	.string "is safe now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1F18_unk12
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We did it,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yep!\n"
	.string "This computer\n"
	.string "is safe now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1F18_unk13

	def_text_script CompText87A1F18_unk14

	def_text_script CompText87A1F18_unk15
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "...EXCUSE ME!\n"
	.string "THERE IS A TEACHERS'\n"
	.string "MEETING TODAY AT 4!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE IS A TEACHERS'\n"
	.string "MEETING TODAY AT 4!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT'S MY JOB TO\n"
	.string "ANNOUNCE THE\n"
	.string "SCHEDULE EVERY DAY,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AND I DO IT JUST\n"
	.string "LIKE THIS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE IS A TEACHERS'\n"
	.string "MEETING TODAY AT 4!"
	ts_key_wait 0x0
	ts_end

	