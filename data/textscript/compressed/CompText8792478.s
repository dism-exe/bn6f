	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8792478::
	.word 0x303B00

	text_archive_start

	def_text_script CompText8792478_unk0
	ts_check_flag 0xBE, 0xA, 0x1, 0xFF
	ts_flag_set 0xBE, 0xA
	ts_end

	def_text_script CompText8792478_unk1
	ts_mugshot_show 0x42
	ts_msg_open
	.string "There are 8\n"
	.string "cyberbatteries."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Area1 has 3,\n"
	.string "and Area2 has 5."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Watch out for\n"
	.string "crazed Navis..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk2

	def_text_script CompText8792478_unk3

	def_text_script CompText8792478_unk4

	def_text_script CompText8792478_unk5
	ts_msg_open
	.string "A broken Mr.Prog..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It keeps repeating\n"
	.string "the same thing over\n"
	.string "and over..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "GRUMBLE...GRUMBLE...\n"
	.string "RALABLBBRB..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk6
	ts_check_flag 0x8D, 0x1, 0x7, 0xFF
	ts_mugshot_show 0x40
	ts_msg_open
	.string "I cannot be bothered\n"
	.string "while meditating..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So please just leave\n"
	.string "me alone..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program 0x48, 0x1, 0x5
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x12, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_flag_set 0x8D, 0x1
	ts_end

	def_text_script CompText8792478_unk7
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Please don't bother\n"
	.string "me while I am\n"
	.string "meditating..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk8

	def_text_script CompText8792478_unk9

	def_text_script CompText8792478_unk10
	ts_check_flag 0x6, 0xB, 0xD, 0xFF
	ts_check_flag 0x3A, 0xA, 0xC, 0xFF
	ts_jump 13

	def_text_script CompText8792478_unk11
	ts_mugshot_show 0x21
	ts_msg_open
	.string "HEY! Where do you\n"
	.string "think you're going!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The test isn't over\n"
	.string "yet!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk12
	ts_mugshot_show 0x20
	ts_msg_open
	.string "There are still\n"
	.string "cyberbatteries\n"
	.string "in this area!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk13
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Where are you\n"
	.string "going?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You aren't,perhaps,\n"
	.string "running away are\n"
	.string "you?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk14

	def_text_script CompText8792478_unk15
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Hey! Where ya goin'?\n"
	.string "Ya got nothin' to\n"
	.string "do over there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk16

	def_text_script CompText8792478_unk17

	def_text_script CompText8792478_unk18

	def_text_script CompText8792478_unk19

	def_text_script CompText8792478_unk20
	ts_check_flag 0x83, 0xA, 0x15, 0xFF
	ts_flag_set 0x83, 0xA
	ts_msg_open
	.string "You...\n"
	.string "Wilt thou take\n"
	.string "our test?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	.string "Without passing the\n"
	.string "test,you cannot\n"
	.string "continue on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk21
	ts_msg_open
	.string "You...\n"
	.string "Shall you take\n"
	.string "our test?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	.string "Without passing the\n"
	.string "test,you cannot\n"
	.string "continue on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk22
	ts_msg_open
	.string "Begin the test!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Press the B Button\n"
	.string "to take up the\n"
	.string "tomahawk,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and destroy 70 of\n"
	.string "us!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We have 3 stages\n"
	.string "of growth.If you\n"
	.string "do not destroy us"
	ts_key_wait 0x0
	ts_clear_msg
	.string "before our last\n"
	.string "stage of growth,a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "thunderous attack\n"
	.string "will befall you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "During the test,\n"
	.string "beings with wings\n"
	.string "will help you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Use the L Button and\n"
	.string "R Button to slash\n"
	.string "left and right..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,let the test\n"
	.string "begin..."
	ts_key_wait 0x0
	ts_flag_set 0x89, 0xA
	ts_end

	def_text_script CompText8792478_unk23
	ts_msg_open
	.string "Those who have\n"
	.string "passed the test\n"
	.string "may proceed..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk24

	def_text_script CompText8792478_unk25
	ts_check_flag 0x84, 0xA, 0x1A, 0xFF
	ts_flag_set 0x84, 0xA
	ts_msg_open
	.string "You...\n"
	.string "Wilt thou take\n"
	.string "our test?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1B, 0xFF, 0xFF
	ts_clear_msg
	.string "Those without a\n"
	.string "fighter's spirit\n"
	.string "must leave..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk26
	ts_msg_open
	.string "You...\n"
	.string "Wilt thou take\n"
	.string "our test?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1B, 0xFF, 0xFF
	ts_clear_msg
	.string "Those without a\n"
	.string "fighter's spirit\n"
	.string "must leave..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk27
	ts_msg_open
	.string "Begin the test!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Press the B Button\n"
	.string "to take up the\n"
	.string "tomahawk,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and destroy 100 of\n"
	.string "us!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We have 3 stages\n"
	.string "of growth.If you\n"
	.string "do not destroy us"
	ts_key_wait 0x0
	ts_clear_msg
	.string "before our last\n"
	.string "stage of growth,a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "thunderous attack\n"
	.string "will befall you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "During the test,\n"
	.string "beings with wings\n"
	.string "will help you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Use the L Button and\n"
	.string "R Button to slash\n"
	.string "left and right..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,let the test\n"
	.string "begin..."
	ts_key_wait 0x0
	ts_flag_set 0x8B, 0xA
	ts_end

	def_text_script CompText8792478_unk28
	ts_msg_open
	.string "You have overcome\n"
	.string "our test..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Take one final test\n"
	.string "upon returning to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the real world would\n"
	.string "be good for you..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "A final test..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x21
	.string "Lan,jack out!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be giving you\n"
	.string "the final test!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Whatever you say!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jack out,TomahawkMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4A
	.string "OK!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk29

	def_text_script CompText8792478_unk30
	ts_check_flag 0x93, 0x11, 0x22, 0xFF
	ts_check_flag 0x92, 0x11, 0x1F, 0xFF
	ts_flag_set 0x92, 0x11
	ts_mugshot_show 0x41
	ts_msg_open
	.string "...So you're the\n"
	.string "one who took my\n"
	.string "request..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...*sigh*..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ahh,I'm sorry...\n"
	.string "You know...\n"
	.string "...for sighing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Anyways,do you\n"
	.string "mind listening to\n"
	.string "my problem?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Actually,I'm a\n"
	.string "musician..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've been featured\n"
	.string "in magazines... I've\n"
	.string "got a real future!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I'm in a slump!\n"
	.string "I can't write a\n"
	.string "single good song!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's really become\n"
	.string "a problem..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I think I have\n"
	.string "to change my point\n"
	.string "of view on things."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've decided to quit\n"
	.string "making songs alone."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to hear\n"
	.string "someone's opinion..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Even if they aren't\n"
	.string "a musician."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Probably someone\n"
	.string "who has never even\n"
	.string "made music..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think they'd give\n"
	.string "me an absolutely\n"
	.string "honest opinion."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So that's why you\n"
	.string "are here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like to make\n"
	.string "a song with you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The song I'd like\n"
	.string "to make will be\n"
	.string "about \"First Love\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you ready?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1F, 0xFF, 0xFF
	ts_mugshot_show 0x41
	.string "Let me know when\n"
	.string "you are ready..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk31
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Alright,let's\n"
	.string "start on the\n"
	.string "\"First Love\" song!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I'm gonna hum\n"
	.string "a little part\n"
	.string "I've worked on..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like you to\n"
	.string "fill in the parts\n"
	.string "I haven't finished."
	ts_key_wait 0x0
	ts_clear_msg
	ts_control_lock
	.string "DO"
	ts_wait 0x1E, 0x0
	.string ".REI..."
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "DO"
	ts_wait 0xF, 0x0
	.string ".REI"
	ts_wait 0xF, 0x0
	.string ".SOO"
	ts_wait 0xF, 0x0
	.string ".FAA"
	ts_wait 0x1E, 0x0
	ts_clear_msg
	ts_text_speed 0x5
	ts_wait 0x1E, 0x0
	.string "This time of night"
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "Only candle light"
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "Illuminates my soul"
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string "Your pretty nose...\n"
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string "Your love...\n"
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string "You're kinda fat..."
	ts_select 0x7, 0xC0, 0x20, 0xFF, 0x20, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x41
	ts_control_lock
	ts_text_speed 0x5
	ts_wait 0x1E, 0x0
	.string "This time of night"
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "You said no to me"
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "You want to be free"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string "To soar in the sky\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string "To buy ice cream\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string "To study Japanese"
	ts_select 0x7, 0xC0, 0xFF, 0x20, 0x20, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x41
	ts_control_lock
	ts_text_speed 0x5
	ts_wait 0x1E, 0x0
	.string "Now it's too late..."
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string "The store is closed.\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string "Only memories...\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string "Only in Sky Area..."
	ts_select 0x7, 0xC0, 0x20, 0xFF, 0x20, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x41
	ts_control_lock
	ts_text_speed 0x4
	ts_wait 0x1E, 0x0
	.string "Free...lalalala..."
	ts_wait 0x46, 0x0
	ts_clear_msg
	.string "Free...lalalala..."
	ts_wait 0x46, 0x0
	ts_clear_msg
	ts_text_speed 0x5
	ts_wait 0x1E, 0x0
	.string "Free to say the"
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "Only word you need"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string "Sadness...\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string "Pizza...\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string "Love..."
	ts_select 0x7, 0xC0, 0x20, 0x20, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x41
	ts_control_lock
	ts_text_speed 0x5
	ts_wait 0x1E, 0x0
	.string "Since I've found you"
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "I've found the thing"
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "That makes me happy"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string "Your smile...\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string "Your memory...\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string "You..."
	ts_select 0x7, 0xC0, 0xFF, 0x20, 0x20, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x41
	ts_control_lock
	ts_text_speed 0x5
	ts_wait 0x1E, 0x0
	.string "That's why now..."
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string "That you're free...\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string "That your fat...\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string "You're not near..."
	ts_select 0x7, 0xC0, 0xFF, 0x20, 0x20, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x41
	ts_control_lock
	ts_text_speed 0x4
	ts_wait 0x1E, 0x0
	.string "Free...lalalala..."
	ts_wait 0x46, 0x0
	ts_clear_msg
	.string "Free...lalalala..."
	ts_wait 0x46, 0x0
	ts_clear_msg
	ts_text_speed 0x5
	ts_wait 0x1E, 0x0
	.string "So I've got only"
	ts_wait 0x1E, 0x0
	.string "\n"
	.string "one thing to say..."
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string "I still love you...\n"
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string "Freedom...\n"
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string "You..."
	ts_select 0x7, 0xC0, 0xFF, 0x20, 0x20, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x41
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string " Done!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're done!\n"
	.string "Great!\n"
	.string "An amazing song!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It may even be a\n"
	.string "million seller!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm out of my\n"
	.string "slump!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "All thanks to you!\n"
	.string "Thank you so much!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here is your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x73, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x73, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "2 MB!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_flag_set 0x93, 0x11
	ts_mugshot_show 0x41
	.string "Let's make a song\n"
	.string "together another\n"
	.string "time! This was fun!"
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

	def_text_script CompText8792478_unk32
	ts_text_speed 0x2
	ts_mugshot_show 0x41
	ts_msg_open
	.string "...It's no good..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm just not cut\n"
	.string "out for this...\n"
	.string "I'm no good..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is what it's\n"
	.string "come to..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "What will you do!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "I'll let a virus\n"
	.string "attack me and erase\n"
	.string "all my memories..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Don't do that!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "He sure is a\n"
	.string "persistent guy..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "C'mon MegaMan,\n"
	.string "you're gonna have\n"
	.string "to delete the virus!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Yep!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x9F, 0x11
	ts_end

	def_text_script CompText8792478_unk33
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Why'd you stop me?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You want me to\n"
	.string "keep singing...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK! I'll keep on\n"
	.string "trying..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk34
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Let's make a song\n"
	.string "together another\n"
	.string "time! This was fun!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk35
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I'd like you to\n"
	.string "write a song with\n"
	.string "me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you ready?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1F, 0xFF, 0xFF
	.string "When you're ready,\n"
	.string "let me know."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk36

	def_text_script CompText8792478_unk37

	def_text_script CompText8792478_unk38

	def_text_script CompText8792478_unk39

	def_text_script CompText8792478_unk40
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "ENJOY YOUR FLIGHT\n"
	.string "AROUND SKY AREA!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE CAN FLY!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk41
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Woo...\n"
	.string "Finally up here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's a hard road\n"
	.string "for an old man you\n"
	.string "know!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk42

	def_text_script CompText8792478_unk43

	def_text_script CompText8792478_unk44

	def_text_script CompText8792478_unk45

	def_text_script CompText8792478_unk46

	def_text_script CompText8792478_unk47

	def_text_script CompText8792478_unk48

	def_text_script CompText8792478_unk49

	def_text_script CompText8792478_unk50
	ts_check_flag 0x90, 0x11, 0x37, 0xFF
	ts_check_flag 0x8F, 0x11, 0x36, 0xFF
	ts_check_flag 0x8E, 0x11, 0x35, 0xFF
	ts_check_flag 0x8D, 0x11, 0x34, 0xFF
	ts_check_flag 0x8C, 0x11, 0x33, 0xFF
	ts_flag_set 0x8C, 0x11
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Hey! I'm the one who\n"
	.string "made the request."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My request is about\n"
	.string "my true passion...\n"
	.string "I love stocks!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Recently,I got a\n"
	.string "bit of money from\n"
	.string "my stocks,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so I think I'll buy\n"
	.string "some more stocks."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've got a few\n"
	.string "candidates,so I'd\n"
	.string "like you to decide."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The first choice is\n"
	.string "\"Papaya Computer\",a\n"
	.string "computer maker..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This stock won't\n"
	.string "drop far,but it also\n"
	.string "won't rise very far."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The second choice\n"
	.string "is a car maker\n"
	.string "called \"Toyosan\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They are going to\n"
	.string "unveil a new model\n"
	.string "soon,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so there is a\n"
	.string "chance its price\n"
	.string "could skyrocket!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,if the new\n"
	.string "model's sales are\n"
	.string "bad,it will plummet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The last choice is\n"
	.string "a small cap stock\n"
	.string "called \"Blackhole\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It isn't a well\n"
	.string "known company,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but they make parts\n"
	.string "for use in space."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm not quite sure\n"
	.string "about this company,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but there is a\n"
	.string "chance for them..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "From these 3 stocks,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like you to pick\n"
	.string "the one that will\n"
	.string "skyrocket in price!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If the stock goes\n"
	.string "up,I will give you\n"
	.string "10% of the earnings!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The stock broker\n"
	.string "is at the back of\n"
	.string "Undernet1,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so go and find him.\n"
	.string "Good luck!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk51
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Checking the\n"
	.string "details is always\n"
	.string "a good thing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like you to\n"
	.string "decide what stock\n"
	.string "to purchase..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here is information\n"
	.string "on my 3 candidates."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The first choice is\n"
	.string "\"Papaya Computer\",a\n"
	.string "computer maker..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This stock won't\n"
	.string "drop far,but it also\n"
	.string "won't rise very far."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The second choice\n"
	.string "is a car maker\n"
	.string "called \"Toyosan\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They are going to\n"
	.string "unveil a new model\n"
	.string "soon,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so there is a\n"
	.string "chance its price\n"
	.string "could skyrocket!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,if the new\n"
	.string "model's sales are\n"
	.string "bad,it will plummet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The last choice is\n"
	.string "a small cap stock\n"
	.string "called \"Blackhole\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It isn't a well\n"
	.string "known company,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but they make parts\n"
	.string "for use in space."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm not quite sure\n"
	.string "about this company,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but there is a\n"
	.string "chance for them..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "From these 3 stocks,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like you to pick\n"
	.string "the one that will\n"
	.string "skyrocket in price!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If the stock goes\n"
	.string "up,I will give you\n"
	.string "10% of the earnings!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The stock broker\n"
	.string "is at the back of\n"
	.string "Undernet1,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so go and find him.\n"
	.string "Good luck!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk52
	ts_flag_set 0x90, 0x11
	ts_mugshot_show 0x45
	ts_msg_open
	.string "The stock you chose,\n"
	.string "\"Papaya Computer\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It went up a bit...\n"
	.string "Around 10000Z..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So your cut of the\n"
	.string "money is 1000Z."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny 0xE8, 0x3, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"1000 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x45
	.string "If you look at\n"
	.string "things long term,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it'll go up even\n"
	.string "more!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Not a bad start\n"
	.string "for an amateur..."
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

	def_text_script CompText8792478_unk53
	ts_flag_set 0x90, 0x11
	ts_mugshot_show 0x45
	ts_msg_open
	.string "The stock you chose,\n"
	.string "\"Toyosan\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Unfortunately,it\n"
	.string "only went up 1000Z."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,your cut of the\n"
	.string "profits is 100Z."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny 0x64, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"100 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x45
	.string "If they unveil an\n"
	.string "incredible car,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it has a chance to\n"
	.string "change..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well... It's better\n"
	.string "than losing money."
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

	def_text_script CompText8792478_unk54
	ts_flag_set 0x90, 0x11
	ts_mugshot_show 0x45
	ts_msg_open
	.string "The stock you chose,\n"
	.string "\"Blackhole\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't believe it!\n"
	.string "A part that they"
	ts_key_wait 0x0
	ts_clear_msg
	.string "are making is being\n"
	.string "used on the new\n"
	.string "NAXA Space Plane!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The stock price\n"
	.string "shot up into space\n"
	.string "as well!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It made 1000000Z!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,your cut of the\n"
	.string "profits is 100000Z."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny 0xA0, 0x86, 0x1, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"100000 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x45
	.string "It's got to be\n"
	.string "beginner's luck..."
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

	def_text_script CompText8792478_unk55
	ts_mugshot_show 0x45
	ts_msg_open
	.string "You have to buy\n"
	.string "lots of stock to\n"
	.string "sell lots of stock!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The risk makes it\n"
	.string "a thrilling life...\n"
	.string "Remember that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I could never have\n"
	.string "a regular kinda\n"
	.string "job!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk56

	def_text_script CompText8792478_unk57

	def_text_script CompText8792478_unk58

	def_text_script CompText8792478_unk59

	def_text_script CompText8792478_unk60
	ts_check_flag 0x56, 0x11, 0x3E, 0xFF
	ts_mugshot_show 0x44
	ts_msg_open
	.string "What's with you!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're messing with\n"
	.string "a made man! I'm in\n"
	.string "the NetMafia!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "I know who you are,\n"
	.string "and what you're\n"
	.string "after..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I'm not gonna\n"
	.string "let you take one\n"
	.string "step further!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "Shuddup kid..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You must be with\n"
	.string "that traitor...\n"
	.string "Fine with me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm gonna force you\n"
	.string "to tell us where\n"
	.string "that rat is hiding!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "C'mon you smug\n"
	.string "little runt!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "We've got to help\n"
	.string "the requestor and\n"
	.string "his daughter..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan! C'mon!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Leave it to me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x55, 0x11
	ts_end

	def_text_script CompText8792478_unk61
	ts_mugshot_show 0x44
	ts_msg_open
	.string "NoooooOOOOOoooo!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "We did it,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now the daughter\n"
	.string "and her father are\n"
	.string "safe!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's get back and\n"
	.string "spread the good\n"
	.string "news!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk62
	ts_mugshot_show 0x44
	ts_msg_open
	.string "NoooooOOOOooo..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk63
	ts_check_flag 0x56, 0x11, 0x40, 0xFF
	ts_mugshot_show 0x44
	ts_msg_open
	.string "...C'mon boss,\n"
	.string "let's hurry!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The rat'll scurry\n"
	.string "away!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk64
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Grrrr..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk65

	def_text_script CompText8792478_unk66

	def_text_script CompText8792478_unk67

	def_text_script CompText8792478_unk68

	def_text_script CompText8792478_unk69

	def_text_script CompText8792478_unk70
	ts_check_shop_stock 0x6, 0xFF, 0x48
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "I'm a BugFrag\n"
	.string "trader..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Care to trade?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x47, 0xFF
	ts_start_shop 0x6

	def_text_script CompText8792478_unk71
	ts_clear_msg
	.string "Come back again\n"
	.string "sometime..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk72
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "It's a shame,\n"
	.string "but I'm out of\n"
	.string "stock..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk73

	def_text_script CompText8792478_unk74

	def_text_script CompText8792478_unk75

	def_text_script CompText8792478_unk76

	def_text_script CompText8792478_unk77

	def_text_script CompText8792478_unk78

	def_text_script CompText8792478_unk79

	def_text_script CompText8792478_unk80
	ts_mugshot_show 0x42
	ts_msg_open
	.string "This is the\n"
	.string "Sky Area NetCafe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about a cup of\n"
	.string "coffee while you\n"
	.string "view the scenery?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "One cup is 10Z."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xC
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Drink  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't Drink"
	ts_select 0x6, 0x80, 0xFF, 0x51, 0xFF
	ts_check_take_zenny 0xA, 0x0, 0x0, 0x0, 0xFF, 0x5E, 0x5E
	ts_mugshot_show 0x42
	.string "Gotcha..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_print_current_navi
	.string " drank some\n"
	.string "sweet smelling\n"
	.string "cybercoffee."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A mild brew with\n"
	.string "a refreshing bitter\n"
	.string "taste..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 82

	def_text_script CompText8792478_unk81
	ts_mugshot_show 0x42
	ts_msg_open
	.string "...Come again..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk82
	ts_check_navi_all 0xFF, 0x5F, 0x60, 0x5F, 0x5F, 0x5F, 0x5F, 0x5F, 0x5F, 0x5F, 0x5F, 0x5F
	ts_mugshot_show 0x37
	.string "...Mmmm,tasty..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This tasty coffee\n"
	.string "really warms up\n"
	.string "the soul..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_heal 0xA, 0x0
	ts_check_chapter 0x40, 0x46, 0x5B, 0xFF
	ts_check_chapter 0x50, 0x53, 0x5C, 0xFF
	ts_check_chapter 0x60, 0x64, 0x5D, 0xFF
	ts_mugshot_show 0x42
	.string "...A customer\n"
	.string "I've never seen\n"
	.string "before..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk83

	def_text_script CompText8792478_unk84
	ts_mugshot_show 0x42
	ts_msg_open
	.string "...Hey you,\n"
	.string "listen to this..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can get across\n"
	.string "places without\n"
	.string "roads..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I heard that rumor.\n"
	.string "It's like some kind\n"
	.string "of dream..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What do you think?\n"
	.string "Do you think the\n"
	.string "rumor is true?"
	ts_key_wait 0x0
	ts_flag_set 0x1A, 0x1
	ts_end

	def_text_script CompText8792478_unk85
	ts_mugshot_show 0x42
	ts_msg_open
	.string "...Hey you,\n"
	.string "listen to this..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There was just\n"
	.string "some strange\n"
	.string "customer in here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He couldn't quit\n"
	.string "repeating numbers\n"
	.string "over and over..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Weird,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He kept saying\n"
	.string "\"23722234\" over\n"
	.string "and over again..."
	ts_key_wait 0x0
	ts_flag_set 0x1B, 0x1
	ts_end

	def_text_script CompText8792478_unk86
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Hey...\n"
	.string "Listen to this..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is some sort\n"
	.string "of Navi Graveyard\n"
	.string "on the Internet..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Or so I hear from\n"
	.string "one of my best\n"
	.string "customers."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't know if it's\n"
	.string "true... I'm just\n"
	.string "saying what I heard."
	ts_key_wait 0x0
	ts_flag_set 0x1C, 0x1
	ts_end

	def_text_script CompText8792478_unk87
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You come here\n"
	.string "often,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We have a policy\n"
	.string "of taking care\n"
	.string "of our best"
	ts_key_wait 0x0
	ts_clear_msg
	.string "customers...\n"
	.string "So enjoy this\n"
	.string "free gift..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x70, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x70, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Come again soon!"
	ts_key_wait 0x0
	ts_flag_set 0x1D, 0x1
	ts_end

	def_text_script CompText8792478_unk88

	def_text_script CompText8792478_unk89

	def_text_script CompText8792478_unk90

	def_text_script CompText8792478_unk91
	ts_check_flag 0x1A, 0x1, 0xFF, 0x54
	ts_jump 84
	ts_end

	def_text_script CompText8792478_unk92
	ts_check_flag 0x1A, 0x1, 0xFF, 0x54
	ts_check_flag 0x1B, 0x1, 0xFF, 0x55
	ts_jump_random 71, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x54, 0x55, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.string "Temp message$"

	def_text_script CompText8792478_unk93
	ts_check_flag 0x1A, 0x1, 0xFF, 0x54
	ts_check_flag 0x1B, 0x1, 0xFF, 0x55
	ts_check_flag 0x1C, 0x1, 0xFF, 0x56
	ts_check_flag 0x1D, 0x1, 0xFF, 0x57
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x54, 0x55, 0x56, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.string "Temp message$"

	def_text_script CompText8792478_unk94
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I'm sorry,but you\n"
	.string "don't have enough\n"
	.string "money..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk95
	ts_mugshot_hide
	ts_msg_open
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_heal 0xA, 0x0
	ts_mugshot_show 0x42
	.string "...A customer\n"
	.string "I've never seen\n"
	.string "before..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk96
	ts_mugshot_hide
	ts_msg_open
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_heal 0xA, 0x0
	ts_mugshot_show 0x42
	.string "Ahh,ElecMan...\n"
	.string "Come back whenever\n"
	.string "the light is dim..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk97

	def_text_script CompText8792478_unk98

	def_text_script CompText8792478_unk99

	def_text_script CompText8792478_unk100
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "ENJOY YOUR FLIGHT\n"
	.string "AROUND SKY AREA!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE CAN FLY!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk101
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Ahh! No matter\n"
	.string "how many times I\n"
	.string "come to Sky Area,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it's always great!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk102
	ts_check_navi_all 0xFF, 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0xFF
	ts_end

	def_text_script CompText8792478_unk103
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "You mind getting\n"
	.string "me a piping hot\n"
	.string "coffee?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh? You don't\n"
	.string "work here? Oops!\n"
	.string "I'm so sorry!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk104
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I hear you give\n"
	.string "amazing massages!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Electric stimulus\n"
	.string "is supposed make\n"
	.string "you feel great!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd love to check\n"
	.string "it out!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk105
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "You look shady..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk106
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Yah...\n"
	.string "What a scary\n"
	.string "face..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk107
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I wonder if I can\n"
	.string "get that kinda body\n"
	.string "by working out..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No way...?\n"
	.string "...Guess you're\n"
	.string "right..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk108
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "That's freezing!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You! You threw\n"
	.string "water on me!\n"
	.string "Go over there!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk109
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Hey! You've got\n"
	.string "a cool Tomahawk!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I love Tomahawks\n"
	.string "too!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk110
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "What a beautiful\n"
	.string "nose...\n"
	.string "So charming..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk111
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Wow! So much power!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe I should\n"
	.string "install some\n"
	.string "treads!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8792478_unk112
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "What's with\n"
	.string "those hands!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Those are too\n"
	.string "awesome! Where do\n"
	.string "they sell those?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You made them to\n"
	.string "get rid of trash?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's amazing!"
	ts_key_wait 0x0
	ts_end

	