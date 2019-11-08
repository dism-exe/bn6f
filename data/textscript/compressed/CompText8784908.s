	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8784908::
	.word 0x1D8200

	text_archive_start

	def_text_script CompText8784908_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,there's some\n"
	.string "Navi strangely\n"
	.string "fidgeting..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Something must be\n"
	.string "wrong. Let's check\n"
	.string "it out..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk1

	def_text_script CompText8784908_unk2

	def_text_script CompText8784908_unk3

	def_text_script CompText8784908_unk4

	def_text_script CompText8784908_unk5

	def_text_script CompText8784908_unk6

	def_text_script CompText8784908_unk7

	def_text_script CompText8784908_unk8

	def_text_script CompText8784908_unk9

	def_text_script CompText8784908_unk10
	ts_check_shop_stock 0x2, 0xFF, 0xC
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
	.string " Look "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0xB, 0xFF
	ts_start_shop 0x2

	def_text_script CompText8784908_unk11
	ts_clear_msg
	.string "Come back again\n"
	.string "sometime!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk12
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

	def_text_script CompText8784908_unk13

	def_text_script CompText8784908_unk14

	def_text_script CompText8784908_unk15

	def_text_script CompText8784908_unk16

	def_text_script CompText8784908_unk17

	def_text_script CompText8784908_unk18

	def_text_script CompText8784908_unk19

	def_text_script CompText8784908_unk20
	ts_mugshot_show 0x24
	ts_msg_open
	.string "Class isn't over\n"
	.string "yet!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk21

	def_text_script CompText8784908_unk22

	def_text_script CompText8784908_unk23

	def_text_script CompText8784908_unk24

	def_text_script CompText8784908_unk25

	def_text_script CompText8784908_unk26

	def_text_script CompText8784908_unk27

	def_text_script CompText8784908_unk28

	def_text_script CompText8784908_unk29

	def_text_script CompText8784908_unk30
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "You can't be\n"
	.string "too impatient\n"
	.string "in this world..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've got to treat\n"
	.string "relaxation time\n"
	.string "seriously too!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk31
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "CLEANING TIME!!\n"
	.string "VROOOOOOOOOMM!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "INTERNET CLEANING!!\n"
	.string "VROOOOOOOOOOOMMMM!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk32

	def_text_script CompText8784908_unk33

	def_text_script CompText8784908_unk34

	def_text_script CompText8784908_unk35
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS\n"
	.string "CENTRALAREA1!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ARE YOU ENJOYING\n"
	.string "THE INTERNET?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk36
	ts_mugshot_show 0x3E
	ts_msg_open
	ts_check_navi_all 0x2E, 0xFF, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E
	.string "Umm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're burning up...\n"
	.string "But maybe that's\n"
	.string "normal...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk37
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Isn't that thing\n"
	.string "on your back...\n"
	.string "you know...heavy?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk38
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "You've got some\n"
	.string "seriously big\n"
	.string "nails!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Doesn't that make\n"
	.string "handshakes kinda\n"
	.string "difficult?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk39
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "You've got some\n"
	.string "evil eyes..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do me a favor and\n"
	.string "don't look over\n"
	.string "here,OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk40
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "You are one\n"
	.string "snazzy looking\n"
	.string "Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm really jealous!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk41
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Umm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Aren't you\n"
	.string "dripping?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk42
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Those wing-like\n"
	.string "things on your\n"
	.string "head... Awesome..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe I should try\n"
	.string "that style as well!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk43
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Umm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you embarrassed?\n"
	.string "Your face is really\n"
	.string "red!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk44
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Umm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Doesn't that drill\n"
	.string "hurt your\n"
	.string "shoulders?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk45
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Huh? Gathering\n"
	.string "trash is your\n"
	.string "job,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I'll set it my"
	ts_key_wait 0x0
	ts_clear_msg
	.string "trash,but don't\n"
	.string "scrap me by mistake!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk46
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Isn't the taste\n"
	.string "of coffee and\n"
	.string "life so similar?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Extremely sweet...\n"
	.string "Extremely bitter..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk47

	def_text_script CompText8784908_unk48

	def_text_script CompText8784908_unk49

	def_text_script CompText8784908_unk50
	ts_mugshot_show 0x3D
	ts_msg_open
	.string "...I'M THE VIRUS\n"
	.string "BATTLE MACHINE V5..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU ARE A VIRUS\n"
	.string "BATTLER CORRECT...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WOULD YOU LIKE TO\n"
	.string "ENTER 10 CONSECUTIVE\n"
	.string "VIRUS BATTLES?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Yes\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " No\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Hear Explanation"
	ts_select 0x7, 0xA0, 0x33, 0xFF, 0x39, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x3D
	.string "COME BACK SOON!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk51
	ts_text_speed 0x2
	ts_mugshot_show 0x3D
	ts_msg_open
	.string "LAUNCHING VIRUS\n"
	.string "BATTLE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "BATTLE... START!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xE1, 0x1
	ts_end

	def_text_script CompText8784908_unk52
	ts_check_flag 0xF0, 0x1, 0x37, 0xFF
	ts_mugshot_show 0x3D
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!\n"
	.string "I LOSE!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU'VE COMPLETED\n"
	.string "ALL OF THE MATCHES!\n"
	.string "HERE IS YOUR GIFT!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x8, 0x0, 0x15, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 0x0, 0x80
	.string " "
	ts_print_code 0x1, 0x50
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x3D
	.string "CONGRATULATIONS!"
	ts_key_wait 0x0
	ts_flag_set 0xF0, 0x1
	ts_end

	def_text_script CompText8784908_unk53
	ts_mugshot_show 0x3D
	ts_msg_open
	.string "THAT WAS CLOSE...\n"
	.string "COME BACK AGAIN\n"
	.string "SOON!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk54

	def_text_script CompText8784908_unk55
	ts_jump_random 65, 0x20, 0x20, 0xFF, 0x38
	ts_mugshot_show 0x3D
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!\n"
	.string "I LOSE!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU'VE COMPLETED\n"
	.string "ALL OF THE MATCHES!\n"
	.string "HERE IS YOUR GIFT!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny 0xB8, 0xB, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"3000 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x3D
	.string "CONGRATULATIONS!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk56
	ts_mugshot_show 0x3D
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!\n"
	.string "I LOSE!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU'VE COMPLETED\n"
	.string "ALL OF THE MATCHES!\n"
	.string "HERE IS YOUR GIFT!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_bug_frags 0xA, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"10 BugFrags\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x3D
	.string "CONGRATULATIONS!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk57
	ts_text_speed 0x2
	ts_mugshot_show 0x3D
	ts_msg_open
	.string "LET ME EXPLAIN THE\n"
	.string "RULES."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU CAN FIGHT\n"
	.string "AGAINST 2 VIRUSES"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THAT YOU HAVE THE\n"
	.string "DATA FOR..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU MUST REDUCE AN\n"
	.string "ENEMY VIRUSES"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ENERGY TO ZERO\n"
	.string "WITHIN THE TIME\n"
	.string "LIMIT."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE IS ONE THING\n"
	.string "TO REMEMBER WHEN\n"
	.string "SETTING UP A BATTLE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE TOTAL SIZE OF\n"
	.string "THE TWO VIRUSES YOU"
	ts_key_wait 0x0
	ts_clear_msg
	.string "CHOOSE MUST NOT BE\n"
	.string "MORE THAN 50 MB."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF IT IS OVER,YOU\n"
	.string "WILL NOT BE ABLE TO\n"
	.string "SET THE BATTLE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU CAN DELETE\n"
	.string "ALL THE VIRUSES\n"
	.string "WITH STYLE,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU WILL GET AN\n"
	.string "AMAZING REWARD!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk58

	def_text_script CompText8784908_unk59

	def_text_script CompText8784908_unk60

	def_text_script CompText8784908_unk61

	def_text_script CompText8784908_unk62

	def_text_script CompText8784908_unk63

	def_text_script CompText8784908_unk64

	def_text_script CompText8784908_unk65

	def_text_script CompText8784908_unk66

	def_text_script CompText8784908_unk67

	def_text_script CompText8784908_unk68

	def_text_script CompText8784908_unk69

	def_text_script CompText8784908_unk70

	def_text_script CompText8784908_unk71

	def_text_script CompText8784908_unk72

	def_text_script CompText8784908_unk73

	def_text_script CompText8784908_unk74

	def_text_script CompText8784908_unk75

	def_text_script CompText8784908_unk76

	def_text_script CompText8784908_unk77

	def_text_script CompText8784908_unk78

	def_text_script CompText8784908_unk79

	def_text_script CompText8784908_unk80

	def_text_script CompText8784908_unk81

	def_text_script CompText8784908_unk82

	def_text_script CompText8784908_unk83

	def_text_script CompText8784908_unk84

	def_text_script CompText8784908_unk85

	def_text_script CompText8784908_unk86

	def_text_script CompText8784908_unk87

	def_text_script CompText8784908_unk88

	def_text_script CompText8784908_unk89

	def_text_script CompText8784908_unk90

	def_text_script CompText8784908_unk91

	def_text_script CompText8784908_unk92

	def_text_script CompText8784908_unk93

	def_text_script CompText8784908_unk94

	def_text_script CompText8784908_unk95

	def_text_script CompText8784908_unk96

	def_text_script CompText8784908_unk97

	def_text_script CompText8784908_unk98

	def_text_script CompText8784908_unk99

	def_text_script CompText8784908_unk100
	ts_check_flag 0xE, 0x11, 0x68, 0xFF
	ts_check_flag 0xD, 0x11, 0x65, 0xFF
	ts_flag_set 0xD, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Umm... Did you come\n"
	.string "here after seeing\n"
	.string "the RequestBBS?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That means that you\n"
	.string "are going to give me\n"
	.string "a \""
	ts_print_chip1 0x0, 0xF0
	.string " "
	ts_print_code 0x0, 0x20
	.string "\"!?"
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
	ts_select 0x6, 0x80, 0x66, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "I see...\n"
	.string "Liar..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk101
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Ah! You're going to\n"
	.string "give me a\n"
	.string "\""
	ts_print_chip1 0x0, 0xF0
	.string " "
	ts_print_code 0x0, 0x20
	.string "\" right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If that's so,then\n"
	.string "go ahead and hand\n"
	.string "it over..."
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
	ts_select 0x6, 0x80, 0x66, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "No wayyyy!!\n"
	.string "Don't say that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk102
	ts_check_pack_chip_code 0xF, 0x0, 0x2, 0x1, 0x67, 0x67, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Huh?\n"
	.string "You can't find a\n"
	.string "\""
	ts_print_chip1 0x0, 0xF0
	.string " "
	ts_print_code 0x0, 0x20
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you don't have\n"
	.string "it,you can't hand\n"
	.string "it over!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk103
	ts_flag_set 0xE, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Ahhh... So this is a\n"
	.string "\""
	ts_print_chip1 0x0, 0xF0
	.string " "
	ts_print_code 0x0, 0x20
	.string "\" huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the first\n"
	.string "time I've actually\n"
	.string "seen one..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Finally..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please,take this\n"
	.string "instead of money\n"
	.string "for the chip!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_take_chip 0xF, 0x0, 0x2, 0x1
	ts_item_give 0x70, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x7, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "Now I can finally\n"
	.string "beat that stupid\n"
	.string "idiot... FINALLY!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HAHAHAHA...\n"
	.string "HAHAHAHAHAHAHA!!!"
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

	def_text_script CompText8784908_unk104
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Thanks to you,that\n"
	.string "moron is really\n"
	.string "gonna get it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HAHAHAHA...\n"
	.string "HAHAHAHAHAHAHA!!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk105

	def_text_script CompText8784908_unk106

	def_text_script CompText8784908_unk107

	def_text_script CompText8784908_unk108

	def_text_script CompText8784908_unk109

	def_text_script CompText8784908_unk110
	ts_mugshot_show 0x44
	ts_msg_open
	.string "What? Is there\n"
	.string "something on my\n"
	.string "face...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Gross?...\n"
	.string "Don't look at\n"
	.string "someone like that!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xBD, 0x11
	ts_end

	def_text_script CompText8784908_unk111
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Uggghhh...\n"
	.string "You did well..."
	ts_key_wait 0x0
	ts_flag_set 0xC7, 0x11
	ts_check_flag 0xCB, 0x11, 0xFF, 0x71
	ts_check_flag 0xCA, 0x11, 0xFF, 0x71
	ts_check_flag 0xC9, 0x11, 0xFF, 0x71
	ts_check_flag 0xC8, 0x11, 0xFF, 0x71
	ts_check_flag 0xC7, 0x11, 0xFF, 0x71
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "We did it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We got rid of\n"
	.string "all the\n"
	.string "evildoers!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's get back to\n"
	.string "the requestor!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk112
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Uggghhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk113
	ts_end

	def_text_script CompText8784908_unk114

	def_text_script CompText8784908_unk115
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Look at you,all\n"
	.string "full of your sense\n"
	.string "of justice..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Looking just\n"
	.string "like you'd hate\n"
	.string "someone like me!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xBE, 0x11
	ts_end

	def_text_script CompText8784908_unk116
	ts_mugshot_show 0x44
	ts_msg_open
	.string "You're...stronger...\n"
	.string "than you...look!\n"
	.string "Graawwwwhhhhgghhh!"
	ts_key_wait 0x0
	ts_flag_set 0xC8, 0x11
	ts_check_flag 0xCB, 0x11, 0xFF, 0x71
	ts_check_flag 0xCA, 0x11, 0xFF, 0x71
	ts_check_flag 0xC9, 0x11, 0xFF, 0x71
	ts_check_flag 0xC8, 0x11, 0xFF, 0x71
	ts_check_flag 0xC7, 0x11, 0xFF, 0x71
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "We did it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We got rid of\n"
	.string "all the\n"
	.string "evildoers!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's get back to\n"
	.string "the requestor!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk117
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Graawwwwhhhhgghhh!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk118

	def_text_script CompText8784908_unk119

	def_text_script CompText8784908_unk120
	ts_mugshot_show 0x42
	ts_msg_open
	.string "...Welcome to the\n"
	.string "NetCafe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...How'd you like\n"
	.string "to have a cup of\n"
	.string "coffee?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "One cup is only\n"
	.string "10Z..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xC
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Drink  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't drink"
	ts_select 0x6, 0x80, 0xFF, 0x79, 0xFF
	ts_check_take_zenny 0xA, 0x0, 0x0, 0x0, 0xFF, 0x8A, 0x8A
	ts_mugshot_show 0x42
	.string "...Thanks!"
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
	ts_jump 122

	def_text_script CompText8784908_unk121
	ts_mugshot_show 0x42
	ts_msg_open
	.string "...I see..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk122
	ts_check_navi_all 0xFF, 0x8B, 0x8B, 0x8B, 0x8B, 0x8B, 0x8B, 0x8B, 0x8B, 0x8B, 0x8B, 0x8B
	ts_mugshot_show 0x37
	.string "Coffee is best\n"
	.string "when it's hot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It warms you right\n"
	.string "down to the soul!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_heal 0xA, 0x0
	ts_check_chapter 0x0, 0x5, 0x83, 0xFF
	ts_check_chapter 0x10, 0x16, 0x84, 0xFF
	ts_check_chapter 0x20, 0x25, 0x85, 0xFF
	ts_check_chapter 0x30, 0x33, 0x86, 0xFF
	ts_check_chapter 0x40, 0x46, 0x87, 0xFF
	ts_check_chapter 0x50, 0x53, 0x88, 0xFF
	ts_check_chapter 0x60, 0x64, 0x89, 0xFF
	ts_mugshot_show 0x42
	.string "...A customer\n"
	.string "I've never seen\n"
	.string "before..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk123
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sometimes mystery\n"
	.string "data will appear\n"
	.string "during battle..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'd better not\n"
	.string "destroy that data..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Or so says this\n"
	.string "guy I'm friends\n"
	.string "with..."
	ts_key_wait 0x0
	ts_flag_set 0xD, 0x1
	ts_end

	def_text_script CompText8784908_unk124
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This rumor has\n"
	.string "been spreading..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"There is gold\n"
	.string " mystery data\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's quite the\n"
	.string "persistent rumor..."
	ts_key_wait 0x0
	ts_flag_set 0xE, 0x1
	ts_end

	def_text_script CompText8784908_unk125
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Oh man,you've\n"
	.string "got to hear this!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This weird guy\n"
	.string "kept repeating\n"
	.string "these numbers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"82564319\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Those numbers must\n"
	.string "mean something to\n"
	.string "him..."
	ts_key_wait 0x0
	ts_flag_set 0xF, 0x1
	ts_end

	def_text_script CompText8784908_unk126
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you walk along\n"
	.string "the Net,there"
	ts_key_wait 0x0
	ts_clear_msg
	.string "are water spouts\n"
	.string "that can block the\n"
	.string "road."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did you know that\n"
	.string "some Navis with"
	ts_key_wait 0x0
	ts_clear_msg
	.string "special skills can\n"
	.string "delete those water\n"
	.string "spouts?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like to be\n"
	.string "friends with one\n"
	.string "of those Navis..."
	ts_key_wait 0x0
	ts_flag_set 0x10, 0x1
	ts_end

	def_text_script CompText8784908_unk127
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is this\n"
	.string "virus battler\n"
	.string "game machine..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you've got one,\n"
	.string "you can play fight\n"
	.string "against viruses!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...But I have no\n"
	.string "idea where to get\n"
	.string "one..."
	ts_key_wait 0x0
	ts_flag_set 0x11, 0x1
	ts_end

	def_text_script CompText8784908_unk128
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you walk along\n"
	.string "the Net,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Navis deleted\n"
	.string "along ago will"
	ts_key_wait 0x0
	ts_clear_msg
	.string "suddenly appear\n"
	.string "right in front of\n"
	.string "you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They've come to\n"
	.string "get their\n"
	.string "revenge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It seems you've seen\n"
	.string "a few fights,but\n"
	.string "be careful..."
	ts_key_wait 0x0
	ts_flag_set 0x12, 0x1
	ts_end

	def_text_script CompText8784908_unk129
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Have you heard\n"
	.string "about this yet...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Apparently somewhere\n"
	.string "on the Net there is\n"
	.string "a strange trader."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Supposedly,this\n"
	.string "trader uses\n"
	.string "BugFrags."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Well,no one has\n"
	.string "actually seen it\n"
	.string "for themselves yet."
	ts_key_wait 0x0
	ts_flag_set 0x13, 0x1
	ts_end

	def_text_script CompText8784908_unk130
	ts_mugshot_show 0x42
	ts_msg_open
	.string "...You've become\n"
	.string "quite the regular\n"
	.string "customer..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I remember you now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We have to take\n"
	.string "care of our best\n"
	.string "customers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...So I'd like\n"
	.string "you to have this..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program 0x7C, 0x1, 0x2
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x1, 0xF0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Please come again!"
	ts_key_wait 0x0
	ts_flag_set 0x14, 0x1
	ts_end

	def_text_script CompText8784908_unk131
	ts_check_flag 0xD, 0x1, 0xFF, 0x7B
	ts_jump 123
	ts_end

	def_text_script CompText8784908_unk132
	ts_check_flag 0xD, 0x1, 0xFF, 0x7B
	ts_check_flag 0xE, 0x1, 0xFF, 0x7C
	ts_jump_random 71, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7B, 0x7C, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x1E, 0x2A, 0x32, 0x35, 0x0, 0x32, 0x2A, 0x38, 0x38, 0x26, 0x2C, 0x2A
	ts_end

	def_text_script CompText8784908_unk133
	ts_check_flag 0xD, 0x1, 0xFF, 0x7B
	ts_check_flag 0xE, 0x1, 0xFF, 0x7C
	ts_check_flag 0xF, 0x1, 0xFF, 0x7D
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7B, 0x7C, 0x7D, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x1E, 0x2A, 0x32, 0x35, 0x0, 0x32, 0x2A, 0x38, 0x38, 0x26, 0x2C, 0x2A
	ts_end

	def_text_script CompText8784908_unk134
	ts_check_flag 0xD, 0x1, 0xFF, 0x7B
	ts_check_flag 0xE, 0x1, 0xFF, 0x7C
	ts_check_flag 0xF, 0x1, 0xFF, 0x7D
	ts_check_flag 0x10, 0x1, 0xFF, 0x7E
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x7B, 0x7C, 0x7D, 0x7E, 0xFF, 0xFF, 0xFF, 0xFF, 0x1E, 0x2A, 0x32, 0x35, 0x0, 0x32, 0x2A, 0x38, 0x38, 0x26, 0x2C, 0x2A
	ts_end

	def_text_script CompText8784908_unk135
	ts_check_flag 0xD, 0x1, 0xFF, 0x7B
	ts_check_flag 0xE, 0x1, 0xFF, 0x7C
	ts_check_flag 0xF, 0x1, 0xFF, 0x7D
	ts_check_flag 0x10, 0x1, 0xFF, 0x7E
	ts_check_flag 0x11, 0x1, 0xFF, 0x7F
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0xFF, 0xFF, 0xFF, 0x1E, 0x2A, 0x32, 0x35, 0x0, 0x32, 0x2A, 0x38, 0x38, 0x26, 0x2C, 0x2A
	ts_end

	def_text_script CompText8784908_unk136
	ts_check_flag 0xD, 0x1, 0xFF, 0x7B
	ts_check_flag 0xE, 0x1, 0xFF, 0x7C
	ts_check_flag 0xF, 0x1, 0xFF, 0x7D
	ts_check_flag 0x10, 0x1, 0xFF, 0x7E
	ts_check_flag 0x11, 0x1, 0xFF, 0x7F
	ts_check_flag 0x12, 0x1, 0xFF, 0x80
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x80, 0xFF, 0xFF, 0x1E, 0x2A, 0x32, 0x35, 0x0, 0x32, 0x2A, 0x38, 0x38, 0x26, 0x2C, 0x2A
	ts_end

	def_text_script CompText8784908_unk137
	ts_check_flag 0xD, 0x1, 0xFF, 0x7B
	ts_check_flag 0xE, 0x1, 0xFF, 0x7C
	ts_check_flag 0xF, 0x1, 0xFF, 0x7D
	ts_check_flag 0x10, 0x1, 0xFF, 0x7E
	ts_check_flag 0x11, 0x1, 0xFF, 0x7F
	ts_check_flag 0x12, 0x1, 0xFF, 0x80
	ts_check_flag 0x13, 0x1, 0xFF, 0x81
	ts_check_flag 0x14, 0x1, 0xFF, 0x82
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x80, 0x81, 0xFF, 0x1E, 0x2A, 0x32, 0x35, 0x0, 0x32, 0x2A, 0x38, 0x38, 0x26, 0x2C, 0x2A
	ts_end

	def_text_script CompText8784908_unk138
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You don't have\n"
	.string "enough money..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk139
	ts_mugshot_hide
	ts_msg_open
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_heal 0xA, 0x0
	ts_mugshot_show 0x42
	.string "I've never seen\n"
	.string "you before..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8784908_unk140
	ts_check_flag 0x6A, 0x4, 0x78, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You...\n"
	.string "I've never seen\n"
	.string "you before..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "At this NetCafe\n"
	.string "you can get lots\n"
	.string "of information..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should\n"
	.string "definitely talk with\n"
	.string "other customers!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "I see... So here\n"
	.string "I can learn lots"
	ts_key_wait 0x0
	ts_clear_msg
	.string "of things about\n"
	.string "the Net!!"
	ts_key_wait 0x0
	ts_flag_set 0x6A, 0x4
	ts_clear_msg
	.string "How would you like\n"
	.string "to have a nice\n"
	.string "cup of coffee?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cybercoffee is\n"
	.string "10Z for one cup..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Drink  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't drink"
	ts_select 0x6, 0x80, 0xFF, 0x79, 0xFF
	ts_check_take_zenny 0xA, 0x0, 0x0, 0x0, 0xFF, 0x8A, 0x8A
	ts_mugshot_show 0x42
	.string "...Thank you!"
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
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_heal 0xA, 0x0
	ts_jump 122

	