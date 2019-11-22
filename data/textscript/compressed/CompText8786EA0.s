	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8786EA0::
	.word 0xDCD00

	text_archive_start

	def_text_script CompText8786EA0_unk0
	ts_check_shop_stock 0x0, 0xFF, 0x2
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I'm a NetMerchant...\n"
	.string "I've got cool items!\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x1, 0xFF
	ts_start_shop 0x0

	def_text_script CompText8786EA0_unk1
	ts_clear_msg
	.string "Come again\n"
	.string "anytime!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk2
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "It's too bad,\n"
	.string "but I'm out of\n"
	.string "stock..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk3

	def_text_script CompText8786EA0_unk4

	def_text_script CompText8786EA0_unk5
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "That chip seller is\n"
	.string "always working,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When does he take\n"
	.string "a break,I wonder?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk6
	ts_mugshot_show 0x41
	ts_msg_open
	.string "You've got an errand\n"
	.string "to run in Central\n"
	.string "Area2 as well?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I heard that there\n"
	.string "is a chip shop in\n"
	.string "this area..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But...where is it?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk7

	def_text_script CompText8786EA0_unk8

	def_text_script CompText8786EA0_unk9

	def_text_script CompText8786EA0_unk10

	def_text_script CompText8786EA0_unk11

	def_text_script CompText8786EA0_unk12

	def_text_script CompText8786EA0_unk13

	def_text_script CompText8786EA0_unk14

	def_text_script CompText8786EA0_unk15

	def_text_script CompText8786EA0_unk16

	def_text_script CompText8786EA0_unk17

	def_text_script CompText8786EA0_unk18

	def_text_script CompText8786EA0_unk19

	def_text_script CompText8786EA0_unk20
	ts_mugshot_show 0x24
	ts_msg_open
	.string "Class isn't\n"
	.string "finished yet..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk21
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Jump!! Jump!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I gotta get up\n"
	.string "to that passageway!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jump!! Jump!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk22
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Lately,my\n"
	.string "NetBattling skills\n"
	.string "have improved..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I'm not happy\n"
	.string "with CentralArea\n"
	.string "viruses anymore."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe I should try\n"
	.string "going somewhere\n"
	.string "else..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you have any\n"
	.string "recommendations?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk23

	def_text_script CompText8786EA0_unk24

	def_text_script CompText8786EA0_unk25

	def_text_script CompText8786EA0_unk26

	def_text_script CompText8786EA0_unk27

	def_text_script CompText8786EA0_unk28

	def_text_script CompText8786EA0_unk29

	def_text_script CompText8786EA0_unk30

	def_text_script CompText8786EA0_unk31

	def_text_script CompText8786EA0_unk32

	def_text_script CompText8786EA0_unk33

	def_text_script CompText8786EA0_unk34

	def_text_script CompText8786EA0_unk35

	def_text_script CompText8786EA0_unk36

	def_text_script CompText8786EA0_unk37

	def_text_script CompText8786EA0_unk38

	def_text_script CompText8786EA0_unk39

	def_text_script CompText8786EA0_unk40

	def_text_script CompText8786EA0_unk41

	def_text_script CompText8786EA0_unk42

	def_text_script CompText8786EA0_unk43

	def_text_script CompText8786EA0_unk44

	def_text_script CompText8786EA0_unk45
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Gwwaaahhh...\n"
	.string "Aaaahhh...Ahhhhh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Fwwwwaaaahhhh!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xBF, 0x11
	ts_end

	def_text_script CompText8786EA0_unk46
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Kwaaahaaaa!!"
	ts_key_wait 0x0
	ts_flag_set 0xC9, 0x11
	ts_check_flag 0xCB, 0x11, 0xFF, 0x30
	ts_check_flag 0xCA, 0x11, 0xFF, 0x30
	ts_check_flag 0xC9, 0x11, 0xFF, 0x30
	ts_check_flag 0xC8, 0x11, 0xFF, 0x30
	ts_check_flag 0xC7, 0x11, 0xFF, 0x30
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

	def_text_script CompText8786EA0_unk47
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Gwwaaaahhhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk48
	ts_end

	def_text_script CompText8786EA0_unk49

	def_text_script CompText8786EA0_unk50
	ts_check_flag 0x33, 0x11, 0x36, 0xFF
	ts_check_flag 0x31, 0x11, 0x33, 0xFF
	ts_flag_set 0x31, 0x11
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Hey! You!\n"
	.string "You look like a\n"
	.string "tough guy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about you\n"
	.string "test your skills?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you are able to\n"
	.string "defeat my viruses,\n"
	.string "you win."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Of course,if you\n"
	.string "do,you will be\n"
	.string "rewarded!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But if you lose,I'll\n"
	.string "delete you with\n"
	.string "extreme prejudice!"
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
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x43
	.string "Ahhh,a coward huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk51
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Hey! How'd you like\n"
	.string "to test your skills?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you are able to\n"
	.string "defeat my viruses,\n"
	.string "you win."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you win,you will\n"
	.string "be rewarded quite\n"
	.string "handsomely!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But if you lose,I'll\n"
	.string "delete you with\n"
	.string "extreme prejudice!"
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
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x43
	.string "Ahhh,a coward huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk52
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Hehehehe...\n"
	.string "I'm looking forward\n"
	.string "to a fierce battle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle... Start!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x32, 0x11
	ts_end

	def_text_script CompText8786EA0_unk53
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Wow! I'm impressed!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That battle was\n"
	.string "on absolute fire!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright... So here\n"
	.string "is your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x75, 0x1
	ts_player_animate_scene 0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item 0x75, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	.string "The number of\n"
	.string "SubChips you can\n"
	.string "hold has increased!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x43
	.string "That was a\n"
	.string "great battle..."
	ts_key_wait 0x0
	ts_flag_set 0x33, 0x11
	ts_end

	def_text_script CompText8786EA0_unk54
	ts_mugshot_show 0x43
	ts_msg_open
	.string "I like battling\n"
	.string "against people I\n"
	.string "don't know..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Especially since\n"
	.string "I'm not that\n"
	.string "strong!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk55

	def_text_script CompText8786EA0_unk56

	def_text_script CompText8786EA0_unk57

	def_text_script CompText8786EA0_unk58

	def_text_script CompText8786EA0_unk59

	def_text_script CompText8786EA0_unk60
	ts_check_flag 0x7D, 0x11, 0x3F, 0xFF
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Hehehe...\n"
	.string "Spending money is\n"
	.string "a lot of fun!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh? You slime!!\n"
	.string "You've been spying\n"
	.string "on me huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What!? Loan!?\n"
	.string "What loan!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You came to get\n"
	.string "money from me?"
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
	ts_select 0x6, 0x80, 0xFF, 0x3D, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "Brave answer,\n"
	.string "little man! Just\n"
	.string "try and take it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...No turning back!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x7C, 0x11
	ts_end

	def_text_script CompText8786EA0_unk61
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Good...\n"
	.string "Now shuddup!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk62
	ts_mugshot_show 0x44
	ts_msg_open
	.string "...Arrrgghhh"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sorry...\n"
	.string "I had no clue you\n"
	.string "were that strong!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh? The loan?\n"
	.string "OK! I'll give it\n"
	.string "back!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "B,But I just bought\n"
	.string "chips with my bonus\n"
	.string "money..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I'll have to get\n"
	.string "the money to give\n"
	.string "back. Wait a sec..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come back here in a\n"
	.string "while and I'll have\n"
	.string "the money for you..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk63
	ts_mugshot_show 0x44
	ts_msg_open
	.string "I'm sorry...\n"
	.string "I had no clue you\n"
	.string "were that strong!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll definitely\n"
	.string "give back the loan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "B,But I just bought\n"
	.string "chips with my bonus\n"
	.string "money..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I'll have to get\n"
	.string "the money to give\n"
	.string "back. Wait a sec..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come back here in a\n"
	.string "while and I'll have\n"
	.string "the money for you..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk64
	ts_check_flag 0x89, 0x11, 0x41, 0xFF
	ts_flag_set 0x89, 0x11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Huh? Where did\n"
	.string "the Navi that was\n"
	.string "just here go?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He said,\n"
	.string "\"What should I\n"
	.string " buy next?\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then he left...\n"
	.string "Maybe to another\n"
	.string "store?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk65
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Huh? Where did\n"
	.string "the Navi that was\n"
	.string "just here go?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He said,\n"
	.string "\"What should I\n"
	.string " buy next?\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then he left...\n"
	.string "Maybe to another\n"
	.string "store?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk66

	def_text_script CompText8786EA0_unk67

	def_text_script CompText8786EA0_unk68

	def_text_script CompText8786EA0_unk69

	def_text_script CompText8786EA0_unk70
	ts_check_flag 0x16, 0x12, 0x48, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "You!! What the!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Return the\n"
	.string "ScrtData!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x43
	.string "No way!! There's\n"
	.string "no way I'm\n"
	.string "getting caught!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here I come!!\n"
	.string "YAAAAAAHHHH!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xBA, 0x11
	ts_end

	def_text_script CompText8786EA0_unk71
	ts_flag_set 0xBB, 0x11
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Ahhh,gwwaaahhh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "ScrtData...\n"
	.string "FOUND IT!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_item_give 0x31, 0x1
	ts_mugshot_hide
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item 0x31, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Let's go give\n"
	.string "this data back\n"
	.string "to Flatfoot!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk72
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Ahhh,gwwaaahhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk73
	ts_check_flag 0xBB, 0x11, 0x4A, 0xFF
	ts_mugshot_show 0x44
	ts_msg_open
	.string "What the!? You!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786EA0_unk74
	ts_mugshot_show 0x44
	ts_msg_open
	.string "...Arrrgghhh"
	ts_key_wait 0x0
	ts_end

	