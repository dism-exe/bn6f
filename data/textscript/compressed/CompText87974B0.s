	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87974B0::
	.word 0x99900

	text_archive_start

	def_text_script CompText87974B0_unk0
	ts_check_flag 0x14, 0x11, 0xA, 0xFF
	ts_check_flag 0x13, 0x11, 0x9, 0xFF
	ts_check_flag 0x12, 0x11, 0x8, 0xFF
	ts_check_flag 0x11, 0x11, 0x7, 0xFF
	ts_check_flag 0xF, 0x11, 0x1, 0xFF
	ts_flag_set 0xF, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Pardon me...\n"
	.string "You saw my post on\n"
	.string "the RequestBBS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The truth is my\n"
	.string "operator is a\n"
	.string "manager..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It looks like the\n"
	.string "factory might go\n"
	.string "bankrupt..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It doesn't matter\n"
	.string "how much,but would\n"
	.string "you lend me money?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't know when,\n"
	.string "but I'll repay\n"
	.string "2x..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No...10x...\n"
	.string "the money!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess I can...\n"
	.string "For sure..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please...\n"
	.string "Lend me money!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No way"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you took the\n"
	.string "request,live up to\n"
	.string "your duty and lend!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87974B0_unk1
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "PLEASE!!\n"
	.string "Lend us money!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You took my\n"
	.string "request didn't you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PLEASE!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't know when,\n"
	.string "but I'll repay\n"
	.string "2x..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No...10x...\n"
	.string "the money!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess I can...\n"
	.string "For sure..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please...\n"
	.string "Lend me money!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No way"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you took the\n"
	.string "request,live up to\n"
	.string "your duty and lend!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87974B0_unk2
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Thank goodness...\n"
	.string "How much can you\n"
	.string "spare?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_option 0x0, 0x11, 0x22
	ts_space 0x1
	.string "100Z     "
	ts_option 0x0, 0x0, 0x33
	ts_space 0x1
	.string "1000Z\n"
	ts_option 0x0, 0x33, 0x0
	ts_space 0x1
	.string "10000Z   "
	ts_option 0x0, 0x22, 0x11
	ts_space 0x1
	.string "None"
	ts_select 0x8, 0x20, 0x3, 0x4, 0x5, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you took the\n"
	.string "request,live up to\n"
	.string "your duty and lend!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87974B0_unk3
	ts_check_take_zenny 0x64, 0x0, 0x0, 0x0, 0xFF, 0xB, 0xB
	ts_flag_set 0x11, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Huh,100Z?\n"
	.string "Kinda cheap,don't\n"
	.string "you think?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Awww... Right now,\n"
	.string "even 100Z makes a\n"
	.string "difference..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be sure to pay\n"
	.string "you back one day!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you...\n"
	.string "I truly thank you."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87974B0_unk4
	ts_check_take_zenny 0xE8, 0x3, 0x0, 0x0, 0xFF, 0xB, 0xB
	ts_flag_set 0x12, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "1000Z...\n"
	.string "That really helps!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be sure to pay\n"
	.string "you back one day!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you...\n"
	.string "I truly thank you."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87974B0_unk5
	ts_check_take_zenny 0x10, 0x27, 0x0, 0x0, 0xFF, 0xB, 0xB
	ts_flag_set 0x13, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "10000Z!?!?\n"
	.string "WE'RE SAVED!!!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be sure to pay\n"
	.string "you back one day!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you...\n"
	.string "I can't thank you\n"
	.string "enough!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87974B0_unk6
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I'm sorry..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Unfortunately work\n"
	.string "can't pay you back\n"
	.string "yet... Sorry..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87974B0_unk7
	ts_check_chapter 0x30, 0xFF, 0xFF, 0x6
	ts_flag_set 0x14, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Thanks to you,\n"
	.string "the business is\n"
	.string "back in action!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can even pay back\n"
	.string "the 100Z you lent\n"
	.string "us!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just like I said,\n"
	.string "I'll pay you back\n"
	.string "10 times the 100Z!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny 0xE8, 0x3, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"1000 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87974B0_unk8
	ts_check_chapter 0x40, 0xFF, 0xFF, 0x6
	ts_flag_set 0x14, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Thanks to you,\n"
	.string "the business is\n"
	.string "back in action!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can even pay back\n"
	.string "the 1000Z you lent\n"
	.string "us!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just like I said,\n"
	.string "I'll pay you back\n"
	.string "10 times the 1000Z!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny 0x10, 0x27, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"10000 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87974B0_unk9
	ts_check_chapter 0x60, 0xFF, 0xFF, 0x6
	ts_flag_set 0x14, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Thanks to you,\n"
	.string "the business is\n"
	.string "back in action!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can even pay back\n"
	.string "the 10000Z you lent\n"
	.string "us!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just like I said,\n"
	.string "I'll pay you back\n"
	.string "10 times the 10000Z!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny 0xA0, 0x86, 0x1, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"100000 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87974B0_unk10
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "You know,you've got\n"
	.string "no idea what will\n"
	.string "happen in life..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hahahahaha!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87974B0_unk11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "This is hard to say\n"
	.string "since I'm asking for\n"
	.string "money..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You don't have\n"
	.string "enough Zennys."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87974B0_unk12
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "If I could make\n"
	.string "a new PET widget,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it would be\n"
	.string "awesome!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87974B0_unk13
	ts_mugshot_hide
	ts_msg_open
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	