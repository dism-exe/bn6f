	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879C728::
	.word 0x114000

	text_archive_start

	def_text_script CompText879C728_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It looks like some\n"
	.string "Navis are gathering\n"
	.string "together..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What's going on?\n"
	.string "Let's go and ask!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk1

	def_text_script CompText879C728_unk2

	def_text_script CompText879C728_unk3

	def_text_script CompText879C728_unk4

	def_text_script CompText879C728_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "...PEOPLE ARE\n"
	.string "BEINGS WHO HAVE\n"
	.string "MANY FAULTS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THAT IS WHY THEY\n"
	.string "NEED THE RULES\n"
	.string "THEY CALL LAWS."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THUS,THOSE OF YOU\n"
	.string "HERE AT THE GREEN\n"
	.string "HP,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WILL RECEIVE THE\n"
	.string "THE GRAND TRADITION\n"
	.string "OF THE LAW!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk6

	def_text_script CompText879C728_unk7

	def_text_script CompText879C728_unk8

	def_text_script CompText879C728_unk9

	def_text_script CompText879C728_unk10
	ts_check_flag 0x7B, 0x11, 0xD, 0xFF
	ts_check_flag 0x7F, 0x11, 0xC, 0xFF
	ts_check_flag 0x7A, 0x11, 0xB, 0xFF
	ts_flag_set 0x7A, 0x11
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Thank ya,thank ya!\n"
	.string "Thank ya fer takin'\n"
	.string "me request!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lemme tell ya 'bout\n"
	.string "it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Me job is ta lend\n"
	.string "people money."
	ts_key_wait 0x0
	ts_clear_msg
	.string "One o' me customers,\n"
	.string "a bad Navi at that,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "once he gets a loan,\n"
	.string "he uses all da\n"
	.string "money!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He even looks like\n"
	.string "a bad Navi..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And he's got no\n"
	.string "plan ta pay me back!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Accordin' to me\n"
	.string "investigation,he"
	ts_key_wait 0x0
	ts_clear_msg
	.string "should be gettin'\n"
	.string "his bonus today."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now he can be\n"
	.string "payin' me back..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...and I'd like ya\n"
	.string "to get me money\n"
	.string "back fer me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But remember that\n"
	.string "once he gets his\n"
	.string "bonus,he'll use it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If ya watch fer him\n"
	.string "near a chip shop,he\n"
	.string "should show up."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck gettin'\n"
	.string "back me money!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk11
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Checkin' the\n"
	.string "facts?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Me job is ta lend\n"
	.string "people money."
	ts_key_wait 0x0
	ts_clear_msg
	.string "One o' me customers,\n"
	.string "is a very bad Navi."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And he's got no\n"
	.string "plan ta pay me back!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like ya to get\n"
	.string "me money back fer\n"
	.string "me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But remember that\n"
	.string "once he gets his\n"
	.string "bonus,he'll use it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If ya watch fer him\n"
	.string "near a chip shop,he\n"
	.string "should show up."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk12
	ts_flag_set 0x7B, 0x11
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Ahhh! Ya got me\n"
	.string "money back fer me!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Re,really? Great!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_item_take 0x27, 0x1
	ts_mugshot_hide
	.string "MegaMan gave:\n"
	.string "\""
	ts_print_item 0x2, 0x70
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x40
	.string "Well done...\n"
	.string "And from such a\n"
	.string "frightenin' Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I couldn't do\n"
	.string "sumthin' like that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,fer gettin' it\n"
	.string "back,here's ya\n"
	.string "reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_give_zenny 0x88, 0x13, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_mugshot_hide
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"5000 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x40
	.string "Thanks fer\n"
	.string "ev'rything!"
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

	def_text_script CompText879C728_unk13
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Thanks fer\n"
	.string "ev'rything!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I ever need\n"
	.string "help again,I know\n"
	.string "who to call!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk14

	def_text_script CompText879C728_unk15

	def_text_script CompText879C728_unk16

	def_text_script CompText879C728_unk17

	def_text_script CompText879C728_unk18

	def_text_script CompText879C728_unk19

	def_text_script CompText879C728_unk20
	ts_check_flag 0xB, 0x12, 0x19, 0xFF
	ts_check_flag 0xE, 0x12, 0x18, 0xFF
	ts_check_flag 0xC, 0x12, 0x17, 0xFF
	ts_check_flag 0xA, 0x12, 0x15, 0xFF
	ts_flag_set 0xA, 0x12
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You're the one who\n"
	.string "answered my smokin'\n"
	.string "request?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm a guy with a\n"
	.string "burnin' soul..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to set this\n"
	.string "cold world on fire\n"
	.string "with my hot soul!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Basically...\n"
	.string "Soul to Soul!\n"
	.string "That's my policy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "To give everything\n"
	.string "the proper respect,\n"
	.string "those who follow"
	ts_key_wait 0x0
	ts_clear_msg
	.string "this policy are\n"
	.string "called\n"
	.string "\"SoulBattlers\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I'm looking for\n"
	.string "people who can see\n"
	.string "what we are doing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There still aren't\n"
	.string "that many\n"
	.string "SoulBattlers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Would you like to\n"
	.string "get Soul to Soul\n"
	.string "with our group?"
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
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "That's too bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk21
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Want to rethink\n"
	.string "things?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I'm looking for\n"
	.string "people who can see\n"
	.string "what we are doing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There still aren't\n"
	.string "that many\n"
	.string "SoulBattlers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Would you like to\n"
	.string "get Soul to Soul\n"
	.string "with our group?"
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
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "That's too bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk22
	ts_flag_set 0xC, 0x12
	ts_mugshot_show 0x42
	ts_msg_open
	.string "...Alright,so you\n"
	.string "share our purpose!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're a\n"
	.string "SoulBattler now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go spread\n"
	.string "the Soul to Soul\n"
	.string "message!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Right now,the Net\n"
	.string "Mafia is having a\n"
	.string "top secret meeting."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They must be making\n"
	.string "evil plans..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you want to help\n"
	.string "me stop them?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "As far as their\n"
	.string "meeting place,\n"
	.string "the area around"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Green Town looks\n"
	.string "suspicious,so I am\n"
	.string "watching it closely."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go check out the\n"
	.string "area!\n"
	.string "Good luck!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk23
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Right now,the Net\n"
	.string "Mafia is having a\n"
	.string "top secret meeting."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They must be making\n"
	.string "evil plans..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you want to help\n"
	.string "me stop them?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "As far as their\n"
	.string "meeting place,\n"
	.string "the area around"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Green Town looks\n"
	.string "suspicious,so I am\n"
	.string "watching it closely."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go check out the\n"
	.string "area!\n"
	.string "Good luck!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk24
	ts_flag_set 0xB, 0x12
	ts_flag_set 0x15, 0x12
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Ahhh!\n"
	.string "You did it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks to you,we've\n"
	.string "uncovered the Net\n"
	.string "Mafia's evil plot!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Amazing!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Someone with this\n"
	.string "kind of talent..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Not since the\n"
	.string "legendary Soul\n"
	.string "Battler Takeshi..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You are an amazing\n"
	.string "SoulBattler!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me give you\n"
	.string "this..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x3E, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x3, 0xE0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "We are all linked\n"
	.string "by our souls..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's why we say\n"
	.string "Soul to Soul!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'll never forget\n"
	.string "a burnin' soul!"
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

	def_text_script CompText879C728_unk25
	ts_mugshot_show 0x42
	ts_msg_open
	.string "We are all linked\n"
	.string "by our souls..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's why we say\n"
	.string "Soul to Soul!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'll never forget\n"
	.string "a burnin' soul!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk26

	def_text_script CompText879C728_unk27

	def_text_script CompText879C728_unk28

	def_text_script CompText879C728_unk29

	def_text_script CompText879C728_unk30
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "EXCUSE ME...\n"
	.string "WOULD YOU LIKE TO\n"
	.string "TRADE HP LINKS?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PUTTING UP A LINK\n"
	.string "WILL LET YOU EASILY\n"
	.string "GO BACK AND FORTH"
	ts_key_wait 0x0
	ts_clear_msg
	.string "BETWEEN YOUR HP AND\n"
	.string "THE GREEN HP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WOULD YOU LIKE TO\n"
	.string "POST A LINK?"
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
	ts_select 0x6, 0x80, 0x1F, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "I SEE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU EVER CHANGE\n"
	.string "YOUR MIND,PLEASE\n"
	.string "RETURN ANYTIME..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk31
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IN ACCORDANCE WITH\n"
	.string "OUR AGREEMENT,PLEASE\n"
	.string "TAKE THIS."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x69, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x6, 0x90
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "I WILL POST YOUR\n"
	.string "LINK NOW."
	ts_key_wait 0x0
	ts_clear_msg
	.string "FINISHED!"
	ts_key_wait 0x0
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_flag_set 0x7E, 0x1
	ts_clear_msg
	.string "MY WORK HERE IS\n"
	.string "DONE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "FARE THEE WELL..."
	ts_key_wait 0x0
	ts_sound_disable_text_sfx
	ts_sound_play00 0x76, 0x0
	ts_flag_set 0xE5, 0x1
	ts_end

	def_text_script CompText879C728_unk32

	def_text_script CompText879C728_unk33

	def_text_script CompText879C728_unk34

	def_text_script CompText879C728_unk35

	def_text_script CompText879C728_unk36

	def_text_script CompText879C728_unk37

	def_text_script CompText879C728_unk38

	def_text_script CompText879C728_unk39

	def_text_script CompText879C728_unk40
	ts_check_shop_stock 0x8, 0xFF, 0x2A
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I'm a SubChip\n"
	.string "merchant!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I got lots of\n"
	.string "great things!\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x29, 0xFF
	ts_start_shop 0x8

	def_text_script CompText879C728_unk41
	ts_clear_msg
	.string "Come back again\n"
	.string "sometime!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879C728_unk42
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I'm a SubChip\n"
	.string "merchant!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But right now I'm\n"
	.string "sold out!! Sorry!"
	ts_key_wait 0x0
	ts_end

	