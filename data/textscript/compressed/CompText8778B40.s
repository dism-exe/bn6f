	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8778B40::
	.word 0xC2E00

	text_archive_start

	def_text_script CompText8778B40_unk0
	ts_check_flag 0x32, 0x5, 0x1, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Whoa!\n"
	.string "There are a lot of\n"
	.string "jellyfish here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Huh! This is a\n"
	.string "water tank..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk2

	def_text_script CompText8778B40_unk3

	def_text_script CompText8778B40_unk4

	def_text_script CompText8778B40_unk5

	def_text_script CompText8778B40_unk6

	def_text_script CompText8778B40_unk7

	def_text_script CompText8778B40_unk8

	def_text_script CompText8778B40_unk9

	def_text_script CompText8778B40_unk10
	ts_check_flag 0x36, 0x11, 0xE, 0xFF
	ts_check_flag 0x34, 0x11, 0xB, 0xFF
	ts_flag_set 0x34, 0x11
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Would you please\n"
	.string "fight against a\n"
	.string "virus I'm breeding?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to test\n"
	.string "the virus'\n"
	.string "strength!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you win,I'll\n"
	.string "give you something\n"
	.string "for your effort!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Help me out!!"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "I see..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk11
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Would you please\n"
	.string "fight against a\n"
	.string "virus I'm breeding?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you win,I'll\n"
	.string "give you something\n"
	.string "for your effort!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "C'mon and fight!"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "I see..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk12
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Ready to go!?\n"
	.string "Can you delete\n"
	.string "my virus!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle start!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x35, 0x11
	ts_end

	def_text_script CompText8778B40_unk13
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Darn it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Something must be\n"
	.string "lacking...\n"
	.string "Power... Speed...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No matter,you still\n"
	.string "defeated my virus..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just like I\n"
	.string "promised,here\n"
	.string "is your reward..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_bug_frags 0x5, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\"5 BugFrags\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Darn...\n"
	.string "I need to do more\n"
	.string "research..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk14
	ts_mugshot_show 0x15
	ts_msg_open
	.string "I guess wild viruses\n"
	.string "really are stronger\n"
	.string "than lab-made ones."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I must conduct more\n"
	.string "research!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk15

	def_text_script CompText8778B40_unk16

	def_text_script CompText8778B40_unk17

	def_text_script CompText8778B40_unk18

	def_text_script CompText8778B40_unk19

	def_text_script CompText8778B40_unk20
	ts_check_flag 0x47, 0x11, 0x17, 0xFF
	ts_check_flag 0x48, 0x11, 0x16, 0xFF
	ts_check_flag 0x46, 0x11, 0x15, 0xFF
	ts_flag_set 0x46, 0x11
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Huh? You?\n"
	.string "You're the one who\n"
	.string "accepted my request?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm working here as\n"
	.string "a new trainer for\n"
	.string "the show!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is one thing\n"
	.string "that seems a bit\n"
	.string "fishy around here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't ride on\n"
	.string "Finny's back!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What is that..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's my fault...\n"
	.string "I can't swim!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I fall off\n"
	.string "Finny's back,I'll\n"
	.string "drown."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Huh? If I can't\n"
	.string "swim how did I get\n"
	.string "to be a trainer?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,if you don't\n"
	.string "go after what you\n"
	.string "want,it's all over."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've gotta keep\n"
	.string "fighting!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's why I need\n"
	.string "to learn how to\n"
	.string "swim!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Ummm... I'm not bad\n"
	.string "at swimming,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've never taught\n"
	.string "anyone how to swim!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Alright...\n"
	.string "Let's do this..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you know of\n"
	.string "a school called\n"
	.string "Cyber Academy?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Do I know it...\n"
	.string "I'm a student there!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Really?\n"
	.string "Then this will be\n"
	.string "a quick talk!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is a guy\n"
	.string "there who they\n"
	.string "call \"Dolphin\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He is supposed to\n"
	.string "be an amazing\n"
	.string "swimmer!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I bet this \"Dolphin\"\n"
	.string "could teach me how\n"
	.string "to swim."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yeah. I'll go ask\n"
	.string "him right away."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright... I'm off\n"
	.string "to Cyber Academy!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk21
	ts_mugshot_show 0x16
	ts_msg_open
	.string "There is a guy\n"
	.string "there who they\n"
	.string "call \"Dolphin\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He is supposed to\n"
	.string "be an amazing\n"
	.string "swimmer!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I bet this \"Dolphin\"\n"
	.string "could teach me how\n"
	.string "to swim."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yeah. I'll go ask\n"
	.string "him right away."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright... I'm off\n"
	.string "to Cyber Academy!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk22
	ts_flag_set 0x47, 0x11
	ts_mugshot_show 0x16
	ts_msg_open
	.string "You met \"Dolphin\"?\n"
	.string "That's great!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What did he say...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_take 0x41, 0x1
	.string "Lan gave:\n"
	.string "\""
	ts_print_item 0x41, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "What's this...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh? Get fat!?\n"
	.string "What the..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's gonna be\n"
	.string "hard..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well... I can't\n"
	.string "give up now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have to be\n"
	.string "able to swim so\n"
	.string "I can ride Finny!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I guess I'll\n"
	.string "listen to what\n"
	.string "Dolphin says..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But only a little..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Huh...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Well... I am still\n"
	.string "a girl after all..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I'll only gain\n"
	.string "a bit... A few\n"
	.string "measly grams."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I won't be...\n"
	.string "No! Don't finish\n"
	.string "that sentence!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Anyways!\n"
	.string "I'll do my best!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you so much\n"
	.string "for helping me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x3A, 0x1
	ts_player_animate_object 0x18
	.string "Lan got,\n"
	.string "\""
	ts_print_item 0x3A, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "...Ummm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know I've said it\n"
	.string "already... But I'll\n"
	.string "only gain a smidge!"
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

	def_text_script CompText8778B40_unk23
	ts_mugshot_show 0x16
	ts_msg_open
	.string "...Ummm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know I've said it\n"
	.string "already... But I'll\n"
	.string "only gain a smidge!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8778B40_unk24

	def_text_script CompText8778B40_unk25
	ts_mugshot_show 0x0
	ts_msg_open
	.string "...There! There!\n"
	.string "I found it!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Penguin Capture!"
	ts_key_wait 0x0
	ts_flag_set 0xAF, 0x11
	ts_check_flag 0xAF, 0x11, 0xFF, 0x1A
	ts_check_flag 0xAE, 0x11, 0xFF, 0x1A
	ts_check_flag 0xAD, 0x11, 0xFF, 0x1A
	ts_check_flag 0xAC, 0x11, 0xFF, 0x1A
	ts_check_flag 0xAB, 0x11, 0xFF, 0x1A
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

	def_text_script CompText8778B40_unk26
	ts_end

	