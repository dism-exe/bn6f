	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8769DE8::
	.word 0xC3200

	text_archive_start

	def_text_script CompText8769DE8_unk0
	ts_check_chapter 0x64, 0x64, 0xF, 0xFF
	ts_check_flag 0xEB, 0x1, 0x2, 0xFF
	ts_check_flag 0x2, 0x8, 0x1, 0xFF
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Hey Lan!!\n"
	.string "Welcome to AsterLand!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText8769DE8_unk1
	ts_flag_set 0xEB, 0x1
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Hey Lan!!\n"
	.string "Welcome to AsterLand!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've started a new\n"
	.string "ordering service!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So that means that\n"
	.string "we are now taking\n"
	.string "orders!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If there is some\n"
	.string "special chip you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "have to get,just\n"
	.string "tell me the name"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and I can order it\n"
	.string "through our special\n"
	.string "secret supply chain!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,what can I do\n"
	.string "for you today?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_vertical 0x8
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " In-Stock Chips\n"
	ts_position_option_vertical 0x8
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Order Service\n"
	ts_position_option_vertical 0x8
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Quit"
	ts_select 0x7, 0x80, 0x4, 0x5, 0x6, 0xFF

	def_text_script CompText8769DE8_unk2
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Hey Lan!!\n"
	.string "Welcome to AsterLand!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What can I do for you\n"
	.string "today?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " In-Stock Chips\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Order Service\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Quit"
	ts_select 0x7, 0x80, 0x4, 0x5, 0x6, 0xFF

	def_text_script CompText8769DE8_unk3
	ts_text_speed 0x2
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Unfortunately,we are\n"
	.string "sold out..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk4
	ts_check_shop_stock 0x4, 0xFF, 0x3
	ts_start_shop 0x4

	def_text_script CompText8769DE8_unk5
	ts_start_shop 0x12

	def_text_script CompText8769DE8_unk6
	ts_text_speed 0x2
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Come back soon!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk7

	def_text_script CompText8769DE8_unk8

	def_text_script CompText8769DE8_unk9

	def_text_script CompText8769DE8_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You,you came here to\n"
	.string "buy chips?\n"
	.string "Weird penguin..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Penguin capture!"
	ts_key_wait 0x0
	ts_flag_set 0xAD, 0x11
	ts_check_flag 0xAF, 0x11, 0xFF, 0xB
	ts_check_flag 0xAE, 0x11, 0xFF, 0xB
	ts_check_flag 0xAD, 0x11, 0xFF, 0xB
	ts_check_flag 0xAC, 0x11, 0xFF, 0xB
	ts_check_flag 0xAB, 0x11, 0xFF, 0xB
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "We've got all\n"
	.string "the penguins now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright! Let's get\n"
	.string "back to the\n"
	.string "requestor!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk11
	ts_end

	def_text_script CompText8769DE8_unk12

	def_text_script CompText8769DE8_unk13

	def_text_script CompText8769DE8_unk14

	def_text_script CompText8769DE8_unk15
	ts_mugshot_show 0x33
	ts_msg_open
	.string "I'm a chip seller!\n"
	.string "Right now,all I can\n"
	.string "do is sell chips!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2
	ts_end

	def_text_script CompText8769DE8_unk16

	def_text_script CompText8769DE8_unk17

	def_text_script CompText8769DE8_unk18

	def_text_script CompText8769DE8_unk19

	def_text_script CompText8769DE8_unk20
	ts_check_chapter 0x64, 0x64, 0x17, 0xFF
	ts_check_shop_stock 0x10, 0xFF, 0x16
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Welcome to the\n"
	.string "Famous Chip Shop!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We sell chips that\n"
	.string "are great for versus\n"
	.string "NetBattles!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24
	ts_end

	def_text_script CompText8769DE8_unk21
	ts_clear_msg
	.string "For versus battles,a\n"
	.string "surprising chip can\n"
	.string "decide a battle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come by and look at\n"
	.string "chips whenever you'd\n"
	.string "like!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk22
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Sorry...\n"
	.string "We're out of stock\n"
	.string "now..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk23
	ts_check_shop_stock 0x10, 0xFF, 0x16
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "It sounds noisy out\n"
	.string "there,but it doesn't\n"
	.string "bother Mr.Famous!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24
	ts_end

	def_text_script CompText8769DE8_unk24
	ts_clear_msg
	.string "Care to take a look?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0x15, 0xFF
	ts_start_shop 0x10

	def_text_script CompText8769DE8_unk25

	def_text_script CompText8769DE8_unk26

	def_text_script CompText8769DE8_unk27

	def_text_script CompText8769DE8_unk28

	def_text_script CompText8769DE8_unk29

	def_text_script CompText8769DE8_unk30
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO ASTERLAND!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I AM THE SHOP\n"
	.string "INFORMATION PROGRAM."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IS THERE SOMETHING\n"
	.string "YOU WOULD LIKE TO\n"
	.string "ASK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Trader\n"
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " RequestBBS\n"
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Quit"
	ts_select 0x7, 0x80, 0x1F, 0x22, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x3C
	.string "FEEL FREE TO ASK\n"
	.string "ME ANYTHING,ANYTIME!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk31
	ts_text_speed 0x2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WHICH TRADER WOULD\n"
	.string "YOU LIKE TO ASK\n"
	.string "ABOUT?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Chip Trader\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Number Trader\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Quit"
	ts_select 0x7, 0x80, 0x20, 0x21, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x3C
	.string "FEEL FREE TO ASK\n"
	.string "ME ANYTHING,ANYTIME!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk32
	ts_text_speed 0x2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IF YOU GIVE THE\n"
	.string "CHIP TRADER 3 CHIPS\n"
	.string "YOU WILL GET 1 BACK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE IS A CHANCE\n"
	.string "YOU WILL GET A RARE\n"
	.string "CHIP,BUT THERE IS"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NO GUARANTEE YOU'LL\n"
	.string "GET A GOOD CHIP."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WHEN YOU USE THE\n"
	.string "CHIP TRADER,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE GAME WILL\n"
	.string "AUTOMATICALLY SAVE,\n"
	.string "SO USE CAUTION."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk33
	ts_text_speed 0x2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IF YOU ENTER 8\n"
	.string "LOTTO NUMBERS INTO\n"
	.string "THE NUMBER TRADER,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU WILL RECEIVE\n"
	.string "AN ITEM THAT MATCHES\n"
	.string "THOSE NUMBERS."
	ts_key_wait 0x0
	ts_clear_msg
	.string "LOTTO NUMBERS ARE\n"
	.string "WRITTEN HERE AND"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE,SO MAKE SURE\n"
	.string "TO LOOK AROUND!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk34
	ts_text_speed 0x2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE SCREEN BEHIND ME\n"
	.string "IS DISPLAYING THE\n"
	.string "REQUEST BBS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE BBS LISTS THE\n"
	.string "REQUESTS OF THOSE IN"
	ts_key_wait 0x0
	ts_clear_msg
	.string "CYBERCITY WHO HAVE\n"
	.string "PROBLEMS."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU SOLVE THE\n"
	.string "PROBLEMS ON THE\n"
	.string "REQUEST BBS,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU WILL RECEIVE A\n"
	.string "REWARD FROM THE\n"
	.string "REQUESTOR."
	ts_key_wait 0x0
	ts_clear_msg
	.string "BUT,YOU CANNOT\n"
	.string "ACCEPT ANY REQUEST\n"
	.string "WHENEVER YOU WANT."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU CAN ONLY TAKE\n"
	.string "REQUESTS THAT MATCH\n"
	.string "YOUR RANK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE FIRST TIME YOU\n"
	.string "TAKE A REQUEST,YOU\n"
	.string "WILL BE \"RANK C\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"RANK C\" ALLOWS YOU\n"
	.string "TO ACCEPT ONLY ONE\n"
	.string "STAR REQUESTS."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WHEN YOU COMPLETE\n"
	.string "A REQUEST,ALONG WITH\n"
	.string "THE REWARD,YOU WILL"
	ts_key_wait 0x0
	ts_clear_msg
	.string "RECEIVE REQUEST\n"
	.string "POINTS THAT WILL\n"
	.string "RAISE YOUR RANK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "AS YOUR RANK RISES\n"
	.string "YOU CAN ACCEPT"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTS WITH MORE\n"
	.string "STARS."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE ONE THING\n"
	.string "YOU MUST PAY\n"
	.string "ATTENTION TO IS"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE FACT THAT YOU\n"
	.string "CAN ONLY TAKE"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTS WITH YOUR\n"
	.string "OWN NAVI."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IN YOUR CASE,THAT\n"
	.string "NAVI WOULD BE\n"
	.string "MEGAMAN."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WHEN YOU USE NAVIS\n"
	.string "OTHER THAN YOUR OWN,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU WILL NOT BE\n"
	.string "ABLE TO INTERACT\n"
	.string "WITH REQUESTORS."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769DE8_unk35

	