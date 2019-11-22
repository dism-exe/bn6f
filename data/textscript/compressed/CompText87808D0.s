	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87808D0::
	.word 0xD1F00

	text_archive_start

	def_text_script CompText87808D0_unk0
	ts_check_shop_stock 0xB, 0xFF, 0x2
	ts_mugshot_show 0x10
	ts_msg_open
	.string "I'm going to offload\n"
	.string "my SubChips soon..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Want to look?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x1, 0xFF
	ts_start_shop 0xB

	def_text_script CompText87808D0_unk1
	ts_clear_msg
	.string "They say,\"Giving is\n"
	.string "its own reward\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Too bad you don't\n"
	.string "want anything..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk2
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Ahhh... Now that I\n"
	.string "think about it...\n"
	.string "I don't have that."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk3

	def_text_script CompText87808D0_unk4

	def_text_script CompText87808D0_unk5
	ts_msg_open
	.string "It won't open...\n"
	.string "It's locked."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk6

	def_text_script CompText87808D0_unk7

	def_text_script CompText87808D0_unk8

	def_text_script CompText87808D0_unk9

	def_text_script CompText87808D0_unk10
	ts_check_flag 0x59, 0x11, 0xD, 0xFF
	ts_check_flag 0x58, 0x11, 0xF, 0xFF
	ts_flag_set 0x58, 0x11
	ts_mugshot_show 0x46
	ts_msg_open
	.string "Hello! Thanks\n"
	.string "for answering my\n"
	.string "request."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me explain my\n"
	.string "request!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Listen closely,OK!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm just not strong\n"
	.string "enough to defeat\n"
	.string "other Navis..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It kinda hurts to\n"
	.string "always lose in\n"
	.string "battle..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I had an idea!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I fight with lots\n"
	.string "of Support Chips,\n"
	.string "even if I get hurt,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll still have a\n"
	.string "chance to win."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I want you to\n"
	.string "gather me a set of\n"
	.string "Support Chips!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I'd like these\n"
	.string "chips in the set-"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 0x9D, 0x0
	.string " "
	ts_print_code 0x7, 0x0
	.string "\"\n"
	.string "\""
	ts_print_chip1 0xA7, 0x0
	.string " "
	ts_print_code 0x0, 0x0
	.string "\"\n"
	.string "\""
	ts_print_chip1 0xB5, 0x0
	.string " "
	ts_print_code 0x10, 0x0
	.string "\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 0xC3, 0x0
	.string " "
	ts_print_code 0x1A, 0x0
	.string "\"\n"
	.string "\""
	ts_print_chip1 0x93, 0x0
	.string " "
	ts_print_code 0x12, 0x0
	.string "\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "With these 5 chips,\n"
	.string "I could put up\n"
	.string "quite a fight!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So help me out!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Get these 5 chips\n"
	.string "for me!!"
	ts_key_wait 0x0
	ts_check_pack_chip_code 0x9D, 0x0, 0x7, 0x1, 0xFF, 0xFF, 0x10
	ts_check_pack_chip_code 0xA7, 0x0, 0x0, 0x1, 0xFF, 0xFF, 0x10
	ts_check_pack_chip_code 0xB5, 0x0, 0x10, 0x1, 0xFF, 0xFF, 0x10
	ts_check_pack_chip_code 0xC3, 0x0, 0x1A, 0x1, 0xFF, 0xFF, 0x10
	ts_check_pack_chip_code 0x93, 0x0, 0x12, 0x1, 0xFF, 0xFF, 0x10
	ts_jump 14

	def_text_script CompText87808D0_unk11
	ts_mugshot_show 0x46
	ts_msg_open
	.string "I want you to gather\n"
	.string "me a set of Support\n"
	.string "Chips so I can win!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 0x9D, 0x0
	.string " "
	ts_print_code 0x7, 0x0
	.string "\"\n"
	.string "\""
	ts_print_chip1 0xA7, 0x0
	.string " "
	ts_print_code 0x0, 0x0
	.string "\"\n"
	.string "\""
	ts_print_chip1 0xB5, 0x0
	.string " "
	ts_print_code 0x10, 0x0
	.string "\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 0xC3, 0x0
	.string " "
	ts_print_code 0x1A, 0x0
	.string "\"\n"
	.string "\""
	ts_print_chip1 0x93, 0x0
	.string " "
	ts_print_code 0x12, 0x0
	.string "\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "With these 5 chips,\n"
	.string "I could put up\n"
	.string "quite a fight!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So help me out!\n"
	.string "Get these 5 chips\n"
	.string "for me!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk12
	ts_flag_set 0x59, 0x11
	ts_mugshot_show 0x46
	ts_msg_open
	ts_item_take_chip 0x9D, 0x0, 0x7, 0x1
	ts_item_take_chip 0xA7, 0x0, 0x0, 0x1
	ts_item_take_chip 0xB5, 0x0, 0x10, 0x1
	ts_item_take_chip 0xC3, 0x0, 0x1A, 0x1
	ts_item_take_chip 0x93, 0x0, 0x12, 0x1
	.string "How'd it go...\n"
	.string "Did you get the\n"
	.string "chip set?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yay!! You did it!!\n"
	.string "You got them all!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now I won't lose to\n"
	.string "a soul!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you!!\n"
	.string "Here's your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_item_give 0x70, 0x1
	ts_mugshot_hide
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x70, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x46
	.string "From now on they\n"
	.string "are going to call\n"
	.string "me SuperBattleGirl!"
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

	def_text_script CompText87808D0_unk13
	ts_mugshot_show 0x46
	ts_msg_open
	.string "From now on they\n"
	.string "are going to call\n"
	.string "me SuperBattleGirl!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk14
	ts_flag_set 0x59, 0x11
	ts_mugshot_show 0x46
	ts_msg_open
	ts_item_take_chip 0x9D, 0x0, 0x7, 0x1
	ts_item_take_chip 0xA7, 0x0, 0x0, 0x1
	ts_item_take_chip 0xB5, 0x0, 0x10, 0x1
	ts_item_take_chip 0xC3, 0x0, 0x1A, 0x1
	ts_item_take_chip 0x93, 0x0, 0x12, 0x1
	.string "Huh? You got 'em?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yay!! You did it!!\n"
	.string "You got them all!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now I won't lose to\n"
	.string "a soul!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you!!\n"
	.string "Here's your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x70, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x70, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x46
	.string "From now on they\n"
	.string "are going to call\n"
	.string "me SuperBattleGirl!"
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

	def_text_script CompText87808D0_unk15
	ts_check_pack_chip_code 0x9D, 0x0, 0x7, 0x1, 0xFF, 0xFF, 0xB
	ts_check_pack_chip_code 0xA7, 0x0, 0x0, 0x1, 0xFF, 0xFF, 0xB
	ts_check_pack_chip_code 0xB5, 0x0, 0x10, 0x1, 0xFF, 0xFF, 0xB
	ts_check_pack_chip_code 0xC3, 0x0, 0x1A, 0x1, 0xFF, 0xFF, 0xB
	ts_check_pack_chip_code 0x93, 0x0, 0x12, 0x1, 0xFF, 0xFF, 0xB
	ts_jump 12

	def_text_script CompText87808D0_unk16
	ts_end

	def_text_script CompText87808D0_unk17

	def_text_script CompText87808D0_unk18

	def_text_script CompText87808D0_unk19

	def_text_script CompText87808D0_unk20
	ts_check_flag 0xDC, 0x11, 0x19, 0xFF
	ts_check_flag 0xD8, 0x11, 0x18, 0xFF
	ts_check_flag 0xDB, 0x11, 0x17, 0xFF
	ts_check_flag 0xD3, 0x11, 0x16, 0xFF
	ts_check_flag 0xD2, 0x11, 0x15, 0xFF
	ts_flag_set 0xD2, 0x11
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Ahh,you're the\n"
	.string "one who took my\n"
	.string "request!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yep...you'll suit\n"
	.string "me just fine..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Suit you?\n"
	.string "What do you plan\n"
	.string "on having me do?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "I want you to meet\n"
	.string "the kidnapper Navi\n"
	.string "in MrWeathrComp1,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "then find out where\n"
	.string "the hostage is!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Find out where the\n"
	.string "hostage is...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "There's nothing to\n"
	.string "worry about. Listen\n"
	.string "to his demands,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and then get him to\n"
	.string "open up to you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then you'll find out\n"
	.string "where the hostage\n"
	.string "is being held..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "OK! I'll do my\n"
	.string "best..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Good luck!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk21
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Don't do anything\n"
	.string "to irritate the\n"
	.string "criminal!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The fool is staying\n"
	.string "in MrWeathrComp1!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is nowhere\n"
	.string "he can run..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now all we need to\n"
	.string "know is where the\n"
	.string "hostage is..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk22
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Don't do anything\n"
	.string "to irritate the\n"
	.string "criminal!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Listen to his\n"
	.string "demands and get him\n"
	.string "to open up to you!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk23
	ts_mugshot_show 0x15
	ts_msg_open
	.string "The criminal ran off\n"
	.string "to MrWeathrComp3!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The only one who can\n"
	.string "get close without\n"
	.string "spooking him is you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk24
	ts_flag_set 0xDC, 0x11
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Thank you!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We rescued the\n"
	.string "hostage and arrested\n"
	.string "the criminals!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you grow up,\n"
	.string "we'll make you a\n"
	.string "NetPolice member!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is your\n"
	.string "reward! Enjoy!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x36, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x36, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "You were great!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If the criminal Navi\n"
	.string "brothers get out of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "prison,I'll take\n"
	.string "care of things."
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

	def_text_script CompText87808D0_unk25
	ts_mugshot_show 0x15
	ts_msg_open
	.string "When you grow up,\n"
	.string "we'll make you a\n"
	.string "NetPolice member!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk26

	def_text_script CompText87808D0_unk27

	def_text_script CompText87808D0_unk28

	def_text_script CompText87808D0_unk29

	def_text_script CompText87808D0_unk30
	ts_check_flag 0x29, 0x17, 0x1F, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,where ya\n"
	.string "going!? We don't"
	ts_key_wait 0x0
	ts_clear_msg
	.string "have time to go\n"
	.string "down there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk31
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We don't have time\n"
	.string "to go down there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87808D0_unk32

	def_text_script CompText87808D0_unk33

	def_text_script CompText87808D0_unk34

	