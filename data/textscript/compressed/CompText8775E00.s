	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8775E00::
	.word 0x17CD00

	text_archive_start

	def_text_script CompText8775E00_unk0
	ts_check_flag 0x54, 0x5, 0x5, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,\n"
	.string "Let's check out\n"
	.string "the Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk1
	ts_check_flag 0x1A, 0x5, 0x4, 0xFF
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Excuse me,sir."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The area over\n"
	.string "there is for\n"
	.string "employee's only."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,where are you\n"
	.string "going!? We've got\n"
	.string "to find Mick!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk3
	ts_check_flag 0x29, 0x17, 0x6, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ahh!! An alligator!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk4
	ts_mugshot_show 0xE
	ts_msg_open
	.string "S...sir... Even\n"
	.string "in an emergency\n"
	.string "situation,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that area over\n"
	.string "there is for\n"
	.string "employee's only."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is awful...\n"
	.string "Terrible,even..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The show's going\n"
	.string "to start! Lan let's\n"
	.string "go see the show!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Wah!! An alligator!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk7

	def_text_script CompText8775E00_unk8
	ts_check_flag 0x2A, 0x11, 0xC, 0xFF
	ts_check_flag 0x29, 0x11, 0x9, 0xFF
	ts_mugshot_show 0x9
	ts_msg_open
	ts_flag_set 0x29, 0x11
	.string "For some reason,I\n"
	.string "seem to have a lot\n"
	.string "of \""
	ts_print_chip1 0x7, 0x50
	.string " "
	ts_print_code 0x1, 0x50
	.string "\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess since I\n"
	.string "have so many..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe you'd like to\n"
	.string "trade for your\n"
	.string "\""
	ts_print_chip1 0x5, 0xA0
	.string " "
	ts_print_code 0x0, 0x20
	.string "\"!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No thanks"
	ts_select 0x6, 0x80, 0xA, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "That's too bad! What\n"
	.string "should I do with\n"
	.string "these \""
	ts_print_chip1 0x7, 0x50
	.string " "
	ts_print_code 0x1, 0x50
	.string "\"?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk9
	ts_mugshot_show 0x9
	ts_msg_open
	.string "For some reason,I\n"
	.string "seem to have a lot\n"
	.string "of \""
	ts_print_chip1 0x7, 0x50
	.string " "
	ts_print_code 0x1, 0x50
	.string "\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe you'd like to\n"
	.string "trade for your\n"
	.string "\""
	ts_print_chip1 0x5, 0xA0
	.string " "
	ts_print_code 0x0, 0x20
	.string "\"!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No thanks"
	ts_select 0x6, 0x80, 0xA, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "That's too bad! What\n"
	.string "should I do with\n"
	.string "these \""
	ts_print_chip1 0x7, 0x50
	.string " "
	ts_print_code 0x1, 0x50
	.string "\"?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk10
	ts_check_pack_chip_code 0x5A, 0x0, 0x2, 0x1, 0xFF, 0xFF, 0xB
	ts_mugshot_show 0x9
	ts_msg_open
	.string "Woohoo! Thanks!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x75, 0x0, 0x15, 0x1
	ts_item_take_chip 0x5A, 0x0, 0x2, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0x7, 0x50
	.string " "
	ts_print_code 0x1, 0x50
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "I makes me happy\n"
	.string "to have a better\n"
	.string "variety of chips!"
	ts_key_wait 0x0
	ts_flag_set 0x2A, 0x11
	ts_end

	def_text_script CompText8775E00_unk11
	ts_mugshot_show 0x9
	ts_msg_open
	.string "Huh!?\n"
	.string "You don't have it!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk12
	ts_mugshot_show 0x9
	ts_msg_open
	.string "I makes me happy\n"
	.string "to have a better\n"
	.string "variety of chips!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk13

	def_text_script CompText8775E00_unk14

	def_text_script CompText8775E00_unk15
	ts_check_flag 0x9D, 0x11, 0x12, 0xFF
	ts_check_flag 0x94, 0x11, 0x10, 0xFF
	ts_flag_set 0x94, 0x11
	ts_mugshot_show 0x8
	ts_msg_open
	.string "I'm the one who\n"
	.string "made the request!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You might not be\n"
	.string "able to tell,but\n"
	.string "I'm a sushi chef!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me tell you\n"
	.string "about my request."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's strange,but\n"
	.string "I'd like you to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "bring me some fish\n"
	.string "to use in sushi..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I usually go\n"
	.string "myself,but today\n"
	.string "I can't go..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've been stocking\n"
	.string "up via the Net,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and all the fish\n"
	.string "at the market I'm"
	ts_key_wait 0x0
	ts_clear_msg
	.string "sending you to\n"
	.string "should be fresh,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so even an amateur\n"
	.string "should be able to\n"
	.string "buy with confidence!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright,thanks\n"
	.string "for your help!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny 0x10, 0x27, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\"10000 Zennys\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "Use the 10000Z\n"
	.string "I just gave you,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and please buy\n"
	.string "some Tuna,Eel,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Salmon,Herring,\n"
	.string "Shrimp,Yellowtail,\n"
	.string "Urchin,and Snapper."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's a total of\n"
	.string "8 ingredients..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Whatever money is\n"
	.string "left over,you can\n"
	.string "keep for yourself."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But if you go over\n"
	.string "budget,you must\n"
	.string "pay for any extra."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for your\n"
	.string "help!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The market is in\n"
	.string "SeasideArea1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk16
	ts_check_flag 0x95, 0x11, 0xFF, 0x11
	ts_check_flag 0x96, 0x11, 0xFF, 0x11
	ts_check_flag 0x97, 0x11, 0xFF, 0x11
	ts_check_flag 0x98, 0x11, 0xFF, 0x11
	ts_check_flag 0x99, 0x11, 0xFF, 0x11
	ts_check_flag 0x9A, 0x11, 0xFF, 0x11
	ts_check_flag 0x9B, 0x11, 0xFF, 0x11
	ts_check_flag 0x9C, 0x11, 0xFF, 0x11
	ts_flag_set 0x9D, 0x11
	ts_mugshot_show 0x8
	ts_msg_open
	.string "Ahh! How'd it go?\n"
	.string "Did you get some\n"
	.string "good fish?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Lan gave:\n"
	.string "\"Sushi Fish\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_item_take 0x1E, 0x1
	ts_item_take 0x1F, 0x1
	ts_item_take 0x20, 0x1
	ts_item_take 0x21, 0x1
	ts_item_take 0x22, 0x1
	ts_item_take 0x23, 0x1
	ts_item_take 0x24, 0x1
	ts_item_take 0x25, 0x1
	ts_mugshot_show 0x8
	.string "...Not bad...\n"
	.string "Not bad at all!\n"
	.string "Well done!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks to you,\n"
	.string "I should be able\n"
	.string "to make great sushi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now for your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x34, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x3, 0x40
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "Well,time for me to\n"
	.string "prepare the fish!"
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

	def_text_script CompText8775E00_unk17
	ts_mugshot_show 0x8
	ts_msg_open
	.string "Hmmm...\n"
	.string "Not quite enough\n"
	.string "fish..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Take the 10000Z\n"
	.string "I gave you and buy"
	ts_key_wait 0x0
	ts_clear_msg
	.string "some Tuna,Eel,\n"
	.string "Salmon,Herring,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Shrimp,Yellowtail,\n"
	.string "Urchin,and Snapper."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's a total of\n"
	.string "8 ingredients..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Whatever money is\n"
	.string "left over,you can\n"
	.string "keep for yourself."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But if you go over\n"
	.string "budget,you must\n"
	.string "pay for any extra."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for your\n"
	.string "help!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The market is in\n"
	.string "SeasideArea1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk18
	ts_mugshot_show 0x8
	ts_msg_open
	.string "Ahh,almost time\n"
	.string "for me to start\n"
	.string "preparing fish!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk19

	def_text_script CompText8775E00_unk20

	def_text_script CompText8775E00_unk21

	def_text_script CompText8775E00_unk22

	def_text_script CompText8775E00_unk23

	def_text_script CompText8775E00_unk24

	def_text_script CompText8775E00_unk25
	ts_check_flag 0xAA, 0x11, 0x1C, 0xFF
	ts_check_flag 0xA9, 0x11, 0x1A, 0xFF
	ts_flag_set 0xA9, 0x11
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Ahh...\n"
	.string "You've come for\n"
	.string "my request..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm the penguin\n"
	.string "manager at this\n"
	.string "Aquarium..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Actually...5 of\n"
	.string "our penguins have...\n"
	.string "umm...run away..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Right now,the\n"
	.string "penguins in the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "penguin corner are\n"
	.string "well behaved,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but the penguins\n"
	.string "that ran off were"
	ts_key_wait 0x0
	ts_clear_msg
	.string "kept in a special\n"
	.string "room since they'd\n"
	.string "never listen to me."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe they've left\n"
	.string "the Aquarium and\n"
	.string "are in other towns!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If the Director\n"
	.string "finds out about\n"
	.string "this..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please help...\n"
	.string "Find those penguins!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk26
	ts_check_flag 0xAF, 0x11, 0xFF, 0x1B
	ts_check_flag 0xAE, 0x11, 0xFF, 0x1B
	ts_check_flag 0xAD, 0x11, 0xFF, 0x1B
	ts_check_flag 0xAC, 0x11, 0xFF, 0x1B
	ts_check_flag 0xAB, 0x11, 0xFF, 0x1B
	ts_flag_set 0xAA, 0x11
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Thank you so much!\n"
	.string "Really! Thank you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks to you,\n"
	.string "I'm not going to\n"
	.string "get fired!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here is a token\n"
	.string "of my thanks!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x37, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x3, 0x70
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0xD
	.string "I'm going to make\n"
	.string "sure they don't\n"
	.string "run off again!"
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

	def_text_script CompText8775E00_unk27
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Please...\n"
	.string "Find the 5 penguins\n"
	.string "that ran away..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe they've left\n"
	.string "the Aquarium and\n"
	.string "are in other towns!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please help me!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk28
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Haha! The penguins\n"
	.string "seem really happy\n"
	.string "again today!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk29

	def_text_script CompText8775E00_unk30
	ts_check_flag 0xF0, 0x11, 0x25, 0xFF
	ts_check_flag 0xF8, 0x11, 0x23, 0xFF
	ts_check_flag 0xEF, 0x11, 0x20, 0xFF
	ts_flag_set 0xEF, 0x11
	ts_flag_set 0xF1, 0x11
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Hello... Thank you\n"
	.string "so much... I made\n"
	.string "the request here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I work at the\n"
	.string "SciLabs..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today,I'm here at\n"
	.string "the Aquarium to\n"
	.string "update electronics."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But there are so\n"
	.string "many items I can't\n"
	.string "do it by myself..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I was hoping you\n"
	.string "could help me with\n"
	.string "the updates..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'll need this..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_item_give 0x2F, 0x1
	ts_mugshot_hide
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x2, 0xF0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x10
	.string "I'll take care of\n"
	.string "the electronics\n"
	.string "inside the Aquarium."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like you to\n"
	.string "update the main"
	ts_key_wait 0x0
	ts_clear_msg
	.string "computer in the\n"
	.string "Control Room,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There should be\n"
	.string "3 Mr.Progs in the\n"
	.string "main computer,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please give all of\n"
	.string "them the UpdtData!\n"
	.string "Is that OK with you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for helping!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk31
	ts_mugshot_show 0x10
	ts_msg_open
	.string "I work at the\n"
	.string "SciLabs..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today,I'm here at\n"
	.string "the Aquarium to\n"
	.string "update electronics."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was hoping you\n"
	.string "could help me with\n"
	.string "the updates..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like you to\n"
	.string "update the main"
	ts_key_wait 0x0
	ts_clear_msg
	.string "computer in the\n"
	.string "Control Room,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Install the UpdtData\n"
	.string "on the Mr.Progs in\n"
	.string "the main computer."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There should be\n"
	.string "3 Mr.Progs in the\n"
	.string "main computer,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please give all of\n"
	.string "them the UpdtData!\n"
	.string "Is that OK with you?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk32
	ts_check_flag 0xF4, 0x11, 0xFF, 0x1F
	ts_check_flag 0xF3, 0x11, 0xFF, 0x1F
	ts_check_flag 0xF2, 0x11, 0xFF, 0x1F
	ts_jump 33

	def_text_script CompText8775E00_unk33
	ts_flag_set 0xF8, 0x11
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Ummm...Ummm...\n"
	.string "This is really hard\n"
	.string "to talk about..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I made a mistake\n"
	.string "and gave you old\n"
	.string "UpdtData,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A pretty big\n"
	.string "mistake..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It might not be\n"
	.string "compatible with\n"
	.string "the installed data,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and those Mr.Progs\n"
	.string "might be over-\n"
	.string "heating right now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the latest\n"
	.string "UpdtData."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you mind\n"
	.string "replacing that old\n"
	.string "data with this?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll definitely\n"
	.string "increase your\n"
	.string "reward for helping!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sorry,OK?\n"
	.string "Really sorry,OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk34
	ts_mugshot_show 0x10
	ts_msg_open
	.string "...Excuse me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I made a mistake\n"
	.string "and gave you old\n"
	.string "UpdtData,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It might not be\n"
	.string "compatible with\n"
	.string "the installed data,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and those Mr.Progs\n"
	.string "might be over-\n"
	.string "heating right now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the latest\n"
	.string "UpdtData."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you mind\n"
	.string "replacing that old\n"
	.string "data with this?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll definitely\n"
	.string "increase your\n"
	.string "reward for helping!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks once again!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk35
	ts_check_flag 0xF5, 0x11, 0xFF, 0x22
	ts_check_flag 0xF6, 0x11, 0xFF, 0x22
	ts_check_flag 0xF7, 0x11, 0xFF, 0x22
	ts_jump 36

	def_text_script CompText8775E00_unk36
	ts_check_flag 0xF0, 0x11, 0x25, 0xFF
	ts_flag_set 0xF0, 0x11
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Oh,thank you!!\n"
	.string "You installed the\n"
	.string "latest data for me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It was a really\n"
	.string "stupid mistake,OK?\n"
	.string "I'm really sorry..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,here's your\n"
	.string "reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program 0x14, 0x1, 0x1
	ts_item_take 0x2F, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x0, 0x50
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x10
	.string "Thank you so much!\n"
	.string "If I ever need\n"
	.string "help,I'll call you!"
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

	def_text_script CompText8775E00_unk37
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Thanks to you,\n"
	.string "things worked out\n"
	.string "with the update!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I ever need\n"
	.string "help,I'll call you!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8775E00_unk38

	def_text_script CompText8775E00_unk39

	def_text_script CompText8775E00_unk40

	def_text_script CompText8775E00_unk41

	def_text_script CompText8775E00_unk42

	def_text_script CompText8775E00_unk43

	def_text_script CompText8775E00_unk44

	def_text_script CompText8775E00_unk45

	def_text_script CompText8775E00_unk46

	def_text_script CompText8775E00_unk47

	def_text_script CompText8775E00_unk48

	def_text_script CompText8775E00_unk49

	def_text_script CompText8775E00_unk50
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Welcome to the\n"
	.string "Aquarium!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Enjoy your stay in\n"
	.string "the underwater\n"
	.string "world!"
	ts_key_wait 0x0
	ts_end

	