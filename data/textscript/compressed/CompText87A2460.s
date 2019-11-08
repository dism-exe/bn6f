	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A2460::
	.word 0x8F400

	text_archive_start

	def_text_script CompText87A2460_unk0
	ts_check_flag 0x62, 0x11, 0x2, 0xFF
	ts_check_flag 0x61, 0x11, 0x1, 0xFF
	ts_flag_set 0x61, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "You're here!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're here about\n"
	.string "the request!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "See that? That's\n"
	.string "the safe we use at\n"
	.string "this Popcorn Shop..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I've forgotten\n"
	.string "the code to open\n"
	.string "it!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have to send this\n"
	.string "money to the bank\n"
	.string "soon..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And the only other\n"
	.string "person who knows"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the code is\n"
	.string "the shop owner!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The shop owner is\n"
	.string "on a trip and I\n"
	.string "can't reach him!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I need help!\n"
	.string "I need you to open\n"
	.string "this safe!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A2460_unk1
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "See that? That's\n"
	.string "the safe we use at\n"
	.string "this Popcorn Shop..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today I'm supposed\n"
	.string "to count the sales\n"
	.string "money."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I've forgotten\n"
	.string "the code to open\n"
	.string "it!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have to send this\n"
	.string "money to the bank\n"
	.string "soon..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And the only other\n"
	.string "person who knows"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the code is\n"
	.string "the shop owner!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The shop owner is\n"
	.string "on a trip and I\n"
	.string "can't reach him!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I need help!\n"
	.string "I need you to open\n"
	.string "this safe!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A2460_unk2
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Whew! I'm saved!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be able to make\n"
	.string "the bank deposit\n"
	.string "on time!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A2460_unk3
	ts_check_flag 0x62, 0x11, 0xA, 0xFF
	ts_check_flag 0x63, 0x11, 0x5, 0xFF
	ts_check_flag 0x61, 0x11, 0x4, 0xFF
	ts_msg_open
	.string "What a heavy box!\n"
	.string "It's like a safe..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A2460_unk4
	ts_msg_open
	ts_flag_set 0x63, 0x11
	.string "What a heavy box!\n"
	.string "It's like a safe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This paper says,\n"
	.string "\"A hint if you've\n"
	.string "forgotten the code.\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "The shop owner must\n"
	.string "have put it there...\n"
	.string "I didn't know..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "1 is dolphin.\n"
	.string "10 is penguin.\n"
	.string "100 is sea angel."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "...OK..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87A2460_unk5
	ts_msg_open
	.string "What a heavy box!\n"
	.string "It's like a safe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This paper says,\n"
	.string "\"A hint if you've\n"
	.string "forgotten the code.\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "1 is dolphin.\n"
	.string "10 is penguin.\n"
	.string "100 is sea angel."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87A2460_unk6
	ts_mugshot_hide
	.string "Enter Code:"
	ts_key_wait 0x0
	ts_clear_msg
	ts_option 0x1, 0x31, 0x0
	ts_space 0x1
	ts_menu_option_number_trader 0x0
	.string "0"
	ts_option 0x1, 0x2, 0x11
	ts_space 0x1
	ts_menu_option_number_trader 0x1
	.string "0"
	ts_option 0x1, 0x13, 0x22
	ts_space 0x1
	ts_menu_option_number_trader 0x2
	.string "0    "
	ts_option 0x1, 0x20, 0x33
	ts_space 0x1
	.string " OK\n"
	.string "(UP/DOWN:Number\n"
	.string " LEFT/RIGHT:Cursor)"
	ts_menu_select_password 0x7, 0x8, 0x9, 0x1
	ts_end

	def_text_script CompText87A2460_unk7
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x51, 0x1
	.string "*Beep!* "
	ts_wait 0x14, 0x0
	ts_sound_play00 0x76, 0x1
	.string "*Click!!*"
	ts_wait 0x14, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "YES! It's open!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I see... The hint\n"
	.string "was the number of\n"
	.string "animals."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's a gift to\n"
	.string "show my thanks..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_player_animate_object 0x18
	ts_item_give_navi_cust_program 0x58, 0x1, 0x4
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x1, 0x60
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "Whew! I'm saved!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be able to make\n"
	.string "the bank deposit\n"
	.string "on time!"
	ts_key_wait 0x0
	ts_flag_set 0x62, 0x11
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

	def_text_script CompText87A2460_unk8
	ts_msg_open
	.string "Incorrect Code."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A2460_unk9
	ts_msg_open
	.string "Input cancelled."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A2460_unk10
	ts_msg_open
	.string "What a heavy box!\n"
	.string "It's like a safe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is unlocked..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A2460_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "There's a virus!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Alright!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xE2, 0x11
	ts_end

	def_text_script CompText87A2460_unk12
	ts_check_flag 0xE4, 0x11, 0xFF, 0xD
	ts_check_flag 0xE5, 0x11, 0xFF, 0xD
	ts_check_flag 0xE6, 0x11, 0xFF, 0xD
	ts_check_flag 0xE7, 0x11, 0xFF, 0xD
	ts_check_flag 0xE8, 0x11, 0xFF, 0xD
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

	def_text_script CompText87A2460_unk13
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

	def_text_script CompText87A2460_unk14

	def_text_script CompText87A2460_unk15
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I'VE GOT A SECRET\n"
	.string "RIVAL."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE PROGRAM AT THE\n"
	.string "FISH STICKS SHOP..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I NEVER WANT TO COME\n"
	.string "IN SECOND TO THAT\n"
	.string "PROGRAM..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "EVERYONE KNOWS\n"
	.string "POPCORN IS BETTER\n"
	.string "THAN FISH STICKS!"
	ts_key_wait 0x0
	ts_end

	